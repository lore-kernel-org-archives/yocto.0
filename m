Return-Path: <worik.stanton@tirotech.co.nz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4DDC54798
	for <webhook@archiver.kernel.org>; Fri,  8 Mar 2024 00:57:03 +0000 (UTC)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
 by mx.groups.io with SMTP id smtpd.web10.9961.1709859420365932018
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Mar 2024 16:57:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tirotech-co-nz.20230601.gappssmtp.com header.s=20230601 header.b=lrHapD6R;
 spf=none, err=SPF record not found (domain: tirotech.co.nz, ip: 209.85.222.46, mailfrom: worik.stanton@tirotech.co.nz)
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-7dba73cab13so261090241.3
        for <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 16:57:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tirotech-co-nz.20230601.gappssmtp.com; s=20230601; t=1709859419; x=1710464219; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yw06YmoRYYPUABo4HhDWAs+vgJ2XKE7ERro7Twi5Zw4=;
        b=lrHapD6R0AFueX8zdcJI/Y9v0Hw5in542l2zqMBYLiO4EClMJYVjiCO13h166JpfTY
         4y+wFf2jovEYx5hYPQW31oVsRlhmX3dQr1Dx9wrMJh3TfWHtNZ2Q3+JjE6Bty7o/VD7Y
         OaPuGzXIn5QBRFWgIRxhYCZfGsPzYWMxLd2vUC2m4Boh/T8j8Nujn5tU2NWOsBQPunmn
         7CkrOR+HCdet5Yaf3qZ9nSVQ4FoqWEZfVBWtMlmAqJz2pjwOQwBG9i6IohzrEIHO0fn7
         agWFH2AIYtagTt0vwG9noL3Vzw4FxOIwTRBb5m7spH643+KpRtHRnPiBqenZMIiUgRJW
         bO5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709859419; x=1710464219;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yw06YmoRYYPUABo4HhDWAs+vgJ2XKE7ERro7Twi5Zw4=;
        b=L6SVR28AFsRfeuvNmA+vSdzYDQd6fPRNKg5TZiVI9lIoRp5X6k82m+jy32XlNBVsrd
         Lb555dL0c0VuDB1H+tSZQ95o0XaSfa8Sejmce6zIWnIdMWtdCci4MiGat5ivwr3w+5h8
         I0E/VzPQwOvAvk2UM5URU7R+obP5m9wC3vmTYvzRZ4YQ637tP9NgO6KlOvyzE6/BVJdQ
         aMIjVbPKA+sNm7CluzMSu7kh+BrCm7bL2lflmSo1UVfAu3lioXBXGq4Zm8ISGpo3gFER
         Zdo3OagRGu5/NpdXkoRNfN8PkKMs4HkuotMk1oDIAWDeps/BXt/kt5sXzBUXAkG9a2f6
         XBoA==
X-Gm-Message-State: AOJu0YxVXqIaufd9yG0LAZsiq8GL4gmI6fYJEtaDN9fdrEVz++jxC0Ie
	nTShGwNYqI83MNwlj+ajEKx7e6wwWXodmP10izRQiPfNKgOQToYDfX/1/RkOb2ENiEAU1fcsIwb
	ygwSut5LxJMT+f+qBEOLog1yahOb8wDcNhpNvwzSse3xU8GtimmA=
X-Google-Smtp-Source: AGHT+IFTfIqNUhJfKbOt0y0wgAsvibyeytAAh1lXrkNKZb8EWdUy2/jL6UrMDInmQ2lfd6jq4ynZEtHcgtbG0WmEBRU=
X-Received: by 2002:a05:6122:202a:b0:4c9:a9c9:4b3b with SMTP id
 l42-20020a056122202a00b004c9a9c94b3bmr11302699vkd.9.1709859419240; Thu, 07
 Mar 2024 16:56:59 -0800 (PST)
MIME-Version: 1.0
References: <CANuMBWH835Xj0prs1EUrkVjnRFyE4BF7-viJsrHdYMPSdv60Xg@mail.gmail.com>
 <2N60AS.IS9X55HYOFEM2@t-online.de>
In-Reply-To: <2N60AS.IS9X55HYOFEM2@t-online.de>
From: Worik Stanton <worik.stanton@tirotech.co.nz>
Date: Fri, 8 Mar 2024 13:56:48 +1300
Message-ID: <CANuMBWHQcUPjMJ6SA7gd6G1738gz=3yqfXfogUuNVfOiDPtm+w@mail.gmail.com>
Subject: Re: [yocto] Yocto Project Quick Build - MACHINE
To: yocto@lists.yoctoproject.org, f_l_k@t-online.de
Content-Type: multipart/alternative; boundary="0000000000004cd64f06131bab22"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Mar 2024 00:57:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62705

--0000000000004cd64f06131bab22
Content-Type: text/plain; charset="UTF-8"

>
>
> Hi,
> did you add meta-altera here?
>
> build/conf/bblayers.conf
>
>
Thank you, no.  It was right there in the documentation: "bitbake-layers
add-layer ../meta-altera"

--0000000000004cd64f06131bab22
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div id=3D"m_4311420959236613889geary-body" dir=3D"auto"=
><br><div>Hi,</div><div>did you add meta-altera here?</div><div><br></div><=
div>build/conf/bblayers.conf</div></div>
<br></blockquote><div><br></div><div>Thank you, no.=C2=A0 It was right ther=
e in the documentation: &quot;bitbake-layers add-layer ../meta-altera&quot;=
</div><div><br></div><div><br></div></div></div>

--0000000000004cd64f06131bab22--

