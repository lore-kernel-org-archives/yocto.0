Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26948E00723
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 12:54:59 -0700 (PDT)
Received: by dadz8 with SMTP id z8so3430213dad.35
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 12:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+hecbOHHCX3AXwOgL/PUm3iyYHMPNpdiRRBW31/eVlM=;
	b=A9y2Lai5CKPmYW/gmRymvjPJfBpczGaCKi9QNAWzVNiSr4NAAJuu5oIENGrc+N3LhW
	rM3uhdRc4HPDBo0HEdN8GwIavaSGT1gQihAHR2hpL5e2c291mzCmfWS+09mljtGCFu7y
	XABZLtXiLfiIPy9E3IJxIu1bKfje/SCvllqvg9bWUT5frAl3RPi+6yFjPjLYfYcj84Ea
	kL+O87ogHnQjrz7/3zkMEj1QsvUQ8/zK1DOthenriEZeUdrPh70BbxS5QvsI2ufPullo
	qfCxnL/8lvKbAxzR58Iy5KmnyMqUiqApM2rqZBed5EBan+w6WwfBq5ejTJ3XjGGD36kZ
	1qow==
MIME-Version: 1.0
Received: by 10.68.225.6 with SMTP id rg6mr11753075pbc.100.1339703698865; Thu,
	14 Jun 2012 12:54:58 -0700 (PDT)
Received: by 10.68.230.73 with HTTP; Thu, 14 Jun 2012 12:54:58 -0700 (PDT)
In-Reply-To: <20120614132601.GB29124@giant>
References: <20120614132601.GB29124@giant>
Date: Thu, 14 Jun 2012 21:54:58 +0200
Message-ID: <CACW_hTYR8ceMLFg=cwhM0+ABjN6VndcddWQP8g01mfUDadU3rA@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: =?ISO-8859-1?Q?Bj=F6rn_Stenberg?= <bjst@enea.com>
Cc: yocto@yoctoproject.org
Subject: Re: Discussion: Package testing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Jun 2012 19:54:59 -0000
Content-Type: multipart/alternative; boundary=047d7b2ee27b13403104c2741373

--047d7b2ee27b13403104c2741373
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Bjorn, these are some interesting ideas.
Some feedback below.
This is from the perspective of asomeone who develops for embedded systems
boards

2012/6/14 Bj=F6rn Stenberg <bjst@enea.com>

> Hi.
>
> Many source packages include their own package test suites. We are lookin=
g
> at running these tests on target in a structured way, and I would like a
> discussion about how to best fit this into the Yocto framework.
>
> The actions that need to be performed for a package test are roughly:
>
> 1) Build the test suite
> 2) Make the test suite appear on target
> 3) Run the test suite
> 4) Parse the results
>
> Each action can be done in several ways, and there are different
> considerations for each solution.
>
> 1) Build the test suite
> -----------------------
> Many package tests are simply bash scripts that run the packaged binaries
> in various ways, but often the test suites also include binary tools that
> are not part of the normal package build. These tools have to be built fo=
r
> package testing to work.
>
> Additionally, many packages build and run the test in a single command,
> such as "make check", which is obviously unsuitable for cross-compiled
> packages.
>
> We can solve this in different ways:
>
> a) Run the test build+run jobs on target. This avoids the need to modify
> packages, but building code on target can get quite expensive in terms of
> disk space. This in turn means many tests would require a harddisk or
> network disk to run.
>
> Not only storage space can be an issue. Some targets also do have limited
RAM and are low on CPU power.


> b) Patch the makefiles to split test building and test running. Patching
> makefiles mean we get an additional maintenance and/or upstreaming burden=
,
> but we should be able to do this in ways that are acceptable to upstream.
> This is our suggestion.
>
This seems the most plexible approach. I'd say this could generate
additional -test packages

>
>
> 2) Make the test suite appear on target
> ---------------------------------------
> The test suite and utilities obviously have to be executable by the targe=
t
> system in order to run. There are a few options for this:
>
> a) Copy all test files to the target at test run time, from the build dir=
,
> using whatever means available (scp, ftp etc). This limits testing to
> targets/images with easy automatic file transfer abilities installed.
>
It also somewhat couples the building and the copying (or an additional
command or step would be needed.

>
> b) NFS mount the build dir to access the full work dir and hence the test
> code. this limits testing to targets (and images) with network+nfs suppor=
t.
> Plus it blends the build env and runtime env in an unpleasant way.
>
> c) Create ${PN}-ptest packages (in the model of -dev and -dbg) that
> contain all test files and add those to the image and hence the rootfs.
> This is our suggestion.
>

