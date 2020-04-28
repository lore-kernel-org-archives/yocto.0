Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2195.1588087525196201968
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Apr 2020 08:25:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JibSirba;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: mhalstead@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B392BE01AA1; Tue, 28 Apr 2020 08:25:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9CFFE01A9F
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2020 08:25:22 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id 72so33275298otu.1
        for <yocto@yoctoproject.org>; Tue, 28 Apr 2020 08:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=czMhTPR00uQwNV1NyKAsz7cnWK0bwM9C1RkLgC44G4Y=;
        b=JibSirbaWEvLz41sKhRhi4Aw5u6XI3F+q6cCgJoO4CtS7V9wLpoE3R33x9i4ktzP2F
         9+Nhs479ESXEhlNimWeCDfFD+cQz/1yEtXj2vyLymLNxe/1nBBdDrkQ/WojyUFGAX1++
         R3Krw82I1rNyjmdakSEapL53bFEewgs3lxvGk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=czMhTPR00uQwNV1NyKAsz7cnWK0bwM9C1RkLgC44G4Y=;
        b=O1oySNbzmG6XiOzHQ8YDXbAYRFiGIq43cKFGWaXq5R5d15kL/KJcVFLRCY2gPTXegC
         F1NQPGNKgcr5ck/IAPw/GOBcBqnYsqc+0XtZ0EQ7nKzIBH3MgDXP/qXdlIZwQ5nUNvAk
         F4xV4Rr58nT4WZTlFguS/+9M15KHv4ZhLDOIxBFbtNiQ8F5a0W6kdKGBSwGUYsrz4xZL
         GyXuKMoLYhR8C2O2doJrjdZKKZSr1McL8rlHAXNalm3i+5e+LJhQsh0P8OhZaRJYaIj6
         7oI4BYBEdifekiyYx9Qk4CVuc6uGKq68Br0MWZ2oyCUslQYpxuIYXtt2XLh5oagYTrbR
         pQbw==
X-Gm-Message-State: AGi0PuZUE+FRhgfGZ2FOIxUJEce5YDzS/mUj90jjbNsPixDAVriaGiPv
	lIISH6ch1VKsfK0P21h25GtmX0/AvyIslSkSUDhAeQW1
X-Google-Smtp-Source: APiQypLHIp5MYg2Vgo99OEENnNt1LeDOopim4b+smeP1aKPTaoOZtXvbzI4L16qNBcFg5MV3uLjpgvb8LN7AVBFK9iA=
X-Received: by 2002:aca:fdd3:: with SMTP id b202mr3464015oii.63.1588087521661;
 Tue, 28 Apr 2020 08:25:21 -0700 (PDT)
MIME-Version: 1.0
References: <108997f6-1c77-d8d0-eb32-8afc2a519543@denx.de> <9C745899-04A4-4E68-8164-7D8A41C26D0F@gherzan.ro>
In-Reply-To: <9C745899-04A4-4E68-8164-7D8A41C26D0F@gherzan.ro>
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
Date: Tue, 28 Apr 2020 08:25:10 -0700
Message-ID: <CADfgfoYQuO+D2PWmO=ysxcVe6rQm2BPbtDT-hpjoY93LL+5x4w@mail.gmail.com>
Subject: Re: [yocto] Certificate expired, https://git.yoctoproject.org/
To: Yocto Project Discussion <yocto@yoctoproject.org>
Cc: Stefano Babic <sbabic@denx.de>, Philip Balister <philip@balister.org>
Content-Type: multipart/alternative; boundary="00000000000099e81205a45b7097"

--00000000000099e81205a45b7097
Content-Type: text/plain; charset="UTF-8"

The misconfiguration blocking certificate renewal is repaired and valid
certs are available now.

On Tue, Apr 28, 2020 at 2:26 AM Andrei Gherzan <andrei@gherzan.ro> wrote:

> Hi,
>
> On 28 April 2020 09:54:41 BST, Stefano Babic <sbabic@denx.de> wrote:
> >Hi,
> >
> >certificate is expired - someone having the same issue ?
>
> It did expire, indeed.
>
> git.yoctoproject.org uses an invalid security certificate. The
> certificate expired on 28 April 2020, 07:51:54 GMT+1. The current time is
> 28 April 2020, 10:21. Error code: SEC_ERROR_EXPIRED_CERTIFICATE
> --
> Andrei Gherzan
> gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan
> 
>


-- 
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--00000000000099e81205a45b7097
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The misconfiguration blocking certificate renewal is repai=
red and valid certs are available now.</div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 28, 2020 at 2:26 AM Andre=
i Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi, <br=
>
<br>
On 28 April 2020 09:54:41 BST, Stefano Babic &lt;<a href=3D"mailto:sbabic@=
denx.de" target=3D"_blank">sbabic@denx.de</a>&gt; wrote:<br>
&gt;Hi,<br>
&gt;<br>
&gt;certificate is expired - someone having the same issue ?<br>
<br>
It did expire, indeed. <br>
<br>
<a href=3D"http://git.yoctoproject.org" rel=3D"noreferrer" target=3D"_blan=
k">git.yoctoproject.org</a> uses an invalid security certificate. The certi=
ficate expired on 28 April 2020, 07:51:54 GMT+1. The current time is 28 Apr=
il 2020, 10:21. Error code: SEC_ERROR_EXPIRED_CERTIFICATE<br>
--<br>
Andrei Gherzan<br>
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Linux Fou=
ndation / Yocto Project</div><div>Systems Operations Engineer</div></div></=
div>

--00000000000099e81205a45b7097--
