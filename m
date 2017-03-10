Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33696E00A1E; Fri, 10 Mar 2017 08:40:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4791E00A0C
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 08:40:30 -0800 (PST)
Received: by mail-qk0-f172.google.com with SMTP id p64so175948181qke.1
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 08:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Td+iOCOMnoBKH2kBFXmgHRLpyiYctKhQQ1A2L+ska5U=;
	b=MAvsMqOU1ZOX7LjLT+zzikdZNTxH7pAHaNAbti1etpnwZ+ZpeK344URHmkwPbqqmN1
	YbcVrot9X947WvM7bsiXjG7X/9YLxqvgbaKwenC+iATAXR/qutBsSLwUIIzcuT45i/Wk
	+JbpmHtCNIZSC0V3wGM6JRUjKSl8krjuqLT3l5QdBVBgMgDe970qK/XhIOlnU1S3d0I7
	q3bJ5AydbE2utvo3UjDEGnSTVOMEzLWjK0+g1Az9ze2y0Zhai4UXhy5QKNdW8+OhaxGl
	kW+YHNNwhUrfcgpompllmT+IsSYA7GfbbWkIcTZOjNDkxPCXg2eIrAXaSTMOeMVZGTK0
	NVYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Td+iOCOMnoBKH2kBFXmgHRLpyiYctKhQQ1A2L+ska5U=;
	b=n/Ax+vBVqAAy+e91xJh8OijIFfH/FKNKPg5chPBJT8CFIRR444oO+fLYstzvtdtvbG
	tCAZF+QcMBQJsNHF++ImG0R9nKfKx5WudjTIt31JZKYWhOYwE7LHBnsub05995IImzss
	pIxhSJldzBuBiRG+vlRoD552EQaEfAMCC7iV0KaeKSD4ogPIzP8ptZ08EyodlFwKsOOZ
	++lx4H6umc4DLcQinxcTKxJ8NsLbMj6WZwOatKlqe/4wecpKqZmkmujlso/u2oB2f5rp
	HH5i3BgR75jbTmqLD16FT7JY3+m+5QXygBF525sKd2JMLMzVifrdpdIaVO7i9FS9mPEz
	E/1g==
X-Gm-Message-State: AFeK/H2kpC6LiNBwXluNGQ1t8krEu8PPxiG9+rvS/nVueT5MUKGJfMHPEtAmyDP9xQafcSbRHH+oXVyMbd6XQV8C
X-Received: by 10.55.221.1 with SMTP id n1mr19195361qki.221.1489164029640;
	Fri, 10 Mar 2017 08:40:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Fri, 10 Mar 2017 08:40:09 -0800 (PST)
In-Reply-To: <3585477.Pl9C8lrLdl@rjs-zotac.streifs.net>
References: <d9a0d51f-222e-0320-2e9d-57451b5a5c42@mlbassoc.com>
	<CAJTo0LYQ=h1TdU4NBdF_vAVA+ihhNL7nBmYq9244H=4uKB-hrA@mail.gmail.com>
	<3585477.Pl9C8lrLdl@rjs-zotac.streifs.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 10 Mar 2017 16:40:09 +0000
Message-ID: <CAJTo0LZQguBf3oQYaGBVG2Rz0PszOy-xNAbRyGkJNnPwVwmbcg@mail.gmail.com>
To: Rudolf J Streif <rudolf.streif@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: What happened to 'depexp'?
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
X-List-Received-Date: Fri, 10 Mar 2017 16:40:34 -0000
Content-Type: multipart/alternative; boundary=001a1149d7dcffd84e054a6304e2

--001a1149d7dcffd84e054a6304e2
Content-Type: text/plain; charset=UTF-8

On 10 March 2017 at 16:30, Rudolf J Streif <rudolf.streif@gmail.com> wrote:

> While I can concur that it is good to have more functionality, why was it
> deemed necessary to entirely deprecate 'depexp'? I think now that the Yocto
> Project is maturing, it would be good to pay more attention to retaining
> backwards compatibility.
>
> I may have missed it, but was there a discussion on the mailing lists about
> deprecating and replacing 'depexp'?
>

There was a patch on the list.

Fundamentally taskexp is just a more detailed view of the same data,
without some dependencies missing.

Ross

--001a1149d7dcffd84e054a6304e2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 March 2017 at 16:30, Rudolf J Streif <span dir=3D"ltr">&lt;<a href=3D=
"mailto:rudolf.streif@gmail.com" target=3D"_blank">rudolf.streif@gmail.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":3a5" cl=
ass=3D"a3s aXjCH m15ab90ee78dc7863">While I can concur that it is good to h=
ave more functionality, why was it<br>
deemed necessary to entirely deprecate &#39;depexp&#39;? I think now that t=
he Yocto<br>
Project is maturing, it would be good to pay more attention to retaining<br=
>
backwards compatibility.<br>
<br>
I may have missed it, but was there a discussion on the mailing lists about=
<br>
deprecating and replacing &#39;depexp&#39;?<br></div></blockquote></div><br=
>There was a patch on the list.</div><div class=3D"gmail_extra"><br></div><=
div class=3D"gmail_extra">Fundamentally taskexp is just a more detailed vie=
w of the same data, without some dependencies missing.</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1149d7dcffd84e054a6304e2--
