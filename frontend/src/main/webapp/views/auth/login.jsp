<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0"/>

    <title>Student Management Login</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"/>

    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:'Segoe UI', sans-serif;
        }

        body{
            height:100vh;
            overflow:hidden;

            background:
                    linear-gradient(
                            rgba(0,0,0,0.55),
                            rgba(0,0,0,0.55)
                    ),
                    url('../../assets/images/college.jpg');

            background-size:cover;
            background-position:center;
            background-repeat:no-repeat;

            position:relative;
        }

        .main-container{

            height:100vh;

            display:flex;
            justify-content:center;
            align-items:center;

            padding:40px;
        }

        .glass-card{

            width:100%;
            max-width:1200px;
            min-height:550px;

            background:rgba(255,255,255,0.08);

            backdrop-filter:blur(12px);

            border:1px solid rgba(255,255,255,0.2);

            border-radius:25px;

            overflow:hidden;

            display:flex;

            box-shadow:0 8px 32px rgba(0,0,0,0.4);
        }

        .left-section{

            width:60%;

            padding:60px;

            color:white;

            display:flex;
            flex-direction:column;
            justify-content:center;
        }

        .left-section h1{

            font-size:80px;
            font-weight:700;

            color:#ff7a00;

            margin-bottom:10px;
        }

        .left-section h3{

            font-size:35px;

            margin-bottom:25px;
        }

        .left-section p{

            font-size:18px;

            line-height:1.9;

            color:#f1f1f1;
        }

        .right-section{

            width:40%;

            background:rgba(0,0,0,0.30);

            display:flex;
            justify-content:center;
            align-items:center;

            padding:40px;
        }

        .login-box{

            width:100%;
            max-width:350px;

            color:white;
        }

        .login-box h2{

            text-align:center;

            margin-bottom:35px;

            font-weight:600;
        }

        .form-control{

            height:52px;

            margin-bottom:20px;

            border:none;

            border-radius:12px;

            padding-left:15px;
        }

        .form-control:focus{

            box-shadow:none;

            border:2px solid #0d6efd;
        }

        .btn-login{

            width:100%;

            height:52px;

            border:none;

            border-radius:12px;

            background:#0d6efd;

            color:white;

            font-size:18px;
            font-weight:600;

            transition:0.3s;
        }

        .btn-login:hover{

            background:#0b5ed7;
        }

        .extra-links{

            margin-top:25px;

            text-align:center;
        }

        .extra-links a{

            display:block;

            color:#f1f1f1;

            text-decoration:none;

            margin-top:12px;

            transition:0.3s;
        }

        .extra-links a:hover{

            color:#0d6efd;
        }

        .footer-text{

            position:absolute;

            bottom:15px;
            right:20px;

            color:white;

            font-size:14px;

            font-weight:500;
        }

        @media(max-width:992px){

            body{
                overflow:auto;
            }

            .glass-card{

                flex-direction:column;
            }

            .left-section,
            .right-section{

                width:100%;
            }

            .left-section{

                padding:35px;
            }

            .left-section h1{

                font-size:55px;
            }

            .left-section h3{

                font-size:26px;
            }

            .left-section p{

                font-size:16px;
            }
        }

    </style>

</head>

<body>

<div class="main-container">

    <div class="glass-card">

        <!-- LEFT SECTION -->

        <div class="left-section">

            <h1>SMS</h1>

            <h3>Student Management System</h3>

            <p>

                Our Student Management System helps institutions
                efficiently manage students, teachers, courses,
                and academic operations through a secure and
                centralized platform.

                The system provides smooth administration,
                better workflow management, and easy access
                to institutional data with modern user experience.

            </p>

        </div>

        <!-- RIGHT SECTION -->

        <div class="right-section">

            <div class="login-box">

                <h2>Welcome Back</h2>

                <form action="../../login" method="post">

                    <input type="text"
                           name="username"
                           class="form-control"
                           placeholder="Enter Username"
                           required>

                    <input type="password"
                           name="password"
                           class="form-control"
                           placeholder="Enter Password"
                           required>

                    <button type="submit"
                            class="btn-login">

                        Login

                    </button>

                </form>

                <div class="extra-links">

                    <a href="#">Forgot Password?</a>

                    <a href="#">Register</a>

                </div>

            </div>

        </div>

    </div>

</div>

<div class="footer-text">

    Powered by SMS Portal

</div>

</body>
</html>