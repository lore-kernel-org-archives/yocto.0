Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF5E2E00B45; Tue,  4 Apr 2017 05:50:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52046E00B23
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 05:50:23 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id w43so41966819wrb.1
	for <yocto@yoctoproject.org>; Tue, 04 Apr 2017 05:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=sender:date:user-agent:in-reply-to:references:mime-version
	:content-transfer-encoding:subject:to:cc:from:message-id;
	bh=Cr0JXTKKxhpSDd2HvKfJ99jho8+QF5+Y6wzARI+aNNo=;
	b=zv/vhLbVYGaETEERlZmM+fq0Dt2/dpYXpgkt9h91r3klOycu2ZW8tGcsmXWXEdTv/5
	T3dcHUX+6x94x6zxtUPgdL3PbR5yc9xhOb4K7ZYyxqWpDJnec/jzY6L7fZpgCl63qaqg
	XPfYo67GdyALtW3rEqKwTqWB5C4JjPITz0IPTz5UlU3mU8CJ3C0XodqZB5NN9sOhr/6Z
	bCYeiYRO5ofjWLHitC7hG1hNskOvxMmfyeyNBQMeO5Ny1H551un53vacV8zxpRxH6lLz
	y4/yX6ztDTmfa9wX99hLcXjlrESGRVZL9aggJoTuV3mx6aGN4FeMTwHXhbsSNWRXsCYd
	PcnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:date:user-agent:in-reply-to:references
	:mime-version:content-transfer-encoding:subject:to:cc:from
	:message-id;
	bh=Cr0JXTKKxhpSDd2HvKfJ99jho8+QF5+Y6wzARI+aNNo=;
	b=rZ/j98xBsphj0Yu3C75BuEfmuV27Nz4uJFHx2EwBEjc+KkrkkZtuvS9ONFcPVx1zaj
	W8cUqREeBZ71HrxTa4P83hyCxhVIxgi6dsUsPuwxuQ2/5aiDARDGugwf2lsy+r21tVqF
	Brj26LJ/3+2HhMnv4svoGKYasQcAl1Kzh/SUyyLwJ6PH1jjhVD+eFI43hHHhdh5qacVd
	GcUt8C7OiH9xZM7cRy2/SjWN3HuWHZy+vPT3G5utX7cuqMb7hE3KNg0Rmf6bP8oj9xB4
	Vm2Aw2kahexz3GllU6M3XNE2dWNRDzrdgaqlhlhx2Ax4XOgHmoJv0e+rtzKh7ZQeMREC
	tyTw==
X-Gm-Message-State: AFeK/H01mfQIGtSjjrW3Pmxb9k1rIhAFlyDg8aNd4b+z40p9THhGdBJYDFJHoR4pKSloog==
X-Received: by 10.28.166.208 with SMTP id p199mr14472034wme.25.1491310222857; 
	Tue, 04 Apr 2017 05:50:22 -0700 (PDT)
Received: from [192.168.1.141]
	(host109-159-26-35.range109-159.btcentralplus.com. [109.159.26.35])
	by smtp.gmail.com with ESMTPSA id
	k63sm18297234wmf.9.2017.04.04.05.50.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 04 Apr 2017 05:50:22 -0700 (PDT)
Sender: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 04 Apr 2017 13:50:22 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <CAC+thW0vo4nEyeWNcZdPOV0xyt3wWARB8Kjnse_Ho2cNK4TEcQ@mail.gmail.com>
References: <20170324174916.17866-1-twoerner@gmail.com>
	<CAC+thW0tQhPQbz1OCDbohCm816A9JULTwSSJY1Rpa1_0XN-3gA@mail.gmail.com>
	<9D67DA24-B045-49CD-B397-2A01CA38C4EA@gherzan.com>
	<CAC+thW0vo4nEyeWNcZdPOV0xyt3wWARB8Kjnse_Ho2cNK4TEcQ@mail.gmail.com>
