Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DCE4E00B72; Tue,  4 Apr 2017 01:48:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7662EE00B5E
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 01:48:33 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id w43so40169187wrb.1
	for <yocto@yoctoproject.org>; Tue, 04 Apr 2017 01:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OS5IqB3ps4+glqcb8z1biJ373+G8q4LoDQo/AosXqqY=;
	b=TP/87a/BLd1I+JagBlF3GUk0bd4U3Oj3VjTojs1S6ZNaM782abVB0UWSeRtm2Eq5QV
	2Sn+0nYal1Ul50xUg+AQj43Edsz5U+GSUqm1ubjhMeDlgi2H1bfa16OvErbdpfXLVvw5
	zzO9hRaGIjrxcmXcMmb6RmWDTCoDrirF/YUFY4H9jQCbyqdCdYVzmm5O0R7Vo6HVJhK3
	LYD4tbMxzPiprizXC+D+DO3aJnpZB8+dqgzoBMfRLa0XZkuBURj30nuttJP16ImuK5Cm
	mD56C3nnNZYSO8X5TW/R6X9PXmm0x6ZcIZG+Xs4UaakWttzQNueNwYlvGI5WyOC2sXl4
	jeUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OS5IqB3ps4+glqcb8z1biJ373+G8q4LoDQo/AosXqqY=;
	b=YgRYtvu/LVS/gJ97D6h9/ZnooyRLtiYDz2RLiUS2hZtqvUSTEykDMwRWw/flkXZCTS
	kkTPnmY7FScb2hiKkKes4QLacasVJdNv6jfq4AH1ny0toAqcPmKAmrasAAOVoYIju7VR
	7kII1yTtGBRT7tKLXQ1C2gDl0rpXcIRwbRcjfXosDypG32bOoOmLCxwC7Dcgog9VfRc0
	hKVQII4oHspgpu/gRmN5TFh2+cnjb9p2eTESsHfy8H3sN4x2KdOdvnRBOBw8GDycKgM4
	A2eRWhOBx8DvsnDcfXZukGXTlYY1kkP1wFwTEDv+TtHh5G4EAtesT0OP1rOuV6cxmyJB
	VuoA==
X-Gm-Message-State: AFeK/H2zoARxRIROdOaB2k38zYwUhl6Sibzv7ZPt3ACVGSkfITCONLOAYL6CQDfxj6zUhtHMJT8g53aSGMjF+A==
X-Received: by 10.223.150.41 with SMTP id b38mr18996871wra.98.1491295713187;
	Tue, 04 Apr 2017 01:48:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.20.20 with HTTP; Tue, 4 Apr 2017 01:48:32 -0700 (PDT)
In-Reply-To: <20170324174916.17866-1-twoerner@gmail.com>
References: <20170324174916.17866-1-twoerner@gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Tue, 4 Apr 2017 10:48:32 +0200
Message-ID: <CAC+thW0tQhPQbz1OCDbohCm816A9JULTwSSJY1Rpa1_0XN-3gA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] rpi-config: waveshare screen support
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
X-List-Received-Date: Tue, 04 Apr 2017 08:48:36 -0000
Content-Type: multipart/alternative; boundary=001a113c33d43d5ead054c535760

--001a113c33d43d5ead054c535760
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 24, 2017 at 6:49 PM, Trevor Woerner <twoerner@gmail.com> wrote:

