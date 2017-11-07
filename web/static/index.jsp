<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
          integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">

    <link rel="stylesheet" href="../css/style.css"/>
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"
            integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n"
            crossorigin="anonymous"></script>
    <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>-->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
            integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"
            crossorigin="anonymous"></script>
</head>
<body>
<h1><c:out value="${listStudents}"/></h1>

<table>
    <c:forEach items="${studentList}" var="student">
        <tr>
            <td>
                    ${student.getFirstname()}
            </td>
            <td>
                    ${student.getAddress().getCity()}
            </td>
        </tr>
    </c:forEach>
</table>

<div class="container" style="background-color: antiquewhite">
    <form action="#" class="form-inline">
        <div class="row col-lg-12">
            <label class="col-lg-1" for="first_name">Name:</label>
            <input type="text" class="form-control col-lg-4" id="first_name" name="first_name"
                   placeholder="Partial Name">
            <label class="col-lg-1" for="date_of_birth">Dob:</label>
            <input type="text" class="form-control col-lg-3" id="date_of_birth" name="date_of_birth"
                   placeholder="Start Date">
            <input type="text" class="form-control col-lg-3" placeholder="End Date">
        </div>
        <div class="row col-lg-12">
            <label class="col-lg-1" for="adress">Adress:</label>
            <input type="text" class="form-control col-lg-4" id="adress" name="adress"
                   placeholder="Partial Adress">

            <label class="col-lg-1" for="discipline">Discipline:</label>
            <input type="text" class="custom-select col-lg-3" id="discipline" name="discipline"
                   placeholder="Discipline Title">
            <input type="text" class="form-control col-lg-3" placeholder="">


        </div>
        <div class="row col-lg-12">
            <label class="col-lg-1" for="group">Group:</label>
            <input type="text" class="custom-select col-lg-4" id="group" name="group"
                   placeholder="Group Number">
            <label class="col-lg-1" for="total_average">Average</label>
            <input type="text" class="form-control col-lg-6" id="total_average" name="total_average"
                   placeholder="">

        </div>

        <div class="row col-lg-12">
            <label class="col col-lg-1" for="group">Gender:</label>
            <div class="col-lg-4" style="padding-top: 8px;">
                <input class="form-check-input col-lg-2" type="radio" name="inlineRadioOptions" id="inlineRadiomale"
                       value="M"> Male

                <input class="form-check-input col-lg-2" type="radio" name="inlineRadioOptions" id="inlineRadiofemale"
                       value="F"> Female

                <input class="form-check-input col-lg-2" type="radio" name="inlineRadioOptions" id="inlineRadioall"
                       value="all"> All
            </div>

            <div class="col-lg-7 text-right">
                <button type="submit" class="btn btn-default col-lg-4">Search</button>
                <button type="submit" class="btn btn-default col-lg-4">Reset</button>
            </div>
        </div>
        <table class="table">
            <thead>
            <tr>
                <th>
                    <label class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input">
                        <span class="custom-control-indicator"></span>
                        <span class="custom-control-description"></span>
                    </label></th>
                <th>Picture</th>
                <th>Name</th>
                <th>Birth Day</th>
                <th>Gender</th>
                <th>Address</th>
                <th>Phone</th>
                <th>Library Abonament</th>
                <th>Marks</th>
                <th>Action</th>


            </tr>
            </thead>

            <tbody>
            <tr>
                <td>
                    <label class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input">
                        <span class="custom-control-indicator"></span>
                        <span class="custom-control-description"></span>
                    </label>
                </td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>
                    <button class="btn btn-primary" type="submit">Edit</button>
                    <button type="button" class="btn btn-success">Add Mark</button>

                </td>
            </tr>
            <tr>
                <td>
                    <label class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input">
                        <span class="custom-control-indicator"></span>
                        <span class="custom-control-description"></span>
                    </label>
                </td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>
                    <button class="btn btn-primary" type="submit">Edit</button>
                    <button type="button" class="btn btn-success">Add Mark</button>

                </td>
            </tr>
            <tr>
                <td>
                    <label class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input">
                        <span class="custom-control-indicator"></span>
                        <span class="custom-control-description"></span>
                    </label>
                </td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
                <td>
                    <button class="btn btn-primary" type="submit">Edit</button>
                    <button type="button" class="btn btn-success">Add Mark</button>

                </td>
            </tr>
            </tbody>

        </table>
        <button type="button" class="btn btn-secondary">Add New</button>
        <button type="button" class="btn btn-secondary">Delete</button>
    </form>
</div>
</body>
</html>
