Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BA30E00C52; Mon, 22 Feb 2016 07:59:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 943E2E00CC7
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 07:59:04 -0800 (PST)
Received: by mail-io0-f181.google.com with SMTP id g203so181503711iof.2
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 07:59:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=I4pHAGP6ncHeX9WP2Qm2MRyIFT/Txto6I35m5JjJtss=;
	b=ALYumyeDJCCtSq8r8oRNIRM7h0gGqTYunU4o5mv4/PaVxDfvuCg1NTnZD2ZHlR8GY8
	uCRF7zN+xETTZyF2E3zHAPCUqX2C7NLubYBwWvjtuArSVPY1w1q9tjWx+hwYfUtQ1rxB
	x+9BFFY7kYwRoKivooHil0UoJnrzqloWNziy8NLH7TSSn4Geq3VbfxxEBtu/WD3hwHTH
	an0XQwcEEkKnO2knT602j9cpj2s5y4mclkcX/GjGp2HenFa5dQdHvCE0rekOeegkhcnb
	avKcoEQkkgN3bEjwKOkTYAgjOPaRK74SggwJ11808CQ/ZYwn2swlfMmqW9/7aTVkQKM7
	FPug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=I4pHAGP6ncHeX9WP2Qm2MRyIFT/Txto6I35m5JjJtss=;
	b=VYBiYlvg8rQZpLfGS5GIF2ynoEqSt8WCaX2CG3NKoGBTNIN9aotshMB/F6rrTyVNBZ
	m7LlCNgLEgqHeeaUjbKhz/0e0P/JVcsVOY8UorSZTLanOzdrG9qk/4D8YNoBvWUd3Mcp
	ILtPdQaOZpLy9uiEVqScO3vVlcP7g8tN40SKYUgiKn1dVBiLr+edBtS+TvG3yyw5YsAF
	/wnxF6qKuWEcu0CTkbUYEz1E9DrScA7BFHCckjwLEWD1owYsGweM5C1LqCnTwLWxYhFU
	ijGP3ths5u3MCUFmyp9MnE85pkT3v5dEaHELsY7O55ouPyEvPz5+95wbXKZjOO3klBPY
	WHsQ==
X-Gm-Message-State: AG10YOScIA+OBpp53TEfJb7Q5Bqyk05OmWt2Gha6WsyDSF2qzN4LOAjUHeIeXwwah6npCznUWYNL76GGPbX4GDXh
X-Received: by 10.107.137.92 with SMTP id l89mr31884121iod.133.1456156743575; 
	Mon, 22 Feb 2016 07:59:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 22 Feb 2016 07:58:44 -0800 (PST)
In-Reply-To: <20160222153336.GB2255@mentor.com>
References: <1455922741-3342-1-git-send-email-radzy@windriver.com>
	<56CB1DC8.1030505@windriver.com> <20160222153336.GB2255@mentor.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Feb 2016 15:58:44 +0000
Message-ID: <CAJTo0LY7D1o9+9mU13DdEnK_h4SjZPX3+jph5A4fXny_HSHuoA@mail.gmail.com>
To: Joe MacDonald <Joe_MacDonald@mentor.com>
Cc: "T.O. Radzy Radzykewycz" <radzy@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH] swig is in meta-oe, remove this copy
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
X-List-Received-Date: Mon, 22 Feb 2016 15:59:28 -0000
Content-Type: multipart/alternative; boundary=001a113ebdb4704143052c5de983

--001a113ebdb4704143052c5de983
Content-Type: text/plain; charset=UTF-8

On 22 February 2016 at 15:33, Joe MacDonald <Joe_MacDonald@mentor.com>
wrote:

> I'm also not against removing the local copy (I don't think it adds
> anything to the layer and occasionally causes headaches), but I really
> don't want to make meta-selinux dependent on meta-oe components, so I
> guess I'm voting for keeping it.
>

Luckily it's also in oe-core (meta/recipes-devtools/swig/swig_3.0.8.bb).

Ross

--001a113ebdb4704143052c5de983
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 February 2016 at 15:33, Joe MacDonald <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Joe_MacDonald@mentor.com" target=3D"_blank">Joe_MacDonald@mentor=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,=
204);border-left-style:solid;padding-left:1ex"><div id=3D":ata" class=3D"" =
style=3D"overflow:hidden">I&#39;m also not against removing the local copy =
(I don&#39;t think it adds<br>
anything to the layer and occasionally causes headaches), but I really<br>
don&#39;t want to make meta-selinux dependent on meta-oe components, so I<b=
r>
guess I&#39;m voting for keeping it.<br></div></blockquote></div><br>Luckil=
y it&#39;s also in oe-core (meta/recipes-devtools/swig/<a href=3D"http://sw=
ig_3.0.8.bb">swig_3.0.8.bb</a>).</div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra">Ross</div></div>

--001a113ebdb4704143052c5de983--