> Add support for the Waveshare 1024x600 "C" Rev2.1 7" IPS Capacitive Touch
> Screen LCD with HDMI interface:
>
>         http://www.waveshare.com/7inch-HDMI-LCD-C.htm
>         http://www.waveshare.com/wiki/7inch_HDMI_LCD_(C)
>
> This product works "out of the box" with the Raspberry Pi. Simply connect
> the provided HDMI and USB cables between the two devices. The touch<=3D>m=
ouse
> integration works automatically.
>
> Tested with a Raspberry Pi 3, with a 32-bit raspberrypi3 build.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  README                                  | 13 ++++++++++---
>  recipes-bsp/bootfiles/rpi-config_git.bb | 10 ++++++++++
>  2 files changed, 20 insertions(+), 3 deletions(-)
>
> diff --git a/README b/README
> index 65a1e5f..c58bc99 100644
> --- a/README
> +++ b/README
> @@ -29,7 +29,8 @@ Contents:
>      3.L. Enable SPI bus
>      3.M. Enable I2C
>      3.N. Enable PiTFT support
> -    3.O. Enable UART support
> +    3.O. Misc. display
> +    3.P. Enable UART support
>  4. Extra apps
>      4.A. omxplayer
>  5. Board Configuration
> @@ -241,9 +242,15 @@ List of currently supported models:
>      - pitft22
>      - pitft28r
>
> -3.O. Enable UART
> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +3.O. Misc. display
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +If you would like to use the Waveshare "C" 1024=C3=97600, 7 inch Capacit=
ive
> Touch
> +Screen LCD, HDMI interface (http://www.waveshare.com/7inch-HDMI-LCD-C.ht=
m
> )
> +Rev 2.1, please set the following in your local.conf
> +WAVESHARE_1024X600_C_2.1 =3D "1"
>
> +3.P. Enable UART
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>  RaspberryPi 1, 2 and CM will have UART console enabled by default.
>
>  RaspberryPi 3 does not have the UART enabled by default because this
> needs a
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb
> b/recipes-bsp/bootfiles/rpi-config_git.bb
> index 20ec343..8adc938 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -110,6 +110,16 @@ do_deploy() {
>          echo "# Enable VC4 Graphics" >> ${DEPLOYDIR}/bcm2835-
> bootfiles/config.txt
>          echo "dtoverlay=3Dvc4-kms-v3d,${VC4_CMA_SIZE}" >>
> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>      fi
> +
> +    # Waveshare "C" 1024x600 7" Rev2.1 IPS capacitive touch (
> http://www.waveshare.com/7inch-HDMI-LCD-C.htm)
> +    if [ "${WAVESHARE_1024X600_C_2.1}" =3D "1" ]; then
> +        echo "# Waveshare \"C\" 1024x600 7\" Rev2.1 IPS capacitive touch
> screen" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "max_usb_current=3D1" >> ${DEPLOYDIR}/bcm2835-
> bootfiles/config.txt
> +        echo "hdmi_group=3D2" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.t=
xt
> +        echo "hdmi_mode=3D87" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.t=
xt
> +        echo "hdmi_cvt 1024 600 60 6 0 0 0" >> ${DEPLOYDIR}/bcm2835-
> bootfiles/config.txt
> +        echo "hdmi_drive=3D1" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.t=
xt
> +    fi
>  }
>
>  do_deploy_append_raspberrypi3-64() {
> --
> 2.12.0.rc1.48.g076c053
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


After applying this commit the build fails with:

ERROR: rpi-config-git-r5 do_deploy: Function failed: do_deploy (log file is
located at
/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/raspbe=
rrypi3-poky-linux-gnueabi/rpi-config/git-r5/temp/log.do_deploy.32154)
ERROR: Logfile of failure stored in:
/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/raspbe=
rrypi3-poky-linux-gnueabi/rpi-config/git-r5/temp/log.do_deploy.32154
Log data follows:
| DEBUG: Executing python function sstate_task_prefunc
| DEBUG: Removing manifest:
/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/deploy/imag=
es/raspberrypi3/bcm2835-bootfiles/config.txt
| DEBUG: Removing manifest:
/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/deploy/imag=
es/raspberrypi3/bcm2835-bootfiles/
| DEBUG: Python function sstate_task_prefunc finished
| DEBUG: Executing shell function do_deploy
|
/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/raspbe=
rrypi3-poky-linux-gnueabi/rpi-config/git-r5/temp/run.do_deploy.32154:
192:
/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/raspbe=
rrypi3-poky-linux-gnueabi/rpi-config/git-r5/temp/run.do_deploy.32154:
Bad substitution
| WARNING: exit code 2 from a shell command.
| ERROR: Function failed: do_deploy (log file is located at
/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/raspbe=
rrypi3-poky-linux-gnueabi/rpi-config/git-r5/temp/log.do_deploy.32154)
ERROR: Task
(/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../lay=
ers/meta-raspberrypi/recipes-bsp/bootfiles/rpi-config_git.bb:do_deploy)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 4857 tasks of which 4855 didn't need to be
rerun and 1 failed.

Still to look at it closer... maybe related to some shell configuration on
my side?

--001a113c33d43d5ead054c535760
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Mar 24, 2017 at 6:49 PM, Trevor Woerner <span dir=3D"ltr">&lt;<a href=
=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Add sup=
port for the Waveshare 1024x600 &quot;C&quot; Rev2.1 7&quot; IPS Capacitive=
 Touch<br>
Screen LCD with HDMI interface:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://www.waveshare.com/7inch-HDMI-=
LCD-C.htm" rel=3D"noreferrer" target=3D"_blank">http://www.waveshare.com/<w=
br>7inch-HDMI-LCD-C.htm</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://www.waveshare.com/wiki/7inch_=
HDMI_LCD_%28C%29" rel=3D"noreferrer" target=3D"_blank">http://www.waveshare=
.com/wiki/<wbr>7inch_HDMI_LCD_(C)</a><br>
<br>
This product works &quot;out of the box&quot; with the Raspberry Pi. Simply=
 connect<br>
the provided HDMI and USB cables between the two devices. The touch&lt;=3D&=
gt;mouse<br>
integration works automatically.<br>
<br>
Tested with a Raspberry Pi 3, with a 32-bit raspberrypi3 build.<br>
<br>
Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com">two=
erner@gmail.com</a>&gt;<br>
---<br>
=C2=A0README=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 13 ++++++++++---<=
br>
=C2=A0recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">rpi-<wbr>config_git.bb</a> | 10 ++++++++++<br>
=C2=A02 files changed, 20 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/README b/README<br>
index 65a1e5f..c58bc99 100644<br>
--- a/README<br>
+++ b/README<br>
@@ -29,7 +29,8 @@ Contents:<br>
=C2=A0 =C2=A0 =C2=A03.L. Enable SPI bus<br>
=C2=A0 =C2=A0 =C2=A03.M. Enable I2C<br>
=C2=A0 =C2=A0 =C2=A03.N. Enable PiTFT support<br>
-=C2=A0 =C2=A0 3.O. Enable UART support<br>
+=C2=A0 =C2=A0 3.O. Misc. display<br>
+=C2=A0 =C2=A0 3.P. Enable UART support<br>
=C2=A04. Extra apps<br>
=C2=A0 =C2=A0 =C2=A04.A. omxplayer<br>
=C2=A05. Board Configuration<br>
@@ -241,9 +242,15 @@ List of currently supported models:<br>
=C2=A0 =C2=A0 =C2=A0- pitft22<br>
=C2=A0 =C2=A0 =C2=A0- pitft28r<br>
<br>
-3.O. Enable UART<br>
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
+3.O. Misc. display<br>
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
+If you would like to use the Waveshare &quot;C&quot; 1024=C3=97600, 7 inch=
 Capacitive Touch<br>
+Screen LCD, HDMI interface (<a href=3D"http://www.waveshare.com/7inch-HDMI=
-LCD-C.htm" rel=3D"noreferrer" target=3D"_blank">http://www.waveshare.com/<=
wbr>7inch-HDMI-LCD-C.htm</a>)<br>
+Rev 2.1, please set the following in your local.conf<br>
+WAVESHARE_1024X600_C_2.1 =3D &quot;1&quot;<br>
<br>
+3.P. Enable UART<br>
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
=C2=A0RaspberryPi 1, 2 and CM will have UART console enabled by default.<br=
>
<br>
=C2=A0RaspberryPi 3 does not have the UART enabled by default because this =
needs a<br>
diff --git a/recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" rel=
=3D"noreferrer" target=3D"_blank">rpi-<wbr>config_git.bb</a> b/recipes-bsp/=
bootfiles/<a href=3D"http://rpi-config_git.bb" rel=3D"noreferrer" target=3D=
"_blank">rpi-<wbr>config_git.bb</a><br>
index 20ec343..8adc938 100644<br>
--- a/recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">rpi-<wbr>config_git.bb</a><br>
+++ b/recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">rpi-<wbr>config_git.bb</a><br>
@@ -110,6 +110,16 @@ do_deploy() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;# Enable VC4 Graphics&quot; &g=
t;&gt; ${DEPLOYDIR}/bcm2835-<wbr>bootfiles/config.txt<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;dtoverlay=3Dvc4-kms-v3d,${VC4_=
<wbr>CMA_SIZE}&quot; &gt;&gt; ${DEPLOYDIR}/bcm2835-<wbr>bootfiles/config.tx=
t<br>
=C2=A0 =C2=A0 =C2=A0fi<br>
+<br>
+=C2=A0 =C2=A0 # Waveshare &quot;C&quot; 1024x600 7&quot; Rev2.1 IPS capaci=
tive touch (<a href=3D"http://www.waveshare.com/7inch-HDMI-LCD-C.htm" rel=
=3D"noreferrer" target=3D"_blank">http://www.waveshare.com/<wbr>7inch-HDMI-=
LCD-C.htm</a>)<br>
+=C2=A0 =C2=A0 if [ &quot;${WAVESHARE_1024X600_C_2.1}&quot; =3D &quot;1&quo=
t; ]; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;# Waveshare \&quot;C\&quot; 1024x60=
0 7\&quot; Rev2.1 IPS capacitive touch screen&quot; &gt;&gt; ${DEPLOYDIR}/b=
cm2835-<wbr>bootfiles/config.txt<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;max_usb_current=3D1&quot; &gt;&gt; =
${DEPLOYDIR}/bcm2835-<wbr>bootfiles/config.txt<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;hdmi_group=3D2&quot; &gt;&gt; ${DEP=
LOYDIR}/bcm2835-<wbr>bootfiles/config.txt<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;hdmi_mode=3D87&quot; &gt;&gt; ${DEP=
LOYDIR}/bcm2835-<wbr>bootfiles/config.txt<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;hdmi_cvt 1024 600 60 6 0 0 0&quot; =
&gt;&gt; ${DEPLOYDIR}/bcm2835-<wbr>bootfiles/config.txt<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;hdmi_drive=3D1&quot; &gt;&gt; ${DEP=
LOYDIR}/bcm2835-<wbr>bootfiles/config.txt<br>
+=C2=A0 =C2=A0 fi<br>
=C2=A0}<br>
<br>
=C2=A0do_deploy_append_raspberrypi3-<wbr>64() {<br>
<span class=3D"gmail-HOEnZb"><font color=3D"#888888">--<br>
2.12.0.rc1.48.g076c053<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br><br></div><div class=3D"gmail_extra">A=
fter applying this commit the build fails with:<br><br>ERROR: rpi-config-gi=
t-r5 do_deploy: Function failed: do_deploy (log file is located at /home/gi=
zero/work/smartliving/distro/repo-master/build-poky/tmp/work/raspberrypi3-p=
oky-linux-gnueabi/rpi-config/git-r5/temp/log.do_deploy.32154)<br>ERROR: Log=
file of failure stored in: /home/gizero/work/smartliving/distro/repo-master=
/build-poky/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-config/git-r5/temp=
/log.do_deploy.32154<br>Log data follows:<br>| DEBUG: Executing python func=
tion sstate_task_prefunc<br>| DEBUG: Removing manifest: /home/gizero/work/s=
martliving/distro/repo-master/build-poky/tmp/deploy/images/raspberrypi3/bcm=
2835-bootfiles/config.txt<br>| DEBUG: Removing manifest: /home/gizero/work/=
smartliving/distro/repo-master/build-poky/tmp/deploy/images/raspberrypi3/bc=
m2835-bootfiles/<br>| DEBUG: Python function sstate_task_prefunc finished<b=
r>| DEBUG: Executing shell function do_deploy<br>| /home/gizero/work/smartl=
iving/distro/repo-master/build-poky/tmp/work/raspberrypi3-poky-linux-gnueab=
i/rpi-config/git-r5/temp/run.do_deploy.32154: 192: /home/gizero/work/smartl=
iving/distro/repo-master/build-poky/tmp/work/raspberrypi3-poky-linux-gnueab=
i/rpi-config/git-r5/temp/run.do_deploy.32154: Bad substitution<br>| WARNING=
: exit code 2 from a shell command.<br>| ERROR: Function failed: do_deploy =
(log file is located at /home/gizero/work/smartliving/distro/repo-master/bu=
ild-poky/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-config/git-r5/temp/lo=
g.do_deploy.32154)<br>ERROR: Task (/home/gizero/work/smartliving/distro/rep=
o-master/build-poky/conf/../../layers/meta-raspberrypi/recipes-bsp/bootfile=
s/rpi-config_git.bb:do_deploy) failed with exit code &#39;1&#39;<br>NOTE: T=
asks Summary: Attempted 4857 tasks of which 4855 didn&#39;t need to be reru=
n and 1 failed.<br><br></div><div class=3D"gmail_extra">Still to look at it=
 closer... maybe related to some shell configuration on my side?<br></div><=
/div>

--001a113c33d43d5ead054c535760--
