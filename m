Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00422E009BE; Tue, 21 Jul 2015 18:08:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.250 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm28-vm5.bullet.mail.ne1.yahoo.com
	(nm28-vm5.bullet.mail.ne1.yahoo.com [98.138.91.250])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BF12E0096A
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 18:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1437527291; bh=eleaWfHD239WTtPQMlv8hXfgtNuYruCiBZbevpZdveU=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=rvy9hFssh7Y1I3OWLevw2lopweYGuW57WFIMqpXf2aZl3Myy6MtlYFT4nol2lfnsYFahWDgmVaqjFuCjFQOXkUfIF507J3Zdu/7xxZIQVT8/qccnpufOSqJaB7br8AxaFAYrT1zFvyIJMduLkDqTciiV/Ju0NfH/VE5jRraYiocX5TQMsRWqoEBzjFHKmx2BmBUBOpDDIvfF88OmfQJLCp/T3jH5CN3uhUxQcOJJ8RM8cvQS52VFD++XdJon5U/cgOp3eOEijMtFCxHMWQBP4DZQnP7Rf6bnFcshlS6pTqE0f78EUfrtT01H86pe1rUvyfREDHPf33/5I8SU/r6rlg==
Received: from [98.138.100.115] by nm28.bullet.mail.ne1.yahoo.com with NNFMP;
	22 Jul 2015 01:08:11 -0000
Received: from [98.138.89.168] by tm106.bullet.mail.ne1.yahoo.com with NNFMP;
	22 Jul 2015 01:08:11 -0000
Received: from [127.0.0.1] by omp1024.mail.ne1.yahoo.com with NNFMP;
	22 Jul 2015 01:08:11 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 208141.87002.bm@omp1024.mail.ne1.yahoo.com
X-YMail-OSG: cKd._wQVM1l3lqPNDbwNPLNXP3jJeuYODMwW.Do5Yjrc0AmyUB3hQElOvU_Q.HM
	1GEg1KhOm965cRFBsr.k88mVaVQIuA0DZGDTbvh809mB2FK5XchQYgwlUpcRjxplkhjMVaVtydby
	Afjsj0Vk2wntk7TJpwMAU6tD.JaygGEcjYHwPoxiRQkRe6AQg4EzzHRYPCVThzAhxf_liKO12Ijr
	9QjMMFE2xILSkxKL_a164QNucIlYecVyMDvO5BDJtFUvH2QDL94S_YNxBYSlzbIXw24uwWUu3hMC
	1xrk5u9W9EPRXoHH4FtLt0NgrXvcQ97Y8ebhrWGdzmDwQA_vH7NO2JemLaH4CKV7Y92c7iUfhD72
	p7Jh.9UV6MV87EcVMBBS5hnA4vI8UDQp87CV4Uyjf6I39Ibs7xDjhEjxtb_EFdxW_Y9uv0_Gphj6
	u4NlkR_4meibXLEYdIpcvUEi9jo01xId1OGHXnROQLy6XIr7Sq2iWHGUQLvO6pR7ubm9hPQmj7jq
	bCEUyWC9G9SAC9YEK6Px7_hOHCMU_7ns-
Received: by 98.138.105.205; Wed, 22 Jul 2015 01:08:10 +0000 
Date: Wed, 22 Jul 2015 01:07:35 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1419557501.51458.1437527255727.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: core-image-sato raspberrypi2
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 22 Jul 2015 01:08:18 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_51457_1171492819.1437527255724"

------=_Part_51457_1171492819.1437527255724
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,In the file poky/meta/recipes-graphics/libepoxy/libepoxy_git.bb=20
I tried to add --disable-egl, with no success

PACKAGECONFIG[x11] =3D "--enable-glx, --disable-glx, virtual/libx11"
 | checking for EGL... no
