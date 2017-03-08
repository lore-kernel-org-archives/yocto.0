Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30488E00804; Wed,  8 Mar 2017 07:44:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.178 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B380E007AA
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 07:44:29 -0800 (PST)
Received: by mail-qk0-f178.google.com with SMTP id y76so72143328qkb.0
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 07:44:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kuR25mHlGkQkPzIrnC08/TKtP2UrxQal0yBu4YmFcvk=;
	b=pUAe5HgzlQbiNB5tkqAZlzmFJaZCKsdeHVRErZe0Y3C5C+Pz5V6+wa/p+jxLpyAF/F
	l5Gy5N5NE76xHrUwlDOPGGtaxNQz6H6UqGAm8KNIUf6Vhq0omvGJrZ1/PIqGvB9dUtJb
	nhpIM/KvoMa+AklAbyqscRTJnD5TG0G8Atz0/enayf5ysvJVn6V260mxKHemmXVK4aEc
	iFgk11ILiz/jmAig032DMJMVoq+JX9EPjpOy/MJr9Attf25LcrbUwuhrXPuUu+tL9qFw
	F98DWVj6OAjK9tW0CPHMPqwJXcxDQMlVzjaIPCob4FEG/XgigLPsZmV8expPh24+tYrY
	g7qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kuR25mHlGkQkPzIrnC08/TKtP2UrxQal0yBu4YmFcvk=;
	b=l1ArUUqhypKfb/Nj2NeHGnw6/RedfcHLhP7EqfiDV64bN58Tpkb9/3UuvmO+bDpPyl
	whtmvmTDB6yTbEg2cymNTzDH28C5taWd70ouBsve1uJqOHCDPMAD130kKdOHxorWcwRq
	xMxRjE9CrNJCev6BnqcERWXnXwctmGqOdJJ9ZF/+P5eIpxXzFHtRNEWkRJv6MHIHNxrs
	aGg1tW+MCrK1xjm4e7losrfiTG9/xo34CdSQT0YSWXuJusOb289dRqgx/zXcuUmFVZtS
	YirKUrnHn2TiyvEzXhdSiSXagLDbS1RmHLSuFe8D05KgvaKRt2GAdG94JtdxP6CBO2XT
	Mhuw==
X-Gm-Message-State: AMke39lZOx4rG2Rbx5ekQihV4GQi+4WTzLJB8PJ5hIx/9RylPKveOjvn3GJV8jrGeYaYFtsLLCZi1KWxctA/Xzns
X-Received: by 10.237.42.164 with SMTP id t33mr8650294qtd.105.1488987869107;
	Wed, 08 Mar 2017 07:44:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Wed, 8 Mar 2017 07:44:08 -0800 (PST)
In-Reply-To: <CAJTo0LbmYV=_CZU66+iuq9PQn0pXq1U9gZnB_jbsk8s=1Z7H0g@mail.gmail.com>
References: <5b2fcd4d-acd2-bfe3-5d91-1f713054ad92@fridu.net>
	<CAJTo0LbfX7tfNxuBB2df3XYvM2zKEDis4zMtpD3KcgEaQtJk3A@mail.gmail.com>
	<CADG2P4VOkc=f6-F8GwqM91MHY9Trw8A=7XU0skohOnsAxP+zJg@mail.gmail.com>
	<CAJTo0LbmYV=_CZU66+iuq9PQn0pXq1U9gZnB_jbsk8s=1Z7H0g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 Mar 2017 15:44:08 +0000
Message-ID: <CAJTo0La9Oc2Yzkv2+vXmXuihgy9kO16COOmfOwqx-=Kvgsh=Eg@mail.gmail.com>
To: Dominig Ar Foll <dominig.arfoll@fridu.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gst-plugins-bad- Patch fails 'ensure-valid-sentinels-for-gst_structure_get-etc.patch'
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
X-List-Received-Date: Wed, 08 Mar 2017 15:44:36 -0000
Content-Type: multipart/alternative; boundary=94eb2c0cfe220388f1054a3a014c

--94eb2c0cfe220388f1054a3a014c
Content-Type: text/plain; charset=UTF-8

On 8 March 2017 at 15:38, Burton, Ross <ross.burton@intel.com> wrote:

> When 2.3 is released it won't be using the git gst-plugins-bad recipe by
> default either.  I'll fix the recipe, but the git recipes are prone to
> breakage as they're not that tested.
>

In fact the git recipes are actually older than the default tarball
releases...

Ross

--94eb2c0cfe220388f1054a3a014c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 March 2017 at 15:38, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_extra">=
When 2.3 is released it won&#39;t be using the git gst-plugins-bad recipe b=
y default either.=C2=A0 I&#39;ll fix the recipe, but the git recipes are pr=
one to breakage as they&#39;re not that tested.</div><div class=3D"gmail_ex=
tra"></div></blockquote></div><br>In fact the git recipes are actually olde=
r than the default tarball releases...</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">Ross</div></div>

--94eb2c0cfe220388f1054a3a014c--
