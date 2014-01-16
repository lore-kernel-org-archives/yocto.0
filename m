Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDD87E00869
	for <yocto@yoctoproject.org>; Thu, 16 Jan 2014 12:55:44 -0800 (PST)
Received: by mail-wg0-f46.google.com with SMTP id x12so3638708wgg.1
	for <yocto@yoctoproject.org>; Thu, 16 Jan 2014 12:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=7mrS2+fWKlHgXHkGEqaLiqjxBsQioYkGJLliCnODEbE=;
	b=Llv1H2PcJwBUXXtJgpR+o95Q9rZsVme5ECyCXQ5xLjWx0G7uyNs2r1Jlm20OTv9YLp
	tNX0/n/5lWy5pP0XVhY26ENmwl2bw3Fgroi4Gwd43pNjqcODpwh7IpGH5IIIuLZYiaSZ
	0kwT4Q90dTs65S/n3ANVMzaVflROK40Vs8e4M9ceXOGSJP8g0KQHbaHlAv4hDQi43Niw
	faOKz2N1MSJdx80xuxIp01u5kqHwgElE8RXK8keJ0NHYYVsteOx+1xvQcMqKoTtVFOfy
	wGWBV/CWeEsvGIRyk1o8ZhyeYRvRewGpGotVdVLpOSJMvw34MsearM3T96ZT/Ll497hd
	exWA==
X-Received: by 10.180.207.10 with SMTP id ls10mr10049715wic.52.1389905742723; 
	Thu, 16 Jan 2014 12:55:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.59.146 with HTTP; Thu, 16 Jan 2014 12:55:22 -0800 (PST)
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Thu, 16 Jan 2014 21:55:22 +0100
Message-ID: <CAAGt+t3PntsFybAsnC9L0WHoE1QFAm1BoOvHt5CKcU_sozt_AQ@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Error: QA issue package contains bad RPATH and do_package fails
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
X-List-Received-Date: Thu, 16 Jan 2014 20:55:48 -0000
Content-Type: multipart/alternative; boundary=001a11c3f51a11038c04f01ca643

--001a11c3f51a11038c04f01ca643
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I am trying to build a custom recipe but running into problems with build.

my bitbake custom recipe is as follows:

DESCRIPTION = "Apriltags application"
SECTION = "examples"
LICENSE = "CLOSED"
PR = "r12"

DEPENDS = "opencv"

SRC_URI = "git://
github.com/zafrullahsyed/apriltags.git;protocol=https;tag=v0.1"

S = "${WORKDIR}/git"

inherit pkgconfig autotools

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/git/build/bin/apriltags_demo ${D}${bindir}
}

Error as follows:

ERROR: QA Issue: package apriltags contains bad RPATH
/home/siguser/yocto-28-11/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/apriltags/0.1-r12/git/build/lib
in file
/home/siguser/yocto-28-11/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/apriltags/0.1-r12/packages-split/apriltags/usr/bin/apriltags_demo
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/home/siguser/yocto-28-11/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/apriltags/0.1-r12/temp/log.do_package.27014
ERROR: Task 736
(/home/siguser/yocto-28-11/poky/meta-bebot/recipes-bebot/apriltags/
apriltags_0.1.bb, do_package) failed with exit code '1'
NOTE: Tasks Summary: Attempted 5449 tasks of which 5440 didn't need to be
rerun and 1 failed.
No currently running tasks (5449 of 5455)

Summary: 1 task failed:
  /home/siguser/yocto-28-11/poky/meta-bebot/recipes-bebot/apriltags/
apriltags_0.1.bb, do_package


Bitbake error points to this rpath(line 319):

https://github.com/zafrullahsyed/apriltags/blob/master/cmake/pods.cmake

