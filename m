Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89D63E00B04; Wed, 22 Jun 2016 13:01:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BAABE00AD8
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 13:01:11 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id h190so48482335ith.1
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 13:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1H3CxIb3qAgL2S4vyWVqSPBEfdvWUv+MtpDgJQGCXCw=;
	b=HyNJTQPUmFxWBfkPs8XBf8YBvkSCRWTPan58KWDNyZJdAZOIG8/tJgG7yjo31sDmZP
	QECtawexnt2BCGJ1qkbqGDySBbPCyO1Uf40A0TSw3dHZIDiD/x5lP5IIPPAI9Byd88Nz
	dN599A0W8EuU6idGRq2bxtfOZUBOzxi2ViF2zZS9QRNfU/YmVXEPjDo0GWLmSHtUPqPP
	ymhEWj6w3bxiaGA6E6xevYobNDha6C2K8GuziQKeedDUM4GJ664PCq8/ILmPqD4ysUkQ
	Ez2pto6k62cjoeKraiI4HtKiY5Gofjr2rvkgxIxo+mFHDgYx+u77z90hrY2tLIH0tH4O
	6pzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1H3CxIb3qAgL2S4vyWVqSPBEfdvWUv+MtpDgJQGCXCw=;
	b=kr5t8X59qVOYaunUQkJg9JDR5XeugquRJmU/PhVk5KujPibdpeOyNcWnWIWaa9oT4h
	8t3kGxQPApxqLr65iz+nEmqQPZQuBQiBrfVYROne3HbZeRT1sTSoKwwjoZlmsrEVpx4Z
	PQt5VjwE5Hm1aNhqZVAVIBnNOK5V8zJp+hSTSN3lGxVkZk9Tu0wxKgN7t7SFVvZCOX/X
	VanMiDSb0T7jiiDwhk3mxcQz2TN8e4eC4c9RD2g1zKEZi6R6bexe4aQ7ptxNhp07G2Lz
	QtueW6f7dEo169SxSkyVNtRqpKMXO7QoosU6BVyQCfu8hJJzyEi5z4N4QV8512UUoT95
	OK/g==
X-Gm-Message-State: ALyK8tIM6RkQmz1eC3Phf/eyl8FQ/LQ8QuyPCSO+x+LTDMz9itQInd/UUVzleAupqwZWL0ZD+Tp2ABmAv8oceJta
X-Received: by 10.36.217.68 with SMTP id p65mr17192515itg.38.1466625671028;
	Wed, 22 Jun 2016 13:01:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Wed, 22 Jun 2016 13:00:51 -0700 (PDT)
In-Reply-To: <20160622164325.GB20922@asimov.austin.ibm.com>
References: <20160622164325.GB20922@asimov.austin.ibm.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 22 Jun 2016 21:00:51 +0100
Message-ID: <CAJTo0Lb9zaufhDTaObFPYJK7ZU-H3bXD7-8y11+eAx=Btiwj4A@mail.gmail.com>
To: Patrick Williams <patrick@stwcx.xyz>
Cc: Yocto Maillist <yocto@yoctoproject.org>,
	Bradley Bishop <bradleyb@fuzziesquirrel.com>
Subject: Re: uninative support on non-x86 platforms
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
X-List-Received-Date: Wed, 22 Jun 2016 20:01:16 -0000
Content-Type: multipart/alternative; boundary=001a114631b62403f40535e36623

--001a114631b62403f40535e36623
Content-Type: text/plain; charset=UTF-8

On 22 June 2016 at 17:43, Patrick Williams <patrick@stwcx.xyz> wrote:

> The current poky fails when building on a non-x86 platform with a
> message like:
>
>     uninative selected but not configured, please set
> UNINATIVE_CHKSUM[ppc64le]
>
> We have a number of developers that use ppc64le systems to do work on,
> so we would like to help get this support in place.  Are there any
> pointers to the work needed to get this going?
>

INHERIT_remove = "uninative" in local.conf should do the trick.

Or, don't use poky for your work. :)

Ross

--001a114631b62403f40535e36623
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 June 2016 at 17:43, Patrick Williams <span dir=3D"ltr">&lt;<a href=3D=
"mailto:patrick@stwcx.xyz" target=3D"_blank">patrick@stwcx.xyz</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div id=3D":4ty" class=3D"a3s a=
XjCH m155790dd4ad6d2bd">The current poky fails when building on a non-x86 p=
latform with a<br>
message like:<br>
<br>
=C2=A0 =C2=A0 uninative selected but not configured, please set UNINATIVE_C=
HKSUM[ppc64le]<br>
<br>
We have a number of developers that use ppc64le systems to do work on,<br>
so we would like to help get this support in place.=C2=A0 Are there any<br>
pointers to the work needed to get this going?</div></blockquote></div><br>=
INHERIT_remove =3D &quot;uninative&quot; in local.conf should do the trick.=
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Or, d=
on&#39;t use poky for your work. :)</div><div class=3D"gmail_extra"><br></d=
iv><div class=3D"gmail_extra">Ross</div></div>

--001a114631b62403f40535e36623--
