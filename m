Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.9451.1598438012510946368
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 03:33:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XAxL/FLT;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kanavin@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07C9EE0209C; Wed, 26 Aug 2020 03:33:32 -0700 (PDT)
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
	*      [209.85.217.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0310E0205B
	for <yocto@yoctoproject.org>; Wed, 26 Aug 2020 03:33:28 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id x2so424608vsp.13
        for <yocto@yoctoproject.org>; Wed, 26 Aug 2020 03:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Y2RUkelM0YOB/sqeegCGtHOyI92caDfy5HzXLeBNEw4=;
        b=XAxL/FLT4KRlUv9+mlznEW7eWoJCkHhhNkZCVpWJGpi5OEc4Cf8aHdDLN5+eRRpeQT
         dZYNpipwucgfapwCRISNa8tzsMEKMQOn6OrIvLRxSoZ8iavGfRVoK8IHqDTmFK4ViL/r
         ImZrf9LhoKgoCnTCigP9gZXFxUthYFl817i4IHgSEhTbFttampuHkDuZBUekECXO3nJT
         nZw4zfTPg6dny1m0rTDZDSV7LPMqs6qCsHfEGP7cUsHWD27aE4ofbcCKPzB28fO2j9dr
         RYdPjLvey2yxCE3SMYI7dTKf4gUghZu+VMxaD0YMRB3ruU+Osr03VWM428WDsEa3AH7L
         wC8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Y2RUkelM0YOB/sqeegCGtHOyI92caDfy5HzXLeBNEw4=;
        b=klnE9NG9kirYQ9entEopI5JoyJDnvZPxzf2CUjcdNdritDSEVccQepZmZqUTItoW4K
         /IeqT5c6PmuefKmPYUOW0g+P7Z3yMCwgWIcqZ61Xl94jkNsLdJ5PDbOD8CF3Tr8M3T4E
         svp4q+X3VIoz23TKLx4+xazRQW9BaFhg5mQoEtC8UgMBVZnBtfDbm5KbmgQeZm3bCmvX
         ylnANeQ6dFfit7SRRVQ/bqPtFSgVrepOEw6uOzL95fVknJIA0pW230Vq1qKUOeI/DD1+
         MYlCb1Tbzg9WSLRuu+fL4EyEimFxyscDo7PQFU+82KnTIMbD8WV0IQdnZPJYV9Ecpe9/
         QblQ==
X-Gm-Message-State: AOAM530aCdaMkhmD1xQvcbuV3f3jyP+Sq0XTq/mRTnYMQ2UEQEQcdG1x
	2dK9UXGWpO4cssbaidxXlPvvGJpXLIpaFW1hxOE=
X-Google-Smtp-Source: ABdhPJx79yrCgCdU0Pi8WMN+HwljKRQmUJG30Eq6CnMeVvt81zxrSnBvMNcerq7qpqhuXcD5u0Mu6Z0mm/jeXlcZhNA=
X-Received: by 2002:a67:3157:: with SMTP id x84mr8266157vsx.113.1598438008286;
 Wed, 26 Aug 2020 03:33:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv37Ak_W5My6m22Lv2iLEJBTDKqJU5HK52MON5siHf0NDNA@mail.gmail.com>
 <CANNYZj9eT1KUxM4EuKK2jX1N2S5FO0bdbw_9h79PUivdjf0fSw@mail.gmail.com> <CAAfyv35QiL2Q6Py9qFyBb2q0d0QTW5WRiPC61JB0aE3zX_CN7w@mail.gmail.com>
In-Reply-To: <CAAfyv35QiL2Q6Py9qFyBb2q0d0QTW5WRiPC61JB0aE3zX_CN7w@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 26 Aug 2020 12:33:16 +0200
Message-ID: <CANNYZj8mxHaGSStCPPWddKarnjrWnLrFhahWz1zWXGZaLs43VQ@mail.gmail.com>
Subject: Re: [yocto] meson cuda compilation
To: Belisko Marek <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000adf3aa05adc55932"

--000000000000adf3aa05adc55932
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Aug 2020 at 12:18, Belisko Marek <marek.belisko@gmail.com> wrote:

>
> first check build with my local gcc and then continue with cross
> compilation. Can we somehow skip or redirect for checking
> native-sysroot gcc from yocto? I can then add cuda-nvcc-native as
> dependency.
>

Yocto does not provide a gcc that targets the host machine, only the cross
gcc, whose output is unsuitable for running at configuration step.


> shouldn't be host_machine set to x86?
>

Meson assigns different meanings to these, yocto's host is called build
there, and host is actually host for the target binaries.
https://mesonbuild.com/Cross-compilation.html

Alex

--000000000000adf3aa05adc55932
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, 26 Aug 2020 at 12:18, Belisko Mar=
ek &lt;<a href=3D"mailto:marek.belisko@gmail.com">marek.belisko@gmail.com</=
a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><br>
first check build with my local gcc and then continue with cross<br>
compilation. Can we somehow skip or redirect for checking<br>
native-sysroot gcc from yocto? I can then add cuda-nvcc-native as<br>
dependency.<br></blockquote><div><br></div><div>Yocto does not provide a gc=
c that targets the host machine, only the cross gcc, whose output is unsuit=
able for running at configuration step.<br></div><div>=C2=A0<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">
shouldn&#39;t be host_machine set to x86?<br></blockquote><div><br></div><d=
iv>Meson assigns different meanings to these, yocto&#39;s host is called bu=
ild there, and host is actually host for the target binaries.</div><div><a =
href=3D"https://mesonbuild.com/Cross-compilation.html">https://mesonbuild.c=
om/Cross-compilation.html</a></div><div><br></div><div>Alex<br></div></div>=
</div>

--000000000000adf3aa05adc55932--