# abuse RPATH
        if(${CMAKE_INSTALL_RPATH})
            set(CMAKE_INSTALL_RPATH
${LIBRARY_INSTALL_PATH}:${CMAKE_INSTALL_RPATH})
        else(${CMAKE_INSTALL_RPATH})
            set(CMAKE_INSTALL_RPATH ${LIBRARY_INSTALL_PATH})
        endif(${CMAKE_INSTALL_RPATH})

        # for osx, which uses "install name" path rather than rpath
        #set(CMAKE_INSTALL_NAME_DIR ${LIBRARY_OUTPUT_PATH})

        set(CMAKE_INSTALL_NAME_DIR ${CMAKE_INSTALL_RPATH}


Any ideas where I am doing wrong?

-- 
Regards,
Zafrullah Syed

--001a11c3f51a11038c04f01ca643
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hello,</div><div class=3D"gmail_default" style=3D"font-=
family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" s=
tyle=3D"font-family:arial,helvetica,sans-serif">

I am trying to build a custom recipe but running into problems with build.<=
/div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans=
-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,h=
elvetica,sans-serif">

my bitbake custom recipe is as follows:</div><div class=3D"gmail_default" s=
tyle=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gma=
il_default"><div class=3D"gmail_default"><font face=3D"arial, helvetica, sa=
ns-serif">DESCRIPTION =3D &quot;Apriltags application&quot;=A0</font></div>

<div class=3D"gmail_default"><font face=3D"arial, helvetica, sans-serif">SE=
CTION =3D &quot;examples&quot;=A0</font></div><div class=3D"gmail_default">=
<font face=3D"arial, helvetica, sans-serif">LICENSE =3D &quot;CLOSED&quot;=
=A0</font></div>

<div class=3D"gmail_default"><font face=3D"arial, helvetica, sans-serif">PR=
 =3D &quot;r12&quot;=A0</font></div><div class=3D"gmail_default"><font face=
=3D"arial, helvetica, sans-serif"><br></font></div><div class=3D"gmail_defa=
ult"><font face=3D"arial, helvetica, sans-serif">DEPENDS =3D &quot;opencv&q=
uot;</font></div>

<div class=3D"gmail_default"><span style=3D"font-family:arial,helvetica,san=
s-serif"><br></span></div><div class=3D"gmail_default"><span style=3D"font-=
family:arial,helvetica,sans-serif">SRC_URI =3D &quot;git://<a href=3D"http:=
//github.com/zafrullahsyed/apriltags.git;protocol=3Dhttps;tag=3Dv0.1">githu=
b.com/zafrullahsyed/apriltags.git;protocol=3Dhttps;tag=3Dv0.1</a>&quot;</sp=
an><br>

</div><div class=3D"gmail_default"><font face=3D"arial, helvetica, sans-ser=
if"><br></font></div><div class=3D"gmail_default"><font face=3D"arial, helv=
etica, sans-serif">S =3D &quot;${WORKDIR}/git&quot;</font></div><div class=
=3D"gmail_default">

<font face=3D"arial, helvetica, sans-serif"><br></font></div><div class=3D"=
gmail_default"><span style=3D"font-family:arial,helvetica,sans-serif">inher=
it pkgconfig autotools</span><br></div><div class=3D"gmail_default"><font f=
ace=3D"arial, helvetica, sans-serif"><br>

</font></div><div class=3D"gmail_default"><font face=3D"arial, helvetica, s=
ans-serif">do_install() {</font></div><div class=3D"gmail_default"><font fa=
ce=3D"arial, helvetica, sans-serif">=A0 =A0 install -d ${D}${bindir}</font>=
</div><div class=3D"gmail_default">

<font face=3D"arial, helvetica, sans-serif">=A0 =A0 install -m 0755 ${WORKD=
IR}/git/build/bin/apriltags_demo ${D}${bindir}</font></div><div class=3D"gm=
ail_default"><font face=3D"arial, helvetica, sans-serif">}</font></div></di=
v><div>

<br></div><div><div class=3D"gmail_default" style=3D"font-family:arial,helv=
etica,sans-serif">Error as follows:</div><br></div><div><div class=3D"gmail=
_default"><span style=3D"font-family:arial,helvetica,sans-serif"></span><fo=
nt face=3D"arial, helvetica, sans-serif">ERROR: QA Issue: package apriltags=
 contains bad RPATH /home/siguser/yocto-28-11/build/tmp/work/armv7a-vfp-neo=
n-poky-linux-gnueabi/apriltags/0.1-r12/git/build/lib in file /home/siguser/=
yocto-28-11/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/apriltags/0.1=
-r12/packages-split/apriltags/usr/bin/apriltags_demo</font></div>

<div class=3D"gmail_default"><font face=3D"arial, helvetica, sans-serif">ER=
ROR: QA run found fatal errors. Please consider fixing them.</font></div><d=
iv class=3D"gmail_default"><font face=3D"arial, helvetica, sans-serif">ERRO=
R: Function failed: do_package_qa</font></div>

<div class=3D"gmail_default"><font face=3D"arial, helvetica, sans-serif">ER=
ROR: Logfile of failure stored in: /home/siguser/yocto-28-11/build/tmp/work=
/armv7a-vfp-neon-poky-linux-gnueabi/apriltags/0.1-r12/temp/log.do_package.2=
7014</font></div>

<div class=3D"gmail_default"><font face=3D"arial, helvetica, sans-serif">ER=
ROR: Task 736 (/home/siguser/yocto-28-11/poky/meta-bebot/recipes-bebot/apri=
ltags/<a href=3D"http://apriltags_0.1.bb">apriltags_0.1.bb</a>, do_package)=
 failed with exit code &#39;1&#39;</font></div>

<div class=3D"gmail_default"><font face=3D"arial, helvetica, sans-serif">NO=
TE: Tasks Summary: Attempted 5449 tasks of which 5440 didn&#39;t need to be=
 rerun and 1 failed.</font></div><div class=3D"gmail_default"><font face=3D=
"arial, helvetica, sans-serif">No currently running tasks (5449 of 5455)</f=
ont></div>

<div class=3D"gmail_default"><font face=3D"arial, helvetica, sans-serif"><b=
r></font></div><div class=3D"gmail_default"><font face=3D"arial, helvetica,=
 sans-serif">Summary: 1 task failed:</font></div><div class=3D"gmail_defaul=
t"><font face=3D"arial, helvetica, sans-serif">=A0 /home/siguser/yocto-28-1=
1/poky/meta-bebot/recipes-bebot/apriltags/<a href=3D"http://apriltags_0.1.b=
b">apriltags_0.1.bb</a>, do_package</font><span style=3D"font-family:arial,=
helvetica,sans-serif"></span></div>

<br></div><div><br></div><div><div class=3D"gmail_default" style=3D"font-fa=
mily:arial,helvetica,sans-serif">Bitbake error points to this rpath(line 31=
9):</div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,=
sans-serif">

