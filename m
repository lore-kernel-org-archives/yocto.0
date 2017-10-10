Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 616F8E00D6B; Tue, 10 Oct 2017 11:18:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2853E00D0E
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 11:18:54 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id n195so11329844itg.1
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 11:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9e7iTQdAOoDeMSr9fRFozDyyypEyWuruD8zM+LM7P9c=;
	b=Owr1sMUXeYHwPYD8UYvMKYXqz5rwsuIa7i6f2Co+G6xiAO9mPYkD9+Ei2G3GzZnPm9
	5GyG+VvTaOt+15mlnR7wQa22zpNLbqEwh74COFKlZiNERo09uF9d1IvybyBSqqF6kDsP
	T1Za3IRhE/wt7FHUmsWb7ghBHjFeHY1Wb+F3xygHV8JR6JrB/pH/wxmS9F5HOG/QPlAs
	BtdhGNsiH6u+1MjTISL0zxvk1tRMc057sZ8u4Mra5JKXZRXBB98QIiIJ5iW9k1t57VsN
	mgjh0+nqafIxi/zvoV8wZUjIhu5GL+wA9Vxit4uGTf+rGRsP2P+uqejAZ1Qckjk9uFmU
	9p9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9e7iTQdAOoDeMSr9fRFozDyyypEyWuruD8zM+LM7P9c=;
	b=bf/neESedW6bcLL1ra40p1iTO5UnfrEX0d7XQiJwlvBAXuo933mEIJk68hqLVncM32
	pH9P+fXjvatUy2Ouk3goZIGxoklTGQMnx4mu0qPMG+o8OD1I74+AN7poLj4iEWifymxD
	CSrFO/pQOk21hs5STM52uBqMj2orVECDi21mIT7ZRYRImihdREzJAWc7swvbKro8eARH
	hOdis5KaCtFUU36gm/ZBSn7PPh67r3DQyoq2BqsGRkqquNjJf86q+pgOCypFNBaBgm/r
	h5LdrDouwDfxRPlZZCTkq196DMc7/yumc//M8+cr8BSjc4cpweQ8Me0TvHDZRX/EgunE
	CC1g==
X-Gm-Message-State: AMCzsaUypWD+/fzq0gt0CjJNAxC6FVv2D84GCzqKzd3mt+siLc2s45Ql
	b+RzS0FhPAcHx/soQuO98zf+W2tpYp5RlKBjzIKYkw==
X-Google-Smtp-Source: AOwi7QBbxbWZYn4I6+h4ldqwjHPDz4h3FqJeH/KkSKIF3qUH8QPLlnNgh3HFqX0Nky66zTQt2jCYi6tt8xG2o0hw6XM=
X-Received: by 10.36.167.79 with SMTP id s15mr18856484iti.6.1507659534289;
	Tue, 10 Oct 2017 11:18:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.205 with HTTP; Tue, 10 Oct 2017 11:18:33 -0700 (PDT)
In-Reply-To: <994eabee7682438ea53aba932c7759c6@sakuraus.com>
References: <c69919c2a00f4b6f8b9f00b46d848839@sakuraus.com>
	<994eabee7682438ea53aba932c7759c6@sakuraus.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 10 Oct 2017 19:18:33 +0100
Message-ID: <CAJTo0LYK-f5C4LcRp0dtOoDdMoF_zBhoqZnptYTTpq1GjVfjQA@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: errors in recipe after move from devtool
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
X-List-Received-Date: Tue, 10 Oct 2017 18:18:55 -0000
Content-Type: multipart/alternative; boundary="f403045fb218fbe79f055b3556a5"

--f403045fb218fbe79f055b3556a5
Content-Type: text/plain; charset="UTF-8"

On 10 October 2017 at 17:34, Greg Wilson-Lindberg <GWilson@sakuraus.com>
wrote:

> So to continue, what is the problem with symlinked libraries in a non-dev
> package, don't most libraries have syslink's to them?
>

Typically:

libfoo.so -> libfoo.so.1
libfoo.so.1 -> libfoo.so.1.2
libfoo.so.1.2 is a real file

In this case libfoo.so is *only* used at link time and should be in
PN-dev.  The other links and the real library are for runtime and should be
in PN.

This warning is saying that you have libzint.so in zint instead of
zint-dev.  This implies that you've been changing FILES_${PN} and it's too
broad now.

Ross

--f403045fb218fbe79f055b3556a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 10 October 2017 at 17:34, Greg Wilson-Lindberg <span di=
r=3D"ltr">&lt;<a href=3D"mailto:GWilson@sakuraus.com" target=3D"_blank">GWi=
lson@sakuraus.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div =
class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">

<div id=3D"m_2240563657108159643divtagdefaultwrapper" style=3D"font-size:12=
pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif">
<p><span style=3D"font-size:12pt">So to continue, what is the problem with =
symlinked libraries in a non-dev package, don&#39;t most libraries have sys=
link&#39;s to them?</span></p></div></div></blockquote><div><br></div><div>=
Typically:</div><div><br></div><div>libfoo.so -&gt; libfoo.so.1</div><div>l=
ibfoo.so.1 -&gt; libfoo.so.1.2</div><div>libfoo.so.1.2 is a real file</div>=
<div><br></div><div>In this case libfoo.so is *only* used at link time and =
should be in PN-dev.=C2=A0 The other links and the real library are for run=
time and should be in PN.</div><div><br></div><div>This warning is saying t=
hat you have libzint.so in zint instead of zint-dev.=C2=A0 This implies tha=
t you&#39;ve been changing FILES_${PN} and it&#39;s too broad now.</div><di=
v><br></div><div>Ross =C2=A0</div></div></div></div>

--f403045fb218fbe79f055b3556a5--
