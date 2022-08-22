Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2AD54C32774
	for <webhook@archiver.kernel.org>; Mon, 22 Aug 2022 17:19:06 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web08.20946.1661188742147382112
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Aug 2022 10:19:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.201,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 2F31A1BF203;
	Mon, 22 Aug 2022 17:18:58 +0000 (UTC)
Date: Mon, 22 Aug 2022 19:18:54 +0200
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org, mahendrasondagar08@gmail.com
Subject: Re: [yocto] Create the patch for the linux kernel module #dunfell
In-Reply-To: <30515.1661187886467434806@lists.yoctoproject.org>
References: 
 <CAMKF1soSGVanC9Cfv-h3zM6h-wYtMnjrJGQ=D578Lq4oz_uF_A@mail.gmail.com>
 <30515.1661187886467434806@lists.yoctoproject.org>
Message-ID: <FC15F550-622D-4D01-88D0-BD1407EB85E8@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Aug 2022 17:19:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57871

Hi Mahendra,

On August 22, 2022 7:04:46 PM GMT+02:00, mahendrasondagar08@gmail=2Ecom wr=
ote:
>Hi=2E=2E=2E Khem Raj
>
>First of all, Thanks for the swift reply=2E
>Let me brief the case=2E
>
>Actually, I'm dealing with the TP-Link Bluetooth dongle
>I have been enabled it's suitable drivers
>However, the things not working well
>
>After some googling, i got to know that to work with the TP-Link Bluetoot=
h dongle, I'll have to apply the patch by making some changes at the busb=
=2Ec and hci_ldisc=2Ec files
>And that's how, I have created it's patches by *git diff --no-index* comm=
and *
>
>* FYI: I have meta-custom layer, in which i have created the recpies-kern=
el/linux/stm32mp1 directory
>I have stored, all 2 patches in to the stm32mp1 files
>
>in linux file, i have created the =2Ebbappend file called *linux-stm32mp_=
%=2Ebbappend*
>For the instance, i have added the all to patches path in to the =2Ebbapp=
end file at *SRC_URI*
>
>Now, My problem is,=C2=A0 during the baking of the custom image I'm getti=
ng the following errors
>*"can't find file to patch at input line 5"*
>
>*Error logs*
>
>For your reference, i have attached the contents of the =2Ebbappend file =
and patch here
>
>In above =2Ebbappend file, the last two patches are for this modules whic=
h i need to modify
>
>Once of the patch contents are mentioned at here
>
>I have also attached both of these patches here
>
>I guess, there might be some issue with the actual source file location m=
entioned in to the patches
>but, I'm not sure
>

The issue is that the path in your patch is incorrect, it should not have =
kernel-source/ in it, just remove it=2E

Cheers,
Quentin


>Pl=2E suggest me the right solution
>
>Thanks
>Mahendra