<br></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif"><a href=3D"https://github.com/zafrullahsyed/apriltags/blob/mas=
ter/cmake/pods.cmake" style=3D"font-family:arial">https://github.com/zafrul=
lahsyed/apriltags/blob/master/cmake/pods.cmake</a></div>

<div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-seri=
f"><br></div><pre style=3D"font-family:Consolas,&#39;Liberation Mono&#39;,C=
ourier,monospace;font-size:12px;margin-top:0px;margin-bottom:0px;color:rgb(=
51,51,51);line-height:18px">

<div class=3D"" id=3D"LC319" style=3D"padding-left:10px"><span class=3D"" s=
tyle=3D"color:rgb(153,153,136);font-style:italic"># abuse RPATH</span></div=
><div class=3D"" id=3D"LC320" style=3D"padding-left:10px">=A0=A0=A0=A0=A0=
=A0=A0=A0<span class=3D"" style=3D"color:rgb(0,134,179)">if</span><span cla=
ss=3D"" style>(</span><span class=3D"" style=3D"font-weight:bold">${</span>=
<span class=3D"" style=3D"color:teal">CMAKE_INSTALL_RPATH</span><span class=
=3D"" style=3D"font-weight:bold">}</span><span class=3D"" style>)</span></d=
iv>

<div class=3D"" id=3D"LC321" style=3D"padding-left:10px">=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0<span class=3D"" style=3D"color:rgb(0,134,179)">set</span=
><span class=3D"" style>(</span><span class=3D"" style=3D"color:rgb(221,17,=
68)">CMAKE_INSTALL_RPATH</span> <span class=3D"" style=3D"font-weight:bold"=
>${</span><span class=3D"" style=3D"color:teal">LIBRARY_INSTALL_PATH</span>=
<span class=3D"" style=3D"font-weight:bold">}</span><span class=3D"" style=
=3D"color:rgb(221,17,68)">:</span><span class=3D"" style=3D"font-weight:bol=
d">${</span><span class=3D"" style=3D"color:teal">CMAKE_INSTALL_RPATH</span=
><span class=3D"" style=3D"font-weight:bold">}</span><span class=3D"" style=
>)</span></div>

