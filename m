Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F2DAE00546; Tue,  4 Apr 2017 14:49:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.195 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D639E00349
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 14:49:35 -0700 (PDT)
Received: by mail-ua0-f195.google.com with SMTP id j29so2648512uaa.3
	for <yocto@yoctoproject.org>; Tue, 04 Apr 2017 14:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=hyFms2RBcRWI1oSPs9RlQNB64LhVdreqGM92NuQxNpQ=;
	b=h+bkRid0K1+OuNmfW9+8Xlr6rZsUNshg0RDZ/v0VAe5aTv9pXAsT+aIoZyZSFgnnA0
	o1iem+QpRcfsMaFZUqTsMqAvctaxGnkmBqsti2h/l8vSPNEDZ2miEP03+iAySZKXGBAY
	XAs5IR5ilbxd48LBQRlUHJG77DPkdugyakkSlR5oLf9KkC8i2OWPz6KDNBK+vp+qelU7
	LXzzw1t6tRcZeJHz/wiQludw6TKo4bQozrqFnxX1q0OklS5aIf2Fd1RJUsBiSmCN/7Qc
	ENbu5anbXonkphCiZS4vjYelnprX4EN5/UqX71GXboljPyFf2DuFRhzmtIbeRJwbPRcK
	EH+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=hyFms2RBcRWI1oSPs9RlQNB64LhVdreqGM92NuQxNpQ=;
	b=D01pjz/7BRR18CuStun0JIhnTQ8a5aMHj+MAcVgY/eeHW0A7d7n/5seETVTdREcKQy
	RUGQd3PSSpYDHTok46uSL+h6LOQazn6WIB3YYYJMfOZoPQ1OJb2GtWNaj+uGZr8FFxHp
	2Mr/IeVFJZJN5JTqRs+x6sCb29VsNd7KPZq4o08AzhkdMJpEM1+PmN6adRtqX8M05cUX
	ioTsYwQS6lWcxX+w0i5aMP9+K6tYFUh+1gdxo9AawN2g5r8JDLvohD/HOfN6/J82I/yE
	NowbPdgfH9Yw0mOXRUP9mxy9w6EiMUhAGHoHs0kD8SGAS718mqISMYfTf1866EJnyA+f
	W34g==
X-Gm-Message-State: AFeK/H2szHWbdLru9i1R2q6pRD3qZ3T41GX3WcmO2zgT47hFFy+LCuRHtUFMKfk+pkhig/1ItE2YZmSF4+pkRA==
X-Received: by 10.176.6.227 with SMTP id g90mr13024780uag.34.1491342574272;
	Tue, 04 Apr 2017 14:49:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.30.70 with HTTP; Tue, 4 Apr 2017 14:49:33 -0700 (PDT)
In-Reply-To: <DD1D5255-B0E1-49B7-B4D6-06ABDC177B11@gherzan.com>
References: <20170324174916.17866-1-twoerner@gmail.com>
	<CAC+thW0tQhPQbz1OCDbohCm816A9JULTwSSJY1Rpa1_0XN-3gA@mail.gmail.com>
	<9D67DA24-B045-49CD-B397-2A01CA38C4EA@gherzan.com>
	<CAC+thW0vo4nEyeWNcZdPOV0xyt3wWARB8Kjnse_Ho2cNK4TEcQ@mail.gmail.com>
	<DD1D5255-B0E1-49B7-B4D6-06ABDC177B11@gherzan.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 4 Apr 2017 17:49:33 -0400
