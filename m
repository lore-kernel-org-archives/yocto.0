Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F88FE00C9D; Thu,  4 Feb 2016 04:51:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1FB8E00C9E
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 04:51:06 -0800 (PST)
Received: by mail-io0-f180.google.com with SMTP id g73so91357463ioe.3
	for <yocto@yoctoproject.org>; Thu, 04 Feb 2016 04:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=RckgEfpmKjzi4WrzpJIUk62Cme/H3Uy2rB1fZegxjYE=;
	b=ofwEa0DpsABPKMvWX7pnzh0WBY+SejwJLeCF+W9rtYf++lVFjBqfMmmwJlNK+qJxFc
	a4VUK/Lc415b91jLuJcA5Zm4ueuX8q3emlg1Suf9NviTwAvFhxmFAvReAZCIsNnN85YG
	dhJ8zzbx7i4VWZn1l+Fu6ISWN5mYCWfhwA06F08L5uErYHq562SG05xNYfRv/l2qrJT+
	vYmQNrjnnwM37FdxyvptLohEJIBmgxUnyCuVLVtsE1iKUH48tXrQnzp05oo1vUfRRegJ
	jr8wQvOPsg75iH/KdTD/W7soZ1xqXRDZtG+pKqXHRxBuv6vRVrIlaaiNFVoQ0XawdzO3
	thxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=RckgEfpmKjzi4WrzpJIUk62Cme/H3Uy2rB1fZegxjYE=;
	b=bhDWTakg91c6GI5ChY5a4HQ6wXWBGts1uuel7E9EnDvzY3bqoAFXvuIosIPyQT3XnQ
	IvfGPKHaiJe3tl7mqIbj01Tu+c9rWLB9XjgU/gr8PYuTWoJJpALtwnp0T7obtg0klh6s
	sM//a0c8jmSYHTX8nEhHmQaVvjLL093FEMEyDlZn2OuI6iv3ArUgzZyJkNRcP6KJOpPZ
	32lTHvSfMQdeHLuY4npnNgueTS6z2ruaf0FUM4Z0JAIUUkN8C+2/wJA8SHYL3NjFLF2d
	kWIJ2t3UlauWeXrTDxvpBshlJD6ab9OX3juPJaGuApnvt984Ki4TacJ26If3nqGNEUSZ
	oYcg==
X-Gm-Message-State: AG10YOTQksxyXwcE4ihcPqyHDQ6ZBZuZ/jkc+LpEWTNfbvsoVDwFWtM9JvuN+c9L0Srh2Bi9XuIFfo/t2ZcFwleP
X-Received: by 10.107.164.15 with SMTP id n15mr8079730ioe.148.1454590265608;
	Thu, 04 Feb 2016 04:51:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Thu, 4 Feb 2016 04:50:46 -0800 (PST)
In-Reply-To: <op.yca68zpvmnlnty@pc-mls.ecafaros.local>
References: <op.yca5dm1gmnlnty@pc-mls.ecafaros.local>
	<CAJTo0LbbiN_wp+f0xB9r1BdAPWaR8NghWUDsXXUpO9QeJ+mBCQ@mail.gmail.com>
	<op.yca68zpvmnlnty@pc-mls.ecafaros.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 4 Feb 2016 12:50:46 +0000
Message-ID: <CAJTo0LYi2e573yLynpR2xJAJxX7eqad-dtv72KoaPWGhj7q=6A@mail.gmail.com>
To: idealsim <idealsim@laposte.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto and linux mint 17.3
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
X-List-Received-Date: Thu, 04 Feb 2016 12:51:10 -0000
Content-Type: multipart/alternative; boundary=001a11377682136033052af130ae

--001a11377682136033052af130ae
Content-Type: text/plain; charset=UTF-8

On 4 February 2016 at 12:49, idealsim <idealsim@laposte.net> wrote:

> I don't think, probably install by default ! do you think i can remove
> python 3 to solve the problem ?
>

You can if you want, but there's no need. You just need to ensure the
required libraries are available to python2.

Ross

--001a11377682136033052af130ae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 4 February 2016 at 12:49, idealsim <span dir=3D"ltr">&lt;<a href=3D"mail=
to:idealsim@laposte.net" target=3D"_blank">idealsim@laposte.net</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div>I don&#39;t think, probab=
ly install by default ! do you think i can remove python 3 to solve the pro=
blem ?</div><div class=3D"yj6qo ajU"><div id=3D":8y0" class=3D"ajR" tabinde=
x=3D"0"></div></div></blockquote></div><br>You can if you want, but there&#=
39;s no need. You just need to ensure the required libraries are available =
to python2.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">Ross</div></div>

--001a11377682136033052af130ae--
