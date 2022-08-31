Return-Path: <pavel@zhukoff.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 783EEECAAD4
	for <webhook@archiver.kernel.org>; Wed, 31 Aug 2022 13:19:51 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by mx.groups.io with SMTP id smtpd.web12.25428.1661951986295723074
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Aug 2022 06:19:46 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@zhukoff.net header.s=fm1
 header.b=USg+cuPB;
 spf=pass (domain: zhukoff.net, ip: 66.111.4.26, mailfrom: pavel@zhukoff.net)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 5F9C15C0102;
	Wed, 31 Aug 2022 09:19:45 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 31 Aug 2022 09:19:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zhukoff.net; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1661951985; x=1662038385; bh=xcPYwD/zLso4YfgFoibns7AqXKID2RLsP7G
	XJsMSdZk=; b=USg+cuPBOlBrY/Qqm0PeiKC8ZHbz83/Wf7NxVs7BcyBtz26W6eJ
	duqENckEkO7zlIuGw9SKZNyj2nexUFCdbWFtSfnJay+tua0VryWAxxPTjcypuQVJ
	tDF6DjWvaW49mrBVESBTI4eg0J/0tiMk1Azh1C1tslVVDuVAFqG+lboI1E+YoNsT
	ezHIf/AMzpdKneaEbLaNp86vuTCmurIB5gbKLCUdIfsRpbnJGxY+1bfeSEfp9t9F
	hRIGb7f9O8InX82jSUOEqwJflywVZf82969coqM5Zr3hfvErl1be0gq1oewL7FJM
	PLpt7cStlIrrAaJhK0xFGkxttfpKuBuC4TA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1661951985; x=1662038385; bh=xcPYwD/zLso4YfgFoibns7AqXKID2RLsP7G
	XJsMSdZk=; b=CCzDxx2gdTB7OrpZ1Vt8ouDwGo/K0wFjcQkflWPf24FfhATqIie
	Mq1O3bbLC89zyvEhfZ+AQiNlMhdUsA3bDFfngDgoDq0ZU15AFqQPXKmZousPuPVh
	IzmdnYrG1YSKW2blwMS9LWZOXRIbOh+oAhejJpSMxzD7JYhg6hlnRb3jgccCNlZd
	/iDKppoZNL8hbsGZkNUaUWt7Rh7rWc4wVjMmUT+LYHGgQuzej01i17+syYc/s6Di
	AQ2wwR844P5uv1+SN0SSaOoGnOK8H1XWAyItGGDtk8rjpvYX9iQyj1TKfiunJa9c
	6+WiNbPlHm7Vx/n8Zcfsno0Wb/qlF3wZ0HA==
X-ME-Sender: <xms:8V8PYxFGyXFBvBkc2aHPazvDO4i_2cDLFvwxGN-YDGGJyDlWdLjP6Q>
    <xme:8V8PY2U3SOUbwja2vM1Ya9292N4bOFtVLIRNqERjz2M-Zekfgx98x-hT9ZWizB7xT
    j5eto4sTXNmFTrmehE>
X-ME-Received: 
 <xmr:8V8PYzKsACDkdyMiWEJJG9oNPqkY2_GJhqw27YjIZsCQ9ovRX-BGjk3tQ3umILdmPAvptUw>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrvdekiedgfeehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfhgfhffvvefuffhrjgfkgggtgfesthhqredttderjeenucfhrhhomheprfgr
    vhgvlhcukghhuhhkohhvuceophgrvhgvlhesiihhuhhkohhffhdrnhgvtheqnecuggftrf
    grthhtvghrnhepgffhhffhuddvveetvdevfeetkeegkeetueelleffvdetkeekffffjeek
    vdegiedtnecuffhomhgrihhnpeihohgtthhophhrohhjvggtthdrohhrghenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehprghvvghlseiihhhu
    khhofhhfrdhnvght
X-ME-Proxy: <xmx:8V8PY3Gp-ZkNrp8KW_KfR09IvdknFiV3VqJCC6fCMKyKLpVpov8V6g>
    <xmx:8V8PY3Vv-EvcAj7DJIj-kY84SERpV2FaDbbiTdSn4Doz17fTDrVz8A>
    <xmx:8V8PYyMvrUPW6vUJLswSif2pN_cgJ49guojwCINkEm_CVRiyWyB5rg>
    <xmx:8V8PY0gW9JsifLGumAeE-LWW-KJu5W_UpZb4YwhLQbvji2jLbLrBUg>
