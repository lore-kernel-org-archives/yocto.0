Return-Path: <mahendrasondagar08@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6890BC28D13
	for <webhook@archiver.kernel.org>; Mon, 22 Aug 2022 17:39:46 +0000 (UTC)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com
 [209.85.221.177])
 by mx.groups.io with SMTP id smtpd.web10.21501.1661189978074982578
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Aug 2022 10:39:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QXGKsCPU;
 spf=pass (domain: gmail.com, ip: 209.85.221.177,
 mailfrom: mahendrasondagar08@gmail.com)
Received: by mail-vk1-f177.google.com with SMTP id w129so5915100vkg.10
        for <yocto@lists.yoctoproject.org>;
 Mon, 22 Aug 2022 10:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=zsx9wTJ/WHxT42oRh914VfIW0LpJLKvBRpoZ1wW4Sv0=;
        b=QXGKsCPUsrJhSPYBYe7o6BpHO9yw3ErE4+ax/+fkFuVW307i0uzrdaNcO9jH0+Nmgu
         NX74NptiXwtU909JnU1Wb6w2xExVat5LSWAwZ0mxXRhUSnci/rztyn98R++yJwPrjf26
         b++gM8YeUrQI+qRu+F6zyWfrQzCfqq8uTllXZ+ohs6WhyZh2E/W8dswMo1i6XyDxRCxC
         Rg5rDzcUAeTnofRflrfsGdIThuPF6xKqqBfm83VKiZFnERQrPg4j4y9c63VUqlaWYqhn
         P5zCA96IUpH0on5tLrB0tnkS0mAPayjqtUUQGNaHBOvFVVoUS2I74afNTYa4X6g6V349
         8BWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=zsx9wTJ/WHxT42oRh914VfIW0LpJLKvBRpoZ1wW4Sv0=;
        b=tTad5kFYs3GTYX9HKDdPuEkaKGQPTTPClmDqlrhCTqjdgYfgxzjr0eGWSbDy8WLwM3
         /kkLvbbRiTljap++BlVTNkC3TUkiHhYc1LWCH/l5WmMSuGkPZvMlswdTaetJWSOSrdKl
         MqjeDt6pasyrNhfCNwhnTl3xNovhVH6oD3cV2NkcfRaAG5GHJmAeTsppeSYINwolCqvl
         qudyxWrtAYlHLc/37RnEJcuBHy+jjb9Cfjz5v04Ws9fjZUNcF2+pic559Dg7M6N48R/T
         fZe/4k/J0lQIsbjTA/tPBs/aXJM1ZeIJM6ywaT/LXy4cJvKOcuL6iIN8f8YBRWkN2+dS
         nxrQ==
X-Gm-Message-State: ACgBeo05rySr2cL6wI1GPH1+ZUP0w3xnwHl36WNE3dnBwMqpKNln0ZlA
	09oZy0fZ6stB4SzX9u+p+6H2vArWZGqvgtDQ0ZA=
X-Google-Smtp-Source: 
 AA6agR7qlraGOLmQlzSqt3HqzUVGCGuA/F/sQVNPv6fFWLYdU81dbcJ4uUCZ9frkVUJQ33LYRaYhfmAG8ssHT0uS5qw=
X-Received: by 2002:a1f:a885:0:b0:38c:87ea:36e2 with SMTP id
 r127-20020a1fa885000000b0038c87ea36e2mr1680816vke.33.1661189977008; Mon, 22
 Aug 2022 10:39:37 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAMKF1soSGVanC9Cfv-h3zM6h-wYtMnjrJGQ=D578Lq4oz_uF_A@mail.gmail.com>
 <30515.1661187886467434806@lists.yoctoproject.org>
 <FC15F550-622D-4D01-88D0-BD1407EB85E8@0leil.net>
In-Reply-To: <FC15F550-622D-4D01-88D0-BD1407EB85E8@0leil.net>
From: Mahendra Sondagar <mahendrasondagar08@gmail.com>
Date: Mon, 22 Aug 2022 23:09:24 +0530
Message-ID: 
 <CAMho1OExLm+3VXxWRRVLbodJnCnEGWU-oz4jHVKRvoP7efZTkA@mail.gmail.com>
Subject: Re: [yocto] Create the patch for the linux kernel module #dunfell
To: Quentin Schulz <foss+yocto@0leil.net>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007bee9305e6d7ee40"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Aug 2022 17:39:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57872

--0000000000007bee9305e6d7ee40
Content-Type: text/plain; charset="UTF-8"

Hi...Quentin

Thanks for the revert :)
Let me try this

Regards
Mahendra

On Mon, Aug 22, 2022 at 10:49 PM Quentin Schulz <foss+yocto@0leil.net>
wrote:

> Hi Mahendra,
>
> On August 22, 2022 7:04:46 PM GMT+02:00, mahendrasondagar08@gmail.com
> wrote:
> >Hi... Khem Raj
> >
> >First of all, Thanks for the swift reply.
> >Let me brief the case.
> >
> >Actually, I'm dealing with the TP-Link Bluetooth dongle
> >I have been enabled it's suitable drivers
> >However, the things not working well
> >
> >After some googling, i got to know that to work with the TP-Link
> Bluetooth dongle, I'll have to apply the patch by making some changes at
> the busb.c and hci_ldisc.c files
> >And that's how, I have created it's patches by *git diff --no-index*
> command *
> >
> >* FYI: I have meta-custom layer, in which i have created the
> recpies-kernel/linux/stm32mp1 directory
> >I have stored, all 2 patches in to the stm32mp1 files
> >
> >in linux file, i have created the .bbappend file called
> *linux-stm32mp_%.bbappend*
> >For the instance, i have added the all to patches path in to the
> .bbappend file at *SRC_URI*
> >
> >Now, My problem is,  during the baking of the custom image I'm getting
> the following errors
> >*"can't find file to patch at input line 5"*
> >
> >*Error logs*
> >
> >For your reference, i have attached the contents of the .bbappend file
> and patch here
> >
> >In above .bbappend file, the last two patches are for this modules which
> i need to modify
> >
> >Once of the patch contents are mentioned at here
> >
> >I have also attached both of these patches here
> >
> >I guess, there might be some issue with the actual source file location
> mentioned in to the patches
> >but, I'm not sure
> >
>
> The issue is that the path in your patch is incorrect, it should not have
> kernel-source/ in it, just remove it.
>
> Cheers,
> Quentin
>
>
> >Pl. suggest me the right solution
> >
> >Thanks
> >Mahendra
>

--0000000000007bee9305e6d7ee40
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi...Quentin</div><div><br></div><div>Thanks for the =
revert :)<br></div><div>Let me try this <br><br></div><div>Regards</div><di=
v>Mahendra <br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, Aug 22, 2022 at 10:49 PM Quentin Schulz &lt;<a=
 href=3D"mailto:foss%2Byocto@0leil.net">foss+yocto@0leil.net</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Mahendra,<br=
>
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

--0000000000007bee9305e6d7ee40--

