Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6F7AE00924; Thu,  2 Mar 2017 08:34:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (satya.2891[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.68 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com
	[209.85.215.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC322E0049D
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 08:34:21 -0800 (PST)
Received: by mail-lf0-f68.google.com with SMTP id y193so4878945lfd.1
	for <yocto@yoctoproject.org>; Thu, 02 Mar 2017 08:34:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XbX6kD6mC6EEIy9oVrAwRz2eG5PUgkm65B8ZVGzJV7c=;
	b=vB0OPWUknE2su/Nxxhuo9TahZux11NcxvW+97Y0MwqLpMMuMnorJjsG6FHd5G31qSw
	l26GOjMUqn7bGGd91pYcAU4aX0JJusf7kNDRtGzrrJviYaB7HmzV7E4jyGIHgc9HIQGW
	6DJSm2fVzs7yvUxWO1RvrD6A0kZOD+JjbdxAkJAvxSOn7h05ToRpO8hm17iPwOfHdzh/
	lN/Q5vF8ArtXXWcqQk6emY+g2tTmVnxii9ty2MPnDVrKZuQXBUPRfdRRBrJY2b45ED/+
	vC4W7rLOERHC/7fSiHJ9TD1BNJ9Fjts17vU8D1JbryVQzDQc9yxR/KxfOrgT6u1p0iHz
	Qmsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XbX6kD6mC6EEIy9oVrAwRz2eG5PUgkm65B8ZVGzJV7c=;
	b=pBLb0ncSDsxjB+ch5pI77Jts/hGHSqipLodkVPVlafdKpvJpH9tnBYpC/uqwJbhbYQ
	2igwxhmI8TJ2lmikaix//rZRFx0pB9i7Q7SwAkbdyxnvrZePcxYrGOFHJQ3R1EVTKPgf
	rzccF1QbQ72PEl9hjS0Cb7yB2mRWce32AH/VCm8Nq25wZvsOHMn0k9tfBf+NCi4gB7Gp
	nwgAcJR/1NzTvf2geuGmrNkaPqqI4ioJ62Qeg1pgdf3k/xe6x84Yw3Lire+cvE9e/HGD
	mg9MSInaN6Kvl4awBBgNSxRRapVmOwgKPw5CS/61S7lOQ54pZi14PZ6wBPxGMarhZZjR
	8zIA==
X-Gm-Message-State: AMke39kgaozUclun6U2xbplZbMbGyppqNxREkvSalHMrF7Eb/A8YA+rWRd7/Iy51PlunffN/AnbRl9YntdYaeA==
X-Received: by 10.25.233.21 with SMTP id g21mr4960309lfh.130.1488472460332;
	Thu, 02 Mar 2017 08:34:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.228.14 with HTTP; Thu, 2 Mar 2017 08:34:19 -0800 (PST)
Received: by 10.25.228.14 with HTTP; Thu, 2 Mar 2017 08:34:19 -0800 (PST)
In-Reply-To: <CAF1M0z7UKFzAovgMYd_BWPTi2nWQQ69AjSVOvCO_j0Bej=iTGA@mail.gmail.com>
References: <CAF1M0z6zfKC8QZsmfyCrf_zoSdzomeNa9SciPdGgaZpR+X3Tqw@mail.gmail.com>
	<1488469685.28256.36.camel@linux.intel.com>
	<CAF1M0z5VQxpnDurb7aW3DynL22-PnXo=MGMrvtaZ7ExsTMjK7g@mail.gmail.com>
	<CAJTo0LZTwVepmvsQTWNAW0gJiMtsYp9bF8Xa92oEP_gWW4QU2Q@mail.gmail.com>
	<CAF1M0z463Yg9KWPW8pvm+8svGxPrhGbqx8X+gurvO_VxmxOeCA@mail.gmail.com>
	<CAJTo0LYKK6HGgvg-qV4BgXxf5=43X=tEv8y-ncnpV6nC8S5M4A@mail.gmail.com>
	<CAF1M0z7UKFzAovgMYd_BWPTi2nWQQ69AjSVOvCO_j0Bej=iTGA@mail.gmail.com>
From: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Thu, 2 Mar 2017 22:04:19 +0530
Message-ID: <CAF1M0z5ysszrpJ7XJR9uiNurKG-=o64G_kvbcOWE+sC15_Bufg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org, Paul Eggleton <paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Thu, 02 Mar 2017 16:34:26 -0000
Content-Type: multipart/alternative; boundary=001a113bdfc64196ae0549c200cd

--001a113bdfc64196ae0549c200cd
Content-Type: text/plain; charset=UTF-8

Thanks Ross for quick glance.

On 02-Mar-2017 9:56 PM, "Burton, Ross" <ross.burton@intel.com> wrote:


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

--001a113bdfc64196ae0549c200cd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks Ross for quick glance.</div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On 02-Mar-2017 9:56 PM, &quot;Burton, R=
oss&quot; &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.co=
m</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"gmail_extra"><div class=3D"quoted-text"><br><div cla=
ss=3D"gmail_quote">On 2 March 2017 at 16:25, SatyaNarayana Sampangi <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:satya.2891@gmail.com" target=3D"_blank">sa=
tya.2891@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div><br></div><div>Pls go through this link,</div><div><br></div><div><a h=
ref=3D"https://www.yoctoproject.org/product/meta-ti-bsp-layer" target=3D"_b=
lank">https://www.yoctoproject.org/p<wbr>roduct/meta-ti-bsp-layer</a><br></=
div><div><br></div><div>very clearly mentioned=C2=A0</div><div></div></bloc=
kquote></div><br></div>Clearly the meta-ti maintainers should update the si=
te.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">(C=
Cing Denys)</div><font color=3D"#888888"><div class=3D"gmail_extra"><br></d=
iv><div class=3D"gmail_extra">Ross</div></font></div>
</blockquote></div><br></div>

--001a113bdfc64196ae0549c200cd--
