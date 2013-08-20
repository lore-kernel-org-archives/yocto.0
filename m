Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02CC6E00441
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 04:38:32 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id f14so283355wiw.13
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 04:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=afkNGMBmWgYFwb4Bgt07HMOPEMYggAIgTdLUhzkVQl4=;
	b=e8Gu6+oSsDgyIOX7EPQYiV0tnz6pDMaBrDKRXDlT1X5HI/ZiCX0U0Xi+AfXM0OQEzF
	G7psdsHkM5Tjv4WfySNBOwFWbJNrTkaxw8XDIC3kbXS5zxKUC96gzwoHLiB4C/L1Qzt/
	ycLkiyjNwJZc1+KbSoOBjUtzh801qaUGxUELgjkgSBSCvHcUW3A5tI+mmVkhAMUNXpYH
	GTy1z1i7vGuZL/4EmZtaMoO4hZKFgQoMAp68rNPz5iOXWpkW9JY3m/TFOpd9vEHCswxQ
	cJPuHL14pDXBiH4+xEGo3kBmHyw/LpHktqalcwPc1e6ykwJektifXpeAhAbC3wQNUfZo
	XK2w==
X-Received: by 10.180.19.67 with SMTP id c3mr976332wie.2.1376998710308; Tue,
	20 Aug 2013 04:38:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.250.69 with HTTP; Tue, 20 Aug 2013 04:38:10 -0700 (PDT)
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 20 Aug 2013 13:38:10 +0200
Message-ID: <CAAGt+t0Y-qo5Xo3s13LAf0mK+yc2ytTPmr1KWUThVDiWvFHcaw@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: MD5SUM recipe error.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Aug 2013 11:38:33 -0000
Content-Type: multipart/alternative; boundary=bcaec53d5ec5fc2dca04e45f7ec3

--bcaec53d5ec5fc2dca04e45f7ec3
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I am facing problems while build. Trying to build gumstix-console-image.

I downloaded GNU hello world, extracted and ran MD5SUM against COPYING,
added to my bitbake. Still it asks me to add MD5SUM or sha256sum.

My hello_2.7.bb file is: http://pastebin.com/MDsCcSB9
Error Log file: http://pastebin.com/ibZDpMZ9

ERROR: Fetcher failure for URL: '
ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz'. No checksum specified for
/home/siguser/yocto/build/downloads/hello-2.7.tar.gz, please add at least
one to the recipe:
SRC_URI[md5sum] = "fc01b05c7f943d3c42124942a2a9bb3a"
SRC_URI[sha256sum] =
"fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c4985ccb445ef490f768b927c0"
ERROR: Function failed: Fetcher failure for URL: '
ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz'. No checksum specified for
/home/siguser/yocto/build/downloads/hello-2.7.tar.gz, please add at least
one to the recipe:
SRC_URI[md5sum] = "fc01b05c7f943d3c42124942a2a9bb3a"
SRC_URI[sha256sum] =
"fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c4985ccb445ef490f768b927c0"
ERROR: Logfile of failure stored in:
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/hello-2.7-r0/temp/log.do_fetch.3686
ERROR: Task 553 (/home/siguser/yocto/poky/meta-bebot/recipes-bebot/hello/
hello_2.7.bb, do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3376 tasks of which 3375 didn't need to be
rerun and 1 failed.
No currently running tasks (2494 of 3389)

--bcaec53d5ec5fc2dca04e45f7ec3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I am facing problems=
 while build. Trying to build gumstix-console-image.</div><div><br></div><d=
iv>I downloaded GNU hello world, extracted and ran MD5SUM against COPYING, =
added to my bitbake. Still it asks me to add MD5SUM or sha256sum.</div>

<div><br></div><div>My <a href=3D"http://hello_2.7.bb">hello_2.7.bb</a> fil=
e is:=A0<a href=3D"http://pastebin.com/MDsCcSB9">http://pastebin.com/MDsCcS=
B9</a></div><div>Error Log file:=A0<a href=3D"http://pastebin.com/ibZDpMZ9"=
>http://pastebin.com/ibZDpMZ9</a></div>

<div><br></div><div>ERROR: Fetcher failure for URL: &#39;<a href=3D"ftp://f=
tp.gnu.org/gnu/hello/hello-2.7.tar.gz">ftp://ftp.gnu.org/gnu/hello/hello-2.=
7.tar.gz</a>&#39;. No checksum specified for /home/siguser/yocto/build/down=
loads/hello-2.7.tar.gz, please add at least one to the recipe:</div>

<div>SRC_URI[md5sum] =3D &quot;fc01b05c7f943d3c42124942a2a9bb3a&quot;</div>=
<div>SRC_URI[sha256sum] =3D &quot;fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c49=
85ccb445ef490f768b927c0&quot;</div><div>ERROR: Function failed: Fetcher fai=
lure for URL: &#39;<a href=3D"ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz"=
>ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz</a>&#39;. No checksum specifi=
ed for /home/siguser/yocto/build/downloads/hello-2.7.tar.gz, please add at =
least one to the recipe:</div>

<div>SRC_URI[md5sum] =3D &quot;fc01b05c7f943d3c42124942a2a9bb3a&quot;</div>=
<div>SRC_URI[sha256sum] =3D &quot;fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c49=
85ccb445ef490f768b927c0&quot;</div><div>ERROR: Logfile of failure stored in=
: /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/hel=
lo-2.7-r0/temp/log.do_fetch.3686</div>

<div>ERROR: Task 553 (/home/siguser/yocto/poky/meta-bebot/recipes-bebot/hel=
lo/<a href=3D"http://hello_2.7.bb">hello_2.7.bb</a>, do_fetch) failed with =
exit code &#39;1&#39;</div><div>NOTE: Tasks Summary: Attempted 3376 tasks o=
f which 3375 didn&#39;t need to be rerun and 1 failed.</div>

<div>No currently running tasks (2494 of 3389)</div><div><br></div><div><br=
></div><div><font color=3D"#888888" face=3D"arial, sans-serif"><span style=
=3D"border-collapse:collapse"><br></span></font></div>
</div>

--bcaec53d5ec5fc2dca04e45f7ec3--