Feedback-ID: ib94946c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 31 Aug 2022 09:19:44 -0400 (EDT)
References: 
 <CANNYZj_qrOpvtfrZM4XwqKFS05YDcj+8zda6Rgq-HkeHN0ZTVA@mail.gmail.com>
 <MADEUP.17106D1DBFB78C47.1777@lists.yoctoproject.org>
User-agent: mu4e 1.6.10; emacs 28.1
From: Pavel Zhukov <pavel@zhukoff.net>
To: steven.monsees@baesystems.com
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, "Monsees, Steven C (US) via
 lists.yoctoproject.org"
 <steven.monsees=baesystems.com@lists.yoctoproject.org>,
 yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto #dunfell #qemux86-64
Date: Wed, 31 Aug 2022 15:15:09 +0200
Reply-To: pavel@zhukoff.net
In-reply-to: <MADEUP.17106D1DBFB78C47.1777@lists.yoctoproject.org>
Message-ID: <87bks0k0ug.fsf@gentoo.zhukoff.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Aug 2022 13:19:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57962


"Monsees, Steven C (US) via lists.yoctoproject.org" <steven.monsees=3Dbaesy=
stems.com@lists.yoctoproject.org> writes:

> I will have to double check, but the issue did not appear under zeus...=20
> so qemu changed sometime after zeus ?
Not qemu but runqemu script has been changed not so long time ago (this
year) to pass `-display sdl` parameter unless nographic option has been=20
specified. As it was mentioned you have to pass -nographic to use
runqemu without SDL frontend

