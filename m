Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.13820.1581442429463789717
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 09:33:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lZMeAkqy;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kanavin@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1550FE016D6; Tue, 11 Feb 2020 09:33:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8D7CE013AE
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 09:33:46 -0800 (PST)
Received: by mail-ua1-f54.google.com with SMTP id g13so4251516uab.7
        for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 09:33:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+VxqBbERbU1Klv3sjrUJSfVGnCvObmOqkVAtbhrOt2g=;
        b=lZMeAkqybFhomXT8U2cRA3x9LJ/B/QVuLaZWhtm+d/4FrYPEVbWciRay2ilPlNLDzj
         mktOCVFoEnMisfTgkGw5JojksMvpI94JhtutjKzpqz9WNwfN0gysapTjyMFnciwblogk
         4ws7qu/yWAmxTilNyUTzkbjcLS2bKTGSa0yY350FMWUvQ+OBoBkMZgRva5s8LobqzxmK
         PUmZr824W349LKp8PKsnAiqB/Ou/uWI4r/h2z2TMHyj8iRZpDSDwwZZLeTvj9rwoKYBA
         XoVfrTraeZJ60bDmwbbpHI2qPymXyarFhJ54vP10kFLBjEgrNwGLQeG2aYwjWi6Jxpgr
         uqGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+VxqBbERbU1Klv3sjrUJSfVGnCvObmOqkVAtbhrOt2g=;
        b=NP1H5bmzNBidRftVexwWf/dS7oI5OlMdxJcLmSS6sffbGXnFuQa3EsHcep2hB5vVxP
         kLTXaSow7wHZJsDiARQJ2Zv0BzcEKBVDF+X47ITelWGKY+wDWKbmti71h5md6OWt9mCu
         AXeBXd/Ql9fDjBYXCbIL7cLyQgd6NRnwARnsGTHZWXwt6TADtwHS1rMjL6KIOmi1IafP
         5tUdZ7jMkurMpej/blhfOxjlSerIj8n0aUoHLIewzlDwrb15d+QSrwwGfNR8gO+rAj+8
         nC4ZcQw5zh5o9rctCs28N0iTjV8oYQ3L+5somI1lyENhI+DS36f6CpgBmE7jdu7qWmu8
         dXZw==
X-Gm-Message-State: APjAAAXbJHtUtKHvhMFX7YJiHoHwbL2f59jsxPhjdDNBQKfaGViteb8h
	hZFNpRI6iLXLY1oCp6wT2Zm0o0vfFwNyDDrXZag=
X-Google-Smtp-Source: APXvYqwc//elcfMtee12PlIxd8vdThn3RxerTtc1zFQNwsmzB2loQcuOYmR7S8ShVuUXQgKH3Y7KsSqqcVDvCdm/kx0=
X-Received: by 2002:ab0:3381:: with SMTP id y1mr2152728uap.93.1581442425931;
 Tue, 11 Feb 2020 09:33:45 -0800 (PST)
MIME-Version: 1.0
References: <CAK4PFCX2OfGLaDwMVxraim6mp35WjUbY_wVb45EZxV8YFF3QXA@mail.gmail.com>
In-Reply-To: <CAK4PFCX2OfGLaDwMVxraim6mp35WjUbY_wVb45EZxV8YFF3QXA@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 11 Feb 2020 18:33:34 +0100
Message-ID: <CANNYZj8pMsUepCAa=+S89mpxCSf=4JPO86ek_gA01RWZ8a5hyQ@mail.gmail.com>
Subject: Re: [yocto] how to remove a package from image
To: Kent Dorfman <kent.dorfman766@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000007cb02059e5042d9"

--00000000000007cb02059e5042d9
Content-Type: text/plain; charset="UTF-8"

You need to modify the image recipe so that those packagegroups are not
pulled in. If you cannot do that because it's in a layer controlled by
someone else etc, then make a new image recipe, and build that image
instead.

Alex

On Tue, 11 Feb 2020 at 18:05, Kent Dorfman <kent.dorfman766@gmail.com>
wrote:

> My vendor finally realized that I needed a full yocto release and not
> the eSDK.  Anyway, I can build their image, but when I modify the
> kernel to remove CAN drivers I get the errors that
>
> packagegroup-can-support
> packagegroup-ow-support
>
> are required.
>
> What is the "yocto way"  to remove those packages and dependencies
> from the build?
> 
>

--00000000000007cb02059e5042d9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You need to modify the image recipe so that those pac=
kagegroups are not pulled in. If you cannot do that because it&#39;s in a l=
ayer controlled by someone else etc, then make a new image recipe, and buil=
d that image instead.</div><div><br></div><div>Alex<br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 11 Feb=
 2020 at 18:05, Kent Dorfman &lt;<a href=3D"mailto:kent.dorfman766@gmail.co=
m">kent.dorfman766@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">My vendor finally realized that I needed a full=
 yocto release and not<br>
the eSDK.=C2=A0 Anyway, I can build their image, but when I modify the<br>
kernel to remove CAN drivers I get the errors that<br>
<br>
packagegroup-can-support<br>
packagegroup-ow-support<br>
<br>
are required.<br>
<br>
What is the &quot;yocto way&quot;=C2=A0 to remove those packages and depen=
dencies<br>
from the build?<br>
<br>
</blockquote></div>

--00000000000007cb02059e5042d9--
