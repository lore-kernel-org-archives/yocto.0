Return-Path: <tiffang@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DD09E008E4; Fri, 16 Mar 2018 11:05:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tiffang[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2085CE00529
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 11:05:02 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id m22so13603238iob.12
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 11:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=D/fgHXh8vQFA2S+xI7ocHYefURGqegImNeSDpX0pJwo=;
	b=CtRNAME/gD0hL6eYeV5l8/p/UZkkRvD/NAP2sdk7KsSCOJwbT6DGi9lEV8f+1k5EWJ
	LiGWCLea69mWTlFjF6iU64ixehEEzVcT8baxiRAk60SvATMBsfBvFJNsVmvMaC084qY1
	yAvDoSAGbPjrjA8Lp4CJgWNRvCBLPNcBWufLE3g9WfRmhXsZS9IMyzJm1yLyN+9UGoDG
	YIyfAcLQBRHlUSzMGOhhn5+0fmpyiOsWb8HYkbLMSObc9hBpyeHBNmr0BeSe8SXibXYx
	0oxZ4BzMtbiBOHIjNvfujR7jKLttkDTlr0EyQXcuSn5FJhrhEHQEJ8RxjxQWMmgfNKs/
	wTGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=D/fgHXh8vQFA2S+xI7ocHYefURGqegImNeSDpX0pJwo=;
	b=YnPmfL7ouRc6veCYtKcfvPAN+XWKmwSfpVGZ30QP/0mQ+5EnzvgPOJOKhS/typwHYz
	TODcWUDFEa/tvOoxalmLFS4py6bwu75/mFAoCr6F+DrTkaf6ud5noS7hacZ6/r4Z2XD0
	pVSEFQJQiB+8gzpwWkbhsJRHXjIZt1yrXAkbzXCADFbAJGlxOjhSv9S7AGZYMLMu0WAp
	AkaXE4sSJLMvTA10GSX09LUr27NARgQDG9TB3m+EOfbRxnipOlyphWMUGGbdHfiaI0vB
	reD28oX1MWZDgb9ai54YvCs7qD4j6Dj1xQGSLg8QwuwZeWNI0dkzrc8QNzsCV3+n5/Zs
	tLWA==
X-Gm-Message-State: AElRT7EOPtPKqJhw5ypvzmJ8F2eW6surkqURw5S159dbPZ8P+5DeaSVj
	R241jXHWae+XZlU8Y7h/jMM0GtHtEq7FqBfT8g==
X-Google-Smtp-Source: AG47ELt0IbYGyto4f4HGdM5ZQpy7kWHTa9eBmKla1NE6BoC2evra3Zf1qfFiIvG3EMFrHgYpjkPyAWJ3/rgoYii83Ug=
X-Received: by 10.107.139.148 with SMTP id n142mr2970266iod.145.1521223502300; 
	Fri, 16 Mar 2018 11:05:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.31.2 with HTTP; Fri, 16 Mar 2018 11:05:01 -0700 (PDT)
In-Reply-To: <CAMKF1soMC8sPr_LZZN=gkvEUV_fiQ9dSQ1O+7mCJcT01-zOROQ@mail.gmail.com>
References: <CAO80zYuPGBh0syB4s_G6nrMgD7Ac9OePa=uM=8pPM6YhVnrGsQ@mail.gmail.com>
	<CAMKF1soMC8sPr_LZZN=gkvEUV_fiQ9dSQ1O+7mCJcT01-zOROQ@mail.gmail.com>
From: ikjn <tiffang@gmail.com>
Date: Sat, 17 Mar 2018 03:05:01 +0900
Message-ID: <CAO80zYszdMURcr1jTWnEcY3_hQ17m=Er1eptHndyyOpqsW_p9A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailman-Approved-At: Mon, 19 Mar 2018 08:36:15 -0700
Cc: yocto@yoctoproject.org
Subject: Re: How can I check "shared-library-to-package mapping"
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
X-List-Received-Date: Fri, 16 Mar 2018 18:05:03 -0000
Content-Type: multipart/alternative; boundary="94eb2c00550e7a8d1d05678b720e"

--94eb2c00550e7a8d1d05678b720e
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 15, 2018 at 11:37 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Wed, Mar 14, 2018 at 8:50 AM ikjn <tiffang@gmail.com> wrote:
>
>> Hi.
>>
>> My recipe 'A' installs pre-built shared libraries, but I get file_rdeps
>> error on
>> 'B' recipe's package_qa task, which has runtime dependency on A's so
>> files.
>>
>
> Yes however it depends on SONAME being added to the shared objects when
> they are linked otherwise shlibs code is not able to auto detect the
> dependency
>

Thank you, now I got it!
I thought only file name is used for run time dependency matching between
packages.
SONAME matching is also executed in build time dependency check when
DEPENDS_xxx is given?

--94eb2c00550e7a8d1d05678b720e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><div class=3D"gmail_quote">=
On Thu, Mar 15, 2018 at 11:37 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D=
"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div><br><div class=3D"gmail_=
quote"><span class=3D""><div dir=3D"auto">On Wed, Mar 14, 2018 at 8:50 AM i=
kjn &lt;<a href=3D"mailto:tiffang@gmail.com" target=3D"_blank">tiffang@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>Hi.<div><=
br></div><div>My recipe &#39;A&#39; installs pre-built shared libraries, bu=
t I get file_rdeps error on=C2=A0<div>&#39;B&#39; recipe&#39;s package_qa t=
ask, which has runtime dependency on A&#39;s so files.</div><div></div></di=
v></div></blockquote><div dir=3D"auto"><br></div></span><div dir=3D"auto">Y=
es however it depends on SONAME being added to the shared objects when they=
 are linked otherwise shlibs code is not able to auto detect the dependency=
 </div></div></div></blockquote><div>=C2=A0</div><div>Thank you, now I got =
it!</div><div>I thought only file name is used for run time dependency matc=
hing between packages.<br></div><div>SONAME matching is also executed in bu=
ild time dependency check when DEPENDS_xxx is given?<br></div><div><br></di=
v></div></div></div>

--94eb2c00550e7a8d1d05678b720e--
