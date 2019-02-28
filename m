Return-Path: <simone@witted.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67DD5E00D00; Wed, 27 Feb 2019 16:04:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
	[209.85.167.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F07FE00A54
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 16:04:00 -0800 (PST)
Received: by mail-lf1-f54.google.com with SMTP id a8so8044978lfi.7
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 16:04:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=witted.it; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=kkHbWBTolcrpPQaNzrrn66LTlBuZ1Z05pzTXoCv0lM4=;
	b=ZfIZNYszN24zQ1zSWboRLxz25sYdgV3mx3sBB7qtkvrlWkFgYr68Xu4rQC0EQGX7FW
	QDjQeEmV65H154z1LJIz4PlyevNSPVsbsPD9Lk658VIe6zHoNgeliH8LRca6a8vfFZvY
	YtPMHTeR7hNnOR4rWxLX79gHs/ptjcWiKE7Sc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=kkHbWBTolcrpPQaNzrrn66LTlBuZ1Z05pzTXoCv0lM4=;
	b=X8u5ASOiUI4uZCDbBR+fSqmpyJfcoU9yA36/c7TVsJOHJNZ5033q3NFszbI/W9Vvs4
	cNZejSBMSZiXaG5y/8FG1e+ToQQyEMklieE5nqUU7A5fsxXPValnhUqERrn/bqoYrv3l
	Gcdmsh7333jL5mupBejc8W72ybyW9KfsrBTkcYF/Ib+lkPsMaZin693j0lnPxz3ZdnaA
	kLASHrDGdFOVYtzmfqxYWEc6emfuXrGLS5CNMUzd7Tic/IVUJHWfScPD9pVJL7dz/r7k
	ctIy35th9qdjgBsXCXgsm7CfeZa8ELqpiA4i5Z6PcMnu8Xz+CvLDRlR0jALpBLC8280c
	5A1Q==
X-Gm-Message-State: AHQUAuYjKqhL5/znJHaOLI+fFye9MGIfB17ciSfIBc8IdSsUvOx1oMSe
	zNCHoarkW630MegH1xaQKaa02bVas56gdJi/psbRZ2yPZmHBgg==
X-Google-Smtp-Source: AHgI3IarW8bfxTUIKtDQwz+fCFsNESUrnOSgN6d739UH+aM/9AkyO0WSSm3Vk9BNxY21ktzmEjHnI/0NUPjx++ow4Qc=
X-Received: by 2002:a19:f80b:: with SMTP id a11mr1736085lff.38.1551312238947; 
	Wed, 27 Feb 2019 16:03:58 -0800 (PST)
MIME-Version: 1.0
From: Simone Nascivera <simone@witted.it>
Date: Thu, 28 Feb 2019 01:03:47 +0100
Message-ID: <CAKjYbB=pn1Gj3Skq7q-Agy-UcjFCGiG_NT_iRZpzy1t7e7ZowQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Quick start example error
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
X-List-Received-Date: Thu, 28 Feb 2019 00:04:01 -0000
Content-Type: multipart/alternative; boundary="000000000000f041b20582e90671"

--000000000000f041b20582e90671
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm new to this mailing list and I have never used Yocto before.

I'm trying to build my first image by following the quick start guide
<https://www.yoctoproject.org/docs/current/brief-yoctoprojectqs/brief-yocto=
projectqs.html>
but
I keep getting this error while running "bitbake core-image-sato":

ERROR: gcc-cross-initial-i586-8.2.0-r0 do_populate_sysroot: Fatal errors
occurred in subprocesses:
Command '['strip', '--remove-section=3D.comment', '--remove-section=3D.note=
',
'/media/simone/651173DD28B986DD/poky/build/tmp/work/x86_64-linux/gcc-cross-=
initial-i586/8.2.0-r0/sysroot-destdir/media/simone/651173DD28B986DD/poky/bu=
ild/tmp/work/x86_64-linux/gcc-cross-initial-i586/8.2.0-r0/recipe-sysroot-na=
tive/usr/bin/i586-poky-linux.gcc-cross-initial-i586/i586-poky-linux-gcov-du=
mp']'
returned non-zero exit status 1: Traceback (most recent call last):
  File "/media/simone/651173DD28B986DD/poky/meta/lib/oe/utils.py", line
272, in run
    ret =3D self._target(*self._args, **self._kwargs)
  File "/media/simone/651173DD28B986DD/poky/meta/lib/oe/package.py", line
44, in runstrip
    output =3D subprocess.check_output(stripcmd, stderr=3Dsubprocess.STDOUT=
)
  File "/usr/lib/python3.5/subprocess.py", line 626, in check_output
    **kwargs).stdout
  File "/usr/lib/python3.5/subprocess.py", line 708, in run
    output=3Dstdout, stderr=3Dstderr)