<div class=3D"" id=3D"LC322" style=3D"padding-left:10px">=A0=A0=A0=A0=A0=A0=
=A0=A0<span class=3D"" style=3D"color:rgb(0,134,179)">else</span><span clas=
s=3D"" style>(</span><span class=3D"" style=3D"font-weight:bold">${</span><=
span class=3D"" style=3D"color:teal">CMAKE_INSTALL_RPATH</span><span class=
=3D"" style=3D"font-weight:bold">}</span><span class=3D"" style>)</span></d=
iv>

<div class=3D"" id=3D"LC323" style=3D"padding-left:10px">=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0<span class=3D"" style=3D"color:rgb(0,134,179)">set</span=
><span class=3D"" style>(</span><span class=3D"" style=3D"color:rgb(221,17,=
68)">CMAKE_INSTALL_RPATH</span> <span class=3D"" style=3D"font-weight:bold"=
>${</span><span class=3D"" style=3D"color:teal">LIBRARY_INSTALL_PATH</span>=
<span class=3D"" style=3D"font-weight:bold">}</span><span class=3D"" style>=
)</span></div>

<div class=3D"" id=3D"LC324" style=3D"padding-left:10px">=A0=A0=A0=A0=A0=A0=
=A0=A0<span class=3D"" style=3D"color:rgb(0,134,179)">endif</span><span cla=
ss=3D"" style>(</span><span class=3D"" style=3D"font-weight:bold">${</span>=
<span class=3D"" style=3D"color:teal">CMAKE_INSTALL_RPATH</span><span class=
=3D"" style=3D"font-weight:bold">}</span><span class=3D"" style>)</span></d=
iv>

<div class=3D"" id=3D"LC325" style=3D"padding-left:10px"><br style></div><d=
iv class=3D"" id=3D"LC326" style=3D"padding-left:10px">=A0=A0=A0=A0=A0=A0=
=A0=A0<span class=3D"" style=3D"color:rgb(153,153,136);font-style:italic">#=
 for osx, which uses &quot;install name&quot; path rather than rpath</span>=
</div>

<div class=3D"" id=3D"LC327" style=3D"padding-left:10px">=A0=A0=A0=A0=A0=A0=
=A0=A0<span class=3D"" style=3D"color:rgb(153,153,136);font-style:italic">#=
set(CMAKE_INSTALL_NAME_DIR ${LIBRARY_OUTPUT_PATH})</span></div><div class=
=3D"" id=3D"LC328" style=3D"padding-left:10px">

=A0=A0=A0=A0=A0=A0=A0=A0<span class=3D"" style=3D"color:rgb(0,134,179)">set=
</span><span class=3D"" style>(</span><span class=3D"" style=3D"color:rgb(2=
21,17,68)">CMAKE_INSTALL_NAME_DIR</span> <span class=3D"" style=3D"font-wei=
ght:bold">${</span><span class=3D"" style=3D"color:teal">CMAKE_INSTALL_RPAT=
H</span><span class=3D"" style=3D"font-weight:bold">}</span></div>

</pre><div class=3D"gmail_default"><font color=3D"#333333" face=3D"Consolas=
, Liberation Mono, Courier, monospace"><span style=3D"font-size:12px;line-h=
eight:18px"><br></span></font></div><div class=3D"gmail_default"><font colo=
r=3D"#333333" face=3D"Consolas, Liberation Mono, Courier, monospace"><span =
style=3D"font-size:12px;line-height:18px">Any ideas where I am doing wrong?=
</span></font><span style=3D"font-family:arial,helvetica,sans-serif"></span=
></div>

<br></div>-- <br><div dir=3D"ltr"><span style=3D"font-family:arial,sans-ser=
if;font-size:13px;border-collapse:collapse;color:rgb(136,136,136)">Regards,=
<br>Zafrullah Syed</span><div><font color=3D"#888888" face=3D"arial, sans-s=
erif"><span style=3D"border-collapse:collapse"><br>

</span></font></div></div>
</div>

--001a11c3f51a11038c04f01ca643--
