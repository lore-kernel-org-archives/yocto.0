Return-Path: <mahendrasondagar08@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB46DC32774
	for <webhook@archiver.kernel.org>; Mon, 22 Aug 2022 19:24:26 +0000 (UTC)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com
 [209.85.221.169])
 by mx.groups.io with SMTP id smtpd.web11.22302.1661196261336945425
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Aug 2022 12:24:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jy/LFAcT;
 spf=pass (domain: gmail.com, ip: 209.85.221.169,
 mailfrom: mahendrasondagar08@gmail.com)
Received: by mail-vk1-f169.google.com with SMTP id t64so6061244vkb.12
        for <yocto@lists.yoctoproject.org>;
 Mon, 22 Aug 2022 12:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=bhpENHsXTJ1Grqphrd3hujYHbaabwaBOpjd/VGjyotg=;
        b=jy/LFAcTPaCZrQmy+Gr1YNLddKP6NmrkWZhmdluvHnwlSDt3NkaAcpMOCBh2BV9IG+
         vb3ZcuUiyXPYBBmYtiXXpb1UHVTV8jBDwYtij7y5GYTcn05k5YCnDA9BpjjshFzPSiHy
         HKRJQmiB5KCsBvtQM6aBOI42pvTEeKcMMnIX1s0l3z+mnQU5TpiU1VgL4RlkNbDbRHH8
         cUVc0hi6H5UmlUl8tQoi+IMb3dLXUa9doprTaLLmHPGQNWcRlfcrvETsf1MIDDCeh5Hn
         81juNjxnXF9NU+Ps4y49VzsKeTjtGMbLP+jNqctCL3UJ47D9NGyAzU7OLk0DSIy4ZRwR
         07kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=bhpENHsXTJ1Grqphrd3hujYHbaabwaBOpjd/VGjyotg=;
        b=M9BdnEh6g0fQLWm9A2hVouZR9dlRzDVrlaCUL+hBo5tW6KT+Ayqc2n7NgiTu0F04/g
         g3PzNy5/vwss/K0ev6IUHwcEUKWv3Gxj1m+eHDABMHUXKuTZrq/x3JQxKlZj0hccLzGo
         T+piTIHbC5NZhuhx6sFT/BXg9dVrMvrJZ+zDhJaxQpu4t5CiRLasIV8L1jq42GK/8/pf
         9+RQFqgeG95hMGbOliZYo7djTrslx2UCAgPQIxHwzdL9SmLIfzyQQJviBefHdD8Se8oR
         WbxB0ErrAhCC8NEsO5qX9oqXuXVKwhlHcS0O/P/1Mv/W9N7KlaowGSRZSO9P0d/Waj/K
         uY7w==
X-Gm-Message-State: ACgBeo24FV2dEIoIbFzTzfwugLX7F32sIDTMsNdei6PxJlV7qynQ7tL6
	zZHMAZUmUxUrnI75AqTuMilizOWHv/M1JFbg/XM=
X-Google-Smtp-Source: 
 AA6agR5iZcXqf4l93w/GSH+AMAufBqd/eiodlra2x9SQ4cgIiWs4wVzkFXMYci43FJn8+YTRoR4F521orxwNH62Ugqc=
X-Received: by 2002:a1f:2a58:0:b0:37d:2a8d:5fbd with SMTP id
 q85-20020a1f2a58000000b0037d2a8d5fbdmr8280257vkq.31.1661196260359; Mon, 22
 Aug 2022 12:24:20 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAMKF1soSGVanC9Cfv-h3zM6h-wYtMnjrJGQ=D578Lq4oz_uF_A@mail.gmail.com>
 <30515.1661187886467434806@lists.yoctoproject.org>
 <FC15F550-622D-4D01-88D0-BD1407EB85E8@0leil.net>
 <CAMho1OExLm+3VXxWRRVLbodJnCnEGWU-oz4jHVKRvoP7efZTkA@mail.gmail.com>
In-Reply-To: 
 <CAMho1OExLm+3VXxWRRVLbodJnCnEGWU-oz4jHVKRvoP7efZTkA@mail.gmail.com>
From: Mahendra Sondagar <mahendrasondagar08@gmail.com>
Date: Tue, 23 Aug 2022 00:54:08 +0530
Message-ID: 
 <CAMho1OF4qEWjcHpdAqZKmsVF+7NNU5DWV7KVNAz-5G=PpLx-mA@mail.gmail.com>
Subject: Re: [yocto] Create the patch for the linux kernel module #dunfell
To: Quentin Schulz <foss+yocto@0leil.net>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000000439805e6d965ca"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Aug 2022 19:24:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57873

--00000000000000439805e6d965ca
Content-Type: text/plain; charset="UTF-8"

Hi... Quentin
Yes, it works!

I'm able to customise the kernel module by the patch


Many thanks :)

Regards,
Mahendra

On Mon, Aug 22, 2022 at 11:09 PM Mahendra Sondagar <
mahendrasondagar08@gmail.com> wrote:

