Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.10661.1584024173699736831
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Mar 2020 07:42:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GIfMSnEb;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: gabbla.malist@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8456E0179B; Thu, 12 Mar 2020 07:42:52 -0700 (PDT)
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
	*      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32660E01757
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2020 07:42:50 -0700 (PDT)
Received: by mail-lf1-f49.google.com with SMTP id c20so5081980lfb.0
        for <yocto@yoctoproject.org>; Thu, 12 Mar 2020 07:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wIov/1jWNuk5mwqT6q29FEcmCUM8uS9cfqpVFrKk2Fc=;
        b=GIfMSnEb+d2USYWQaIlVgMN8yHVzXqA0fz/lzm86EPC/2N4/rkElsXaERsNnAbmLZS
         Rs0+xiR1JDZmRD724InZl5u7XSJZYvdHd/xawiwX5GiVFqhF8kfcW59ifsDKDZa8358H
         Gtc1UMIipdRTcwnTBss2kbajaX+5z6gaswEFJ8Hk4ER27QlTub7lxcNPn1HVUvuSxZMO
         p5iShQyhpRNLWGyGwLMVD95gDyAC7cio/y7H26jZmDJMokHxDV98TcpZpCgE6V7XZ6Bg
         BIrM2/qjd4TqZzsqsyOaO4MBezhPbvYNCWGXU87haKnisEGMk6nhfV717wHAvUMvGmKW
         nZ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wIov/1jWNuk5mwqT6q29FEcmCUM8uS9cfqpVFrKk2Fc=;
        b=kqaQopPIHmXKLAjD3Z/OL7DJYoNBorOF+Fe7FtWlAB/9VmgL8+lWR6nVsazrEPozNV
         eqKkrgGNxgTRZxxvLV3kBeaInFG/2qeTmmjsZnAVd78kTydLuNjVG+nNmNHwEJY6HVwo
         o36PorNxaw414aI03q4IurVmHr/7vvO+zd/+fXJ9b83ou7j2KZNDZEMJjDKJulfjpY2b
         wf4j8Q9tzT97dnjUcoMPdVvVXSDndx9p/tIzz1hotUhUXaBF71a1wvyYwGlcOqKvNb98
         mBxt3S70r7sO/4VR8crFuyXnHO9XrPzf3crUUYPPXtwAS1+jI4DtqSAQYjlpj6w7GAmo
         WdbA==
X-Gm-Message-State: ANhLgQ3KKkTUyNFj6YZ4VG3WRsT9rUMbdSeGbPJUR2esauaayN17BOJB
	ZGW9bnbnxyTKghCWbq73AyhyaSh5oxyypV9iGjM=
X-Google-Smtp-Source: ADFU+vsAwuiYR30jjmxD7ofqr9k7/M4KC+71xibODQFrM/QoOTyevL4UKAmieEslj2eDpA+CMbsBq697O9QfCjUBur8=
X-Received: by 2002:a19:4cc4:: with SMTP id z187mr5408756lfa.49.1584024169965;
 Thu, 12 Mar 2020 07:42:49 -0700 (PDT)
MIME-Version: 1.0
References: <890f4aad-1d52-ced1-2a0f-f2a482530aa7@faresoftware.it>
In-Reply-To: <890f4aad-1d52-ced1-2a0f-f2a482530aa7@faresoftware.it>
From: "Gabriele" <gabbla.malist@gmail.com>
Date: Thu, 12 Mar 2020 15:42:38 +0100
Message-ID: <CAAx3WaDMFr3-WF5QDrxorV7g4uDbQLub6ZC7K=SXxH+cf_wPnw@mail.gmail.com>
Subject: Re: [yocto] SDKPATH: how to change?
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f76edf05a0a95dbd"

--000000000000f76edf05a0a95dbd
Content-Type: text/plain; charset="UTF-8"

Ciao Mauro,

you can change the directory during installation

./poky-glibc-x86_64-your-image-armv7at2hf-neon-toolchain-2.6.2.sh -d
/install/path

More info with

./poky-glibc-x86_64-your-image-armv7at2hf-neon-toolchain-2.6.2.sh --help

Gabriele

On Thu, Mar 12, 2020 at 3:06 PM Mauro Ziliani <mauro@faresoftware.it> wrote:

> Hi all
>
> I work woth imx6dl-sabresd and Krogoth.
>
> When I build the sdk ( -c populate_sdk) the final .sh file get the
> installation path as
>
> /opt/fsl-imx-x11 ...
>
> So I think the path is build from ${DISTRO} var as
>
> /opt/${DISTRO}
>
>
> I need to produce 3 sdk with it own final path
> /opt/fsl-imx-x11-dev1
>
> /opt/fsl-imx-x11-dev2
>
> /opt/fsl-imx-x11-dev3
>
>
> The form should be
>
> /opt/${DISTRO}-${MYDEVICE}
>
> So I'd like to use a common .inc and change the MYDEVICE
>
>
> But I don't find where the final sdk path is combined
>
>
> Any idea?
>
>
> MZ
>
> 
>

--000000000000f76edf05a0a95dbd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ciao Mauro,</div><div><br></div><div>you can change t=
he directory during installation</div><div><br></div><div>./<a href=3D"http=
://poky-glibc-x86_64-your-image-armv7at2hf-neon-toolchain-2.6.2.sh">poky-gl=
ibc-x86_64-your-image-armv7at2hf-neon-toolchain-2.6.2.sh</a> -d /install/pa=
th <br></div><div><br></div><div>More info with <br></div><div><br></div><d=
iv>./<a href=3D"http://poky-glibc-x86_64-your-image-armv7at2hf-neon-toolcha=
in-2.6.2.sh">poky-glibc-x86_64-your-image-armv7at2hf-neon-toolchain-2.6.2.s=
h</a> --help</div><div><br></div><div>Gabriele<br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 12, 202=
0 at 3:06 PM Mauro Ziliani &lt;<a href=3D"mailto:mauro@faresoftware.it">mau=
ro@faresoftware.it</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Hi all<br>
<br>
I work woth imx6dl-sabresd and Krogoth.<br>
<br>
When I build the sdk ( -c populate_sdk) the final .sh file get the <br>
installation path as<br>
<br>
/opt/fsl-imx-x11 ...<br>
<br>
So I think the path is build from ${DISTRO} var as<br>
<br>
/opt/${DISTRO}<br>
<br>
<br>
I need to produce 3 sdk with it own final path<br>
/opt/fsl-imx-x11-dev1<br>
<br>
/opt/fsl-imx-x11-dev2<br>
<br>
/opt/fsl-imx-x11-dev3<br>
<br>
<br>
The form should be<br>
<br>
/opt/${DISTRO}-${MYDEVICE}<br>
<br>
So I&#39;d like to use a common .inc and change the MYDEVICE<br>
<br>
<br>
But I don&#39;t find where the final sdk path is combined<br>
<br>
<br>
Any idea?<br>
<br>
<br>
MZ<br>
<br>
<br>
</blockquote></div>

--000000000000f76edf05a0a95dbd--
