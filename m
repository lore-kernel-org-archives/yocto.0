Return-Path: <worik.stanton@tirotech.co.nz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 885A3C5475B
	for <webhook@archiver.kernel.org>; Wed,  6 Mar 2024 04:03:16 +0000 (UTC)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
 by mx.groups.io with SMTP id smtpd.web11.4440.1709697795211168893
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Mar 2024 20:03:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tirotech-co-nz.20230601.gappssmtp.com header.s=20230601 header.b=JNesh5GH;
 spf=none, err=SPF record not found (domain: tirotech.co.nz, ip: 209.85.222.41, mailfrom: worik.stanton@tirotech.co.nz)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-7db4484672bso1220994241.3
        for <yocto@lists.yoctoproject.org>; Tue, 05 Mar 2024 20:03:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tirotech-co-nz.20230601.gappssmtp.com; s=20230601; t=1709697794; x=1710302594; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7YlCSTFIOaKc/VQ9fl448WkBwsLbWUwO3dLAdDGCS7k=;
        b=JNesh5GHgYNmAaNbXkoc8AD43iiKdOOK+Omb9qspB7u61GR2Ng/12+rEd27jWXg+GD
         1JFtPHkxVc2L86V4Pj2zsiaU+yI3WLL9/7cBvnlvtvUf5eMpWiU662mgOD1tvbRYPYqg
         WK6dMs4zG7CCuX59iDl0Dhmj772nISR4ca6rPt8EXORZdpdrcA12n+Jm9s1W4URdpxFC
         lAcmsV9yS7W9ndMySZVp204oQwUTaud3G9LhOOpRR4gVpor6VwZ8IVvaLv+Fa1u66O/d
         s730OgjlAKfnRNwF4NwxtSFOeSUrNHPCX4SYox1D1tyViNtDcxDEDFBZKE2SQ/t/E2Bz
         tQ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709697794; x=1710302594;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7YlCSTFIOaKc/VQ9fl448WkBwsLbWUwO3dLAdDGCS7k=;
        b=Ia+4dPN1Pd2udRtMac/1IJ5Ul1/DEqfV9LHjuA0fNatGIDyV2xYooglDO6+iVQ7JuC
         11xL48SSYMRWXkwfX/NKgww6RCv017cBuV6A74Xsiyw50tJCmV8vEu0bvqTC8AsNvqqx
         Y8sH0OS8pN4Ul2E0LPnoQd7js/kbNgCWjJnLl8pwID/IRoDNVskh4CVwTRBMQaLoVwYz
         kUKOfhvclyOBzEurk9m3W3qv+SbhCS/cb9UY4F4jgCO+RE8MffBtB+zitLg8R61dZXeF
         Df2BSutKTzWoM2IYAZLlva7Jze4R/gCtRdWPos3aS+YcbMsxFOwKM9550Yj09sg73NfL
         +y3Q==
X-Gm-Message-State: AOJu0YyvC4ZlZiMXiajhx7dRjI5n4vLjhxe/gcI5cvyuw5LmssYl9t+E
	eRKVbcJZnGZwY/2YnvG08djHAQGmooQLyxp1Ys391VeEIawghSm0OxYN7Zwoyen8ps4Td9CyJSl
	FaZVRw1MPFdKVfyys1i8xnOXF/jjkZkmeZ5IOdA==
X-Google-Smtp-Source: AGHT+IGAZIY+rTQiAoxbNFDzzs6NJWb30g5AuS3LGnpX8PuLLzhpJ6SUQarnBCugSEY+kMCAswzjgw7j49zJhtNxFNY=
X-Received: by 2002:a05:6122:3214:b0:4d3:4aad:22d4 with SMTP id
 ci20-20020a056122321400b004d34aad22d4mr4813204vkb.0.1709697794110; Tue, 05
 Mar 2024 20:03:14 -0800 (PST)
MIME-Version: 1.0
References: <CANuMBWFxwxt7Fr+qab4U+HHFiSMu4KeukjiMVkme-zgDVpiq=w@mail.gmail.com>
 <61d636c5-1406-4b2e-849f-48bc3ffd6c32@bootlin.com>
In-Reply-To: <61d636c5-1406-4b2e-849f-48bc3ffd6c32@bootlin.com>
From: Worik Stanton <worik.stanton@tirotech.co.nz>
Date: Wed, 6 Mar 2024 17:03:03 +1300
Message-ID: <CANuMBWFmJGwWP6mR1m+izTAjPLdRfhfx9MaW-iD4oX+r8wHpRg@mail.gmail.com>
Subject: Re: [yocto] Introduction and my first query: Resources for learning
To: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b122030612f60948"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Mar 2024 04:03:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62689

--000000000000b122030612f60948
Content-Type: text/plain; charset="UTF-8"

> >
> > I do not feel ready to pester you folks with queries until I have done
> > more reading and have moved along the learning curve.   I am hoping
> > for some meta advice about where I can look for guidance for problems
> > like that.
>
>
> Happy to help too when we can!
> I guess you also found the Yocto and BitBake manuals:
> https://docs.yoctoproject.org/
>
>
Thank you, yes that is very useful.

But not long after my email yesterday I found this:
https://youtu.be/zNLYanJAQ3s

It was very helpful.  Having spent many days bashing at this Yocto project
and wearing out the index of the Yocto book, that screencast made a lot of
sense and straightened out a lot of my misconceptions and clarified a lot I
was wondering about

thank you
Worik

--000000000000b122030612f60948
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
&gt;<br>
&gt; I do not feel ready to pester you folks with queries until I have done=
 <br>
&gt; more reading and have moved along the learning curve.=C2=A0=C2=A0 I am=
 hoping <br>
&gt; for some meta advice about where I can look for guidance for problems =
<br>
&gt; like that.<br>
<br>
<br>
Happy to help too when we can!<br>
I guess you also found the Yocto and BitBake manuals: <br>
<a href=3D"https://docs.yoctoproject.org/" rel=3D"noreferrer" target=3D"_bl=
ank">https://docs.yoctoproject.org/</a><br><br></blockquote><div><br></div>=
<div>Thank you, yes that is very useful.</div><div><br></div><div>But not l=
ong after my email yesterday I found this:=C2=A0<a href=3D"https://youtu.be=
/zNLYanJAQ3s">https://youtu.be/zNLYanJAQ3s</a> <br></div><div><br></div><di=
v>It was very helpful.=C2=A0 Having spent many days bashing at this Yocto p=
roject and wearing out the index of the Yocto book, that screencast made a =
lot of sense and straightened out a lot of my misconceptions and clarified =
a lot I was wondering about</div><div><br></div><div>thank you</div><div>Wo=
rik<br></div><div><br></div><div><br> </div></div></div>

--000000000000b122030612f60948--

