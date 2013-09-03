Return-Path: <andreas2025@gmail.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1437EE00734
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 12:53:52 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id n5so4688249wev.17
	for <yocto@yoctoproject.org>; Tue, 03 Sep 2013 12:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=TlTtK8iBHmBiaETrF4gAnZNYeiT/eX5zq7Fu6GgxwI8=;
	b=W70uykuLar3GFzt5Zlb1++kkKMVR7V8HuNYXVJOh7iR+j+6dFxGsOJziwxtlTOiPWD
	Xtz2MV5snP80yJb97e+0n8nB0uIf/mYt1iBkh0sgGW88oEOygLXIt67hLbyEBKOcxMje
	+IwrpYNPIuX9ElUhFoqDnlyiIKG4sndBXvTEI7emlqc6pem/UCyfr5t56yb4WSeKkA93
	IkFVecIfDavp6dTDADJbhOY3GtFS/7RXGkKnN4W41jJ7gP1Ax8owvN9kfkt2pGrWJu6F
	ZRnE7mb6iR348rAvEe/vhi2KgkfULDJVoHeSdtmiuN3UgIoWXDS/kATk+PQdnZ021w51
	9AQg==
MIME-Version: 1.0
X-Received: by 10.194.175.66 with SMTP id by2mr2922276wjc.59.1378238031583;
	Tue, 03 Sep 2013 12:53:51 -0700 (PDT)
Received: by 10.216.164.71 with HTTP; Tue, 3 Sep 2013 12:53:51 -0700 (PDT)
Date: Tue, 3 Sep 2013 20:53:51 +0100
Message-ID: <CAAVaN8w1JugqyyKKXJyeroqTqA8HzWw=oN5JhnPYejyvRi7oxQ@mail.gmail.com>
From: Andy Ng <andreas2025@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto-9.0 Lttng-modules fails to build.
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
X-List-Received-Date: Tue, 03 Sep 2013 19:54:04 -0000
Content-Type: multipart/alternative; boundary=089e013d19f849df9c04e5800cd5

--089e013d19f849df9c04e5800cd5
Content-Type: text/plain; charset=ISO-8859-1

Dear List,

I try to build lttng by calling the package group for profiling, and I've
got this error:
Does anyone has tried profile package group lately?


ERROR: Error executing a python function in
/opt/projects/yocto/yocto-9.0/sources/poky/meta/recipes-kernel/lttng/
lttng-modules_2.1.1.bb:
ExpansionError: Failure expanding variable SUMMARY, expression was
${SUMMARY} - Debugging files which triggered exception Exception: variable
SUMMARY references itself!

ERROR: The stack trace of python calls that resulted in this
exception/failure was:
ERROR:   File "write_specfile", line 508, in <module>
ERROR:
ERROR:   File "write_specfile", line 211, in write_specfile
ERROR:
ERROR:   File
"/opt/projects/yocto/yocto-9.0/sources/poky/bitbake/lib/bb/data_smart.py",
line 503, in getVar
ERROR:     return self.expand(value, var)
ERROR:
ERROR:   File
"/opt/projects/yocto/yocto-9.0/sources/poky/bitbake/lib/bb/data_smart.py",
line 336, in expand
ERROR:     return self.expandWithRefs(s, varname).value
ERROR:
ERROR:   File
"/opt/projects/yocto/yocto-9.0/sources/poky/bitbake/lib/bb/data_smart.py",
line 326, in expandWithRefs
ERROR:     raise ExpansionError(varname, s, exc)
ERROR:
ERROR: The code that was being executed was:
ERROR:      0504:
ERROR:      0505:    specfile.close()
ERROR:      0506:
ERROR:      0507:
ERROR:  *** 0508:write_specfile(d)
ERROR:      0509:
ERROR: [From file: 'write_specfile', lineno: 508, function: <module>]
ERROR:      0207:        conffiles = (localdata.getVar('CONFFILES', True)
or "").split()
ERROR:      0208:
ERROR:      0209:        splitname    = strip_multilib(pkgname, d)
ERROR:      0210:
ERROR:  *** 0211:        splitsummary = (localdata.getVar('SUMMARY', True)
or localdata.getVar('DESCRIPTION', True) or ".")
ERROR:      0212:        splitversion = (localdata.getVar('PKGV', True) or
"").replace('-', '+')
ERROR:      0213:        splitrelease = (localdata.getVar('PKGR', True) or
"")
ERROR:      0214:        splitepoch   = (localdata.getVar('PKGE', True) or
"")
ERROR:      0215:        splitlicense = (localdata.getVar('LICENSE', True)
or "")
ERROR: [From file: 'write_specfile', lineno: 211, function: write_specfile]
ERROR: Function failed: write_specfile
ERROR: Logfile of failure stored in:
/opt/projects/yocto/yocto-9.0/build-imx6qsabresdrt/tmp/work/imx6qsabresdrt-poky-linux-gnueabi/lttng-modules/2.1.1-r0/temp/log.do_package_write_rpm.9007
ERROR: Task 13
(/opt/projects/yocto/yocto-9.0/sources/poky/meta/recipes-kernel/lttng/
lttng-modules_2.1.1.bb, do_package_write_rpm) failed with exit code '1'


Best regards,
Andreas

--089e013d19f849df9c04e5800cd5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear List,<br><br>I try to build lttng by calling the=
 package group for profiling, and I&#39;ve got this error:<br></div>Does an=
