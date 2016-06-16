Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86CA8E00D26; Thu, 16 Jun 2016 07:07:25 -0700 (PDT)
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
	*      [209.85.223.178 listed in list.dnswl.org]
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B995E00D15
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 07:07:22 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id 5so51364889ioy.1
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 07:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dGRcoT0vMO9gBTyhOpoyWqckbP48zsxYBXUc4IInDQI=;
	b=fwAIsWZEAKkmKT/4c0P3QUUjiw4QrnORs/QjkdqMzdRFK6s9B6/UsgUnHh1HXNRQj/
	sQDjDoG1SrVVK2BO5Dzai2/uraRMMd9Ozod2PukxFK6FczstuK1C44Wox2Jr0h4Rl5AG
	/ooaj+/0hgQSnAB1pQOlLpXSiAwWRJmFhbGnSa1jHECXgM0i+N/cn/kutED24WB4wxGH
	mndBxcO5KEMXVpQmOp8B2MwaNAuXiy2xqa+4jAFkYllznEdnUZ9xRWrBKZg+ArVxpcId
	2Gzgmu/COGIziT+y1cjO6rqtEhzVKvkSEFoOYT7WnTYK9gHy9kZtVcWXdZWHNsjmu60v
	W2cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dGRcoT0vMO9gBTyhOpoyWqckbP48zsxYBXUc4IInDQI=;
	b=SXyK6GQgkNxDXuUZI65LG76i0GlkGhEoFidjuCw8nR5SpYJTS0qSNnGd01B6Rwexwi
	yO+siy6Bm7b5LZrKfs0+hCUW7hwckRsY44OhRZ5wjmgxm7UAafLzJfJGZGrcVa985XtE
	z/ZsR2ufpyG2oywWlyVcA0rFIMM9zR6e3SCHg3ipLVjcwBgNAD8y9HCYpQ7E4FxctEnD
	o4Z8yhsgcBVaVjZon6LHD6e34R+j/uVNUnTyrZJvmzzDTEfsVgVXIaD2oFx5bxJ1dASb
	9WyXIF+dqQolAfoPtLBVKa2Rb8NKbcYtZYHIcxYtnoQ5L+sFp3cRmLwTWJaIzXt/TYXU
	Nmcg==
X-Gm-Message-State: ALyK8tJy5tp4h7NPuITayaJ/yzS62elDZ2yh7HppXnmr/K/uTx3j6Lep11EjY+UnLUfreieN8m2HdOGSQyv3G+Ij
X-Received: by 10.107.135.137 with SMTP id r9mr8490670ioi.133.1466086041623;
	Thu, 16 Jun 2016 07:07:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Thu, 16 Jun 2016 07:07:02 -0700 (PDT)
In-Reply-To: <CAHiDW_FyYABS991_rp2jBUNSE8dYOAQn-5_wOvY+AxudwCcrOQ@mail.gmail.com>
References: <57629F4A.4000403@mlbassoc.com>
	<CAHiDW_FyYABS991_rp2jBUNSE8dYOAQn-5_wOvY+AxudwCcrOQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 16 Jun 2016 15:07:02 +0100
Message-ID: <CAJTo0LaG6K-iVJhJV+oFALHhWh-t88TtvGbv9MWKzH_buXTLqQ@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: Switch to GTK+3
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
X-List-Received-Date: Thu, 16 Jun 2016 14:07:25 -0000
Content-Type: multipart/alternative; boundary=001a113ec842b8bce5053565c18f

--001a113ec842b8bce5053565c18f
Content-Type: text/plain; charset=UTF-8

On 16 June 2016 at 14:53, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:

> Now, the default configuration is to build only support for Gtk+3 but it
> is possible to support also Gtk+2 by adding "gtk2-im" into the
> matchbox-keyboard PACKAGECONFIG. This is not done by default to prevent the
> keyboard from bringing gtk+ into the image if nothing else requires it.
>

If we split the gtk2 and gtk3 IM modules into separate packages then both
could be enabled with the cost that both gtk2 and gtk3 will be needed at
build time.

As Jussi says, it's all a tradeoff, and the current work is towards
removing gtk+2 from Sato images entirely.

GSettings is still something we might want to bring in (as a replacement
> for GConf which is deprecated), but that means a little porting work on
> matchbox components. The GtkDialog message is probably from gtk-play and
> should not be an issue.
>

In particular the recipe here would be dconf, so that GSettings (part of
GLib) has a persistent data storage.  I believe dconf is in meta-oe already.

Ross

--001a113ec842b8bce5053565c18f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 16 June 2016 at 14:53, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@intel.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>Now, the defau=
lt configuration is to build only support for Gtk+3 but it is possible to s=
upport also Gtk+2 by adding &quot;gtk2-im&quot; into the matchbox-keyboard =
PACKAGECONFIG. This is not done by default to prevent the keyboard from bri=
nging gtk+ into the image if nothing else requires it.=C2=A0</div></blockqu=
ote><div><br></div><div>If we split the gtk2 and gtk3 IM modules into separ=
ate packages then both could be enabled with the cost that both gtk2 and gt=
k3 will be needed at build time.</div><div><br></div><div>As Jussi says, it=
&#39;s all a tradeoff, and the current work is towards removing gtk+2 from =
Sato images entirely.</div><div><br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><d=
iv>GSettings is still something we might want to bring in (as a replacement=
 for GConf which is deprecated), but that means a little porting work on ma=
tchbox components. The GtkDialog message is probably from gtk-play and shou=
ld not be an issue.</div></blockquote></div><br>In particular the recipe he=
re would be dconf, so that GSettings (part of GLib) has a persistent data s=
torage.=C2=A0 I believe dconf is in meta-oe already.</div><div class=3D"gma=
il_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113ec842b8bce5053565c18f--
