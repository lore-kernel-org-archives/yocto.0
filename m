Return-Path: <tobias.bostrom@tritech.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A411AE00A93; Thu,  2 Jul 2015 02:55:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 450 seconds by postgrey-1.32 at yocto-www;
	Thu, 02 Jul 2015 02:55:08 PDT
Received: from tritech.se (tritech.se [46.59.120.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15731E00A31
	for <yocto@yoctoproject.org>; Thu,  2 Jul 2015 02:55:07 -0700 (PDT)
Received: from post.tritech.se (post.tritech.se [10.75.60.100])
	by tritech.se (8.14.3/8.14.3) with ESMTP id t629lUqn029345
	for <yocto@yoctoproject.org>; Thu, 2 Jul 2015 11:47:35 +0200
Received: from POST.tritech.se ([10.75.60.100]) by post ([10.75.60.100]) with
	mapi id 14.02.0387.000; Thu, 2 Jul 2015 11:47:29 +0200
From: =?iso-8859-1?Q?Tobias_Bostr=F6m?= <tobias.bostrom@tritech.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-raspberrypi] libepoxy do_configure fails
Thread-Index: AQHQtKwaGQwY5o7ZVUGv9ptSSJ+1jw==
Date: Thu, 2 Jul 2015 09:47:28 +0000
Message-ID: <674E4B49C1A61B4592185A7FB9B55276317002@post>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [81.170.187.6]
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 02 Jul 2015 08:03:01 -0700
Subject: [meta-raspberrypi] libepoxy do_configure fails
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
X-List-Received-Date: Thu, 02 Jul 2015 09:55:17 -0000
X-Groupsio-MsgNum: 25328
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_674E4B49C1A61B4592185A7FB9B55276317002post_";
	type="multipart/alternative"

--_004_674E4B49C1A61B4592185A7FB9B55276317002post_
Content-Type: multipart/alternative;
	boundary="_000_674E4B49C1A61B4592185A7FB9B55276317002post_"

--_000_674E4B49C1A61B4592185A7FB9B55276317002post_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hello!

I'm currently trying to build the core-image-x11 for the raspberry pi.Howev=
er, when doing the task responsible for configuring libepoxy, bitbake fails=
. The error message i get is "no package 'egl' found". Below is parts error=
 messages I received. Anyone got any ideas on what the problem might be?

Best regards,
Tobias Bostr=F6m

| checking whether -lc should be explicitly linked in... no
| checking dynamic linker characteristics... GNU/Linux ld.so
| checking how to hardcode library paths into programs... immediate
| checking whether stripping libraries is possible... yes
| checking if libtool supports shared libraries... yes
| checking whether to build shared libraries... yes
| checking whether to build static libraries... no
| checking for special C compiler options needed for large files... no
| checking for _FILE_OFFSET_BITS value needed for large files... 64
| checking KHR/khrplatform.h usability... yes
| checking KHR/khrplatform.h presence... yes
| checking for KHR/khrplatform.h... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -marm  -mthumb-i=
nterwork -mfloat-abi=3Dhard -mfpu=3Dneon-vfpv4 -mtune=3Dcortex-a7 --sysroot=
=3D/home/tobiasb/Development/build/tmp/sysroots/raspberrypi2 -std=3Dgnu99 s=
upports -Wno-int-conversion... yes
| checking for X11... yes
| checking for EGL... no
| configure: error: Package requirements (egl) were not met:
|
| No package 'egl' found
|
| Consider adjusting the PKG_CONFIG_PATH environment variable if you
| installed software in a non-standard prefix.
|
| Alternatively, you may set the environment variables EGL_CFLAGS
| and EGL_LIBS to avoid the need to call pkg-config.
| See the pkg-config man page for more details.
| Configure failed. The contents of all config.log files follows to aid deb=
ugging
| ERROR: oe_runconf failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at /home/tobias=
b/Development/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/l=
ibepoxy/1.2+gitAUTOINC+20062c25e7-r0/temp/log.do_configure.4056)
ERROR: Task 5 (/home/tobiasb/Development/poky/meta/recipes-graphics/libepox=
y/libepoxy_git.bb<http://libepoxy_git.bb/>, do_configure) failed with exit =
code '1'
NOTE: Tasks Summary: Attempted 566 tasks of which 565 didn't need to be rer=
un and 1 failed.
No currently running tasks (527 of 574)

[cid:tritech-logo1f36e6]


Tobias Bostr=F6m


tobias.bostrom@tritech.se

www.tritech.se<http://www.tritech.se>
+46 31 763 38 00
Nordstadstorget 6
SE-411 05 G=F6teborg, Sweden


--_000_674E4B49C1A61B4592185A7FB9B55276317002post_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" id=3D"owaParaStyle"></style>
</head>
<body fpstyle=3D"1" ocsi=3D"0">
<div style=3D"FONT-SIZE: 12pt; FONT-FAMILY: '&gt;
&lt;P style=3D" MARGIN-BOTTOM:6pt;MARGIN-TOP:6pt?=3D"">
<p></p>
</div>
<br>
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hello!
<div><br>
</div>
<div>I'm currently trying to build the core-image-x11 for the raspberry pi.=
However, when doing the task responsible for configuring libepoxy, bitbake =
fails. The error message i get is &quot;no package 'egl' found&quot;. Below=
 is parts error messages I received. Anyone
 got any ideas on what the problem might be?</div>
<div><br>
</div>
<div>Best regards,</div>
<div>Tobias Bostr=F6m</div>
<div><br>
</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| checking whether -lc should be explicitly linked in... no</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| checking dynamic linker characteristics... GNU/Linux ld.so</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| checking how to hardcode library paths into programs... immediate</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| checking whether stripping libraries is possible... yes</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| checking if libtool supports shared libraries... yes</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| checking whether to build shared libraries... yes</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| checking whether to build static libraries... no</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| checking for special C compiler options needed for large files... no</div=
>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| checking for _FILE_OFFSET_BITS value needed for large files... 64</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| checking KHR/khrplatform.h usability... yes</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| checking KHR/khrplatform.h presence... yes</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| checking for KHR/khrplatform.h... yes</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| checking if arm-poky-linux-gnueabi-gcc &nbsp;-march=3Darmv7-a -marm &nbsp=
;-mthumb-interwork -mfloat-abi=3Dhard -mfpu=3Dneon-vfpv4 -mtune=3Dcortex-a7=
 --sysroot=3D/home/tobiasb/<wbr>Development/build/tmp/<wbr>sysroots/raspber=
rypi2 -std=3Dgnu99 supports -Wno-int-conversion... yes</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| checking for X11... yes</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| checking for EGL... no</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| configure: error: Package requirements (egl) were not met:</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
|</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| No package 'egl' found</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
|</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| Consider adjusting the PKG_CONFIG_PATH environment variable if you</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| installed software in a non-standard prefix.</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
|</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| Alternatively, you may set the environment variables EGL_CFLAGS</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| and EGL_LIBS to avoid the need to call pkg-config.</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| See the pkg-config man page for more details.</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| Configure failed. The contents of all config.log files follows to aid deb=
ugging</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| ERROR: oe_runconf failed</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| WARNING: exit code 1 from a shell command.</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
| ERROR: Function failed: do_configure (log file is located at /home/tobias=
b/Development/<wbr>build/tmp/work/cortexa7hf-vfp-<wbr>vfpv4-neon-poky-linux=
-gnueabi/<wbr>libepoxy/1.2&#43;gitAUTOINC&#43;<wbr>20062c25e7-r0/temp/log.d=
o_<wbr>configure.4056)</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
ERROR: Task 5 (/home/tobiasb/Development/<wbr>poky/meta/recipes-graphics/<w=
br>libepoxy/<a href=3D"http://libepoxy_git.bb/" target=3D"_blank" style=3D"=
color: rgb(17, 85, 204);">libepoxy_git.bb</a>, do_configure) failed with ex=
it code '1'</div>
<div style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-=
size: 12.8000001907349px; background-color: rgb(255, 255, 255);">
NOTE: Tasks Summary: Attempted 566 tasks of which 565 didn't need to be rer=
un and 1 failed.</div>
<div><span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif;=
 font-size: 12.8000001907349px; background-color: rgb(255, 255, 255);">No c=
urrently running tasks (527 of 574)</span>&nbsp;&nbsp; &nbsp;</div>
</div>
<div class=3D"WordSection1"><br>
</div>
<div class=3D"WordSection1"><img border=3D"0" hspace=3D"0" align=3D"top" sr=
c=3D"cid:tritech-logo1f36e6" &gt;<BR=3D"">
</div>
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><b><span style=3D"FONT-SIZE: 9pt; FONT-FAMILY: 'Aria=
l','sans-serif'; COLOR: black"></span></b><br>
</p>
<b><span style=3D"FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; COLOR:=
 black">
<p style=3D"MARGIN-BOTTOM: 6pt; MARGIN-TOP: 6pt"><span style=3D"FONT-SIZE: =
9pt; FONT-WEIGHT: bold; COLOR: #000000">Tobias Bostr=F6m</span></p>
<p style=3D"MARGIN-BOTTOM: 6pt; MARGIN-TOP: 6pt"><span style=3D"FONT-SIZE: =
9pt; FONT-WEIGHT: bold; COLOR: #000000"></span></p>
<p style=3D"MARGIN-BOTTOM: 6pt; MARGIN-TOP: 6pt"><br>
</p>
<p style=3D"MARGIN-BOTTOM: 6pt; MARGIN-TOP: 6pt"><span style=3D"FONT-SIZE: =
9pt; COLOR: #4bacc6">tobias.bostrom@tritech.se</span></p>
<p style=3D"MARGIN-BOTTOM: 6pt; MARGIN-TOP: 6pt"><span style=3D"FONT-SIZE: =
9pt; COLOR: #000000"></span></p>
</span></b>
<p class=3D"MsoNormal"><span style=3D"FONT-SIZE: 9pt; FONT-FAMILY: 'Arial',=
'sans-serif'"></span><br>
</p>
<p class=3D"MsoNormal"><span style=3D"FONT-SIZE: 9pt; FONT-FAMILY: 'Arial',=
'sans-serif'; COLOR: #33a7d7"><a href=3D"http://www.tritech.se"><font color=
=3D"#4bacc6">www.tritech.se</font></a></span></p>
<p class=3D"MsoNormal"><span style=3D"FONT-SIZE: 9pt; FONT-FAMILY: 'Arial',=
'sans-serif'; COLOR: black">&#43;46 31 763 38 00</span></p>
<p class=3D"MsoNormal"><span style=3D"FONT-SIZE: 9pt; FONT-FAMILY: 'Arial',=
'sans-serif'; COLOR: black">Nordstadstorget 6</span></p>
<p class=3D"MsoNormal"><span style=3D"FONT-SIZE: 9pt; FONT-FAMILY: 'Arial',=
'sans-serif'; COLOR: black">SE-411 05 G=F6teborg, Sweden</span></p>
</div>
<br>
</body>
</html>

--_000_674E4B49C1A61B4592185A7FB9B55276317002post_--

--_004_674E4B49C1A61B4592185A7FB9B55276317002post_
Content-Type: image/jpeg; name="tritech-logo1f36e6"
Content-Description: tritech-logo1f36e6
Content-Disposition: inline; filename="tritech-logo1f36e6"; size=1530;
	creation-date="Thu, 02 Jul 2015 09:47:30 GMT";
	modification-date="Thu, 02 Jul 2015 09:47:30 GMT"
Content-ID: <tritech-logo1f36e6>
Content-Transfer-Encoding: base64

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

--_004_674E4B49C1A61B4592185A7FB9B55276317002post_--