Agree, then one can decide whether to add them to an image, use a package
feed to install things or whatever means.
In our case some of our systems do not have network support

>
>
> 3) Run the test suite
> ---------------------
> Depending on how the test files are presented to the target, the way we
> run them can take different shapes:
>
> a) (scp) A top-level run-all-tests.sh runs on the build host, copies all
> test files from build dir to target, logs in and runs each test.
>
> b) (nfs) run-all-tests.sh is executed in the nfs-mounted build dir on
> target and build-runs each test in its work dir.
>
> c) (-ptest) Install all test files to /opt/ptest/${PN}-${PV} (for
> example). Make a package "ptest-runner" that has a script
> /opt/ptest/run-all-tests to iterate over all installed tests and run them=
.
> This is our suggestion.
>

Seems good to me. a run-all-tests.sh script is somewhat problematic as
different systems have different packages installed so different tests.
E.g. t is not too interesting to run C++ tests if your target system does
not have/need C++
That makes creating a run-all-tests.sh script somewhat nastier (of course
it could be conditional e.g. test -f ./testA && ./testA)

>
>
> 4) Parse the test results
> -------------------------
> Just running the tests doesn't give us much. We have to be able to look a=
t
> the results and make them meaningful to us on a system-global level.
> Packages present their test results in very different ways, and we need t=
o
> convert that to a generic format:
>
> a) Patch each package test to produce a generic ptest output format. This
> is likely difficult to get accepted upstream.
>
> b) Patch the test code minimally and instead use a simple per-packet
> translate script that converts test suite output from the package-specifi=
c
> format to a generic ptest format. This is our suggestion.
>

I suspect most tests would indicate success/failure by their return code.
Maybe the test-runner could use the return code. Optionally the recipe
could add  a way to specify how to measure success (e.g by means of
specifying a TEST_SUCCESS variable in the recipe that contains a command or
shell script that when executed will return true otherwise false.

I think testers are mainly interested in success (all tests give ok is
good, if a test fails, it would be fine with me if I would have to go to a
package specific place to find log files etc (or it could be written to a
common log file)

>
>
> Opinions?
>

Good proposal!
The only specific point I can think of is cleaning up after a test is run.
If you are low on resources like storage space and a test creates some
larger outputs and does not delete them, the tests might run out of storage=
.
So (maybe as an option) a test should contain (or be supplemented with)
code to remove all its output (maybe only on success).

Hope this helps.
Frans

>
> Note that this mail is about the test suites for/in/by specific packages.
> Standalone test suites such as LTP are a slightly different topic, since
> they are separate packages (${BPN} =3D=3D ${PN}) rather than package comp=
anion
> suites.
>
> --
> Bj=F6rn
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b2ee27b13403104c2741373
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Bjorn, these are some interesting ideas.<br>Some feedback below.<br>This is=
 from the perspective of asomeone who develops for embedded systems boards<=
br><br><div class=3D"gmail_quote">2012/6/14 Bj=F6rn Stenberg <span dir=3D"l=
tr">&lt;<a href=3D"mailto:bjst@enea.com" target=3D"_blank">bjst@enea.com</a=
>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi.<br>
<br>
Many source packages include their own package test suites. We are looking =
at running these tests on target in a structured way, and I would like a di=
scussion about how to best fit this into the Yocto framework.<br>
<br>
The actions that need to be performed for a package test are roughly:<br>
<br>
1) Build the test suite<br>
2) Make the test suite appear on target<br>
3) Run the test suite<br>
4) Parse the results<br>
<br>
Each action can be done in several ways, and there are different considerat=
ions for each solution.<br>
<br>
1) Build the test suite<br>
-----------------------<br>
Many package tests are simply bash scripts that run the packaged binaries i=
n various ways, but often the test suites also include binary tools that ar=
e not part of the normal package build. These tools have to be built for pa=
ckage testing to work.<br>

<br>
Additionally, many packages build and run the test in a single command, suc=
h as &quot;make check&quot;, which is obviously unsuitable for cross-compil=
ed packages.<br>
<br>
We can solve this in different ways:<br>
<br>
a) Run the test build+run jobs on target. This avoids the need to modify pa=
ckages, but building code on target can get quite expensive in terms of dis=
k space. This in turn means many tests would require a harddisk or network =
disk to run.<br>

<br></blockquote><div>Not only storage space can be an issue. Some targets =
also do have limited RAM and are low on CPU power.<br>=A0<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">