Message-ID: <CAHUNapQGd5y4n-tmkcug8tAWbiNmE18kFP2=GGaN7mLATvyfzA@mail.gmail.com>
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
X-List-Received-Date: Tue, 04 Apr 2017 21:49:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Odd... I've been carrying this patch for a month and haven't had issues :-(

On Tue, Apr 4, 2017 at 8:50 AM, Andrei Gherzan <andrei@gherzan.com> wrote:
>
>
> On 4 April 2017 13:48:53 BST, Andrea Galbusera <gizero@gmail.com> wrote:
>>On Tue, Apr 4, 2017 at 12:17 PM, Andrei Gherzan <andrei@gherzan.com>
>>wrote:
>>
>>> Hi,
>>>
>>> On 4 April 2017 09:48:32 BST, Andrea Galbusera <gizero@gmail.com>
>>wrote:
>>> >On Fri, Mar 24, 2017 at 6:49 PM, Trevor Woerner <twoerner@gmail.com>
>>> >wrote:
>>> >
>>> >> Add support for the Waveshare 1024x600 "C" Rev2.1 7" IPS
>>Capacitive
>>> >Touch
>>> >> Screen LCD with HDMI interface:
>>> >>
>>> >>         http://www.waveshare.com/7inch-HDMI-LCD-C.htm
>>> >>         http://www.waveshare.com/wiki/7inch_HDMI_LCD_(C)
>>> >>
>>> >> This product works "out of the box" with the Raspberry Pi. Simply
>>> >connect
>>> >> the provided HDMI and USB cables between the two devices. The
>>> >touch<=3D>mouse
>>> >> integration works automatically.
>>> >>
>>> >> Tested with a Raspberry Pi 3, with a 32-bit raspberrypi3 build.
>>> >>
>>> >> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>>> >> ---
>>> >>  README                                  | 13 ++++++++++---
>>> >>  recipes-bsp/bootfiles/rpi-config_git.bb | 10 ++++++++++
>>> >>  2 files changed, 20 insertions(+), 3 deletions(-)
>>> >>
>>> >> diff --git a/README b/README
>>> >> index 65a1e5f..c58bc99 100644
>>> >> --- a/README
>>> >> +++ b/README
>>> >> @@ -29,7 +29,8 @@ Contents:
>>> >>      3.L. Enable SPI bus
>>> >>      3.M. Enable I2C
>>> >>      3.N. Enable PiTFT support
>>> >> -    3.O. Enable UART support
>>> >> +    3.O. Misc. display
>>> >> +    3.P. Enable UART support
>>> >>  4. Extra apps
>>> >>      4.A. omxplayer
>>> >>  5. Board Configuration
>>> >> @@ -241,9 +242,15 @@ List of currently supported models:
>>> >>      - pitft22
>>> >>      - pitft28r
>>> >>
>>> >> -3.O. Enable UART
>>> >> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>> >> +3.O. Misc. display
>>> >> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>> >> +If you would like to use the Waveshare "C" 1024=C3=97600, 7 inch
>>> >Capacitive
>>> >> Touch
>>> >> +Screen LCD, HDMI interface
>>> >(http://www.waveshare.com/7inch-HDMI-LCD-C.htm
>>> >> )
>>> >> +Rev 2.1, please set the following in your local.conf
>>> >> +WAVESHARE_1024X600_C_2.1 =3D "1"
>>> >>
>>> >> +3.P. Enable UART
>>> >> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>> >>  RaspberryPi 1, 2 and CM will have UART console enabled by
>>default.
>>> >>
>>> >>  RaspberryPi 3 does not have the UART enabled by default because
>>this
>>> >> needs a
>>> >> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb
>>> >> b/recipes-bsp/bootfiles/rpi-config_git.bb
>>> >> index 20ec343..8adc938 100644
>>> >> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
>>> >> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
>>> >> @@ -110,6 +110,16 @@ do_deploy() {
>>> >>          echo "# Enable VC4 Graphics" >> ${DEPLOYDIR}/bcm2835-
>>> >> bootfiles/config.txt
>>> >>          echo "dtoverlay=3Dvc4-kms-v3d,${VC4_CMA_SIZE}" >>
>>> >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>>> >>      fi
>>> >> +
>>> >> +    # Waveshare "C" 1024x600 7" Rev2.1 IPS capacitive touch (
>>> >> http://www.waveshare.com/7inch-HDMI-LCD-C.htm)
>>> >> +    if [ "${WAVESHARE_1024X600_C_2.1}" =3D "1" ]; then
>>> >> +        echo "# Waveshare \"C\" 1024x600 7\" Rev2.1 IPS
>>capacitive
>>> >touch
>>> >> screen" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>>> >> +        echo "max_usb_current=3D1" >> ${DEPLOYDIR}/bcm2835-
>>> >> bootfiles/config.txt
>>> >> +        echo "hdmi_group=3D2" >>
>>> >${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>>> >> +        echo "hdmi_mode=3D87" >>
>>> >${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>>> >> +        echo "hdmi_cvt 1024 600 60 6 0 0 0" >>
>>${DEPLOYDIR}/bcm2835-
>>> >> bootfiles/config.txt
>>> >> +        echo "hdmi_drive=3D1" >>
>>> >${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>>> >> +    fi
>>> >>  }
>>> >>
>>> >>  do_deploy_append_raspberrypi3-64() {
>>> >> --
>>> >> 2.12.0.rc1.48.g076c053
>>> >>
>>> >> --
>>> >> _______________________________________________
>>> >> yocto mailing list
>>> >> yocto@yoctoproject.org
>>> >> https://lists.yoctoproject.org/listinfo/yocto
>>> >>
>>> >
>>> >
>>> >After applying this commit the build fails with:
>>> >
>>> >ERROR: rpi-config-git-r5 do_deploy: Function failed: do_deploy (log
>>> >file is
>>> >located at
>>>
>>>/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/
>>> raspberrypi3-poky-linux-gnueabi/rpi-config/git-r5/
>>> temp/log.do_deploy.32154)
>>> >ERROR: Logfile of failure stored in:
>>>
>>>/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/
>>>
>>raspberrypi3-poky-linux-gnueabi/rpi-config/git-r5/temp/log.do_deploy.3215=
4
>>> >Log data follows:
>>> >| DEBUG: Executing python function sstate_task_prefunc
>>> >| DEBUG: Removing manifest:
>>>
>>>/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/deploy/
>>> images/raspberrypi3/bcm2835-bootfiles/config.txt
>>> >| DEBUG: Removing manifest:
>>>
>>>/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/deploy/
>>> images/raspberrypi3/bcm2835-bootfiles/
>>> >| DEBUG: Python function sstate_task_prefunc finished
>>> >| DEBUG: Executing shell function do_deploy
>>> >|
>>>
>>>/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/
>>> raspberrypi3-poky-linux-gnueabi/rpi-config/git-r5/
>>> temp/run.do_deploy.32154:
>>> >192:
>>>
>>>/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/
>>> raspberrypi3-poky-linux-gnueabi/rpi-config/git-r5/
>>> temp/run.do_deploy.32154:
>>> >Bad substitution
>>> >| WARNING: exit code 2 from a shell command.
>>> >| ERROR: Function failed: do_deploy (log file is located at
>>>
>>>/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/
>>> raspberrypi3-poky-linux-gnueabi/rpi-config/git-r5/
>>> temp/log.do_deploy.32154)
>>> >ERROR: Task
>>>
>>>(/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../
>>>
>>layers/meta-raspberrypi/recipes-bsp/bootfiles/rpi-config_git.bb:do_deploy=
)
>>> >failed with exit code '1'
>>> >NOTE: Tasks Summary: Attempted 4857 tasks of which 4855 didn't need
>>to
>>> >be
>>> >rerun and 1 failed.
>>> >
>>> >Still to look at it closer... maybe related to some shell
>>configuration
>>> >on
>>> >my side?
>>>
>>> That is strange. Do you get any additional information? Can't pick
>>> anything from the posted log.
>>>
>>
>>I nailed it down to the the shell variable WAVESHARE_1024X600_C_2.1
>>that
>>the patch just introduced.
>>
>>Quoting bash manpage:
>>
>>name   A  word  consisting  only  of alphanumeric characters and under=E2=
=80=90
>>       scores, and beginning with an alphabetic character or an  under=E2=
=80=90
>>          score.  Also referred to as an identifier.
>>
>>Looks like a variable name cannot contain dots. Just replacing the
>>offending '.' solves the issue.
>>If you agree I can send a patch that s/./_/
>>
>>Strangely enough all may shells fail in evaluating the following
>>statement.
>>Why don't you guys see the same behavior?
>>
>>if [ "${WAVESHARE_1024X600_C_2.1}" =3D "1" ]; then echo "hello!"; fi
>
> Right. Good catch. Fire a patch away. Thanks.
>
> --
> Andrei Gherzan
> gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

