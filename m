Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7F80E00B01; Tue, 28 Mar 2017 02:21:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.170 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20E13E00A51
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 02:21:32 -0700 (PDT)
Received: by mail-qk0-f170.google.com with SMTP id p22so60119069qka.3
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 02:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OhGjB3o43ibzkl5ekhchEakS73OmsDa6Ba3kbJLb1nE=;
	b=Hky8Vxivc/7G2Coi0onbc/UxGaVvXUQPwWqAM2mNOVCOFLFtr/dp4sCnSUzzp+WGUe
	fvNjctBiaIZnNaPhoXhebNOtcJzx4m8IpD8QnqSqUov1EnGTgm3zXUO9NKAbx/ZS3hC7
	wPpXSPWkeYZwEAgxTPuYcD5GtihAv3LspfXeYlSwXXDIxoso5eMOGGLH7VOEs1AMNJv9
	d+nvgciGTQxNzKqaLzob2jEfhlJxuR94hch4J9NG3sf+0rMSuy2IyWajPM+6m77pYT7P
	wxzk4iPdT5QW3tg/xwfegA9miTT9G8IC77Mem5SGyfnVefyJjFnSxhOwH4jsos9A+95R
	if9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OhGjB3o43ibzkl5ekhchEakS73OmsDa6Ba3kbJLb1nE=;
	b=r/iWXb4z+FMJ8d7rjLIKrcPf9/AlzheVnmLBu6HGpewIG/U1p+eYOYcnp28lkEh3uj
	hddWH6ZKk+yZxOWYV0AUHllkV6V4nNeaTVkv9Oer9AT0rwl4Ctq9ppJa255bfRUQTamy
	b+/RcvN3YMlH84WpVIafyRLnZbpJrh3fyeX6ZXeBJk570t6JOnRsQG6FmSiSt+o1IQ0m
	2Vt43xt8wVt3BOfjz1vfgH8Cm9BSpLJ3mgNDcTIahdo+WY3JJuKm7YQKuDH+KgbSfA7B
	7QuyfBO7uar2WgL8N3Zw8prrST+C9FAR7dQNDJ1+O/aHHpNwEojIgyw66ignvGxf37QC
	R/hQ==
X-Gm-Message-State: AFeK/H39cb6Tz5aKBzSPA/Bd6nPgQejtB4a84QZxLmm4wAbrissr/+/mer/VcdxV5I1uZSTLJ+Xf8LBS5UJT6bUQ
X-Received: by 10.55.20.100 with SMTP id e97mr26505439qkh.3.1490692891982;
	Tue, 28 Mar 2017 02:21:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Tue, 28 Mar 2017 02:21:11 -0700 (PDT)
In-Reply-To: <CAJ2oMh+Dj3SZ5Tf8aF3VRhpsboah-4qevGC3v+5q=vpOdQ2V0g@mail.gmail.com>
References: <CAJ2oMh+Dj3SZ5Tf8aF3VRhpsboah-4qevGC3v+5q=vpOdQ2V0g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Mar 2017 10:21:11 +0100
Message-ID: <CAJTo0LaCynfLyy99eC0=AN188Amh+xFwsy0ZMSdSSE0Z8ACazQ@mail.gmail.com>
To: Ran Shalit <ranshalit@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: package managers
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
X-List-Received-Date: Tue, 28 Mar 2017 09:21:35 -0000
Content-Type: multipart/alternative; boundary=001a114011044c09c5054bc6fcf5

--001a114011044c09c5054bc6fcf5
Content-Type: text/plain; charset=UTF-8

On 28 March 2017 at 10:09, Ran Shalit <ranshalit@gmail.com> wrote:

> Is it possible to configure more than one package manager in yocto ?
> Does it mean it will create install package for both ?
>

This is explained in the documentation:

http://www.yoctoproject.org/docs/2.2.1/ref-manual/ref-manual.html#var-PACKAGE_CLASSES

Ross

--001a114011044c09c5054bc6fcf5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 March 2017 at 10:09, Ran Shalit <span dir=3D"ltr">&lt;<a href=3D"mail=
to:ranshalit@gmail.com" target=3D"_blank">ranshalit@gmail.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-s=
tyle:solid;padding-left:1ex"><div id=3D"gmail-:5u2" class=3D"gmail-a3s gmai=
l-aXjCH gmail-m15b142e736764e76">Is it possible to configure more than one =
package manager in yocto ?<br>
Does it mean it will create install package for both ?<br></div></blockquot=
e></div><div class=3D"gmail_extra"><br></div>This is explained in the docum=
entation:</div><div class=3D"gmail_extra"><br><a href=3D"http://www.yoctopr=
oject.org/docs/2.2.1/ref-manual/ref-manual.html#var-PACKAGE_CLASSES">http:/=
/www.yoctoproject.org/docs/2.2.1/ref-manual/ref-manual.html#var-PACKAGE_CLA=
SSES</a></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extr=
a">Ross</div></div>

--001a114011044c09c5054bc6fcf5--
