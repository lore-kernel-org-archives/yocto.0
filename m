Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78E25E00E84; Thu, 15 Feb 2018 02:55:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F5CAE007E1
	for <yocto@yoctoproject.org>; Thu, 15 Feb 2018 02:55:13 -0800 (PST)
Received: by mail-it0-f42.google.com with SMTP id y16so11681itc.0
	for <yocto@yoctoproject.org>; Thu, 15 Feb 2018 02:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lX5RM1k/lCHjb8Pyw7pU69I96xoLLTkxVihf8oCuROw=;
	b=ajuaHYFiIFSH7s5GtDtJwe51QvH+n1cf7twBdq2LXLNsokqPQikkbPkCGSd4pDKhsD
	OX9eqq+dJXj6zSy7i7SSxVNrSTjZ9fE6L0++xLwcGa8Y3j9kzlDS45XPYtoWAfJeo4MU
	dt3fh5p5W2k2W4aWoU0d/8PPe4+b0bqqiFGGgcZgS8d1n1aoEyprW+In0XVpog/qKo/D
	KqFzRX2DgmGz71FJJlFN3txY/eor7OEHQsxa2uH/RYKLndjA8d620YmKwSOb+YyOqZWj
	oNzJvKsINsKO8A9oCUwgmCHACdvLivbiM+/uvmf9cYEoM6iR+Jt6qK7hi7hMr1O6HK9d
	a4gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lX5RM1k/lCHjb8Pyw7pU69I96xoLLTkxVihf8oCuROw=;
	b=MnAk1HiZDMIuU0zWcQfW1HIsYp6zfmlsXbhTpWJsE9atiz9T7EG8e7saUgVdUPgaRE
	3QrK3CAMTEq7GGhF8NH9uhzBbg6OqPyPQ/mbS10SZ4deLdieWoxRJWBeTUpt5jvhrL3L
	nDxI7lYUjd9bakc111JyH4JpiTNh2X/CHY7CPO9obwdWLpi4OQgnj996186AGxbpF44Y
	5DzPQN1r5meONy3rrzmOJPu/FA82NrMzAdx4bSa3/SeAt+Mi/EB5kBobM3IziF4xgeLu
	F4mGISKiMFy8/TaOxeaoQI929x/7Oskv/F59ebKhuvjWCZFRaLXzps8OHjR1jRAGYIsK
	9AdA==
X-Gm-Message-State: APf1xPAL08lJ7GBj3zpl13HAzkatmQX9cWz7IWQEIK6kdH1pFLeD0CAy
	2gsrPBlc/ckIH5CSEXXp+357z2Rf3OL5aEGyaomfMg==
X-Google-Smtp-Source: AH8x224kc4PYxc7n3YoLavq5EOKEN9ByTFntNhdrSfxkQYvo3TpsQ+i5l4SG5zRmP4SgW0Ir4OE8Y9efhuFKtbr8bMA=
X-Received: by 10.36.134.6 with SMTP id u6mr78589itd.10.1518692113331; Thu, 15
	Feb 2018 02:55:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.200 with HTTP; Thu, 15 Feb 2018 02:54:52 -0800 (PST)
In-Reply-To: <7303d2119528406d838e7922fbadfa95@samsung.com>
References: <CGME20180207174332uscas1p2c4d6e2933f469bb5e6d0cb2fe97e8b5a@uscas1p2.samsung.com>
	<7303d2119528406d838e7922fbadfa95@samsung.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 15 Feb 2018 10:54:52 +0000
Message-ID: <CAJTo0La3_s=XkzVB0PRF3FB4VwY7LQ3kTQT1oQqVF+-gWMcOkw@mail.gmail.com>
To: "Vish (Vishwanath) Maram" <vishwanath.m@samsung.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-virtualization@yoctoproject.org"
	<meta-virtualization@yoctoproject.org>
Subject: Re: Yocto Recipe for LibRXE.
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
X-List-Received-Date: Thu, 15 Feb 2018 10:55:15 -0000
Content-Type: multipart/alternative; boundary="94eb2c08972af061e305653e0f09"

--94eb2c08972af061e305653e0f09
Content-Type: text/plain; charset="UTF-8"

It's not in the layer index (
http://layers.openembedded.org/layerindex/branch/master/recipes/?q=librxe),
so I suggest you start with devtool to create a new recipe.

Ross

On 7 February 2018 at 17:43, Vish (Vishwanath) Maram <
vishwanath.m@samsung.com> wrote:

> Hi,
>
> I am looking for a yocto recipe of librxe? Right now I was able to get
> librdmacm and libibverbs, but librxe yocto is not there. Can someone help
> me in getting this?
>
> Highly appreciate if I can get some info on the same.
>
> Thanks,
> -Vish
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c08972af061e305653e0f09
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It&#39;s not in the layer index (<a href=3D"http://layers.=
openembedded.org/layerindex/branch/master/recipes/?q=3Dlibrxe">http://layer=
s.openembedded.org/layerindex/branch/master/recipes/?q=3Dlibrxe</a>), so I =
suggest you start with devtool to create a new recipe.<div><br></div><div>R=
oss</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 7 February 2018 at 17:43, Vish (Vishwanath) Maram <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:vishwanath.m@samsung.com" target=3D"_blank">vishwanath.m@sa=
msung.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
<br>
I am looking for a yocto recipe of librxe? Right now I was able to get libr=
dmacm and libibverbs, but librxe yocto is not there. Can someone help me in=
 getting this?<br>
<br>
Highly appreciate if I can get some info on the same.<br>
<br>
Thanks,<br>
-Vish<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--94eb2c08972af061e305653e0f09--
