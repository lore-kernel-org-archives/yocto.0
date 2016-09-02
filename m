Return-Path: <vijayakumarmb@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82FE7E00720; Fri,  2 Sep 2016 10:47:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_16,
	HTML_MESSAGE, RCVD_IN_DNSWL_LOW, RCVD_IN_SORBS_SPAM,
	T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vijayakumarmb[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 1.1 HTML_IMAGE_ONLY_16 BODY: HTML: images with 1200-1600 bytes of
	words
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.173 listed in dnsbl.sorbs.net]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 624C3E006C7
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2016 10:47:14 -0700 (PDT)
Received: by mail-ua0-f173.google.com with SMTP id q42so125644221uaq.1
	for <yocto@yoctoproject.org>; Fri, 02 Sep 2016 10:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Uo99JoSUl5T0gjGDAxXT3C3FDfkmPhZmYCs4X7ddo7Q=;
	b=ZBtW/EYUQVn/iMrix3ULrcFkS2GPBcJfEESOSDncp39Lvbph0gSE5ZkfwYhy822jE8
	8YC1JXalP+xzjQJ5qZEc6ZKvjUeab558heoZfxOM6g9iWgxbWbqxJFCuW8BoU7rDxPsY
	YYfof1l9oGIfslguP5e4ppCbXuQCwCVXyNofCyJswwAeVHhJPYo7YJtnYCbEInEXJa/2
	i1Yl5rhjRoZKpnwutbf5lV5bp7oMu91APuhCvIzYFwWz466UjqVWFjafgrzWc9SM+/O6
	/y3+7hx49lpZnAL7H4iMl9f9UCCgbU44aQ6BZxMwmk3OBW+lNCEPsn9zQr+MirAzp1sk
	2kAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Uo99JoSUl5T0gjGDAxXT3C3FDfkmPhZmYCs4X7ddo7Q=;
	b=haXfbpDnjtUXNEwcMWje2tYJV1jKS36Ryn67BULiyLXe+3yHwPzwmSIyrHGxtICSTV
	zxFP2QjIgjO72EDTrUDzDf6NQSws9sKGqMtvSq3gy+Im3uwq2D4LiicyZQ8oh4WcOyys
	P/5peW456kgLLCsetZ6jbFkZZoyqy5PathsnyhzFX7kVqtjIz3YRMwgSJFhreIx2ayg5
	ckkm52oCBIieMzQ+izGOG4RTuq5qJl35da1pGaB6d0n3vzb6Re3iC/I57bqEivBaZATX
	vRpMjRmfA7CCSYpoGyrR9AUhXZqUVslTCSYXnAAM65qK5qW8p+B2OmSPdKhlz0/upE62
	Li4w==
X-Gm-Message-State: AE9vXwMBbmXhIwolDTjgS578oTPlMwWDGvqovSD8Z7ULv5p0zac1pD3MFjHE6NDTeFJvq5VZX6wY7rCYpV8k5A==
X-Received: by 10.159.37.147 with SMTP id 19mr13811629uaf.24.1472838434146;
	Fri, 02 Sep 2016 10:47:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.79.65 with HTTP; Fri, 2 Sep 2016 10:46:53 -0700 (PDT)
In-Reply-To: <044ba16ff655bfee62106f8a5b231@cweb08.nm.nhnsystem.com>
References: <044ba16ff655bfee62106f8a5b231@cweb08.nm.nhnsystem.com>
From: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Date: Fri, 2 Sep 2016 10:46:53 -0700
Message-ID: <CAJ58UNmcD77sgaMpV-OKgj3k5nqiAQOX0k_hNwhprYV-VY7Mnw@mail.gmail.com>
To: =?UTF-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
Cc: yoctoproject <yocto@yoctoproject.org>
Subject: Re: how to cached source code in yocto platform?
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
X-List-Received-Date: Fri, 02 Sep 2016 17:47:18 -0000
Content-Type: multipart/alternative; boundary=001a113e3594ade79f053b89eb7e

--001a113e3594ade79f053b89eb7e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

As far as I know first time build will take time as it fetches many of the
projects from the external server which adds to the increase in build time.
I have seen subsequent incremental builds are faster.

Cheers
Vijay

On Fri, Sep 2, 2016 at 3:36 AM, =EC=9C=A4=EC=98=81=EC=84=9D <earwigz@naver.=
com> wrote:

> hi,
>
> Yocto build system is so slow, in my thought, source code downloading is
> too spend time.
>
>
>
> So i want to find better way to make build more speedy.
>
>
>
> could you give me advice?
>
>
>
> thanks
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113e3594ade79f053b89eb7e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">As far as I know first time build will take time as it fet=
ches many of the projects from the external server which adds to the increa=
se in build time. I have seen subsequent incremental builds are faster.<div=
><br></div><div>Cheers</div><div>Vijay</div></div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">On Fri, Sep 2, 2016 at 3:36 AM, =EC=9C=A4=
=EC=98=81=EC=84=9D <span dir=3D"ltr">&lt;<a href=3D"mailto:earwigz@naver.co=
m" target=3D"_blank">earwigz@naver.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><div><div style=3D"font-size:10pt;font-family:Gulim"><p=
>hi,</p><p>Yocto build system is so slow, in my thought, source code downlo=
ading is too spend time.</p><p>=C2=A0</p><p>So i want to find better way to=
 make build more speedy.</p><p>=C2=A0</p><p>could you give me advice?</p><p=
>=C2=A0</p><p>thanks</p></div></div>
<table style=3D"display:none"><tbody><tr><td><img src=3D"http://mail.naver.=
com/readReceipt/notify/?img=3DfeFN1B%2BZM6kSFAtmhARPMxurp4MrFxkSp4k0FoUwKAp=
4azu9MoUqKEIo%2BrkSKA25W4d5W4C5bX0q%2BzkR74FTWx%2FsD6eo%2BzegD6eo%2Bzemb4e8=
p6Fd74eZpm%3D%3D.gif" border=3D"0"></td></tr></tbody></table><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113e3594ade79f053b89eb7e--