> Hi...Quentin
>
> Thanks for the revert :)
> Let me try this
>
> Regards
> Mahendra
>
> On Mon, Aug 22, 2022 at 10:49 PM Quentin Schulz <foss+yocto@0leil.net>
> wrote:
>
>> Hi Mahendra,
>>
>> On August 22, 2022 7:04:46 PM GMT+02:00, mahendrasondagar08@gmail.com
>> wrote:
>> >Hi... Khem Raj
>> >
>> >First of all, Thanks for the swift reply.
>> >Let me brief the case.
>> >
>> >Actually, I'm dealing with the TP-Link Bluetooth dongle
>> >I have been enabled it's suitable drivers
>> >However, the things not working well
>> >
>> >After some googling, i got to know that to work with the TP-Link
>> Bluetooth dongle, I'll have to apply the patch by making some changes at
>> the busb.c and hci_ldisc.c files
>> >And that's how, I have created it's patches by *git diff --no-index*
>> command *
>> >
>> >* FYI: I have meta-custom layer, in which i have created the
>> recpies-kernel/linux/stm32mp1 directory
>> >I have stored, all 2 patches in to the stm32mp1 files
>> >
>> >in linux file, i have created the .bbappend file called
>> *linux-stm32mp_%.bbappend*
>> >For the instance, i have added the all to patches path in to the
>> .bbappend file at *SRC_URI*
>> >
>> >Now, My problem is,  during the baking of the custom image I'm getting
>> the following errors
>> >*"can't find file to patch at input line 5"*
>> >
>> >*Error logs*
>> >
>> >For your reference, i have attached the contents of the .bbappend file
>> and patch here
>> >
>> >In above .bbappend file, the last two patches are for this modules which
>> i need to modify
>> >
>> >Once of the patch contents are mentioned at here
>> >
>> >I have also attached both of these patches here
>> >
>> >I guess, there might be some issue with the actual source file location
>> mentioned in to the patches
>> >but, I'm not sure
>> >
>>
>> The issue is that the path in your patch is incorrect, it should not have
>> kernel-source/ in it, just remove it.
>>
>> Cheers,
>> Quentin
>>
>>
>> >Pl. suggest me the right solution
>> >
>> >Thanks
>> >Mahendra
>>
>

--00000000000000439805e6d965ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi... Quentin</div><div>Yes, it works!</div><div><br>=
</div><div>I&#39;m able to customise the kernel module by the patch<br></di=
v><div><br></div><div><br></div><div>Many thanks :)</div><div><br></div><di=
v>Regards,</div><div>Mahendra <br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 22, 2022 at 11:09 PM Ma=
hendra Sondagar &lt;<a href=3D"mailto:mahendrasondagar08@gmail.com">mahendr=
asondagar08@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div>Hi...Quentin</div><div><br></div=
><div>Thanks for the revert :)<br></div><div>Let me try this <br><br></div>=
<div>Regards</div><div>Mahendra <br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 22, 2022 at 10:49 PM =
Quentin Schulz &lt;<a href=3D"mailto:foss%2Byocto@0leil.net" target=3D"_bla=
nk">foss+yocto@0leil.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">Hi Mahendra,<br>
<br>
On August 22, 2022 7:04:46 PM GMT+02:00, <a href=3D"mailto:mahendrasondagar=
08@gmail.com" target=3D"_blank">mahendrasondagar08@gmail.com</a> wrote:<br>
&gt;Hi... Khem Raj<br>
&gt;<br>
&gt;First of all, Thanks for the swift reply.<br>
&gt;Let me brief the case.<br>
&gt;<br>
&gt;Actually, I&#39;m dealing with the TP-Link Bluetooth dongle<br>
&gt;I have been enabled it&#39;s suitable drivers<br>
&gt;However, the things not working well<br>
&gt;<br>
&gt;After some googling, i got to know that to work with the TP-Link Blueto=
oth dongle, I&#39;ll have to apply the patch by making some changes at the =
busb.c and hci_ldisc.c files<br>
&gt;And that&#39;s how, I have created it&#39;s patches by *git diff --no-i=
ndex* command *<br>
&gt;<br>
&gt;* FYI: I have meta-custom layer, in which i have created the recpies-ke=
rnel/linux/stm32mp1 directory<br>
&gt;I have stored, all 2 patches in to the stm32mp1 files<br>
&gt;<br>
&gt;in linux file, i have created the .bbappend file called *linux-stm32mp_=
%.bbappend*<br>
&gt;For the instance, i have added the all to patches path in to the .bbapp=
end file at *SRC_URI*<br>
&gt;<br>
&gt;Now, My problem is,=C2=A0 during the baking of the custom image I&#39;m=
 getting the following errors<br>
&gt;*&quot;can&#39;t find file to patch at input line 5&quot;*<br>
&gt;<br>
&gt;*Error logs*<br>
&gt;<br>
&gt;For your reference, i have attached the contents of the .bbappend file =
and patch here<br>
&gt;<br>
&gt;In above .bbappend file, the last two patches are for this modules whic=
h i need to modify<br>
&gt;<br>
&gt;Once of the patch contents are mentioned at here<br>
&gt;<br>
&gt;I have also attached both of these patches here<br>
&gt;<br>
&gt;I guess, there might be some issue with the actual source file location=
 mentioned in to the patches<br>
&gt;but, I&#39;m not sure<br>
&gt;<br>
<br>
The issue is that the path in your patch is incorrect, it should not have k=
ernel-source/ in it, just remove it.<br>
<br>
Cheers,<br>
Quentin<br>
<br>
<br>
&gt;Pl. suggest me the right solution<br>
&gt;<br>
&gt;Thanks<br>
&gt;Mahendra<br>
</blockquote></div>
</blockquote></div>

--00000000000000439805e6d965ca--