MIME-Version: 1.0
To: Andrea Galbusera <gizero@gmail.com>
From: Andrei Gherzan <andrei@gherzan.com>
Message-ID: <DD1D5255-B0E1-49B7-B4D6-06ABDC177B11@gherzan.com>
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
X-List-Received-Date: Tue, 04 Apr 2017 12:50:25 -0000
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 4 April 2017 13:48:53 BST, Andrea Galbusera <gizero@gmail=2Ecom> wrote:
>On Tue, Apr 4, 2017 at 12:17 PM, Andrei Gherzan <andrei@gherzan=2Ecom>
>wrote:
>
>> Hi,
>>
>> On 4 April 2017 09:48:32 BST, Andrea Galbusera <gizero@gmail=2Ecom>
>wrote:
>> >On Fri, Mar 24, 2017 at 6:49 PM, Trevor Woerner <twoerner@gmail=2Ecom>
>> >wrote:
>> >
>> >> Add support for the Waveshare 1024x600 "C" Rev2=2E1 7" IPS
>Capacitive
>> >Touch
>> >> Screen LCD with HDMI interface:
>> >>
>> >>         http://www=2Ewaveshare=2Ecom/7inch-HDMI-LCD-C=2Ehtm
>> >>         http://www=2Ewaveshare=2Ecom/wiki/7inch_HDMI_LCD_(C)
>> >>
>> >> This product works "out of the box" with the Raspberry Pi=2E Simply
>> >connect
>> >> the provided HDMI and USB cables between the two devices=2E The
>> >touch<=3D>mouse
>> >> integration works automatically=2E
>> >>
>> >> Tested with a Raspberry Pi 3, with a 32-bit raspberrypi3 build=2E
>> >>
>> >> Signed-off-by: Trevor Woerner <twoerner@gmail=2Ecom>
>> >> ---
>> >>  README                                  | 13 ++++++++++---
>> >>  recipes-bsp/bootfiles/rpi-config_git=2Ebb | 10 ++++++++++
>> >>  2 files changed, 20 insertions(+), 3 deletions(-)
>> >>
>> >> diff --git a/README b/README
>> >> index 65a1e5f=2E=2Ec58bc99 100644
>> >> --- a/README
>> >> +++ b/README
>> >> @@ -29,7 +29,8 @@ Contents:
>> >>      3=2EL=2E Enable SPI bus
>> >>      3=2EM=2E Enable I2C
>> >>      3=2EN=2E Enable PiTFT support
>> >> -    3=2EO=2E Enable UART support
>> >> +    3=2EO=2E Misc=2E display
>> >> +    3=2EP=2E Enable UART support
>> >>  4=2E Extra apps
>> >>      4=2EA=2E omxplayer
>> >>  5=2E Board Configuration
>> >> @@ -241,9 +242,15 @@ List of currently supported models:
>> >>      - pitft22
>> >>      - pitft28r
>> >>
>> >> -3=2EO=2E Enable UART
>> >> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> >> +3=2EO=2E Misc=2E display
>> >> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> >> +If you would like to use the Waveshare "C" 1024=C3=97600, 7 inch
>> >Capacitive
>> >> Touch
>> >> +Screen LCD, HDMI interface
>> >(http://www=2Ewaveshare=2Ecom/7inch-HDMI-LCD-C=2Ehtm
>> >> )
>> >> +Rev 2=2E1, please set the following in your local=2Econf
>> >> +WAVESHARE_1024X600_C_2=2E1 =3D "1"
>> >>
>> >> +3=2EP=2E Enable UART
>> >> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> >>  RaspberryPi 1, 2 and CM will have UART console enabled by
>default=2E
>> >>
>> >>  RaspberryPi 3 does not have the UART enabled by default because
>this
>> >> needs a
>> >> diff --git a/recipes-bsp/bootfiles/rpi-config_git=2Ebb
>> >> b/recipes-bsp/bootfiles/rpi-config_git=2Ebb
>> >> index 20ec343=2E=2E8adc938 100644
>> >> --- a/recipes-bsp/bootfiles/rpi-config_git=2Ebb
>> >> +++ b/recipes-bsp/bootfiles/rpi-config_git=2Ebb
>> >> @@ -110,6 +110,16 @@ do_deploy() {
>> >>          echo "# Enable VC4 Graphics" >> ${DEPLOYDIR}/bcm2835-
>> >> bootfiles/config=2Etxt
>> >>          echo "dtoverlay=3Dvc4-kms-v3d,${VC4_CMA_SIZE}" >>
>> >> ${DEPLOYDIR}/bcm2835-bootfiles/config=2Etxt
>> >>      fi
>> >> +
>> >> +    # Waveshare "C" 1024x600 7" Rev2=2E1 IPS capacitive touch (
>> >> http://www=2Ewaveshare=2Ecom/7inch-HDMI-LCD-C=2Ehtm)
>> >> +    if [ "${WAVESHARE_1024X600_C_2=2E1}" =3D "1" ]; then
>> >> +        echo "# Waveshare \"C\" 1024x600 7\" Rev2=2E1 IPS
>capacitive
>> >touch
>> >> screen" >> ${DEPLOYDIR}/bcm2835-bootfiles/config=2Etxt
>> >> +        echo "max_usb_current=3D1" >> ${DEPLOYDIR}/bcm2835-
>> >> bootfiles/config=2Etxt
>> >> +        echo "hdmi_group=3D2" >>
>> >${DEPLOYDIR}/bcm2835-bootfiles/config=2Etxt
>> >> +        echo "hdmi_mode=3D87" >>
>> >${DEPLOYDIR}/bcm2835-bootfiles/config=2Etxt
>> >> +        echo "hdmi_cvt 1024 600 60 6 0 0 0" >>
>${DEPLOYDIR}/bcm2835-
>> >> bootfiles/config=2Etxt
>> >> +        echo "hdmi_drive=3D1" >>
>> >${DEPLOYDIR}/bcm2835-bootfiles/config=2Etxt
>> >> +    fi
>> >>  }
>> >>
>> >>  do_deploy_append_raspberrypi3-64() {
>> >> --
>> >> 2=2E12=2E0=2Erc1=2E48=2Eg076c053
>> >>
>> >> --
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject=2Eorg
>> >> https://lists=2Eyoctoproject=2Eorg/listinfo/yocto
>> >>
>> >
>> >
>> >After applying this commit the build fails with:
>> >
>> >ERROR: rpi-config-git-r5 do_deploy: Function failed: do_deploy (log
>> >file is
>> >located at
>>
>>/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/
>> raspberrypi3-poky-linux-gnueabi/rpi-config/git-r5/
>> temp/log=2Edo_deploy=2E32154)
>> >ERROR: Logfile of failure stored in:
>>
>>/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/
>>
>raspberrypi3-poky-linux-gnueabi/rpi-config/git-r5/temp/log=2Edo_deploy=2E=
32154
>> >Log data follows:
>> >| DEBUG: Executing python function sstate_task_prefunc
>> >| DEBUG: Removing manifest:
>>
>>/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/deploy/
>> images/raspberrypi3/bcm2835-bootfiles/config=2Etxt
>> >| DEBUG: Removing manifest:
>>
>>/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/deploy/
>> images/raspberrypi3/bcm2835-bootfiles/
>> >| DEBUG: Python function sstate_task_prefunc finished
>> >| DEBUG: Executing shell function do_deploy
>> >|
>>
>>/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/
>> raspberrypi3-poky-linux-gnueabi/rpi-config/git-r5/
>> temp/run=2Edo_deploy=2E32154:
>> >192:
>>
>>/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/
>> raspberrypi3-poky-linux-gnueabi/rpi-config/git-r5/
>> temp/run=2Edo_deploy=2E32154:
>> >Bad substitution
>> >| WARNING: exit code 2 from a shell command=2E
>> >| ERROR: Function failed: do_deploy (log file is located at
>>
>>/home/gizero/work/smartliving/distro/repo-master/build-poky/tmp/work/
>> raspberrypi3-poky-linux-gnueabi/rpi-config/git-r5/
>> temp/log=2Edo_deploy=2E32154)
>> >ERROR: Task
>>
>>(/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/=2E=2E=
/=2E=2E/
>>
>layers/meta-raspberrypi/recipes-bsp/bootfiles/rpi-config_git=2Ebb:do_depl=
oy)
>> >failed with exit code '1'
>> >NOTE: Tasks Summary: Attempted 4857 tasks of which 4855 didn't need
>to
>> >be
>> >rerun and 1 failed=2E
>> >
>> >Still to look at it closer=2E=2E=2E maybe related to some shell
>configuration
>> >on
>> >my side?
>>
>> That is strange=2E Do you get any additional information? Can't pick
>> anything from the posted log=2E
>>
>
>I nailed it down to the the shell variable WAVESHARE_1024X600_C_2=2E1
>that
>the patch just introduced=2E
>
>Quoting bash manpage:
>
>name   A  word  consisting  only  of alphanumeric characters and under=E2=
=80=90
>       scores, and beginning with an alphabetic character or an  under=E2=
=80=90
>          score=2E  Also referred to as an identifier=2E
>
>Looks like a variable name cannot contain dots=2E Just replacing the
>offending '=2E' solves the issue=2E
>If you agree I can send a patch that s/=2E/_/
>
>Strangely enough all may shells fail in evaluating the following
>statement=2E
>Why don't you guys see the same behavior?
>
>if [ "${WAVESHARE_1024X600_C_2=2E1}" =3D "1" ]; then echo "hello!"; fi

Right=2E Good catch=2E Fire a patch away=2E Thanks=2E=20

--=20
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

