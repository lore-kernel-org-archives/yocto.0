Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE24EE00E1A; Mon, 18 Apr 2016 13:08:03 -0700 (PDT)
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
	*      [209.85.213.178 listed in list.dnswl.org]
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B32EE00C8D
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 13:07:57 -0700 (PDT)
Received: by mail-ig0-f178.google.com with SMTP id f1so82874317igr.1
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 13:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4/kFU3Gp3woG0875amcWqJmU8RAQ0KCQ0zwQRGHlqcs=;
	b=V0mNSjN0JZ8DVjoKb4d/lzBo76vIIAtV3Vmmp3R8DaBhn/8pPiCr4s41K7zgJzFPuX
	adlDPhpjFx2Ki0qQQJ1PGYyrhWEmZ46RDBbShpsY8n58TPpevxpbTiC66xFV6CyCARFW
	V7xS/uCWHIXF6fAe5sQySQjWkp7L4UO0FfHwJ10dYHv2hjAT6kVciX8KQdJg5Ig4HyxD
	+Rn8S2FLoqY8pLXxP2FHs/024ApOUuxQPAXvp2nVvYtdrtNr7IeK4qjFTHcsK2SZ0Nfy
	8+GireFW5GRt22ZawXhQZVC0ZYxMu+XEFwmmFyYNqdHMdpdquuBOUvSROv3fz8DpVp6e
	PmNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4/kFU3Gp3woG0875amcWqJmU8RAQ0KCQ0zwQRGHlqcs=;
	b=IjTUAQ5A4u/20mK7OUxBzCdSBwlObNfdL2X+qAUF3ZtsQlU4m5ZlfQiGt4lc4TswcU
	h1FvPTmMhm0aj5B1xCUiP4ChwFniso5RKbOhuyG4R51q0DBz27GlSG4g3eEKo1oGTnOY
	hy3FjYxQUl57TnRG7cBsx532U3tl5F19AlBXpx5/ZcVc3NaWNcjL0XzyOsEGdU2vbmZC
	4WuQQGgcE38ygr+EFyUF+Eg+DSjGUuF7styYE5rb+ikFITb3n7DTv48/hE/t2HzOtiIy
	904bdk2cjULnwBcqAEErtxKQXacDtBNZFaajnsOVaGLeWQdAx/D37HlFgTEzeKLRzqUb
	r1Qw==
X-Gm-Message-State: AOPr4FXJCZ5Fg38WjgwNztAP6DJQELuzVb5zTySc98ucfdVl4A6Tbe0jaL4hIrQgg9KiffRXT7B1u6vEHqQVjxIC
X-Received: by 10.50.155.67 with SMTP id vu3mr20206722igb.52.1461010077011;
	Mon, 18 Apr 2016 13:07:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Mon, 18 Apr 2016 13:07:37 -0700 (PDT)
In-Reply-To: <CAMKF1spGMHQMVP_-mrHYmDnjM+DPk0mktK_e+9G1bekuP6PnUA@mail.gmail.com>
References: <CAJTo0LZtDL-hbxXmYWdgf7HTZtSA4D2FgRKtx1+n6Rqxq50n=g@mail.gmail.com>
	<CAMKF1spGMHQMVP_-mrHYmDnjM+DPk0mktK_e+9G1bekuP6PnUA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 18 Apr 2016 21:07:37 +0100
Message-ID: <CAJTo0LaBDu6_2QZ+HvF5N0Mw9dEvbUbkW6H-6f=SFHYgootZtQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] bugzilla.yoctoproject.org policy for bugs against multiple releases
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
X-List-Received-Date: Mon, 18 Apr 2016 20:08:03 -0000
Content-Type: multipart/alternative; boundary=001a1134dbeca769e00530c7eac0

--001a1134dbeca769e00530c7eac0
Content-Type: text/plain; charset=UTF-8

On 18 April 2016 at 18:35, Khem Raj <raj.khem@gmail.com> wrote:

> Can we have a possibility to select  field like "affected version" and
> have it such that multiple versions can be specified
>

You'd then need to have the ability to set multiple target versions, and
track each of those independently.  Without this you won't gain anything
beyond leaving a comment saying "needs to be fixed in fido" or "patch sent
for fido", there's no tracking.

Ross

--001a1134dbeca769e00530c7eac0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 18 April 2016 at 18:35, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto=
:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><p dir=3D"ltr">Can we have a possibi=
lity to select=C2=A0 field like &quot;affected version&quot; and have it su=
ch that multiple versions can be specified</p></blockquote><div><br></div><=
div>You&#39;d then need to have the ability to set multiple target versions=
, and track each of those independently.=C2=A0 Without this you won&#39;t g=
ain anything beyond leaving a comment saying &quot;needs to be fixed in fid=
o&quot; or &quot;patch sent for fido&quot;, there&#39;s no tracking.</div><=
div><br></div><div>Ross</div></div></div></div>

--001a1134dbeca769e00530c7eac0--
