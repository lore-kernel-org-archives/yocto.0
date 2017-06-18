Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CCFAE00B21; Sun, 18 Jun 2017 00:50:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f173.google.com (mail-yw0-f173.google.com
	[209.85.161.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80E81E00A93
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 00:49:58 -0700 (PDT)
Received: by mail-yw0-f173.google.com with SMTP id e142so31793006ywa.1
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 00:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GKZjyYEQRsVpGo4063GeGcpi31nN6lA03moLl0qTNUE=;
	b=XWRSyObYPXSsWtWRnx7l8KmW1Rxcr6Tw4QsYLpDhdt6oKDTZElxQNJKw4jYEoPpkFK
	i5yj8OreJTJX/eIDm9IMHfUVPscEMhr6JX18igEnAsjVQaoYgGmtGuBK8Yqb/+M+gUZA
	695st6t/K6WErviwcgDw1uq9oee6gIfaRmxcyCnCRTAmcJDA4CzMu5O8bfohKkSprkHM
	iwSiN2aXWR/3E2Bpo0SFhhvPyCGvzNtsu83ATqoONj0P9IS0sGci3VzbGVno6Yr044pt
	wVTLej+/+Ob/sB6brfZZGiQCLPyWDuIS9mpl0h1egkF6hrZ0cQJKIm5nucTy3enRd0IP
	fBPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GKZjyYEQRsVpGo4063GeGcpi31nN6lA03moLl0qTNUE=;
	b=IVOXiadQJke/AfKGAZ82qWVvb+qAz1fAs7ze+vm1bB0YbU3L3xh+PZEwyVO9m6e3Yj
	T6iDZ0/mFwMHaaGGyrnwku9cZgzVKfWOMiDArvdby0RjsjgCmh+pc165i0Y8XEj/G42I
	JpIH21Z70rLUpZjSV0Chv0F5BeuFoV4nW8sBmvL4m9HUnPMTXYUKbZselMbHCWvfJbMl
	T1RN+ukIZ0VOUDfQUZoAJMhCj5yc+BEvsEd/ZsSILM+a4u+oPCtP1khc0w4T9GovYnkm
	IO+NVuNS6VXL8rTK5z4jArxx9nBvrerGAgRSBBIVfnoGUHGOrFlxwMJyyrENcbKzXWDM
	0Ylg==
X-Gm-Message-State: AKS2vOyIuadIrTbGJdj89t9t2cdCxz0vHwsingjdBltm7BPEqkZsf8QJ
	zwoKctWyXu5eyW2qS5Q+8FamHQLC1w==
X-Received: by 10.129.0.198 with SMTP id 189mr14061624ywa.193.1497772198156;
	Sun, 18 Jun 2017 00:49:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.181.204 with HTTP; Sun, 18 Jun 2017 00:49:57 -0700 (PDT)
In-Reply-To: <c0c0b79d-12c0-27b3-1ef9-f3798c95e02e@gmail.com>
References: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
	<CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
	<1bfe90cd-590a-47e6-95d1-3ad77ec3a46b@gmail.com>
	<CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
	<c0c0b79d-12c0-27b3-1ef9-f3798c95e02e@gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Sun, 18 Jun 2017 09:49:57 +0200
Message-ID: <CA+chaQcwEW7=Wmrk0LYN0ubfvwxTNZQnCDh=wwWRWmSaXgWJdg@mail.gmail.com>
To: Riko Ho <antonius.riko@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Compiling meta-browser ==>chromium ? cleaning ?
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
X-List-Received-Date: Sun, 18 Jun 2017 07:50:00 -0000
Content-Type: multipart/alternative; boundary="001a11405446d367840552374337"

--001a11405446d367840552374337
Content-Type: text/plain; charset="UTF-8"

You didn't say which versions you're using.

If you're using latest oe-core with gcc7 then you will need v3 version of
this change:
http://lists.openembedded.org/pipermail/openembedded-devel/2017-June/113247.html
I'll send it later today.

> And how can I clean after building it ? It took about 70Gb of my drive

Like any other recipe:
bitbake -c clean foo

On Sun, Jun 18, 2017 at 1:41 AM, Riko Ho <antonius.riko@gmail.com> wrote:

> Hello Everyone,
>
> I tried to compile chromium but never succeeded, took me already 12 hours
> and stopped on 99%,
> I used bitbake for doing it,
>
> Is chromium not compatible with arm CPU ? it was working with X86_64
> before.
> And how can I clean after building it ? It took about 70Gb of my drive
>
> Thanks
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11405446d367840552374337
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You didn&#39;t say which versions you&#39;re using.<div><b=
r></div><div>If you&#39;re using latest oe-core with gcc7 then you will nee=
d v3 version of this change:</div><div><a href=3D"http://lists.openembedded=
.org/pipermail/openembedded-devel/2017-June/113247.html">http://lists.opene=
mbedded.org/pipermail/openembedded-devel/2017-June/113247.html</a><br></div=
><div>I&#39;ll send it later today.</div><div><br></div><div><span style=3D=
"font-size:12.8px">&gt; And how can I clean after building it ? It took abo=
ut 70Gb of my drive</span><br></div><div><span style=3D"font-size:12.8px"><=
br></span></div><div><span style=3D"font-size:12.8px">Like any other recipe=
:</span></div><div><span style=3D"font-size:12.8px">bitbake -c clean foo</s=
pan></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">O=
n Sun, Jun 18, 2017 at 1:41 AM, Riko Ho <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:antonius.riko@gmail.com" target=3D"_blank">antonius.riko@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello Everyone,<br>
<br>
I tried to compile chromium but never succeeded, took me already 12 hours a=
nd stopped on 99%,<br>
I used bitbake for doing it,<br>
<br>
Is chromium not compatible with arm CPU ? it was working with X86_64 before=
.<br>
And how can I clean after building it ? It took about 70Gb of my drive<br>
<br>
Thanks<span class=3D"HOEnZb"><font color=3D"#888888"><br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a11405446d367840552374337--
