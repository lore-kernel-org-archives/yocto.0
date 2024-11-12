Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB75AD42BA5
	for <webhook@archiver.kernel.org>; Tue, 12 Nov 2024 16:11:48 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.web10.90247.1731427903915748475
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Nov 2024 08:11:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jWK6+UKL;
 spf=pass (domain: gmail.com, ip: 209.85.128.179, mailfrom: sateesh0457@gmail.com)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-6eb0c2dda3cso22865917b3.1
        for <yocto@lists.yoctoproject.org>; Tue, 12 Nov 2024 08:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731427903; x=1732032703; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KavymT3H1ObBLwbChGCTw3l1ge1buPUW7zJ/BZYtBXM=;
        b=jWK6+UKLxQKlSMyFilUdWWtfYLpmg9uTNKCQ31TWyJfLj7oQ+LPH1ZbeU6wSP6XiMX
         C2JgLcnYPHnTpzaul3QCys3UZC7VpMoK0w0MF7215Xd6qnzABY/OrR2VMZAA7XqhrX9l
         Tlh8YUY8ri7HrR581QBHRxp8cuQCxl420fs9Jz0ftvqtgWcVwPyiD0nf/oAKF4jLZdv0
         LAHJ6PUTtZwbqzjRh/NNma0TGs1vcHGiNrlRP7Xsl3Z71AdTAH5X3bJXOsT5t2MMHB9P
         mxeI7UH+z7HgzTfa8kd2zi3BPhHxZxYPoIhPvFOdaL++GFYNLR2KjZZy3cuGxjmM9JAY
         Igrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731427903; x=1732032703;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KavymT3H1ObBLwbChGCTw3l1ge1buPUW7zJ/BZYtBXM=;
        b=dvSa4C7dFxJop7WWeZ874011AGaRMQtd7zXGOxiSVR6uwQd7ew+Xd734dMTAsgPqib
         v40P8Hu/xuCaSOR5wKtt16LE7OlTXWM0hAiBFuclFFCR96RSLkboiS1FovCLcwnytgYw
         5euYQExCZl3wvMNU0zYSxVO8ZJ5wQlO3R0iGil+u6ZA6UZavOLGntTwwlnOPRFM6ElGk
         xQnzpc0PSgG8Us033xUFkV/3/GwTHaNcAMBRTenL6KEz8V5LRsGiuetS0vikPwDmQlL0
         np7DV2Rm56CKkOpTmSvrh7x6Z4APCmbUZFI/9/YQo3oMgdxnNA1WmbZk/pPuq4owc4E2
         m6yw==
X-Gm-Message-State: AOJu0YzKKCyD7yo/c+CKvLm8XNIOvq+4C4VbnldhVCr2J6TJD0LzkqzF
	UnglCfbNWLdK2DDFst0xhG2G651bf0lj0l/SduMmFShnuFAd0xxpt6f3N4NC1OtUVyvv6jd3cXT
	sbYylRW1wvOVn9shLLKO0Llj2XnY=
X-Google-Smtp-Source: AGHT+IEbq5IB/YAK5qbQqOtW7lg266Lf79rYVm0bo0mU38F6Y90yvWm3wQkMjI2OTB969rJcqqFSfTg8rkytLgn2uP0=
X-Received: by 2002:a05:690c:6890:b0:6e3:1869:8983 with SMTP id
 00721157ae682-6eaddfd3d0dmr144948367b3.40.1731427902859; Tue, 12 Nov 2024
 08:11:42 -0800 (PST)
MIME-Version: 1.0
References: <qdwm.1731305083820940791.ZN0b@lists.yoctoproject.org>
 <68e7b3be-48e9-4801-910a-51b0d136fc01@gmail.com> <CACsETSup3qgwz3HrA3yh_HQrZJteiP=BWaNuzfSespLVa9iR+Q@mail.gmail.com>
 <4eb6e8ee-3b1d-4536-beb7-4a4c4218739b@gmail.com>
In-Reply-To: <4eb6e8ee-3b1d-4536-beb7-4a4c4218739b@gmail.com>
From: sateesh m <sateesh0457@gmail.com>
Date: Tue, 12 Nov 2024 21:41:29 +0530
Message-ID: <CACsETSsO6OOVxZ=MgYMGv_Jepmn9OmgUBfDuiaEO3vFaAMbtWg@mail.gmail.com>
Subject: Re: [yocto] Id: 'weston': no such user issue Disable is required
To: Gyorgy Sarvari <skandigraun@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001ab4240626b9790e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Nov 2024 16:11:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64267

--0000000000001ab4240626b9790e
Content-Type: text/plain; charset="UTF-8"

Hi Sarvari,

IMAGE_INSTALL:remove = "weston weston-init"
PACKAGECONFIG:remove:weston = "init"

I did it even though I see same id: weston no such user"

Thanks & Regards,
Sateesh

On Tue, 12 Nov, 2024, 9:16 pm Gyorgy Sarvari, <skandigraun@gmail.com> wrote:

> On 11/12/24 15:48, sateesh m wrote:
> > How to delete it.
> >
> > Regards,
> > Sateesh
> >
> >
>
>
> How to remove a package from an image? Remove the package name from the
> IMAGE_INSTALL variable, either by deleting it explicitly, or by adding
> something like 'IMAGE_INSTALL:remove = " $PACKAGE_NAME "' to your image
> recipe or local.conf (or your other, favorite relevant conf file)
>
>

--0000000000001ab4240626b9790e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi Sarvari,</p>
<p dir=3D"ltr">IMAGE_INSTALL:remove =3D &quot;weston weston-init&quot;<br>
PACKAGECONFIG:remove:weston =3D &quot;init&quot;</p>
<p dir=3D"ltr">I did it even though I see same id: weston no such user&quot=
;</p>
<p dir=3D"ltr">Thanks &amp; Regards,<br>
Sateesh<br>
</p>
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue=
, 12 Nov, 2024, 9:16 pm Gyorgy Sarvari, &lt;<a href=3D"mailto:skandigraun@g=
mail.com">skandigraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On 11/12/24 15:48, sateesh m wrote:<br>
&gt; How to delete it.<br>
&gt; <br>
&gt; Regards,<br>
&gt; Sateesh<br>
&gt; <br>
&gt; <br>
<br>
<br>
How to remove a package from an image? Remove the package name from the <br=
>
IMAGE_INSTALL variable, either by deleting it explicitly, or by adding <br>
something like &#39;IMAGE_INSTALL:remove =3D &quot; $PACKAGE_NAME &quot;&#3=
9; to your image <br>
recipe or local.conf (or your other, favorite relevant conf file)<br>
<br>
</blockquote></div>

--0000000000001ab4240626b9790e--

