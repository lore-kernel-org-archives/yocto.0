Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe003.messaging.microsoft.com [216.32.181.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6D53E003BF
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 12:14:40 -0700 (PDT)
Received: from mail49-ch1-R.bigfish.com (10.43.68.230) by
	CH1EHSOBE013.bigfish.com (10.43.70.63) with Microsoft SMTP Server id
	14.1.225.23; Sat, 21 Jul 2012 19:14:40 +0000
Received: from mail49-ch1 (localhost [127.0.0.1])	by mail49-ch1-R.bigfish.com
	(Postfix) with ESMTP id 34A992C013E;
	Sat, 21 Jul 2012 19:14:40 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail49-ch1 (localhost.localdomain [127.0.0.1]) by mail49-ch1
	(MessageSwitch) id 1342898078316067_19305;
	Sat, 21 Jul 2012 19:14:38 +0000 (UTC)
Received: from CH1EHSMHS004.bigfish.com (snatpool3.int.messaging.microsoft.com
	[10.43.68.226])	by mail49-ch1.bigfish.com (Postfix) with ESMTP id
	4B432E0044; Sat, 21 Jul 2012 19:14:38 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS004.bigfish.com
	(10.43.70.4) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Sat, 21 Jul 2012 19:14:38 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0298.005; Sat, 21 Jul 2012 14:14:37 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Thread-Topic: [yocto] poky git pull merge failures
Thread-Index: AQHNZ3URAB9EcI06YkGLY57tY5VI4A==
Date: Sat, 21 Jul 2012 19:14:36 +0000
Message-ID: <CAEsOVNesi=gbZ4vF4uaxJR=xOXmNzX5fUMOB+a+9Mm5E88MQsg@mail.gmail.com>
References: <CDD20590-77F2-4644-9FD5-E9A58494A86E@gmail.com>
	<BFE7DC64-D5FD-4E82-9495-2BE230C4FD3F@gmail.com>
In-Reply-To: <BFE7DC64-D5FD-4E82-9495-2BE230C4FD3F@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: poky git pull merge failures
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 21 Jul 2012 19:14:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <365B597102E6FA4381E0584717FEE110@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Sat, Jul 21, 2012 at 2:01 PM, Elvis Dowson <elvis.dowson@gmail.com> wrot=
e:
> Hi,
>        I just deleted my entire poky folder, cloned again, and I still fi=
nd a whole bunch of errors, while trying to build core-image-sato.
>
> Someone is just messing up the whole yocto repository, to the point that =
it's starting to become unreliable just like OpenEmbedded was. When I first=
 started using Yocto for the first few months, updates were reliable, and t=
hings would build. But recently, someone's been messing things up so badly.=
 I just hope it isn't the same guy that's been messing up OpenEmbedded, and=
 decided to join the Yocto bandwagon, and continue messing up this build sy=
stem as well.
>
> ERROR: ParseError at /tool/yocto/meta-openembedded/meta-oe/recipes-connec=
tivity/networkmanager/networkmanager_0.9.2.0.bb:60: unparsed line: '<<<<<<<=
 HEAD'

You clearly has some remaining merge conflicts in your tree. Try a
'git clean -qxfd' to clean out your tree.

-M


> ERROR: No recipes available for:
>   /tool/yocto/poky/meta-yocto/recipes-core/uclibc/uclibc_git.bbappend
>   /tool/yocto/poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappe=
nd
>   /tool/yocto/poky/meta-yocto/recipes-bsp/formfactor/formfactor_0.0.bbapp=
end
>   /tool/yocto/poky/meta-yocto/recipes-core/netbase/netbase_5.0.bbappend
>   /tool/yocto/poky/meta-yocto/recipes-graphics/mesa/mesa-dri_7.11.bbappen=
d
>   /tool/yocto/poky/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bba=
ppend
>   /tool/yocto/poky/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.8.1.bbappend
>   /tool/yocto/meta-openembedded/meta-oe/recipes-qt/qt4/qt4-x11-free_4.8.1=
.bbappend
>   /tool/yocto/poky/meta-yocto/recipes-bsp/alsa-state/alsa-state.bbappend
>   /tool/yocto/poky/meta-yocto/recipes-core/psplash/psplash_git.bbappend
>   /tool/yocto/poky/meta-yocto/recipes-gnome/tasks/task-core-sdk-gmae.bbap=
pend
>   /tool/yocto/poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappe=
nd
>   /tool/yocto/meta-openembedded/meta-oe/recipes-qt/tasks/task-qte-toolcha=
in-target.bbappend
>   /tool/yocto/meta-openembedded/meta-oe/recipes-qt/qt4/qt4-embedded_4.8.1=
.bbappend
>   /tool/yocto/meta-openembedded/meta-oe/recipes-multimedia/gstreamer/gst-=
ffmpeg_0.10.13.bbappend
>   /tool/yocto/poky/meta-yocto/recipes-core/tasks/task-core-tools-profile.=
bbappend
>   /tool/yocto/poky/meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86-=
config_0.1.bbappend
>   /tool/yocto/meta-xilinx/recipes-core/initscripts/initscripts_1.0.bbappe=
nd
>   /tool/yocto/meta-openembedded/meta-oe/recipes-extended/polkit/polkit_0.=
104.bbappend
>   /tool/yocto/meta-openembedded/meta-oe/recipes-graphics/xorg-lib/pixman_=
0.26.2.bbappend
>   /tool/yocto/poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappe=
nd
>   /tool/yocto/poky/meta-yocto/recipes-gnome/tasks/task-core-standalone-gm=
ae-sdk-target.bbappend
>   /tool/yocto/meta-xilinx/recipes-core/util-linux/util-linux_2.21.2.bbapp=
end
>   /tool/yocto/poky/meta-yocto/recipes-graphics/mesa/mesa-dri_git.bbappend
>   /tool/yocto/poky/meta-yocto/recipes-core/busybox/busybox_1.19.4.bbappen=
d
>   /tool/yocto/meta-openembedded/meta-oe/recipes-core/busybox/busybox_1.19=
.4.bbappend
>   /tool/yocto/meta-openembedded/meta-oe/recipes-connectivity/wpa-supplica=
nt/wpa-supplicant_1.0.bbappend
> ERROR: Command execution failed: Exited with 1
>
> Summary: There were 3 ERROR messages shown, returning a non-zero exit cod=
e.
>
>
> Elvis Dowson
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


