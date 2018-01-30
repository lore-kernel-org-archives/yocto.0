Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E05FE00E11; Tue, 30 Jan 2018 04:04:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B8FBE00D5F
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 04:04:28 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id e1so312911ita.0
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 04:04:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7OCZxy0HWFinIgOhIaubTX16DbcHIm4uLrYzqLyADYo=;
	b=T1G14Pi5gqdqopQ0ESnwgr1q/dlVOaUf0xNgSlAg0GOOYh5Y9x7f1NoVvDI2jsqdEI
	S/wnS6Qa/4tIm//DS5S7YaAe0f7tzLiN16uFlYUq678N93ucMfyQGmmyohbjAT5iNRki
	clj4SzYtvyC8Lq8Tyg9mzLkV9fv3Pch9pn/Lb0qL1vDNFzfVYS54J7nB0kxm5JRbeb6K
	7wUxowNuUgkVi4zr0Jy59FYO5p39fY/spVqTBQxzoAPjZagjCvUwjEYN5FPmcHzEa2gv
	kAjTsxnU4yFGZUCU0yqiqwOWKiaWeyZj7imetZ6OIstQHEMwtK9uGWchXTWdAlFz/6BG
	WxkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7OCZxy0HWFinIgOhIaubTX16DbcHIm4uLrYzqLyADYo=;
	b=dwNAhiKf2S+e+QJCubp97ib/kZ3nbG55+9iDfIej4Y1fwIUrk8eLupGn8toCS6UFQD
	i6TsgbD1idyf8rUK2YpjGzJNNbODI/5+IDjk+qVZjTVKPACQMCRrGDnch8lu2qFMpRUs
	wcQnghtT8o8PsLrWaS82aW8W7OWO5sbCf5O2R02gBrqcpC7UxYoarplsSS+UDxNSE6PV
	ygUyMDUATfrgJXIJYUvf8Dkl41ay5nFICPzc9304qMMk6mAVT4OuGMaubcswUVVp5cpl
	dGmp6bgR9keepuxausrrXlbHOUNtpTE1Xxt20a7FR6OTFCIHJHipCZbEaRI+de5hRJYw
	Ne7Q==
X-Gm-Message-State: AKwxyte6uu69gwxcC2U9N4N1TjlfTqvztGsUqEx29w/08AXu0CiU5fPg
	w1s3DDFN/oNdhllvpvr/zdC9lUKe4upH4Nead6Dm3g==
X-Google-Smtp-Source: AH8x226du2A75DDkjcWw5GPJKOF9ufMl2lguITRwiGGOoFrLv80HTWFy6cZ5RxKEAfeJ0R2SNLFSVHIKR9iAMb7bWBQ=
X-Received: by 10.36.85.206 with SMTP id e197mr31192471itb.124.1517313868299; 
	Tue, 30 Jan 2018 04:04:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.206 with HTTP; Tue, 30 Jan 2018 04:04:07 -0800 (PST)
In-Reply-To: <1517312779.3090.32.camel@linuxfoundation.org>
References: <20180130112531.11781-1-ross.burton@intel.com>
	<1517312779.3090.32.camel@linuxfoundation.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 30 Jan 2018 12:04:07 +0000
Message-ID: <CAJTo0LYdn84rTCi5Y1Eiwdf582t947i-1x+3LSZ5yHjFPK8o2w@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [PATCH][meta-mingw] gcc-crosssdk: use oe.utils.str_filter_out
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
X-List-Received-Date: Tue, 30 Jan 2018 12:04:29 -0000
Content-Type: multipart/alternative; boundary="001a113992422218a80563fd2a74"

--001a113992422218a80563fd2a74
Content-Type: text/plain; charset="UTF-8"

On 30 January 2018 at 11:46, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> Why aren't we using
> EXTRA_OECONF_remove_mingw32 = "--with-linker-hash-style=${
> LINKER_HASH_STYLE}"
> out of interest?
>
> I thought (hoped) the filter-out stuff was dead now?
>

I'll admit I just fixed the error without looking exactly at what was being
done. :)

Ross

--001a113992422218a80563fd2a74
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 30 January 2018 at 11:46, Richard Purdie <span dir=3D"l=
tr">&lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_bl=
ank">richard.purdie@linuxfoundation.org</a>&gt;</span> wrote:<br><div class=
=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
Why aren&#39;t we using=C2=A0<br>
EXTRA_OECONF_remove_mingw32 =3D &quot;--with-linker-hash-style=3D${<wbr>LIN=
KER_HASH_STYLE}&quot;<br>
out of interest?<br>
<br>
I thought (hoped) the filter-out stuff was dead now?<br></blockquote><div><=
br></div><div>I&#39;ll admit I just fixed the error without looking exactly=
 at what was being done. :)</div><div><br></div><div>Ross=C2=A0</div></div>=
</div></div>

--001a113992422218a80563fd2a74--
