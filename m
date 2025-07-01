Return-Path: <daniel@d-f-d.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43D57C7EE30
	for <webhook@archiver.kernel.org>; Tue,  1 Jul 2025 15:41:31 +0000 (UTC)
Received: from dfd-cracked-rearview.d-f-d.ca (dfd-cracked-rearview.d-f-d.ca [51.161.82.14])
 by mx.groups.io with SMTP id smtpd.web11.339.1751384483703698206
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Jul 2025 08:41:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@d-f-d.ca header.s=modoboa header.b=DqKN7bSS;
 spf=pass (domain: d-f-d.ca, ip: 51.161.82.14, mailfrom: daniel@d-f-d.ca)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=d-f-d.ca; s=modoboa;
	t=1751384482; bh=/62ZgrA6wczjJjyYuV1ufA/tVDGh4Havif+HN77xi80=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=DqKN7bSS1+IyuBhrEDxojPfE3y0ajRm584UzdHtqSbacE2zEdQgHKvmDYbFElV0Q3
	 1THK3+cjCat6VQX545dSeUWE4cdT8y+cDopj4F7vKlyvq8ccdBEhv69Al1wgKFtT9t
	 ngxBEyF6eSmXTCi0yJCljc7Po0C6cAmG6VEcctI1PrxLdWVJPYs872lO9/mhmesnjS
	 +5mku17WEPuJ4l/BAJUYl3wINM5NcBtcC385E0lq5DXMFwyiBs7QiIG+KjEvflhU60
	 JYxNv85FT3qPW819MqaN+9zbgkjipY00JrK1n42o/up29ZYH5YVhEBYV02UW/4vN51
	 yQeIfi1dXC+gg==
Received: from localhost (localhost [127.0.0.1])
	by dfd-cracked-rearview.d-f-d.ca (Postfix) with ESMTP id 77D5068170;
	Tue,  1 Jul 2025 15:41:22 +0000 (UTC)
X-Virus-Scanned: Debian amavis at dfd-cracked-rearview.d-f-d.ca
Received: from dfd-cracked-rearview.d-f-d.ca ([127.0.0.1])
 by localhost (dfd-cracked-rearview.d-f-d.ca [127.0.0.1]) (amavis, port 10026)
 with ESMTP id OKnxZvmvV984; Tue,  1 Jul 2025 15:41:16 +0000 (UTC)
Received: from [IPV6:2607:f2c0:d009:ff20::4d7] (unknown [IPv6:2607:f2c0:d009:ff20::4d7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by dfd-cracked-rearview.d-f-d.ca (Postfix) with ESMTPSA;
	Tue,  1 Jul 2025 15:41:16 +0000 (UTC)
Message-ID: <2606a25f-51ab-41c0-9918-ba4fee51de2c@d-f-d.ca>
Date: Tue, 1 Jul 2025 11:41:15 -0400
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
 <yocto@lists.yoctoproject.org>; Tue, 01 Jul 2025 15:41:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65576

On 2025-06-30 07:19, Gyorgy Sarvari via lists.yoctoproject.org wrote:
> On 6/30/25 09:43, Daniel F. Dickinson via lists.yoctoproject.org wrote:
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

Thank you for this. I had indeed missed it. It certainly looks plausible.=
 It seems
updating mesa successfully will be non-trivial, and I have run into some =
other issues
(I suspect due to using a multiconfig; reverting to a standard only local=
.conf setup
to unbreak that).

Once I am able to test, I will report back to the list.

Regards,
Daniel

--=20
Daniel F. Dickinson, B. Computing, A+ =C2=B7 ce

https://www.wildtechgarden.ca - Technical documentation, website, and blo=
g
https://www.danielfdickinson.ca - Personal professional blog, website, an=
d resume


