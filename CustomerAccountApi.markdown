Customer Account API
====================

As part of an imaginary application, SuperMega Bank have built a Flask API to
serve customer and account data to a web front end.

With the hard development work done, and supporting testing provided, our intrepid
project team need to deploy their application so that the web team can continue
with their work applying whichever web framework is the flavour of the day.

Task
----

Put simply, deploy the API application in a manner that you consider production
ready.

Run > Terminal
--------------

To run the application:

```shell
cd system-engineer
virtualenv .
pip install requirements.txt
python app/app.py
```

To execute the tests:

```shell
cd system-engineer
virtualenv .
pip install requirements.txt
python testing/testing.py
```

To hit one of the endpoints:

```shell
curl http://localhost:5000/customers -v
```

Implementation
--------------

The only pre-requisite of your submission is that the application runs as provided.

You should supply your answer to us in the form of a Git repository. If you'd
like to keep it in a private repo on GitHub, that's fine; just add us as
collaborators. Or you can send us a blob of your code; use `git bundle`.

Your repo should include a README.md containing any instructions that are required
to run up the application.

Points of consideration are:

* Outside of including the Python runtime to support the application, there are
  no limitations on what value-adds you bake into the running host. Show us what
  you've got.
* Work with an operating system that you're most comfortable with
* Ensure that you also consider non-functional requirements
* We prefer something that we can clone from your Github repo and run for
  ourselves.
* Accordingly, we don't want or need access to your AWS/Azure/DigitalOcean/
  whatever VPC. There's nothing stopping you using these for yourself for the
  purposes of building out your submission, but **PLEASE** make sure that your
  submission does not include access keys or credentials.

Expectations
------------

The whole idea is to have some fun with this. It really shouldn't take more
than about **6 hours** of your time. If you don't think you can finish in a
couple evenings, pare the scope back, and do a good job of the part you choose
to do. Feel free to **contact us** if you have any points you'd like to
clarify.

This is not a development exercise, so being a Python developer isn't important.
What we're looking for is demonstration of the depth and breath of what you
consider when building systems to support running an application, and an insight
into your Swiss Army knife of tools that you make use of.

Having had a go your submission is then the starting point for the next
conversation we'll have together. Engineering is about responsibility for
choices and technical elegance in the face of feasibility constraints. We want
you to talk about which parts of the problem you chose to do and why, identify
areas where what you did do might have fallen short, and where you'd go next
from here.

Look forward to talking with you about your code. Good luck!

\vspace{3em}


Engineering  
Analytics & Information  
Commonwealth Bank
