Return-Path: <daniel@d-f-d.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D6CC83013
	for <webhook@archiver.kernel.org>; Wed,  2 Jul 2025 05:14:41 +0000 (UTC)
Received: from dfd-cracked-rearview.d-f-d.ca (dfd-cracked-rearview.d-f-d.ca [51.161.82.14])
 by mx.groups.io with SMTP id smtpd.web11.16471.1751433272944284809
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Jul 2025 22:14:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@d-f-d.ca header.s=modoboa header.b=rJZ4scxo;
 spf=pass (domain: d-f-d.ca, ip: 51.161.82.14, mailfrom: daniel@d-f-d.ca)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=d-f-d.ca; s=modoboa;
	t=1751433271; bh=0k39WxHhlN7yTKaE3IdSmCbkPosa7Fpu5vGmQiX/y7o=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=rJZ4scxonykIcBd7ufBnkLlykQleXYp1slmD/y5BP1USdprHXSdG9EIwWABQA0RXd
	 MefKLQ6V7JtLBjo63GpgmWwTwwOwLoLNABf8UX0nJBbqEYohhv4PvZCEdl5p6oo114
	 1jgb9AQPFVEX+GSVB9LL39uZfXSsB4e7uqVmajgA0WFI9qG/XA0k1SdUdKlbEgP8mR
	 T3UazlyMOBR73cEP1y1E1XjixvsCmmvx5ccmr5ENvxWp9Fq9YOMCm2UcHOiA9wshHo
	 Ge/cSLvSeYXzPBwPI68IafxcxQ3uxW1/P+gT2rVvHWZ4qXxI+vlfRbO0xaPlTQ5lqS
	 wiBvJ+2wQib8w==
Received: from localhost (localhost [127.0.0.1])
	by dfd-cracked-rearview.d-f-d.ca (Postfix) with ESMTP id 6F04C68159;
	Wed,  2 Jul 2025 05:14:31 +0000 (UTC)
X-Virus-Scanned: Debian amavis at dfd-cracked-rearview.d-f-d.ca
Received: from dfd-cracked-rearview.d-f-d.ca ([127.0.0.1])
 by localhost (dfd-cracked-rearview.d-f-d.ca [127.0.0.1]) (amavis, port 10026)
 with ESMTP id T6wSElTDIVyU; Wed,  2 Jul 2025 05:14:25 +0000 (UTC)
Received: from [IPV6:2607:f2c0:d009:ff20::4d7] (unknown [IPv6:2607:f2c0:d009:ff20::4d7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by dfd-cracked-rearview.d-f-d.ca (Postfix) with ESMTPSA;
	Wed,  2 Jul 2025 05:14:25 +0000 (UTC)
Message-ID: <9c974df4-9c86-413d-b6a1-06f7ddfc90ad@d-f-d.ca>
Date: Wed, 2 Jul 2025 01:14:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] BSP: X and customized raspberrypi5.conf machine
To: yocto@lists.yoctoproject.org, skandigraun@gmail.com
References: <918368ba-ed9f-49a8-a41f-a99f05c3aba4@d-f-d.ca>
 <f2e25afb-1cdb-49eb-a168-ccd900b58d22@gmail.com>
Content-Language: en-US, en-CA, fr
From: "Daniel F. Dickinson" <daniel@d-f-d.ca>
In-Reply-To: <f2e25afb-1cdb-49eb-a168-ccd900b58d22@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Jul 2025 05:14:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65588

On 2025-06-30 07:19, Gyorgy Sarvari via lists.yoctoproject.org wrote:
> On 6/30/25 09:43, Daniel F. Dickinson via lists.yoctoproject.org wrote:
>> This is a multipart question/problem.
>>
>> Summary:
>>
>> 1. I want to be sure I am using the correct means to create a customiz=
ed machine configuration for what in the meta-raspberrypi layer is raspbe=
rrypi5.conf.
>>
>> 2. With my current attempt I get a working X11 image for the Raspberry=
 Pi 5 but not the Compute Module 5 with CM5 IO board; I am unclear at pre=
sent on whether
>> this is due to the customized configuration or an issue with current w=
alnascar branch of meta-raspberrypi; if the latter I'd like to resolve th=
at too.
>>
>>
>> Customizing raspberrypi machine configuration
>>
>> The first thing is I did is the obvious: create a meta-bsp_custom_pi5 =
with a config/machine/raspberrypi5-custom.conf. This appears to work when=
 I use
>> `require conf/machine/raspberrypi5.conf` and override the parts I want=
 to change. However, I ran into an issue on the Compute Module 5 with CM5=
 IO
>> board which I discuss below. It occurred to me the issue could be the =
method of customizing the machine configuration.
>>
>> I therefore went off on a tangent and successfully created a qemuarm64=
-pi5 board definition[1] which builds and executes my variation of
>> core-image-x11 correctly. This required a little more work than a simp=
le rename as getting the linux-yocto to build correctly required making a
>> local copy of the kernel metadata (.scc and .cfg) so I could set the K=
MACHINE name. It was also during that process that I discovered that on
>> the qemu board the board kernel configuration is not a simple defconfi=
g.
>>
>> So, this leads to the question: am I missing something like setting KM=
ACHINE for the Pi5 / CM5 customized board? If so, what am I missing. If i=
t
>> 'should work' then see below for a possible graphics driver issue with=
 the CM5-IO setup.

Since you pointed to that GitHub issue, I have determined the issue was=20
not my config, so I am doing this reasonably. Thank you.


>>
>> X mostly not rendering for CM5-IO but works correctly for a Pi5 flagsh=
ip board
>>
>> With a modified core-image-x11 image it correctly displays with a modi=
fied raspberrypi5.conf on a Pi5 flagship board and on with qemuarm64-pi5.=
conf
>> (qemuarm64.conf with GPIO_VIRTIO drivers added) using runqemu.
>>
>> However on the Compute Module 5 on a CM5 IO board the display is compl=
etely black with only the mouse cursor being rendered.
>>
>> The vt1 console is working fine, so it's somehow specifically an X on =
CM5-IO issue.
>>
>> Any ideas? I'm at a loss other than to wonder if there is some graphic=
s driver issue.
>>
>
> It seems that someone had the same issue reported in the meta-rpi repo,
> and it turned out to be a mesa issue for them - have you taken a look a=
t
> this:
> https://github.com/agherzan/meta-raspberrypi/issues/1426#issuecomment-2=
810084993
> ?
>
>> Regards,
>> Daniel
>>
>>
>> [1] Its eventual goal is to be able to use virtio GPIO to verify Pi bu=
ilds in Qemu instead of requiring deploying to a physical Pi5/CM5 for
>> basic testing (and, ideally, to automate some testing).
>>
>>
>>
>>
In my case it turns out to be a case of trying to be too clever.

I have not needed to upgrade mesa, there are two other things I needed to=
 do:

 1. Remove the |ROOTLESS_X =3D "1"| I had added; this causes permissions
    issues all over the place (I guess that
    feature of xserver-nodm only works with 'plain' X - no Wayland, no
    acceleration / mesa.
 2. Ensure mesa (but not upgraded) is included in the image.

which I have noted on the GitHub issue: https://github.com/agherzan/meta-=
raspberrypi/issues/1426 .

Thank you again for pointing me in a more relevant direction.

Regards,
Daniel

--=20
Daniel F. Dickinson, B. Computing, A+ =C2=B7 ce

https://www.wildtechgarden.ca - Technical documentation, website, and blo=
g
https://www.danielfdickinson.ca - Personal professional blog, website, an=
d resume


