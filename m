Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6966E00B27; Tue,  4 Apr 2017 05:48:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gizero[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20266E00B21
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 05:48:54 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id w43so41956372wrb.1
	for <yocto@yoctoproject.org>; Tue, 04 Apr 2017 05:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=99HQJQILwROrRhAN+p70FFYknbLqF4SspUC0EE02JrM=;
	b=l9XewLXEOGF0XRFrae5URxeh/0gRQ9Zkf2R8Vm8LNQkZ5CPmK1Lng8YO9UEMiSq9+p
	q5XoBk5slZPk5gNLuEi3s3Ev+9/DvqPyqPu6sXJtXtHGCJxr+3P/CawDSwUeOHPYSfyl
	BGg11VrjlRKIN1wn9Lt8q6mxVth/t/D+oH/5kgrgo47bmn6i7UkMG31ZrlkMG+7/aLsY
	d+b00YkUu3IU18lRFbsX9EV75CtBeVeD9en3hA7WMHHssXuRAfOfyuBKPIixo5KCyY0s
	M78Rj0shqrEyOtkzLW45r3rfsF0Ty2g1pD2I4PW2/GPSOWwVuSlxUqYMmco5nxYImogH
	WRtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=99HQJQILwROrRhAN+p70FFYknbLqF4SspUC0EE02JrM=;
	b=GHfLhvpK+qnTEJRAsKar5WnfpS9NAg9FoLF2Fa4ozJbHGRd/OBrbEg9D74Cw5LSdes
	4Gbnrcd5VnR0Agk+HQMkDbp5R/qUxWElDI7fUgmToBRC9lMRf7zmn/XRze79XZj9zLA+
	WOvsPYH4EpkebICPItWWYSRzVKSjtQOnxIsMLN0yhcMoq9HcfBRV5qQ9/lWZkIn9SUUV
	oqypiT8sKS2Zg6oFe9kSnB+O2rFgOud2TtC/BFWd81HaJ6hEeLAsTMkzcqaXQXmUxtCx
	kpSQOF0I9BOVgoc0f4xlZoFdT2BASTikF1ysg1Q10/VpKLDc7zQ5DfHR5HgVlsv6hzgz
	SFXA==
X-Gm-Message-State: AFeK/H17yceTRhi4LTHPp7fyNvDOd6U0ZY5aw88HSFGUqyouRHIF4xeLwgkrSdHP9yBqp9NGg990orW3clYMTg==
X-Received: by 10.223.136.125 with SMTP id e58mr21024864wre.14.1491310133791; 
	Tue, 04 Apr 2017 05:48:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.20.20 with HTTP; Tue, 4 Apr 2017 05:48:53 -0700 (PDT)
In-Reply-To: <9D67DA24-B045-49CD-B397-2A01CA38C4EA@gherzan.com>
References: <20170324174916.17866-1-twoerner@gmail.com>
	<CAC+thW0tQhPQbz1OCDbohCm816A9JULTwSSJY1Rpa1_0XN-3gA@mail.gmail.com>
	<9D67DA24-B045-49CD-B397-2A01CA38C4EA@gherzan.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Tue, 4 Apr 2017 14:48:53 +0200
Message-ID: <CAC+thW0vo4nEyeWNcZdPOV0xyt3wWARB8Kjnse_Ho2cNK4TEcQ@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.com>
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
X-List-Received-Date: Tue, 04 Apr 2017 12:48:56 -0000
Content-Type: multipart/alternative; boundary=001a1147426ac65518054c56b2ff

--001a1147426ac65518054c56b2ff
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 4, 2017 at 12:17 PM, Andrei Gherzan <andrei@gherzan.com> wrote:

> Hi,
>
> On 4 April 2017 09:48:32 BST, Andrea Galbusera <gizero@gmail.com> wrote:
> >On Fri, Mar 24, 2017 at 6:49 PM, Trevor Woerner <twoerner@gmail.com>
> >wrote:
> >
> >> Add support for the Waveshare 1024x600 "C" Rev2.1 7" IPS Capacitive
> >Touch
> >> Screen LCD with HDMI interface:
> >>
> >>         http://www.waveshare.com/7inch-HDMI-LCD-C.htm
> >>         http://www.waveshare.com/wiki/7inch_HDMI_LCD_(C)
> >>
> >> This product works "out of the box" with the Raspberry Pi. Simply
> >connect
> >> the provided HDMI and USB cables between the two devices. The
> >touch<=3D>mouse
> >> integration works automatically.
> >>
> >> Tested with a Raspberry Pi 3, with a 32-bit raspberrypi3 build.
> >>
> >> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> >> ---
> >>  README                                  | 13 ++++++++++---
> >>  recipes-bsp/bootfiles/rpi-config_git.bb | 10 ++++++++++
> >>  2 files changed, 20 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/README b/README
> >> index 65a1e5f..c58bc99 100644
> >> --- a/README
> >> +++ b/README
> >> @@ -29,7 +29,8 @@ Contents:
> >>      3.L. Enable SPI bus
> >>      3.M. Enable I2C
> >>      3.N. Enable PiTFT support
> >> -    3.O. Enable UART support
> >> +    3.O. Misc. display
> >> +    3.P. Enable UART support
> >>  4. Extra apps
> >>      4.A. omxplayer
> >>  5. Board Configuration
> >> @@ -241,9 +242,15 @@ List of currently supported models:
> >>      - pitft22
> >>      - pitft28r
> >>
> >> -3.O. Enable UART
> >> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >> +3.O. Misc. display
> >> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >> +If you would like to use the Waveshare "C" 1024=C3=97600, 7 inch
> >Capacitive
> >> Touch
> >> +Screen LCD, HDMI interface
> >(http://www.waveshare.com/7inch-HDMI-LCD-C.htm
> >> )
> >> +Rev 2.1, please set the following in your local.conf
> >> +WAVESHARE_1024X600_C_2.1 =3D "1"
> >>
> >> +3.P. Enable UART
> >> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >>  RaspberryPi 1, 2 and CM will have UART console enabled by default.
> >>
> >>  RaspberryPi 3 does not have the UART enabled by default because this
> >> needs a
> >> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb
> >> b/recipes-bsp/bootfiles/rpi-config_git.bb
> >> index 20ec343..8adc938 100644
> >> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> >> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> >> @@ -110,6 +110,16 @@ do_deploy() {
> >>          echo "# Enable VC4 Graphics" >> ${DEPLOYDIR}/bcm2835-
> >> bootfiles/config.txt
> >>          echo "dtoverlay=3Dvc4-kms-v3d,${VC4_CMA_SIZE}" >>
> >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> >>      fi
> >> +
> >> +    # Waveshare "C" 1024x600 7" Rev2.1 IPS capacitive touch (
> >> http://www.waveshare.com/7inch-HDMI-LCD-C.htm)
> >> +    if [ "${WAVESHARE_1024X600_C_2.1}" =3D "1" ]; then
> >> +        echo "# Waveshare \"C\" 1024x600 7\" Rev2.1 IPS capacitive
> >touch
> >> screen" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> >> +        echo "max_usb_current=3D1" >> ${DEPLOYDIR}/bcm2835-
> >> bootfiles/config.txt
> >> +        echo "hdmi_group=3D2" >>
> >${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> >> +        echo "hdmi_mode=3D87" >>
> >${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> >> +        echo "hdmi_cvt 1024 600 60 6 0 0 0" >> ${DEPLOYDIR}/bcm2835-
> >> bootfiles/config.txt
> >> +        echo "hdmi_drive=3D1" >>
> >${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> >> +    fi
> >>  }
> >>
> >>  do_deploy_append_raspberrypi3-64() {
> >> --
> >> 2.12.0.rc1.48.g076c053
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >
> >
> >After applying this commit the build fails with:
> >
> >ERROR: rpi-config-git-r5 do_deploy: Function failed: do_deploy (log
> >file is
> >located at
> >/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/
> raspberrypi3-poky-linux-gnueabi/rpi-config/git-r5/
> temp/log.do_deploy.32154)
> >ERROR: Logfile of failure stored in:
> >/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/
> raspberrypi3-poky-linux-gnueabi/rpi-config/git-r5/temp/log.do_deploy.3215=
4
> >Log data follows:
> >| DEBUG: Executing python function sstate_task_prefunc
> >| DEBUG: Removing manifest:
> >/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/deploy/
> images/raspberrypi3/bcm2835-bootfiles/config.txt
> >| DEBUG: Removing manifest:
> >/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/deploy/
> images/raspberrypi3/bcm2835-bootfiles/
> >| DEBUG: Python function sstate_task_prefunc finished
> >| DEBUG: Executing shell function do_deploy
> >|
> >/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/
> raspberrypi3-poky-linux-gnueabi/rpi-config/git-r5/
> temp/run.do_deploy.32154:
> >192:
> >/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/
> raspberrypi3-poky-linux-gnueabi/rpi-config/git-r5/
> temp/run.do_deploy.32154:
> >Bad substitution
> >| WARNING: exit code 2 from a shell command.
> >| ERROR: Function failed: do_deploy (log file is located at
> >/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/
> raspberrypi3-poky-linux-gnueabi/rpi-config/git-r5/
> temp/log.do_deploy.32154)
> >ERROR: Task
> >(/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../
> layers/meta-raspberrypi/recipes-bsp/bootfiles/rpi-config_git.bb:do_deploy=
)
> >failed with exit code '1'
> >NOTE: Tasks Summary: Attempted 4857 tasks of which 4855 didn't need to
> >be
> >rerun and 1 failed.
> >
> >Still to look at it closer... maybe related to some shell configuration
> >on
> >my side?
>
> That is strange. Do you get any additional information? Can't pick
> anything from the posted log.
>

I nailed it down to the the shell variable WAVESHARE_1024X600_C_2.1 that
the patch just introduced.

Quoting bash manpage:

   name   A  word  consisting  only  of alphanumeric characters and under=
=E2=80=90
          scores, and beginning with an alphabetic character or an  under=
=E2=80=90
          score.  Also referred to as an identifier.

Looks like a variable name cannot contain dots. Just replacing the
offending '.' solves the issue.
If you agree I can send a patch that s/./_/

Strangely enough all may shells fail in evaluating the following statement.
Why don't you guys see the same behavior?

if [ "${WAVESHARE_1024X600_C_2.1}" =3D "1" ]; then echo "hello!"; fi

--001a1147426ac65518054c56b2ff
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
ue, Apr 4, 2017 at 12:17 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=
=3D"mailto:andrei@gherzan.com" target=3D"_blank">andrei@gherzan.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<div><div class=3D"gmail-h5"><br>
On 4 April 2017 09:48:32 BST, Andrea Galbusera &lt;<a href=3D"mailto:gizero=
@gmail.com">gizero@gmail.com</a>&gt; wrote:<br>
&gt;On Fri, Mar 24, 2017 at 6:49 PM, Trevor Woerner &lt;<a href=3D"mailto:t=
woerner@gmail.com">twoerner@gmail.com</a>&gt;<br>
&gt;wrote:<br>
&gt;<br>
&gt;&gt; Add support for the Waveshare 1024x600 &quot;C&quot; Rev2.1 7&quot=
; IPS Capacitive<br>
&gt;Touch<br>
&gt;&gt; Screen LCD with HDMI interface:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://www.waveshare.c=
om/7inch-HDMI-LCD-C.htm" rel=3D"noreferrer" target=3D"_blank">http://www.wa=
veshare.com/<wbr>7inch-HDMI-LCD-C.htm</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://www.waveshare.c=
om/wiki/7inch_HDMI_LCD_%28C%29" rel=3D"noreferrer" target=3D"_blank">http:/=
/www.waveshare.com/wiki/<wbr>7inch_HDMI_LCD_(C)</a><br>
&gt;&gt;<br>
&gt;&gt; This product works &quot;out of the box&quot; with the Raspberry P=
i. Simply<br>
&gt;connect<br>
&gt;&gt; the provided HDMI and USB cables between the two devices. The<br>
&gt;touch&lt;=3D&gt;mouse<br>
&gt;&gt; integration works automatically.<br>
&gt;&gt;<br>
&gt;&gt; Tested with a Raspberry Pi 3, with a 32-bit raspberrypi3 build.<br=
>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail=
.com">twoerner@gmail.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 README=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 13 +++=
+++++++---<br>
&gt;&gt;=C2=A0 recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" r=
el=3D"noreferrer" target=3D"_blank">rpi-<wbr>config_git.bb</a> | 10 +++++++=
+++<br>
&gt;&gt;=C2=A0 2 files changed, 20 insertions(+), 3 deletions(-)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/README b/README<br>
&gt;&gt; index 65a1e5f..c58bc99 100644<br>
&gt;&gt; --- a/README<br>
&gt;&gt; +++ b/README<br>
&gt;&gt; @@ -29,7 +29,8 @@ Contents:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 3.L. Enable SPI bus<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 3.M. Enable I2C<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 3.N. Enable PiTFT support<br>
&gt;&gt; -=C2=A0 =C2=A0 3.O. Enable UART support<br>
&gt;&gt; +=C2=A0 =C2=A0 3.O. Misc. display<br>
&gt;&gt; +=C2=A0 =C2=A0 3.P. Enable UART support<br>
&gt;&gt;=C2=A0 4. Extra apps<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 4.A. omxplayer<br>
&gt;&gt;=C2=A0 5. Board Configuration<br>
&gt;&gt; @@ -241,9 +242,15 @@ List of currently supported models:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 - pitft22<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 - pitft28r<br>
&gt;&gt;<br>
&gt;&gt; -3.O. Enable UART<br>
&gt;&gt; -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;&gt; +3.O. Misc. display<br>
&gt;&gt; +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;&gt; +If you would like to use the Waveshare &quot;C&quot; 1024=C3=9760=
0, 7 inch<br>
&gt;Capacitive<br>
&gt;&gt; Touch<br>
&gt;&gt; +Screen LCD, HDMI interface<br>
&gt;(<a href=3D"http://www.waveshare.com/7inch-HDMI-LCD-C.htm" rel=3D"noref=
errer" target=3D"_blank">http://www.waveshare.com/<wbr>7inch-HDMI-LCD-C.htm=
</a><br>
&gt;&gt; )<br>
&gt;&gt; +Rev 2.1, please set the following in your local.conf<br>
&gt;&gt; +WAVESHARE_1024X600_C_2.1 =3D &quot;1&quot;<br>
&gt;&gt;<br>
&gt;&gt; +3.P. Enable UART<br>
&gt;&gt; +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;&gt;=C2=A0 RaspberryPi 1, 2 and CM will have UART console enabled by de=
fault.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 RaspberryPi 3 does not have the UART enabled by default beca=
use this<br>
&gt;&gt; needs a<br>
&gt;&gt; diff --git a/recipes-bsp/bootfiles/<a href=3D"http://rpi-config_gi=
t.bb" rel=3D"noreferrer" target=3D"_blank">rpi-<wbr>config_git.bb</a><br>
&gt;&gt; b/recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" rel=
=3D"noreferrer" target=3D"_blank">rpi-<wbr>config_git.bb</a><br>
&gt;&gt; index 20ec343..8adc938 100644<br>
&gt;&gt; --- a/recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" r=
el=3D"noreferrer" target=3D"_blank">rpi-<wbr>config_git.bb</a><br>
&gt;&gt; +++ b/recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" r=
el=3D"noreferrer" target=3D"_blank">rpi-<wbr>config_git.bb</a><br>
&gt;&gt; @@ -110,6 +110,16 @@ do_deploy() {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;# Enable VC4 Graphics=
&quot; &gt;&gt; ${DEPLOYDIR}/bcm2835-<br>
&gt;&gt; bootfiles/config.txt<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;dtoverlay=3Dvc4-kms-v=
3d,${VC4_<wbr>CMA_SIZE}&quot; &gt;&gt;<br>
&gt;&gt; ${DEPLOYDIR}/bcm2835-<wbr>bootfiles/config.txt<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 fi<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 # Waveshare &quot;C&quot; 1024x600 7&quot; Rev2.1 I=
PS capacitive touch (<br>
&gt;&gt; <a href=3D"http://www.waveshare.com/7inch-HDMI-LCD-C.htm" rel=3D"n=
oreferrer" target=3D"_blank">http://www.waveshare.com/<wbr>7inch-HDMI-LCD-C=
.htm</a>)<br>
&gt;&gt; +=C2=A0 =C2=A0 if [ &quot;${WAVESHARE_1024X600_C_2.1}&quot; =3D &q=
uot;1&quot; ]; then<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;# Waveshare \&quot;C\&quot=
; 1024x600 7\&quot; Rev2.1 IPS capacitive<br>
&gt;touch<br>
&gt;&gt; screen&quot; &gt;&gt; ${DEPLOYDIR}/bcm2835-<wbr>bootfiles/config.t=
xt<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;max_usb_current=3D1&quot; =
&gt;&gt; ${DEPLOYDIR}/bcm2835-<br>
&gt;&gt; bootfiles/config.txt<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;hdmi_group=3D2&quot; &gt;&=
gt;<br>
&gt;${DEPLOYDIR}/bcm2835-<wbr>bootfiles/config.txt<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;hdmi_mode=3D87&quot; &gt;&=
gt;<br>
&gt;${DEPLOYDIR}/bcm2835-<wbr>bootfiles/config.txt<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;hdmi_cvt 1024 600 60 6 0 0=
 0&quot; &gt;&gt; ${DEPLOYDIR}/bcm2835-<br>
&gt;&gt; bootfiles/config.txt<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;hdmi_drive=3D1&quot; &gt;&=
gt;<br>
&gt;${DEPLOYDIR}/bcm2835-<wbr>bootfiles/config.txt<br>
&gt;&gt; +=C2=A0 =C2=A0 fi<br>
&gt;&gt;=C2=A0 }<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 do_deploy_append_raspberrypi3-<wbr>64() {<br>
&gt;&gt; --<br>
&gt;&gt; 2.12.0.rc1.48.g076c053<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; ______________________________<wbr>_________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/y=
octo</a><br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt;After applying this commit the build fails with:<br>
&gt;<br>
&gt;ERROR: rpi-config-git-r5 do_deploy: Function failed: do_deploy (log<br>
&gt;file is<br>
&gt;located at<br>
&gt;/home/gizero/work/<wbr>smartliving/distro/repo-<wbr>master/build-poky/t=
mp/work/<wbr>raspberrypi3-poky-linux-<wbr>gnueabi/rpi-config/git-r5/<wbr>te=
mp/log.do_deploy.32154)<br>
&gt;ERROR: Logfile of failure stored in:<br>
&gt;/home/gizero/work/<wbr>smartliving/distro/repo-<wbr>master/build-poky/t=
mp/work/<wbr>raspberrypi3-poky-linux-<wbr>gnueabi/rpi-config/git-r5/<wbr>te=
mp/log.do_deploy.32154<br>
&gt;Log data follows:<br>
&gt;| DEBUG: Executing python function sstate_task_prefunc<br>
&gt;| DEBUG: Removing manifest:<br>
&gt;/home/gizero/work/<wbr>smartliving/distro/repo-<wbr>master/build-poky/t=
mp/deploy/<wbr>images/raspberrypi3/bcm2835-<wbr>bootfiles/config.txt<br>
&gt;| DEBUG: Removing manifest:<br>
&gt;/home/gizero/work/<wbr>smartliving/distro/repo-<wbr>master/build-poky/t=
mp/deploy/<wbr>images/raspberrypi3/bcm2835-<wbr>bootfiles/<br>
&gt;| DEBUG: Python function sstate_task_prefunc finished<br>
&gt;| DEBUG: Executing shell function do_deploy<br>
&gt;|<br>
&gt;/home/gizero/work/<wbr>smartliving/distro/repo-<wbr>master/build-poky/t=
mp/work/<wbr>raspberrypi3-poky-linux-<wbr>gnueabi/rpi-config/git-r5/<wbr>te=
mp/run.do_deploy.32154:<br>
&gt;192:<br>
&gt;/home/gizero/work/<wbr>smartliving/distro/repo-<wbr>master/build-poky/t=
mp/work/<wbr>raspberrypi3-poky-linux-<wbr>gnueabi/rpi-config/git-r5/<wbr>te=
mp/run.do_deploy.32154:<br>
&gt;Bad substitution<br>
&gt;| WARNING: exit code 2 from a shell command.<br>
&gt;| ERROR: Function failed: do_deploy (log file is located at<br>
&gt;/home/gizero/work/<wbr>smartliving/distro/repo-<wbr>master/build-poky/t=
mp/work/<wbr>raspberrypi3-poky-linux-<wbr>gnueabi/rpi-config/git-r5/<wbr>te=
mp/log.do_deploy.32154)<br>
&gt;ERROR: Task<br>
&gt;(/home/gizero/work/<wbr>smartliving/distro/repo-<wbr>master/build-poky/=
conf/../../<wbr>layers/meta-raspberrypi/<wbr>recipes-bsp/bootfiles/rpi-<wbr=
>config_git.bb:do_deploy)<br>
&gt;failed with exit code &#39;1&#39;<br>
&gt;NOTE: Tasks Summary: Attempted 4857 tasks of which 4855 didn&#39;t need=
 to<br>
&gt;be<br>
&gt;rerun and 1 failed.<br>
&gt;<br>
&gt;Still to look at it closer... maybe related to some shell configuration=
<br>
&gt;on<br>
&gt;my side?<br>
<br>
</div></div>That is strange. Do you get any additional information? Can&#39=
;t pick anything from the posted log.<br></blockquote><div><br></div></div>=
I nailed it down to the the shell variable WAVESHARE_1024X600_C_2.1 that th=
e patch just introduced.<br><br>Quoting bash manpage:<br></div><div class=
=3D"gmail_extra"><br>=C2=A0 =C2=A0name =C2=A0 A =C2=A0word =C2=A0consisting=
 =C2=A0only =C2=A0of alphanumeric characters and under=E2=80=90<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 scores, and beginning with an alphabetic charac=
ter or an =C2=A0under=E2=80=90<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 score.=
=C2=A0 Also referred to as an identifier.<br><br></div><div class=3D"gmail_=
extra">Looks like a variable name cannot contain dots. Just replacing the o=
ffending &#39;.&#39; solves the issue.<br>If you agree I can send a patch t=
hat s/./_/<br><br>Strangely enough all may shells fail in evaluating the fo=
llowing statement. Why don&#39;t you guys see the same behavior?<br><br>if =
[ &quot;${WAVESHARE_1024X600_C_2.1}&quot; =3D &quot;1&quot; ]; then echo &q=
uot;hello!&quot;; fi<br></div></div>

--001a1147426ac65518054c56b2ff--
