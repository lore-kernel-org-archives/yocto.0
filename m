Return-Path: <lpmeyer@ics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2846AC282EC
	for <webhook@archiver.kernel.org>; Tue, 18 Mar 2025 14:53:12 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.324.1742309582905273113
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Mar 2025 07:53:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ics.com header.s=google header.b=oD8pEo2J;
 spf=pass (domain: ics.com, ip: 209.85.221.53, mailfrom: lpmeyer@ics.com)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3912baafc58so4938791f8f.1
        for <yocto@lists.yoctoproject.org>; Tue, 18 Mar 2025 07:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ics.com; s=google; t=1742309581; x=1742914381; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AewUCbL/ZelkgApBn/ZxWp1mWcTAUFxy9IaBI99CRqQ=;
        b=oD8pEo2JMBJOYBG7p8G5ydFCC4meJyq208vgTKeXYOHQvZZiCPTH5zEkWyUw8UjL4D
         pOV0H3ueH4Ri6JFUlJwM+I9exZH2MuHDLOFzYqNF5rz11ZXvkqQ+r1l+pzDE8/5AcZFt
         gC+LOEyrJrySD9qtt0ys4wkJjbDUpOqH9fWMZb+aRrRelN0iO5Cc3apSZjRCDD5rBtJ4
         CyFmrVoMWVqA1jSMfrTe0Xpst5YQ1f60My7LWTsuPFpGcYX5ZJ0AxkTCnb8ytIdGubSq
         rRu0cRpZegFmHwAkjdhRNBocPUczdnSQlGT+bi8oyw7YQdCe9KNiDQKsNEJOq3whr1bY
         zF9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742309581; x=1742914381;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AewUCbL/ZelkgApBn/ZxWp1mWcTAUFxy9IaBI99CRqQ=;
        b=OI30sS9Jk+czFJRYQ4mO+2cnbWOIIp1mLP5Xu6RQTnUJOUwbLM20CRF+5Hjj3e5KSv
         KR77bXolHG2L9DBkMwocNsJZGKlny9SarC6guYMfDO4pkd8Ms3atOHhJuBNG8LXGU0Ha
         JkSBIhhA3jFGXtus+boaIsP+qoBE2mD97zrUAsHrvwGnCdIktrEdpJt1cjH/EA71kRbl
         1a5QIcH3WMOvtg8ZL67FnTvV2aF/WLEeb5ECmyBMimOy+Cqotpz/T9z9H+d/ztJOLQ/S
         TpdRt7sq9jpsJu/etu7EFRp+3qUXOpgEgSrKJ1tvu4LY02Zgmlyfuzj/RjPl4uAlYt6t
         v5Fw==
X-Gm-Message-State: AOJu0Yz4Yy+RuM4Gpf1X1AhrrkJrOlkeqxn4i1gg2xebnqXqox2mBEsO
	rPrGGw5pc5t07BXoRwTA0yjwnJa+fWi/EiYMSJUJEyY09URiYv7qgtzOhLz4uu5OPSOhfc3hy1P
	TvsWxY9x45OtCo7hdoTxgQ+eWTm2t3cm2hEnSpvkTpyHIMGvM
X-Gm-Gg: ASbGncvdFPvk1GQ3MybSDYRY83Xq31RkMR91sfETFv88Adgs9D4zWk/kTCojeav0Yuh
	ZngWp2at2surLf+3SBFhlLpoGAapKPRnslov/SnGAw0FiL3QNGON5+ahacDNGfH7eRpcJkodwjI
	/iKdbQcY/RtJ6zt4CmNuBuYLhAHgC30FVwMULxjhQ=
X-Google-Smtp-Source: AGHT+IEAUxu/LQXOvphB4eC0VtKHDUamzKJOv80cc6oh9QNJI3gw3nkGmcUsgz1PQK5BVlTQvB/ObNkrV+4iCRgbLmk=
X-Received: by 2002:a05:6000:4025:b0:391:412b:e22b with SMTP id
 ffacd0b85a97d-3971d617ae4mr17308642f8f.18.1742309579969; Tue, 18 Mar 2025
 07:52:59 -0700 (PDT)
MIME-Version: 1.0
References: <CABqjNW8MPXLqFxubZKJ5LF=7HAyW_ft5GxK5y1TUe0DkPCCycg@mail.gmail.com>
 <4b6990e5-eaef-47d5-ab90-b904594a0b8a@gmail.com>
In-Reply-To: <4b6990e5-eaef-47d5-ab90-b904594a0b8a@gmail.com>
From: =?UTF-8?Q?Lisandro_P=C3=A9rez_Meyer?= <lpmeyer@ics.com>
Date: Tue, 18 Mar 2025 11:52:43 -0300
X-Gm-Features: AQ5f1JpsiKEWcaQ-_Le43Dv-Cs7XYPYOjgXqF28hR7dJyaqY9OraI1WgJotGM7c
Message-ID: <CABqjNW-GBA061W+AV5xLukZwyLJ-BaeOrBPfACoinD4yiEX36w@mail.gmail.com>
Subject: Re: [yocto] Kernel with initramfs: issues with packaging, out of
 source modules
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009a7ede06309f0f05"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Mar 2025 14:53:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64975

--0000000000009a7ede06309f0f05
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 18, 2025 at 5:10=E2=80=AFAM Gyorgy Sarvari <skandigraun@gmail.c=
om>
wrote:

> On 17.03.25 19:08, Lisandro P=C3=A9rez Meyer (ICS) via lists.yoctoproject=
.org
> wrote:
>
[snip]

> > But after the above I am finding an issue with kernel versioning. The
> > function `do_bundle_initramfs` is being run after `do_package`, which
> > means I can not create a package of the kernel with initramfs on it.
> > Moreover I can no longer build out of kernel modules, because the git
> > commit id changes, and thus KERNEL_VERSION.
> Regarding the version problem with out-of-tree modules:
>
> This sounds similar to
> https://lists.yoctoproject.org/g/yocto/message/64358 - would disabling
> CONFIG_LOCALVERSION_AUTO in the kernel config solve this for you?
>

Yes it does! The rest I can hack around, so at least I get unblocked.
Thanks a lot!

--0000000000009a7ede06309f0f05
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Mar 18, 2025 at 5:10=E2=80=AFAM Gyorg=
y Sarvari &lt;<a href=3D"mailto:skandigraun@gmail.com" target=3D"_blank">sk=
andigraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">On 17.03.25 19:08, Lisandro P=C3=A9rez Meyer (ICS) via <=
a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blan=
k">lists.yoctoproject.org</a><br>
wrote:<br></blockquote><div>[snip]</div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div>
&gt; But after the above I am finding an issue with kernel versioning. The<=
br>
&gt; function `do_bundle_initramfs` is being run after `do_package`, which<=
br>
&gt; means I can not create a package of the kernel with initramfs on it.<b=
r>
&gt; Moreover I can no longer build out of kernel modules, because the git<=
br>
&gt; commit id changes, and thus KERNEL_VERSION.<br>
Regarding the version problem with out-of-tree modules:<br>
<br>
This sounds similar to<br>
<a href=3D"https://lists.yoctoproject.org/g/yocto/message/64358" rel=3D"nor=
eferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/message/6=
4358</a> - would disabling<br>
CONFIG_LOCALVERSION_AUTO in the kernel config solve this for you?<br></div>=
</blockquote><div><br></div></div>Yes it does! The rest I can hack around, =
so at least I get unblocked. Thanks a lot!<br></div>
</div>

--0000000000009a7ede06309f0f05--

