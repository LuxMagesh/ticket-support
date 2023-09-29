<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
      <h1 class="h2">Dashboard</h1>
      <div class="btn-toolbar mb-2 mb-md-0">
        <div class="btn-group me-2">
          <a href="{{ url('complex') }}" style="margin-right:50px" class="btn btn-danger">Complex Query</a>
          <a href="{{ url('create') }}" style="margin-right:50px" class="btn btn-info">Add New Ticket</a>
          <div class="form-group">
            
            {{-- <label for="date_filter">Filter by Date:</label> --}}

            <form method="get" action="{{ url('/complex') }}">
                <div class="input-group">
                    <select class="form-select" name="date_filter">
                        <option value="">All Dates</option>
                        <option value="today" {{ $dateFilter == 'today' ? 'selected' : '' }}>Today</option>
                        <option value="yesterday" {{ $dateFilter == 'yesterday' ? 'selected' : '' }}>Yesterday</option>
                        <option value="this_week" {{ $dateFilter == 'this_week' ? 'selected' : '' }}>This Week</option>
                        <option value="last_week" {{ $dateFilter == 'last_week' ? 'selected' : '' }}>Last Week</option>
                        <option value="this_month" {{ $dateFilter == 'this_month' ? 'selected' : '' }}>This Month</option>
                        <option value="last_month" {{ $dateFilter == 'last_month' ? 'selected' : '' }}>Last Month</option>
                        <option value="this_year" {{ $dateFilter == 'this_year' ? 'selected' : '' }}>This Year</option>
                        <option value="last_year" {{ $dateFilter == 'last_year' ? 'selected' : '' }}>Last Year</option>
                        </select>
                    <button type="submit" class="btn btn-warning">Filter</button>
                </div>
            </form>

        </div>
          {{-- <button type="button" class="btn btn-sm btn-outline-secondary">Share</button> --}}
          {{-- <form action="{{ url('/tickets') }}" method="post">
            <button type="submit" class="btn btn-md btn-warning">Filter</button> --}}
          {{-- <a type="submit" class="btn btn-warning">Filter</a> --}}
        </div>
      
          {{-- <div class="form-group">
            <div class='input-group date' id='datetimepicker3'>
            <input type='date' name="start_date" class="form-control" />
            <span class="input-group-addon">
              <span class="glyphicon glyphicon-calendar"></span>
            </span>
            </div>
        </div>
        <div class="form-group">
          <div class='input-group date' id='datetimepicker1'>
          <input type='date' name="end_date" class="form-control" />
          <span class="input-group-addon">
            <span class="glyphicon glyphicon-calendar"></span>
          </span>
          </div>
      </div>
      

        </form> --}}

      </div>
    </div>

    <div class="table-responsive small">
      <table class="table table-striped table-sm">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Surname</th>
            <th scope="col">Email</th>
            <th scope="col">Mobile</th>
            <th scope="col">City</th>
            <th scope="col">Gender</th>
            <th scope="col">Interests</th>
            <th scope="col">Date</th>

          </tr>
        </thead>
        <tbody>
          @foreach($complex as $complexx)
            <tr>
              <td> {{$complexx->id}} </td>
              <td> {{$complexx->surname}} </td>
              <td> {{$complexx->email}} </td>
              <td> {{$complexx->mobile}} </td>
              <td> {{$complexx->city}} </td>
              <td> {{$complexx->gender}} </td>
              <td> {{$complexx->interests}} </td>
              <td> {{$complexx->created_at}} </td>
              {{-- <td> <a href="tickets/{{ $complexx->id}}" class="btn btn-info">Update</a> </td> --}}
            </tr>
          @endforeach
        </tbody>
      </table>
    </div>
    <script type="text/javascript">
      $(function() {
         $('#datetimepicker').datetimepicker();
      });
  </script>
</main>