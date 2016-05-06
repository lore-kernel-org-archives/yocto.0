Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34C1EE00E45; Fri,  6 May 2016 01:43:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f182.google.com (mail-yw0-f182.google.com
	[209.85.161.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88A96E00E3F
	for <yocto@yoctoproject.org>; Fri,  6 May 2016 01:43:07 -0700 (PDT)
Received: by mail-yw0-f182.google.com with SMTP id g133so168611993ywb.2
	for <yocto@yoctoproject.org>; Fri, 06 May 2016 01:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to; 
	bh=sVQ8bZ3hBbyCyNrzOaSjm5phvznruacgUzwxXOV6DAU=;
	b=mKa3JK/yBcAD6h1tuvpnWyWi6oF7nnus9OUIBXHJ4Ufj5JZnNiaIOfKkS65ijSgHrK
	qLo/DNyXZq9matH76pJ8MhYEZN80q6Ms3qgONe9WgchiCW9+UeEedBWuoJvWXEy0czl7
	24ZGCbQXa5KbgG/IQ3t+45eWxlEMZ4sCps6m+NDe1z47NnOmpRT6q/cRL/H9S3mTpK5a
	7yH29AqQUKTCRAESu96t+h66jdt0Mo18iBRd0JXV+xuXMZgAeM8KaU6KogAYD1htYo9j
	zT00MZ9vSX6hJlnEsUWdJEliZ6fI2K7sAdtHQFy0tTHpImr0HzmIF7F/hJbeebg9+DZt
	ercQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to;
	bh=sVQ8bZ3hBbyCyNrzOaSjm5phvznruacgUzwxXOV6DAU=;
	b=E3F9WTb+fhHd7tTCxIabprzPB5yS4K7Xq8jQxSnZXNFdSamAdwRawUjJmJ0fflGP0q
	GlgSxmJAfVRV3X2mDfZl5MKOe1NTxjl6SR+dkkYl+iZhEFTlZSLwYM4AWQjd1s7UE1w0
	aPvBsjxf2O1Ysy/OOdS/0de8PTGUABVUXAMhGZu/e3Q3/EOzxpXhSvoJoj/oygFJL1Y8
	Wzhr0VkQ820Yjn+Zvze4lhuDckKWyiNIKvCOXERMpnht9WCsona5W/qGWVkNuzRYpDgH
	8M/syPYQV9Gjg5lveLOwDVFR5YidYgAy1QNIwiZ+YSYkmkivUqhidjZbr8SGRZeq62nG
	QoTw==
X-Gm-Message-State: AOPr4FUfq6hFTprI/LOwPE9aPHy0dqSFbaLm+CsoRAzRIP2HeIbi5M1yEELco/fAhwLilAot/hPVziOaqAL5rQ==
MIME-Version: 1.0
X-Received: by 10.176.1.45 with SMTP id 42mr12047151uak.65.1462524186741; Fri,
	06 May 2016 01:43:06 -0700 (PDT)
Received: by 10.176.65.135 with HTTP; Fri, 6 May 2016 01:43:06 -0700 (PDT)
In-Reply-To: <CAEjjReLxsQAPSp9J+LejheRv=oxzC4nZfLo_Q+tgZf+Dhb00Tg@mail.gmail.com>
References: <CAEjjReLxsQAPSp9J+LejheRv=oxzC4nZfLo_Q+tgZf+Dhb00Tg@mail.gmail.com>
Date: Fri, 6 May 2016 10:43:06 +0200
Message-ID: <CAEjjRe+wKU5Aa3BgTuFPLTLdCu+LCMqS=APqUGZXetWV4bw6wA@mail.gmail.com>
From: "Chris Z." <winotu.email@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Native packages compiled with host gcc set in PATH and with LD_LIBRARY_PATH to libstd++
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
X-List-Received-Date: Fri, 06 May 2016 08:43:10 -0000
Content-Type: multipart/alternative; boundary=001a11351d9ea05a0005322872e7

--001a11351d9ea05a0005322872e7
Content-Type: text/plain; charset=UTF-8

Hi,

Any tips ?

On Fri, Mar 4, 2016 at 4:13 PM, Chris Z. <winotu.email@gmail.com> wrote:

> Hi,
>
> I have set newer gcc(4.9) in PATH and with proper LD_LIBRARY_PATH. Default
> system gcc is 4.4.
>
> Bulding cmake-native fails when bootstrap cmake tries to compile cmake
> native binary.
>
> This is due to the fact that bootstrap was compiled with newer glibcxx and
> it can't be found in system/host /usr/lib, /usr/lib64 nor in -rpath.
>
> rpath is set to
>                         -Wl,-rpath,${STAGING_LIBDIR_NATIVE} \
>                         -Wl,-rpath,${STAGING_BASE_LIBDIR_NATIVE} \
>
> from BUILD_LDFLAGS var in bitbake.conf which is expand in native class.
>
> What is the correct approach to fix this ? Or I shouldn't use gcc from
> PATH for compilation of native packages ?
>

--001a11351d9ea05a0005322872e7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br></div>Any tips ?<br></div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On Fri, Mar 4, 2016 at 4:13 PM, C=
hris Z. <span dir=3D"ltr">&lt;<a href=3D"mailto:winotu.email@gmail.com" tar=
get=3D"_blank">winotu.email@gmail.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div dir=3D"ltr"><div><div><div><div><div><div>Hi,<br><b=
r></div>I have set newer gcc(4.9) in PATH and with proper LD_LIBRARY_PATH. =
Default system gcc is 4.4.<br><br></div>Bulding cmake-native fails when boo=
tstrap cmake tries to compile cmake native binary.<br><br></div>This is due=
 to the fact that bootstrap was compiled with newer glibcxx and it can&#39;=
t be found in system/host /usr/lib, /usr/lib64 nor in -rpath.<br><br></div>=
rpath is set to<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 -Wl,-rpath,${STAGING_LIBDIR_NATIVE} \<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -Wl,-rpath,${STAGING_BASE_LIBDIR_NA=
TIVE} \<br><br></div>from BUILD_LDFLAGS var in bitbake.conf which is expand=
 in native class.<br><br></div>What is the correct approach to fix this ? O=
r I shouldn&#39;t use gcc from PATH for compilation of native packages ?<br=
></div>
</blockquote></div><br></div>

--001a11351d9ea05a0005322872e7--