b) Patch the makefiles to split test building and test running. Patching ma=
kefiles mean we get an additional maintenance and/or upstreaming burden, bu=
t we should be able to do this in ways that are acceptable to upstream. Thi=
s is our suggestion.<br>
</blockquote><div>This seems the most plexible approach. I&#39;d say this c=
ould generate additional -test packages <br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">

<br>
<br>
2) Make the test suite appear on target<br>
---------------------------------------<br>
The test suite and utilities obviously have to be executable by the target =
system in order to run. There are a few options for this:<br>
<br>
a) Copy all test files to the target at test run time, from the build dir, =
using whatever means available (scp, ftp etc). This limits testing to targe=
ts/images with easy automatic file transfer abilities installed.<br></block=
quote>
<div>It also somewhat couples the building and the copying (or an additiona=
l command or step would be needed. <br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">

<br>
b) NFS mount the build dir to access the full work dir and hence the test c=
ode. this limits testing to targets (and images) with network+nfs support. =
Plus it blends the build env and runtime env in an unpleasant way.<br>

<br>
c) Create ${PN}-ptest packages (in the model of -dev and -dbg) that contain=
 all test files and add those to the image and hence the rootfs. This is ou=
r suggestion.<br></blockquote><div><br>Agree, then one can decide whether t=
o add them to an image, use a package feed to install things or whatever me=
ans.<br>
In our case some of our systems do not have network support <br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">
<br>
<br>
3) Run the test suite<br>
---------------------<br>
Depending on how the test files are presented to the target, the way we run=
 them can take different shapes:<br>
<br>
a) (scp) A top-level run-all-tests.sh runs on the build host, copies all te=
st files from build dir to target, logs in and runs each test.<br>
<br>
b) (nfs) run-all-tests.sh is executed in the nfs-mounted build dir on targe=
t and build-runs each test in its work dir.<br>
<br>
c) (-ptest) Install all test files to /opt/ptest/${PN}-${PV} (for example).=
 Make a package &quot;ptest-runner&quot; that has a script /opt/ptest/run-a=
ll-tests to iterate over all installed tests and run them. This is our sugg=
estion.<br>
</blockquote><div><br>Seems good to me. a run-all-tests.sh script is somewh=
at problematic as different systems have different packages installed so di=
fferent tests. E.g. t is not too interesting to run C++ tests if your targe=
t system does not have/need C++<br>
That makes creating a run-all-tests.sh script somewhat nastier (of course i=
t could be conditional e.g. test -f ./testA &amp;&amp; ./testA)<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">

<br>
<br>
4) Parse the test results<br>
-------------------------<br>
Just running the tests doesn&#39;t give us much. We have to be able to look=
 at the results and make them meaningful to us on a system-global level. Pa=
ckages present their test results in very different ways, and we need to co=
nvert that to a generic format:<br>

<br>
a) Patch each package test to produce a generic ptest output format. This i=
s likely difficult to get accepted upstream.<br>
<br>
b) Patch the test code minimally and instead use a simple per-packet transl=
ate script that converts test suite output from the package-specific format=
 to a generic ptest format. This is our suggestion.<br></blockquote><div>
<br>I suspect most tests would indicate success/failure by their return cod=
e.<br>Maybe the test-runner could use the return code. Optionally the recip=
e could add=A0 a way to specify how to measure success (e.g by means of spe=
cifying a TEST_SUCCESS variable in the recipe that contains a command or sh=
ell script that when executed will return true otherwise false.<br>
<br>I think testers are mainly interested in success (all tests give ok is =
good, if a test fails, it would be fine with me if I would have to go to a =
package specific place to find log files etc (or it could be written to a c=
ommon log file)<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
<br>
Opinions?<br></blockquote><div><br>Good proposal!<br>The only specific poin=
t I can think of is cleaning up after a test is run.<br>If you are low on r=
esources like storage space and a test creates some larger outputs and does=
 not delete them, the tests might run out of storage.<br>
So (maybe as an option) a test should contain (or be supplemented with) cod=
e to remove all its output (maybe only on success).<br><br>Hope this helps.=
<br>Frans <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">

<br>
Note that this mail is about the test suites for/in/by specific packages. S=
tandalone test suites such as LTP are a slightly different topic, since the=
y are separate packages (${BPN} =3D=3D ${PN}) rather than package companion=
 suites.<br>

<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Bj=F6rn<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br>

--047d7b2ee27b13403104c2741373--
