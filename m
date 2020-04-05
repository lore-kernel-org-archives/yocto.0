Subject: Error running GO-lang executable on target device
To: yocto@lists.yoctoproject.org
From: salman.isd@gmail.com
X-Originating-Location: Bielefeld, North Rhine-Westphalia, DE (37.201.144.70)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 05 Apr 2020 04:52:38 -0700
Message-ID: <lm60.1586087558819286041.pozG@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Ke9HmQBhykF1GzvrmjYQ"

--Ke9HmQBhykF1GzvrmjYQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to run the yocto go example on my arm target device. This is th=
e receipe I am using https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/=
recipes-extended/go-examples/go-helloworld_0.1.bb
I made one change to the recipe. I added GO_LINKSHARED=3D"" which removes =
the runtime dependecy of the package on "go-runtime".
I have used both go 1.12 and go 1.14

The package is built correctly. I transfer and try to run on the device bu=
t this error.
*./go-helloworld*
-sh: ./go-helloworld: No such file or directory

Running *file* on the binary shows
*file go-helloworld*
go-helloworld: ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV),=
 dynamically linked, interpreter /lib/ld-linux.so.3, BuildID[sha1]=3Db5d8fa=
526402b35c3233f7ce3e578eb9596d9de8, for GNU/Linux 3.2.0, stripped

There is no ld-linux.so.3 on my device, only ld-linux-armhf.so.3. So I cre=
ade a symlink like shown
ld-linux.so.3 ->=C2=A0ld-linux-armhf.so.3

Tried to run my binary again and this time it segfaults.

Does anyone have an idea what might be going on? All my C programs built w=
ith yocto refer to the correct ld-linux-armhf.so.3 and run fine.Do I need t=
o install some other go-related stuff before running my program?

--Ke9HmQBhykF1GzvrmjYQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to run the yocto go example on my arm target device. This is th=
e receipe I am using&nbsp;<a href=3D"https://git.yoctoproject.org/cgit.cgi/=
poky/plain/meta/recipes-extended/go-examples/go-helloworld_0.1.bb">https://=
git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-extended/go-examples/=
go-helloworld_0.1.bb</a><br />I made one change to the recipe. I added GO_L=
INKSHARED=3D"" which removes the runtime dependecy of the package on "go-ru=
ntime".<br />I have used both go 1.12 and go 1.14<br /><br />The package is=
 built correctly. I transfer and try to run on the device but this error.<b=
r />
<div><strong>./go-helloworld&nbsp;</strong></div>
<div>-sh: ./go-helloworld: No such file or directory</div>
<div><br />Running <strong>file</strong> on the binary shows<br />
<div><strong>file go-helloworld&nbsp;</strong></div>
<div>go-helloworld: ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (S=
YSV), dynamically linked, interpreter /lib/ld-linux.so.3, BuildID[sha1]=3Db=
5d8fa526402b35c3233f7ce3e578eb9596d9de8, for GNU/Linux 3.2.0, stripped<br /=
><br />There is no ld-linux.so.3 on my device, only ld-linux-armhf.so.3. So=
 I creade a symlink like shown<br />ld-linux.so.3 -&gt;&nbsp;ld-linux-armhf=
.so.3<br /><br />Tried to run my binary again and this time it segfaults.<b=
r /><br />Does anyone have an idea what might be going on? All my C program=
s built with yocto refer to the correct ld-linux-armhf.so.3 and run fine.Do=
 I need to install some other go-related stuff before running my program?</=
div>
</div>

--Ke9HmQBhykF1GzvrmjYQ--
