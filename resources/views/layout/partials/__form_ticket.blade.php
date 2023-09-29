<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Dashboard</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group me-2">
            <button type="button" class="btn btn-info">Add New Ticket</button>
            {{-- <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
            <button type="button" class="btn btn-sm btn-outline-secondary">Export</button> --}}
          </div>
          <div class="form-group">
            <div class='input-group date' id='datetimepicker'>
            <input type='text' class="form-control" />
            <span class="input-group-addon">
              <span class="glyphicon glyphicon-calendar"></span>
            </span>
            </div>
        </div>
        <div class="form-group">
            <div class='input-group date' id='datetimepicker'>
            <input type='text' class="form-control" />
            <span class="input-group-addon">
              <span class="glyphicon glyphicon-calendar"></span>
            </span>
            </div>
        </div>
          
        </div>
      </div>
      <div class="container text-center">
    <div class="row">
            <div class="col">
           
            </div>
            <div class="col">
            <form action="" method="post">
            {{ @csrf_field() }}
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" name="name" id="name">          
            </div>
            <div class="form-group">
              <label for="email">Email</label>
              <input type="text" class="form-control" name="email" id="email">          
          </div>
                <div class="form-group">
                  <label for="category">Category</label>
                  <select class="form-select form-select-sm" name="category"  id="category" aria-label="Small select example">
                    <option selected>Open this select menu</option>
                    <option value="Sales">Sales</option>
                    <option value="Accounts">Accounts</option>
                    <option value="IT">IT</option>
                  </select>
                  {{-- <input type="text" class="form-control" name="category" id="category">           --}}
              </div>
            <div class="form-group">
                <label for="summary">Summary</label>
                <input type="text" class="form-control" name="summary" id="summary"  >          
            </div>
             <div class="form-group">
                <label for="description">Description</label>
                <input type="text" class="form-control" name="description" id="description" >          
            </div>
            <div class="form-group">
                <label for="status">Status</label>
                <input type="text" class="form-control" name="status" id="status" >          
            </div>


            <button type="submit" class="btn btn-sm btn-outline-secondary">Add</button>
            <button type="submit" class="btn btn-sm btn-outline-info">Back</button>

      </form>
            </div>
            <div class="col">
          
            </div>
    </div>
    </div>
     

</main>