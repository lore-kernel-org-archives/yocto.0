Return-Path: <anoojgopi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D730E00524; Tue, 22 Jul 2014 10:15:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (anoojgopi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F581E00342
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 10:14:58 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id f8so6281644wiw.5
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 10:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=m0j69sGHef0mjgX7bkYS4JHrddmwnPEwItRx1eBNSNY=;
	b=yonBzY9G13xWFVOk+1uNmUU4og+gzgs2P4tOAszB8HLpyC4a2sFN0whSBkvOUZJwIc
	GceUiVpxkdtN3aid2B4AQK0cCIJJyqKoZIRRQvXltbrM2E9FVoB1/4jyLOwbqa+mE9CA
	mU5v95iC/MKJdbc8BGFRwFr4xd7tw5PGcCrtb4rU1IIwbuh3Mu+I2z65djprEG4EUy7/
	CPtk8BjhK8vdm3yz9YjdPCRa1c9z/bkALcBJ8ybkCUjcXPrm64M1vhlfk9UdLvQbvtsf
	uDN6ulxekZhyG/TYQ+0wta6qIG2s6EZVB2jh2nmi6TxhSgs2OM0qhaXsqLqNbKD8DVeO
	fr/w==
MIME-Version: 1.0
X-Received: by 10.180.79.202 with SMTP id l10mr16470727wix.18.1406049298163;
	Tue, 22 Jul 2014 10:14:58 -0700 (PDT)
Received: by 10.194.19.161 with HTTP; Tue, 22 Jul 2014 10:14:58 -0700 (PDT)
In-Reply-To: <CAJTo0Lb04W409SOt=vofjPyS1xu5AQisY6_f+pEmaJPDgHhkFg@mail.gmail.com>
References: <CALkREYCJARja3TPwPR4Ck6wLrPa1Wmb2un3LBeKjt4PTszKo4Q@mail.gmail.com>
	<CAJTo0LYgQWCXJY1L7EhdP72oOyxVkigx1z8cdGoGBXOpWqcd1w@mail.gmail.com>
	<CALkREYBqgZpGr-wkFX2Qiw0kanTtg0mEGfq2cJ9=KfG4CrBC0A@mail.gmail.com>
	<CALkREYC-GA3RbBmrrkJZ4rX0Dn-Ss9LrdOwx14vxw5eBDYmZzw@mail.gmail.com>
	<CAGM0ZdRVPGNS-tJ__x4XeaivHmC-_wxq9Kj+NGt3ds0FZBD-OA@mail.gmail.com>
	<CALkREYCbBe5uN50SkPco2S=rAwc8hPTYackHWSnL5VSKWB2+7A@mail.gmail.com>
	<CAJTo0Lb04W409SOt=vofjPyS1xu5AQisY6_f+pEmaJPDgHhkFg@mail.gmail.com>
Date: Tue, 22 Jul 2014 19:14:58 +0200
Message-ID: <CALkREYCHzyJW9F9=dxEC3EuktCqOLBN2LwShkhtF-NteWyfLnA@mail.gmail.com>
From: Anooj Gopi <anoojgopi@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to find the bb file from package name
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
X-List-Received-Date: Tue, 22 Jul 2014 17:15:08 -0000
Content-Type: multipart/alternative; boundary=f46d04428684f4310c04fecb5c54

--f46d04428684f4310c04fecb5c54
Content-Type: text/plain; charset=UTF-8

This package (nativesdk-libqt5core-dev-5.2.1-r1.i686_nativesdk.rpm) is not
installed in my sdk sysroot. So I need to add it to TOOLCHAIN_HOST_TASK and
see if it gets installed into my sdk sysroot

But it fails with below error:
Error: nativesdk-qtbase-tools-dev not found in the base feeds
(i686_nativesdk noarch any all ).

Any idea what is the problem here?



On Tue, Jul 22, 2014 at 6:26 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 22 July 2014 17:19, Anooj Gopi <anoojgopi@gmail.com> wrote:
> > But I'm still not able to find out where in yocto PKG variable is
> configured
> > (which changes this rpm file name from the default one).
>
> Packages containing libraries get renamed through debian.bbclass.
>
> I'm not sure why you need to know the recipe name for adding packages
> to a SDK though.
>
> Ross
>

--f46d04428684f4310c04fecb5c54
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>This package (nativesdk-libqt5core-dev-5.2.1-r1.=
i686_nativesdk.rpm) is not installed in my sdk sysroot. So I need to add it=
 to TOOLCHAIN_HOST_TASK and see if it gets installed into my sdk sysroot<br=
>
<br></div>But it fails with below error:<br>Error: nativesdk-qtbase-tools-d=
ev not found in the base feeds (i686_nativesdk noarch any all ).<br><br></d=
iv>Any idea what is the problem here?<br><br></div><div class=3D"gmail_extr=
a">
<br><br><div class=3D"gmail_quote">On Tue, Jul 22, 2014 at 6:26 PM, Burton,=
 Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">
<div class=3D"">On 22 July 2014 17:19, Anooj Gopi &lt;<a href=3D"mailto:ano=
ojgopi@gmail.com">anoojgopi@gmail.com</a>&gt; wrote:<br>
&gt; But I&#39;m still not able to find out where in yocto PKG variable is =
configured<br>
&gt; (which changes this rpm file name from the default one).<br>
<br>
</div>Packages containing libraries get renamed through debian.bbclass.<br>
<br>
I&#39;m not sure why you need to know the recipe name for adding packages<b=
r>
to a SDK though.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--f46d04428684f4310c04fecb5c54--
