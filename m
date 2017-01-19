Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B46BE00A03; Thu, 19 Jan 2017 03:35:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.170 listed in list.dnswl.org]
Received: from mail-yw0-f170.google.com (mail-yw0-f170.google.com
	[209.85.161.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BDB7E009E2
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 03:35:03 -0800 (PST)
Received: by mail-yw0-f170.google.com with SMTP id v200so28687894ywc.3
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 03:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WxC2Ds7YwYvYuedtNxUBqGCwMt+3/B9I3YZ/VETBzrM=;
	b=ybQgujTPU/g2mypkhoOq41wRB0v93teWLMLVYwg+33STxpADtkRt76+zUoU6G9QVmR
	sm89cXRRDpywwYpQuZ/8oF6s4MFUGwZYUQOA/NAo+CM6x0DHVWIQrYZaob68/k0Px02z
	xj5p5GK2azt5TDltmVYVHvaZjuyODCsuf23Zabtj+qRnsRxE6m+E5hHPb/oIJGl2mJNj
	3ei/NJyLD9jl69Me32cXvPlcUdqgUiDX6HI8EIctut4P4zjiVyiLR4tIsatgWpwmx6Uy
	/y13f/XK2Iku5JpzJboVCXyygmUwkUlZDVaO6urSvOeKIiUxDseVO9uPhqS9F+6amdqX
	psuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WxC2Ds7YwYvYuedtNxUBqGCwMt+3/B9I3YZ/VETBzrM=;
	b=i/hyBWNjB9wLwkGJKahgIUL2xJCXZp4xP79N3XoXoKl1Rnc9VPhkzrxvbL71WOwY+g
	coCLmvyvq3rSQ+1fEtjWwo8fPOzGEdgUnEIFssWbnxL7gUtw3OmAoiO5WQq4HMF3Pk4y
	bitny6AIvGCwpoId6EFLoAEbTt/k9sOfIi2Em52UXRnIVMotymw76E9JfuoUgGH3QRCV
	xwsWKXwIzt7kVsjAJIitrKDA/Pl+IrppLyRF7UpmMWtT+iDvdnXUXsMIknPXOWRypUDI
	HiXs688/RzJdzEgca/RO+GQcnqlI5E1oyKM1KFf+Ncx/S5NJ7uPz3wr8E3arKQfztOJ/
	tsrg==
X-Gm-Message-State: AIkVDXJE5q91xfAvcmwerdCsh1Bb9up2SHi00a8IB5TlCbUyk15XKzA2kgy4TrQmPFzRdXUiS91eCqfwvkO8TgZy
X-Received: by 10.55.16.11 with SMTP id a11mr8080878qkh.3.1484825703127; Thu,
	19 Jan 2017 03:35:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Thu, 19 Jan 2017 03:34:42 -0800 (PST)
In-Reply-To: <20170119015236.6498-1-raltherr@google.com>
References: <20170119015236.6498-1-raltherr@google.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 19 Jan 2017 11:34:42 +0000
Message-ID: <CAJTo0LZVhajLWP-xz1KrO-sx=L2bp46V0Vfjpg32Rc=ddLdo7w@mail.gmail.com>
To: Rick Altherr <raltherr@google.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] kernel-fitimage: Let U-Boot select ramdisk load/entry address
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
X-List-Received-Date: Thu, 19 Jan 2017 11:35:07 -0000
Content-Type: multipart/alternative; boundary=001a11475cbc96d9ad054670eca3

--001a11475cbc96d9ad054670eca3
Content-Type: text/plain; charset=UTF-8

Hi Rick,

Patches for oe-core should go to the
openembedded-core@lists.openembedded.org mailing list, yocto@ is for user
support and smaller layers that don't need their own list.  Can you resend
it?

On 19 January 2017 at 01:52, Rick Altherr <raltherr@google.com> wrote:

> Change-Id: I0717c2ab04d13e58c2b91a829063c2d0fb6eaf34
>

As we don't use Gerrit, would it be possible to filter these out of the
patches?

Ross

--001a11475cbc96d9ad054670eca3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rick,<div><br></div><div>Patches for oe-core should go =
to the <a href=3D"mailto:openembedded-core@lists.openembedded.org">openembe=
dded-core@lists.openembedded.org</a> mailing list, yocto@ is for user suppo=
rt and smaller layers that don&#39;t need their own list.=C2=A0 Can you res=
end it?</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 1=
9 January 2017 at 01:52, Rick Altherr <span dir=3D"ltr">&lt;<a href=3D"mail=
to:raltherr@google.com" target=3D"_blank">raltherr@google.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">Change-Id: I0717c2ab04d13e58c2b9=
1a829063c<wbr>2d0fb6eaf34<br></blockquote><div><br></div><div>As we don&#39=
;t use Gerrit, would it be possible to filter these out of the patches?</di=
v><div><br></div><div>Ross=C2=A0</div></div></div></div>

--001a11475cbc96d9ad054670eca3--
