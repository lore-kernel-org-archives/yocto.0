Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09897E00924; Thu,  2 Mar 2017 08:26:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.175 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f175.google.com (mail-yw0-f175.google.com
	[209.85.161.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94C38E0049D
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 08:26:53 -0800 (PST)
Received: by mail-yw0-f175.google.com with SMTP id d1so61327937ywd.2
	for <yocto@yoctoproject.org>; Thu, 02 Mar 2017 08:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lcfm9VXVcM6til8V7vKpiVtCaUYUbDekWRJMImbTpN8=;
	b=Zo//RR6TWv0yih5p4AKAWgBBR0ni3w/GAqpR8UBIyhG/CaltDv6yJ7G1CcBq5FNdpB
	OomLNt9tAYP5E0pQEugKH1azs7jsawZvkL0qNXE6jeNVt9TYYl3r/Zvp5IbnphDoJ+mu
	fJwdcGg26NBDdzmB99FYi6QL62sMhy7z03iOqmo7t9kwgrV22wXFZyrh+EvhVYReFX2l
	u2ZqjIK7CGdZBDih5MMOOS0orvXErcCVVQgOJVddwFxhfVGipaT/V14yPySxKbiiIYrQ
	xpTcCjkCWS+Wyh/CL4ywy3uzh35nvAx4Uw/6oMUaZc5Rcj+z8AOEvWSqMrJuokxnrpEZ
	6+4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lcfm9VXVcM6til8V7vKpiVtCaUYUbDekWRJMImbTpN8=;
	b=tH5ttp6bRKRMHyLbaswVGZKj8y0PHwRHoQEBrjvLPtCm7oynySXqOjNrCQSyHqkpvP
	6Hk11+aiKgTXP4XnnuI8dAFa+HuY0JWcJEYzpX4tKQioVwO84U8iEFTmtS9mzZSY2rWE
	n+LYaAYjx69KJ5YyUGeba/+iiLiHsKeciPwMVe+5p/Hry5xF3bFn8+GMsOAhFEGjevYn
	eS8C14fhLB4wEjBz1G9VYkyW5lN7BKnwAElZAHDsjNCmxfoxDrTk35KxOeBKNExZNXy9
	0g1eYpJbznoHpu3ViwVCJSkocOrKmydKR48KQhP0QzqvaiM0/VD+1Kl+uj3f21z4Uh6V
	Wj7Q==
X-Gm-Message-State: AMke39krDn7hmiEI256TWRpc8gwrnUNZG0v2IfAgiMh0UVuCmaTbkYBIQ61+3tJYFcPC2Wn4McWLQcEJzTalFYB2
X-Received: by 10.200.41.115 with SMTP id z48mr17802531qtz.109.1488472013506; 
	Thu, 02 Mar 2017 08:26:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Thu, 2 Mar 2017 08:26:32 -0800 (PST)
In-Reply-To: <CAF1M0z463Yg9KWPW8pvm+8svGxPrhGbqx8X+gurvO_VxmxOeCA@mail.gmail.com>
References: <CAF1M0z6zfKC8QZsmfyCrf_zoSdzomeNa9SciPdGgaZpR+X3Tqw@mail.gmail.com>
	<1488469685.28256.36.camel@linux.intel.com>
	<CAF1M0z5VQxpnDurb7aW3DynL22-PnXo=MGMrvtaZ7ExsTMjK7g@mail.gmail.com>
	<CAJTo0LZTwVepmvsQTWNAW0gJiMtsYp9bF8Xa92oEP_gWW4QU2Q@mail.gmail.com>
	<CAF1M0z463Yg9KWPW8pvm+8svGxPrhGbqx8X+gurvO_VxmxOeCA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 2 Mar 2017 16:26:32 +0000
Message-ID: <CAJTo0LYKK6HGgvg-qV4BgXxf5=43X=tEv8y-ncnpV6nC8S5M4A@mail.gmail.com>
To: SatyaNarayana Sampangi <satya.2891@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Devtool: Script Not found
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
X-List-Received-Date: Thu, 02 Mar 2017 16:26:56 -0000
Content-Type: multipart/alternative; boundary=001a1140699c9fa2230549c1e57d

--001a1140699c9fa2230549c1e57d
Content-Type: text/plain; charset=UTF-8

On 2 March 2017 at 16:25, SatyaNarayana Sampangi <satya.2891@gmail.com>
wrote:

>
> Pls go through this link,
>
> https://www.yoctoproject.org/product/meta-ti-bsp-layer
>
> very clearly mentioned
>

Clearly the meta-ti maintainers should update the site.

(CCing Denys)

Ross

--001a1140699c9fa2230549c1e57d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 March 2017 at 16:25, SatyaNarayana Sampangi <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:satya.2891@gmail.com" target=3D"_blank">satya.2891@gmail.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><br></div><div=
>Pls go through this link,</div><div><br></div><div><a href=3D"https://www.=
yoctoproject.org/product/meta-ti-bsp-layer" target=3D"_blank">https://www.y=
octoproject.org/<wbr>product/meta-ti-bsp-layer</a><br></div><div><br></div>=
<div>very clearly mentioned=C2=A0</div><div></div></blockquote></div><br>Cl=
early the meta-ti maintainers should update the site.</div><div class=3D"gm=
ail_extra"><br></div><div class=3D"gmail_extra">(CCing Denys)</div><div cla=
ss=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1140699c9fa2230549c1e57d--