>
> -----Original Message-----
> From: Alexander Kanavin <alex.kanavin@gmail.com>=20
> Sent: Wednesday, August 31, 2022 8:12 AM
> To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] #yocto #dunfell #qemux86-64
>
> External Email Alert
>
> This email has been sent from an account outside of the BAE Systems netwo=
rk.
>
> Please treat the email with caution, especially if you are requested
> to click on a link, decrypt/open an attachment, or enable macros.  For
> further information on how to spot phishing, access =E2=80=9CCybersecurity
> OneSpace Page=E2=80=9D and report phishing by clicking the button =E2=80=
=9CReport
> Phishing=E2=80=9D on the Outlook toolbar.
>
>
> The issue is on your side, not on yocto's. By default qemu is
> configured to show graphical output in a X11 window, so you need to
> run it in a X11 session, with correctly set DISPLAY environment
> variable.
>
> Alex
>
> On Wed, 31 Aug 2022 at 14:10, Monsees, Steven C (US) <steven.monsees@baes=
ystems.com> wrote:
>>
>>
>> One final question, does this issue exist in kirkstone-4.0.2 ?
>>
>> Thanks,
>> Steve
>>
>> -----Original Message-----
>> From: Alexander Kanavin <alex.kanavin@gmail.com>
>> Sent: Wednesday, August 31, 2022 7:42 AM
>> To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
>> Cc: yocto@lists.yoctoproject.org
>> Subject: Re: [yocto] #yocto #dunfell #qemux86-64
>>
>> External Email Alert
>>
>> This email has been sent from an account outside of the BAE Systems netw=
ork.
>>
>> Please treat the email with caution, especially if you are requested
>> to click on a link, decrypt/open an attachment, or enable macros.
>> For further information on how to spot phishing, access
>> =E2=80=9CCybersecurity OneSpace Page=E2=80=9D and report phishing by cli=
cking the
>> button =E2=80=9CReport Phishing=E2=80=9D on the Outlook toolbar.
>>
>>
>> I need to see the errors to give a useful answer. If you want wayland, u=
se core-image-weston as the image.
>>
>> Alex
>>
>> On Wed, 31 Aug 2022 at 13:37, Monsees, Steven C (US) via lists.yoctoproj=
ect.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>> >
>> >
>> > Thank you for the quick replay...
>> >
>> > The no graphic option does work but the kernel comes up with errors...
>> >
>> > Will full wayland support be added to the dunfell release ?
>> >
>> > Steve
>> >
>> > -----Original Message-----
>> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On=20
>> > Behalf Of Alexander Kanavin
>> > Sent: Wednesday, August 31, 2022 7:23 AM
>> > To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
>> > Cc: yocto@lists.yoctoproject.org
>> > Subject: Re: [yocto] #yocto #dunfell #qemux86-64
>> >
>> > External Email Alert
>> >
>> > This email has been sent from an account outside of the BAE Systems ne=
twork.
>> >
>> > Please treat the email with caution, especially if you are
>> > requested to click on a link, decrypt/open an attachment, or
>> > enable macros.  For further information on how to spot phishing,
>> > access =E2=80=9CCybersecurity OneSpace Page=E2=80=9D and report phishi=
ng by
>> > clicking the button =E2=80=9CReport Phishing=E2=80=9D on the Outlook t=
oolbar.
>> >
>> >
>> > You need to run this in a X11 session, or use 'nographic' parameter.
>> >
>> > Alex
>> >
>> > On Wed, 31 Aug 2022 at 13:17, Monsees, Steven C (US) via lists.yoctopr=
oject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>> > >
>> > >
>> > >
>> > > Hello:
>> > >
>> > >
>> > >
>> > > I am attempting to evaluate dunfell -23.0.17, on a cetos7 linux box.
>> > >
>> > >
>> > >
>> > > When building the default : core-image-minimal or core-image-sato,=20
>> > > clean with no errors/warnings, on execution
>> > >
>> > > I get the following error for both (see below)=E2=80=A6
>> > >
>> > >
>> > >
>> > > (1)    Is this an issue with the release ?,  and is there another re=
lease I should be using ?
>> > >
>> > > (2)    Is there something I need to pre-configure for these builds t=
o run properly ?
>> > >
>> > > (3)    How might I resolve this issue ?
>> > >
>> > >
>> > >
>> > > 06:57 smonsees@yix490016
>> > > /disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/d
>> > > un
>> > > fe
>> > > ll_Min>runqemu qemux86-64
>> > >
>> > > runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbake -e ...
>> > >
>> > > runqemu - INFO - Continuing with the following parameters:
>> > >
>> > > KERNEL:
>> > > [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/
>> > > du
>> > > nf
>> > > ell_Min/tmp/deploy/images/qemux86-64/bzImage--5.4.192+gitAUTOINC+3
>> > > fe cb 08507_85f0668fea-r0-qemux86-64-20220830151817.bin]
>> > >
>> > > MACHINE: [qemux86-64]
>> > >
>> > > FSTYPE: [ext4]
>> > >
>> > > ROOTFS:
>> > > [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/
>> > > du
>> > > nf
>> > > ell_Min/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64
>> > > -2
>> > > 02
>> > > 20830151817.rootfs.ext4]
>> > >
>> > > CONFFILE:
>> > > [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/
>> > > du
>> > > nf
>> > > ell_Min/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64
>> > > -2
>> > > 02
>> > > 20830151817.qemuboot.conf]
>> > >
>> > >
>> > >
>> > > runqemu - INFO - Setting up tap interface under sudo
>> > >
>> > > [sudo] password for smonsees:
>> > >
>> > > runqemu - INFO - Network configuration:
>> > > ip=3D192.168.7.2::192.168.7.1:255.255.255.0
>> > >
>> > > runqemu - INFO - Running
>> > > /disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/dun=
fell_Min/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-nat=
ive/usr/bin/qemu-system-x86_64
>> > > -device virtio-net-pci,netdev=3Dnet0,mac=3D52:54:00:12:34:02 -netdev
>> > > tap,id=3Dnet0,ifname=3Dtap0,script=3Dno,downscript=3Dno -drive
>> > > file=3D/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0=
.17/dunfell_Min/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-=
20220830151817.rootfs.ext4,if=3Dvirtio,format=3Draw
>> > > -show-cursor -usb -device usb-tablet -object
>> > > rng-random,filename=3D/dev/urandom,id=3Drng0 -device
>> > > virtio-rng-pci,rng=3Drng0 -cpu core2duo -m 256 -serial mon:vc
>> > > -serial null -kernel
>> > > /disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/dun=
fell_Min/tmp/deploy/images/qemux86-64/bzImage--5.4.192+gitAUTOINC+3fecb0850=
7_85f0668fea-r0-qemux86-64-20220830151817.bin
>> > > -append 'root=3D/dev/vda rw mem=3D256M
>> > > ip=3D192.168.7.2::192.168.7.1:255.255.255.0 oprofile.timer=3D1 '
>> > >
>> > >
>> > >
>> > > runqemu - ERROR - Failed to run qemu: Could not initialize SDL(x11=20
>> > > not
>> > > available) - exiting
>> > >
>> > >
>> > >
>> > > runqemu - INFO - Cleaning up
>> > >
>> > > Set 'tap0' nonpersistent
>> > >
>> > >
>> > >
>> > > Thank you for your help,
>> > >
>> > > Steve
>> > >
>> > >
>> > >
>> > >
>> > >
>> > >
>> >
>> >=20
>> >
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57961): https://lists.yoctoproject.org/g/yocto/messag=
e/57961
> Mute This Topic: https://lists.yoctoproject.org/mt/93368526/6390638
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Mute #qemux86-64:https://lists.yoctoproject.org/g/yocto/mutehashtag/qemux=
86-64
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [pavel@zhukoff.=
net]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