| configure: error: Package requirements (egl) were not met:
|=20
| No package 'egl' found
|=20
| Consider adjusting the PKG_CONFIG_PATH environment variable if you
| installed software in a non-standard prefix.
|=20
| Alternatively, you may set the environment variables EGL_CFLAGS
| and EGL_LIBS to avoid the need to call pkg-config.
| See the pkg-config man page for more details.
| Configure failed. The contents of all config.log files follows to aid deb=
ugging
| WARNING: exit code 1 from a shell command.
| ERROR: oe_runconf failed
| ERROR: Function failed: do_configure (log file is located at /home/vidal/=
wkg/yocto/RaspberryPi2/poky/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-l=
inux-gnueabi/libepoxy/1.2+gitAUTOINC+20062c25e7-r0/temp/log.do_configure.23=
311)
ERROR: Task 4597 (/home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-grap=
hics/libepoxy/libepoxy_git.bb, do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3158 tasks of which 3080 didn't need to be r=
erun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
=C2=A0 /home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-graphics/libepo=
xy/libepoxy_git.bb, do_configure
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

I found on the web reference to userland do I need this layer?Thanks for al=
l the help.
=C2=A0Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613

------=_Part_51457_1171492819.1437527255724
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1437526876305_5063"><span>Hi all,</sp=
an></div><div dir=3D"ltr" id=3D"yui_3_16_0_1_1437526876305_5084">In the fil=
e poky/meta/recipes-graphics/libepoxy/libepoxy_git.bb <br></div><div id=3D"=
yui_3_16_0_1_1437526876305_5209" dir=3D"ltr">I tried to add --disable-egl, =
with no success</div><div id=3D"yui_3_16_0_1_1437526876305_5231" dir=3D"ltr=
"><br></div><div dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_143752687630=
5_5197" dir=3D"ltr">PACKAGECONFIG[x11] =3D "--enable-glx, --disable-glx, vi=
rtual/libx11"</div><h3 id=3D"yui_3_16_0_1_1437526876305_5087" class=3D""> <=
span class=3D"" title=3D"core-image-sato raspberrypi2">| checking for EGL..=
. no<br class=3D"">| configure: error: Package requirements (egl) were not =
met:<br class=3D"">| <br class=3D"">| No package 'egl' found<br class=3D"">=
| <br class=3D"">| Consider adjusting the PKG_CONFIG_PATH environment varia=
ble if you<br class=3D"">| installed software in a non-standard prefix.<br =
class=3D"">| <br class=3D"">| Alternatively, you may set the environment va=
riables EGL_CFLAGS<br class=3D"">| and EGL_LIBS to avoid the need to call p=
kg-config.<br class=3D"">| See the pkg-config man page for more details.<br=
 class=3D"">| Configure failed. The contents of all config.log files follow=
s to aid debugging<br class=3D"">| WARNING: exit code 1 from a shell comman=
d.<br class=3D"">| ERROR: oe_runconf failed<br class=3D"">| ERROR: Function=
 failed: do_configure (log file is located at /home/vidal/wkg/yocto/Raspber=
ryPi2/poky/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/libe=
poxy/1.2+gitAUTOINC+20062c25e7-r0/temp/log.do_configure.23311)<br class=3D"=
">ERROR: Task 4597 (/home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-gr=
aphics/libepoxy/libepoxy_git.bb, do_configure) failed with exit code '1'<br=
 class=3D"">NOTE: Tasks Summary: Attempted 3158 tasks of which 3080 didn't =
need to be rerun and 1 failed.<br class=3D"">Waiting for 0 running tasks to=
 finish:<br class=3D""><br class=3D"">Summary: 1 task failed:<br class=3D""=
>&nbsp; /home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-graphics/libep=
oxy/libepoxy_git.bb, do_configure<br class=3D"">Summary: There were 2 ERROR=
 messages shown, returning a non-zero exit code.</span></h3><div><br></div>=
<div dir=3D"ltr">I found on the web reference to userland do I need this la=
yer?</div><div dir=3D"ltr">Thanks for all the help.</div><div dir=3D"ltr"><=
br></div><div>&nbsp;</div><div><div>Edward Vidal Jr.<br>e-mail develone@sbc=
global.net<br>915-595-1613</div></div></div></body></html>

------=_Part_51457_1171492819.1437527255724--
