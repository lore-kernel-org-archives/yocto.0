Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 878DCE0082A; Mon, 16 Jan 2017 02:41:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37047E00805
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 02:40:59 -0800 (PST)
Received: by mail-qk0-f180.google.com with SMTP id s140so114945601qke.0
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 02:40:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pngLMPS4ZZKT1Oe3QC3c9QVF6W8M1E1VXNLFWcjsPWk=;
	b=TjK89UhI3NROTlyrXiG8Z6h7NNvQnwZ23eb/s3bh5Mg8jEKRsRzt3YXNLDlvh5cQ5Y
	pJa6lGcpptp1IpYYmWg6Yxl19uwSCGUY0fjYK4Zxmaoo3b9iqIdHjdKtmdObiWiL3JGb
	HXZrg1KtGcFpilSFNgGcql4EM2oIfwOOzExp+psEgf+t8nnsj2RMlBAIfd9BYghIm/Y7
	27nlYYA4ZbJODjU+DeE1Ib3hC8OuOlsfc+OuNaP5fQ9Uz085a5HnioWZfmagMV0/hhO0
	oSsYJBokXtSCNeNcqOEar8yXrT3SFk1fy+drEay3kB3c+whDn+hxNOR5RzkQAIbz+2BJ
	7N2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pngLMPS4ZZKT1Oe3QC3c9QVF6W8M1E1VXNLFWcjsPWk=;
	b=PzssOa4MH1+BoshiaBkTEC0Eq2EN+j9AYWDXKkE88/TY2UUCMkX4YSvrwsvrHDVERg
	WslUGDC3WVnQp47kzLf7uYxbX03Jp4UxJrwD3rpHSgD8ZA2VdxcrxBsWwRGZKQUmsyvX
	qmjbAfbm6qt2l2Y/gTQdazgLDMOVQ+dAtlLvGYtmGTuaDqsQvar7YRGCp7trtL+aHdTd
	UaGwz8zmhRTo+foblXgttR+ElsEShKqgeYOpvAE0VudUDloqNmN2X24a1MnivIf8mnAe
	Hvoq3T7dewt5KnCCiTMx9fl75vasFvMFcRNdDOVx/Lpc6FNl30IgSXT+I0IwmJgGWaE8
	J4fw==
X-Gm-Message-State: AIkVDXJWKmWKJ/NX+RxC9UMDB8XrMrBoZu0Ve0QekxtfRhBCFpPM26ZsdB3XP6+LipIjxLsKl4tQk75rGJipNGtn
X-Received: by 10.55.176.194 with SMTP id z185mr29589475qke.26.1484563259007; 
	Mon, 16 Jan 2017 02:40:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Mon, 16 Jan 2017 02:40:38 -0800 (PST)
In-Reply-To: <3fca46fa-5b89-4cd9-e363-22e6e728a0e4@mlbassoc.com>
References: <3fca46fa-5b89-4cd9-e363-22e6e728a0e4@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 16 Jan 2017 10:40:38 +0000
Message-ID: <CAJTo0La8uNRNx_O4x2AQ3sEZ3e4nK7z55yeHejiYu3L3CbE12g@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Debugging question
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
X-List-Received-Date: Mon, 16 Jan 2017 10:41:03 -0000
Content-Type: multipart/alternative; boundary=94eb2c060ce6b338e4054633d1c8

--94eb2c060ce6b338e4054633d1c8
Content-Type: text/plain; charset=UTF-8

On 16 January 2017 at 04:29, Gary Thomas <gary@mlbassoc.com> wrote:

> * Any ideas how upgrading the X server now calls into openssl?
>    I've bisected this error down to the change in the X server
>    recipe to v1.19 from v1.18.4
>

$ grep ssl *
xserver-xorg.inc:XORG_CRYPTO ??= "openssl"
xserver-xorg.inc:PACKAGECONFIG[openssl] = "--with-sha1=libcrypto,,openssl"

The X server took the reasonable approach of refusing to reimplement
cryptographic functions and instead relies on an external library, of which
openssl (well, libcrypto, part of openssl) is one option.

Ross

--94eb2c060ce6b338e4054633d1c8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 16 January 2017 at 04:29, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-st=
yle:solid;padding-left:1ex"><div id=3D"gmail-:4zt" class=3D"gmail-a3s gmail=
-aXjCH gmail-m159a597cf64138eb">* Any ideas how upgrading the X server now =
calls into openssl?<br>
=C2=A0 =C2=A0I&#39;ve bisected this error down to the change in the X serve=
r<br>
=C2=A0 =C2=A0recipe to v1.19 from v1.18.4</div></blockquote></div><div clas=
s=3D"gmail_extra"><br></div>$ grep ssl *<br><div class=3D"gmail_extra">xser=
ver-xorg.inc:XORG_CRYPTO ??=3D &quot;openssl&quot;</div><div class=3D"gmail=
_extra">xserver-xorg.inc:PACKAGECONFIG[openssl] =3D &quot;--with-sha1=3Dlib=
crypto,,openssl&quot;</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">The X server took the reasonable approach of refusing to r=
eimplement cryptographic functions and instead relies on an external librar=
y, of which openssl (well, libcrypto, part of openssl) is one option.</div>=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><=
/div></div>

--94eb2c060ce6b338e4054633d1c8--
