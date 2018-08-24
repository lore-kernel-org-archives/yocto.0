Return-Path: <gabriele@analyticsfire.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E136E0079D; Fri, 24 Aug 2018 03:07:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw1-f48.google.com (mail-yw1-f48.google.com
	[209.85.161.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A384AE00720
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2018 03:07:22 -0700 (PDT)
Received: by mail-yw1-f48.google.com with SMTP id y134-v6so2896730ywg.1
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2018 03:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=analyticsfire-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=eJ19HVv5SDBHG8mHq0JP4nnqrBTdHFRe61QXb7XQrXk=;
	b=r6cbcugh5vhwPsEFR1tnU9oAJOv+7MAKCiVTgqL48QkaczrWeMlHgXOJ1E9CMW9vTo
	6aS0oogt+o6eLHhzyoD8fVzWobYYwNgms3yezBDQLEg0ChXECD3Qrro06AW0/ra4Affe
	kNLw3Odbk7T6mJnrvUssTT7WXv0K/F6JAGyNeyf3ejhJOK6Ofplw/YXe2cvdxv2e0eco
	NtOD6tE785BcYngJLvZKI5eF73RKX1ZwQRaF0Xx+3vQagdvgp7BhCYVWcCoEEm1YT6Tr
	Y12Kp9o+anR4Yj28WGYBPSs1s7N0fyv4lLe6aaY0E30rZHzyjf/im4225Fh74Eu8wTz/
	QfEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=eJ19HVv5SDBHG8mHq0JP4nnqrBTdHFRe61QXb7XQrXk=;
	b=EEWetDvMW7KpX4A0cCDfAxCad/9buVjPSHMQxbxs8liPU9FnRJzfybmxq+x0kEvxwV
	07pxHesYUbni8iEvb8rpG9P/XiRDbutas3g0w0AYKfRUL58NDfrCrbOcxhAscZtzwIfC
	JblazsV0XNzv6FlGt/+cDHnQOJPjc1dHrU5mfLlRbpJDwdxHsDa+6PFeVA7tDE4REEiR
	/RCJX3IGbmtuH11LESfwN1voMYz/w/hCJnENd8SzpEThd/QkrLI73uRNmM3fW2a7KhWW
	+fDUb971aFfMdDGHBXUpmB0UveI3S3dPUcKkGRpi3WJf4NpsBZsj/+tOgrv4p8XFrY+7
	kkfg==
X-Gm-Message-State: APzg51CgnTn6agh21+zyWXECy5ftqD7YY3FAIY8NnOOBaB/h/99oyhXc
	mNrUJBGNDUJ6SN12Mfa0gm/fuHXtLagBuFzRfHJtZ8hn
X-Google-Smtp-Source: ANB0VdZCinu3vNEfv4o4Bq/8UPMqOZTPjA4LTdu+aYK5YphXRl/J4TyXuwwcuUQQa3620POdrT/t7PToJ8Z4sI61p2w=
X-Received: by 2002:a81:6d4a:: with SMTP id i71-v6mr488130ywc.73.1535105242012;
	Fri, 24 Aug 2018 03:07:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAMmNTe=6pGXZ2MgzE_orpchcQSCrgc0mS+30U0rFP9e_iXC0Ag@mail.gmail.com>
	<CAMmNTenu-UJGScoGiT39PQUozApr5DqWEU=siF5-61Q98AkfLA@mail.gmail.com>
	<6c8cc905-1ccd-aa05-fac8-8aa9a8a71c47@windriver.com>
In-Reply-To: <6c8cc905-1ccd-aa05-fac8-8aa9a8a71c47@windriver.com>
From: Gabriele Favalessa <gabriele@analyticsfire.com>
Date: Fri, 24 Aug 2018 12:07:11 +0200
Message-ID: <CAMmNTekk=hnU6WO+aOwBHuVepdWxm-N_nDuboNEaca4tRp-z_A@mail.gmail.com>
To: Qi.Chen@windriver.com
Cc: yocto@yoctoproject.org
Subject: Re: Unable to add a dev package to the Extended SDK
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 24 Aug 2018 10:07:23 -0000
Content-Type: multipart/alternative; boundary="000000000000a4b62005742b8aba"

--000000000000a4b62005742b8aba
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 24, 2018 at 5:08 AM ChenQi <Qi.Chen@windriver.com> wrote:

> I think using IMAGE_INSTALL_append = " curl", and then `bitbake
> core-image-minimal -c populate_sdk_ext" is sufficient.
>

It was indeed all it was needed.

Thanks!

Gabriele

--000000000000a4b62005742b8aba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri=
, Aug 24, 2018 at 5:08 AM ChenQi &lt;<a href=3D"mailto:Qi.Chen@windriver.co=
m">Qi.Chen@windriver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"m_2299138045795285623moz-cite-prefix">I think using IMAGE=
_INSTALL_append =3D &quot;
      curl&quot;, and then `bitbake core-image-minimal -c populate_sdk_ext&=
quot;
      is sufficient.<br></div></div></blockquote><div><br></div><div>It was=
 indeed all it was needed.</div><div><br></div><div>Thanks!</div><div><br><=
/div><div>Gabriele=C2=A0</div></div></div>

--000000000000a4b62005742b8aba--
