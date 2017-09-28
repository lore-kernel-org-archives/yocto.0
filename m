Return-Path: <eddy.lai.tw@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A5A1E00CCA; Wed, 27 Sep 2017 20:32:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddy.lai.tw[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f46.google.com (mail-pg0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 536ACE00C62;
	Wed, 27 Sep 2017 20:32:37 -0700 (PDT)
Received: by mail-pg0-f46.google.com with SMTP id b11so188233pgn.12;
	Wed, 27 Sep 2017 20:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KS8B28vnyY2A131KVqOlsfnB+T8tIiLoiBYtJIx+Buw=;
	b=DrRLIbS/H/LsDBpwGq8SULub6bPvI0P6o8EuZofOsQfXsZ68DVw0QNwiTZ61XnBtK3
	PWF9TDh5lx0XOIbNIn0+/659JVASOMtx3wyku0reqt7iaRpE0ENKJXTueBZnPgJJWTLR
	buBL2qD6wpGgV3ZGf+Yb/r1rbypVbazomYildpBbOsVv3TdEU+heE9UJossBOnXXi5Mb
	Xc9LpGA45F52fZfhDBnSSpYBWnGK1/+95sUbIngeCvvt5nTDFxgkyFl8JXZs+9aukI/Z
	BFn1LUcdxUi2LIDm/MYZmr18fvegXrnqPjy8WxGxUZ7azMBjAls6XWjqSVAJKWEn7kif
	WFCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KS8B28vnyY2A131KVqOlsfnB+T8tIiLoiBYtJIx+Buw=;
	b=hyGWhZ5hWF6d6LZDcsWyHoFUpRPHi3KVt2OE1LSP0bMUrDGCdrVg3Dgaa/BZ8L5W5w
	MlapV7sx9t7WzQ90iAwycivjl0Qtr7A6VJf9BjDpgfx9u9U1vKkr21Ibc2gFzf1GmeRK
	QCP4wMZWskP0P9SROlyNzI8ZDzz4tgQk5LyfolBYSFYZTPwO72zu1lXxmLQRxcG6296T
	0TViQ5y1ZDKEJtRPD3PrG4U9wZGXb7nkWzvnR096Kqdp00tRkPCOzcnu7R5ImXumXZ74
	nVxKFXXcmmNe6w1K1KJPt+PDH7lZDZ/Gzs3NZtjyEnfeFbe3J37CQAXiqv3x8eo/PWWc
	oINQ==
X-Gm-Message-State: AHPjjUg+pVi14AyjlrBgxJDntyuLk0wFvAxpjnlBX89IVIczkjPpmKUI
	odtFUk3v4DNX6Hs3ehmd/cxEB182R1RNjMK5zVo=
X-Google-Smtp-Source: AOwi7QDE8hMvIul0rmFiiBsl0EFm9Yb+lP2WjHCF3r9Zq1OZbCGLJoUGuxWGzuVqrP+QAPpmMx23rEd/9QOU0bsUWUc=
X-Received: by 10.84.131.105 with SMTP id 96mr2937761pld.229.1506569556646;
	Wed, 27 Sep 2017 20:32:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.135.16 with HTTP; Wed, 27 Sep 2017 20:32:36 -0700 (PDT)
In-Reply-To: <1506569246.7331.9.camel@linux.intel.com>
References: <1506569246.7331.9.camel@linux.intel.com>
From: Lai Eddy <eddy.lai.tw@gmail.com>
Date: Thu, 28 Sep 2017 11:32:36 +0800
Message-ID: <CACrgodfgYaFmxyD0xP5aG7nnp5RsBfJseUBqTqL9QbeO6nZf6g@mail.gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: "meta-intel@yoctoproject.org" <meta-intel@yoctoproject.org>,
	Yocto Discussion <yocto@yoctoproject.org>
Subject: Re: [meta-intel] meta-intel has been split into meta-dpdk and meta-intel-qat
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
X-List-Received-Date: Thu, 28 Sep 2017 03:32:38 -0000
Content-Type: multipart/alternative; boundary="94eb2c130b7c40dede055a378fe4"

--94eb2c130b7c40dede055a378fe4
Content-Type: text/plain; charset="UTF-8"

is this mean I don't need meta-intel anymore? (but still can be found in
the git)
just choose to use meta-dpdk and/or meta-intel-qat

2017-09-28 11:27 GMT+08:00 Saul Wold <sgw@linux.intel.com>:

>
> In an effort to create more consistency in Yocto Project layer, we are
> splitting the meta-intel to remove some application/libraries that
> should really be in their own layers.
>
> The new meta-dpdk will serve as a place for the Linux Foundation's DPDK
> project to host meta-data.
>
> The meta-intel-qat will carry the Quick Assist Technology libraries and
> associated applications.
>
> They are both hosted at https://git.yoctoproject.org
>
>
> Sau!
> --
> _______________________________________________
> meta-intel mailing list
> meta-intel@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-intel
>

--94eb2c130b7c40dede055a378fe4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">is this mean I don&#39;t need meta-intel anymore? (but sti=
ll can be found in the git)<div>just choose to use meta-dpdk and/or meta-in=
tel-qat</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">2017-09-28 11:27 GMT+08:00 Saul Wold <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;</spa=
n>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><br>
In an effort to create more consistency in Yocto Project layer, we are<br>
splitting the meta-intel to remove some application/libraries that<br>
should really be in their own layers.<br>
<br>
The new meta-dpdk will serve as a place for the Linux Foundation&#39;s DPDK=
<br>
project to host meta-data.<br>
<br>
The meta-intel-qat will carry the Quick Assist Technology libraries and<br>
associated applications.<br>
<br>
They are both hosted at <a href=3D"https://git.yoctoproject.org" rel=3D"nor=
eferrer" target=3D"_blank">https://git.yoctoproject.org</a><br>
<br>
<br>
Sau!<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
meta-intel mailing list<br>
<a href=3D"mailto:meta-intel@yoctoproject.org">meta-intel@yoctoproject.org<=
/a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/meta-intel" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/meta-=
intel</a><br>
</font></span></blockquote></div><br></div>

--94eb2c130b7c40dede055a378fe4--