yone has tried profile package group lately?<br><div><div><br><br>ERROR: Er=
ror executing a python function in /opt/projects/yocto/yocto-9.0/sources/po=
ky/meta/recipes-kernel/lttng/<a href=3D"http://lttng-modules_2.1.1.bb">lttn=
g-modules_2.1.1.bb</a>:<br>
ExpansionError: Failure expanding variable SUMMARY, expression was ${SUMMAR=
Y} - Debugging files which triggered exception Exception: variable SUMMARY =
references itself!<br><br>ERROR: The stack trace of python calls that resul=
ted in this exception/failure was:<br>
ERROR:=A0=A0 File &quot;write_specfile&quot;, line 508, in &lt;module&gt;<b=
r>ERROR: <br>ERROR:=A0=A0 File &quot;write_specfile&quot;, line 211, in wri=
te_specfile<br>ERROR: <br>ERROR:=A0=A0 File &quot;/opt/projects/yocto/yocto=
-9.0/sources/poky/bitbake/lib/bb/data_smart.py&quot;, line 503, in getVar<b=
r>
ERROR:=A0=A0=A0=A0 return self.expand(value, var)<br>ERROR: <br>ERROR:=A0=
=A0 File &quot;/opt/projects/yocto/yocto-9.0/sources/poky/bitbake/lib/bb/da=
ta_smart.py&quot;, line 336, in expand<br>ERROR:=A0=A0=A0=A0 return self.ex=
pandWithRefs(s, varname).value<br>
ERROR: <br>ERROR:=A0=A0 File &quot;/opt/projects/yocto/yocto-9.0/sources/po=
ky/bitbake/lib/bb/data_smart.py&quot;, line 326, in expandWithRefs<br>ERROR=
:=A0=A0=A0=A0 raise ExpansionError(varname, s, exc)<br>ERROR: <br>ERROR: Th=
e code that was being executed was:<br>
ERROR:=A0=A0=A0=A0=A0 0504:<br>ERROR:=A0=A0=A0=A0=A0 0505:=A0=A0=A0 specfil=
e.close()<br>ERROR:=A0=A0=A0=A0=A0 0506:<br>ERROR:=A0=A0=A0=A0=A0 0507:<br>=
ERROR:=A0 *** 0508:write_specfile(d)<br>ERROR:=A0=A0=A0=A0=A0 0509:<br>ERRO=
R: [From file: &#39;write_specfile&#39;, lineno: 508, function: &lt;module&=
gt;]<br>
ERROR:=A0=A0=A0=A0=A0 0207:=A0=A0=A0=A0=A0=A0=A0 conffiles =3D (localdata.g=
etVar(&#39;CONFFILES&#39;, True) or &quot;&quot;).split()<br>ERROR:=A0=A0=
=A0=A0=A0 0208:<br>ERROR:=A0=A0=A0=A0=A0 0209:=A0=A0=A0=A0=A0=A0=A0 splitna=
me=A0=A0=A0 =3D strip_multilib(pkgname, d)<br>ERROR:=A0=A0=A0=A0=A0 0210:<b=
r>
ERROR:=A0 *** 0211:=A0=A0=A0=A0=A0=A0=A0 splitsummary =3D (localdata.getVar=
(&#39;SUMMARY&#39;, True) or localdata.getVar(&#39;DESCRIPTION&#39;, True) =
or &quot;.&quot;)<br>ERROR:=A0=A0=A0=A0=A0 0212:=A0=A0=A0=A0=A0=A0=A0 split=
version =3D (localdata.getVar(&#39;PKGV&#39;, True) or &quot;&quot;).replac=
e(&#39;-&#39;, &#39;+&#39;)<br>
ERROR:=A0=A0=A0=A0=A0 0213:=A0=A0=A0=A0=A0=A0=A0 splitrelease =3D (localdat=
a.getVar(&#39;PKGR&#39;, True) or &quot;&quot;)<br>ERROR:=A0=A0=A0=A0=A0 02=
14:=A0=A0=A0=A0=A0=A0=A0 splitepoch=A0=A0 =3D (localdata.getVar(&#39;PKGE&#=
39;, True) or &quot;&quot;)<br>ERROR:=A0=A0=A0=A0=A0 0215:=A0=A0=A0=A0=A0=
=A0=A0 splitlicense =3D (localdata.getVar(&#39;LICENSE&#39;, True) or &quot=
;&quot;)<br>
ERROR: [From file: &#39;write_specfile&#39;, lineno: 211, function: write_s=
pecfile]<br>ERROR: Function failed: write_specfile<br>ERROR: Logfile of fai=
lure stored in: /opt/projects/yocto/yocto-9.0/build-imx6qsabresdrt/tmp/work=
/imx6qsabresdrt-poky-linux-gnueabi/lttng-modules/2.1.1-r0/temp/log.do_packa=
ge_write_rpm.9007<br>
ERROR: Task 13 (/opt/projects/yocto/yocto-9.0/sources/poky/meta/recipes-ker=
nel/lttng/<a href=3D"http://lttng-modules_2.1.1.bb">lttng-modules_2.1.1.bb<=
/a>, do_package_write_rpm) failed with exit code &#39;1&#39;<br><br><br></d=
iv>
<div>Best regards,<br>Andreas<br></div></div></div>

--089e013d19f849df9c04e5800cd5--