subprocess.CalledProcessError: Command '['strip',
'--remove-section=3D.comment', '--remove-section=3D.note',
'/media/simone/651173DD28B986DD/poky/build/tmp/work/x86_64-linux/gcc-cross-=
initial-i586/8.2.0-r0/sysroot-destdir/media/simone/651173DD28B986DD/poky/bu=
ild/tmp/work/x86_64-linux/gcc-cross-initial-i586/8.2.0-r0/recipe-sysroot-na=
tive/usr/bin/i586-poky-linux.gcc-cross-initial-i586/i586-poky-linux-gcov-du=
mp']'
returned non-zero exit status 1

From what I can understand the system cannot strip some executables but
even if I add : "INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1" " at the end of the
local.conf file nothing change.

Could you please help me to find out how to solve this error?

Thank you,

Simone

--000000000000f041b20582e90671
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div>Hi,</div><div><br></div><div>I&#39;m new to this mailing lis=
t and I have never used Yocto before.=C2=A0</div><div><br></div><div>I&#39;=
m trying to build my first image by following the <a href=3D"https://www.yo=
ctoproject.org/docs/current/brief-yoctoprojectqs/brief-yoctoprojectqs.html"=
>quick start guide</a>=C2=A0but I keep getting this error while running &qu=
ot;bitbake core-image-sato&quot;:</div><div><br></div><div>ERROR: gcc-cross=
-initial-i586-8.2.0-r0 do_populate_sysroot: Fatal errors occurred in subpro=
cesses:</div><div>Command &#39;[&#39;strip&#39;, &#39;--remove-section=3D.c=
omment&#39;, &#39;--remove-section=3D.note&#39;, &#39;/media/simone/651173D=
D28B986DD/poky/build/tmp/work/x86_64-linux/gcc-cross-initial-i586/8.2.0-r0/=
sysroot-destdir/media/simone/651173DD28B986DD/poky/build/tmp/work/x86_64-li=
nux/gcc-cross-initial-i586/8.2.0-r0/recipe-sysroot-native/usr/bin/i586-poky=
-linux.gcc-cross-initial-i586/i586-poky-linux-gcov-dump&#39;]&#39; returned=
 non-zero exit status 1: Traceback (most recent call last):</div><div>=C2=
=A0 File &quot;/media/simone/651173DD28B986DD/poky/meta/lib/oe/utils.py&quo=
t;, line 272, in run</div><div>=C2=A0 =C2=A0 ret =3D self._target(*self._ar=
gs, **self._kwargs)</div><div>=C2=A0 File &quot;/media/simone/651173DD28B98=
6DD/poky/meta/lib/oe/package.py&quot;, line 44, in runstrip</div><div>=C2=
=A0 =C2=A0 output =3D subprocess.check_output(stripcmd, stderr=3Dsubprocess=
.STDOUT)</div><div>=C2=A0 File &quot;/usr/lib/python3.5/subprocess.py&quot;=
, line 626, in check_output</div><div>=C2=A0 =C2=A0 **kwargs).stdout</div><=
div>=C2=A0 File &quot;/usr/lib/python3.5/subprocess.py&quot;, line 708, in =
run</div><div>=C2=A0 =C2=A0 output=3Dstdout, stderr=3Dstderr)</div><div>sub=
process.CalledProcessError: Command &#39;[&#39;strip&#39;, &#39;--remove-se=
ction=3D.comment&#39;, &#39;--remove-section=3D.note&#39;, &#39;/media/simo=
ne/651173DD28B986DD/poky/build/tmp/work/x86_64-linux/gcc-cross-initial-i586=
/8.2.0-r0/sysroot-destdir/media/simone/651173DD28B986DD/poky/build/tmp/work=
/x86_64-linux/gcc-cross-initial-i586/8.2.0-r0/recipe-sysroot-native/usr/bin=
/i586-poky-linux.gcc-cross-initial-i586/i586-poky-linux-gcov-dump&#39;]&#39=
; returned non-zero exit status 1</div><div><br></div><div>From what I can =
understand the system cannot strip some executables but even if I add : &qu=
ot;INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot; &quot; at the end of the l=
ocal.conf file nothing change.</div><div><br></div><div>Could you please he=
lp me to find out how to solve this error?</div><div><br></div><div>Thank y=
ou,</div><div><br></div><div>Simone</div><div><br></div></div></div></div><=
/div></div>

--000000000000f041b20582e90671--
