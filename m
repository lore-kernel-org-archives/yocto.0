Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A365CE00C31; Wed,  3 Feb 2016 05:39:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 684E6E00C2E
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 05:39:55 -0800 (PST)
Received: by mail-ig0-f181.google.com with SMTP id xg9so1681841igb.1
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 05:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=RhtD0gYzIdnuWZiPCNMfcOZ0DOZQ4ELf/UHZor50pWQ=;
	b=lLecXY7L+1fjC+Czwg5+hw72vjrqz9K/h6A4rbv+cpc8uIW3nrAzB+oFCtnZVLn8jg
	LgGwaSjXwdsygnFdxpiCLOliHfButZimWPNOOQyxC1j0SDOpsIqtfZLzKCDOwYo+piR1
	98aGWWBjNUlMsU3GlxDuPXUmFTM82jd06zY1WNcnJB8honQ2Qzr4xAaFWFVqeGAPQ5Wg
	krTtaekIr2tEKFVBj1o34mCI6DY9M7s5TWL3JPpM0K0Y+YXN2YvlSFKGcANMSXjRWYul
	jTVmJxuoyKlm85quYNCLcMGxKWiHsfX57aXpCDxFrTLt7sEcYTzGkoXbKZiUV2qWPC3s
	Qp/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=RhtD0gYzIdnuWZiPCNMfcOZ0DOZQ4ELf/UHZor50pWQ=;
	b=DcIL6BahUQZnoaKEUMQxu3+LSSvgGUNUuNPzw1H7Z/XplV/9yKtMP0qTi5CyDUWcn0
	JWw1r7EgUZ5tQtgUvwwsJl3wObWOa55zycuZPwHYzvLyVhJ11o6H50VT+GxqQQAy06bQ
	mnUO3Gc9RgxH8/z13H/8AO85yEXotMO2iNM0h1C6ZvQp9hxmNVgCSs+PydRTFw6aBQJl
	T/jIb87834LphYYvbMdYxdFT76moIIDk+KBonlCvIVyBQBTy0Y9itK3DUvy2EqBaV0V6
	gLybHFwiKqx3gm2S7oxjjH9ZhcO6CaS+RS1mKRJG+fM93RFuBMYJ/ZODXd2ohfCCmBOf
	ikCA==
X-Gm-Message-State: AG10YOSExeW8Tozcdv0UCcUbxuvf/b+xp7ht1Sxa5wp/sV3jK+RjPgvK3s+IS2qBgS0VmsN9bB/ISOXbjhUA2Sy3
X-Received: by 10.50.23.108 with SMTP id l12mr3759174igf.78.1454506795170;
	Wed, 03 Feb 2016 05:39:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 3 Feb 2016 05:39:35 -0800 (PST)
In-Reply-To: <B24D68B6-9B3A-4E6F-8A17-5C8D0C8F4F60@nathan.to>
References: <B24D68B6-9B3A-4E6F-8A17-5C8D0C8F4F60@nathan.to>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Feb 2016 13:39:35 +0000
Message-ID: <CAJTo0Lb6aZ7393U2ctZ_W-uTCi5ZO3UD0NZ=ZEOsyNSZoB7WOw@mail.gmail.com>
To: Nathan Sowatskey <nathan@nathan.to>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Poky or oe-core instructions
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
X-List-Received-Date: Wed, 03 Feb 2016 13:39:59 -0000
Content-Type: multipart/alternative; boundary=089e0149cbe8d9b6c0052addc086

--089e0149cbe8d9b6c0052addc086
Content-Type: text/plain; charset=UTF-8

On 3 February 2016 at 13:27, Nathan Sowatskey <nathan@nathan.to> wrote:

>  - Which version of bitbake should one use? The one from oe-embedded, or
> the one from Poky?
>  - Are the latest versions shown in the oe-embedded instructions correct?
> They are fido for oe-embedded, and 1.26 for bitbake.
>

Poky is basically oe-core + bitbake + meta-yocto in a single repository for
convenience, which is why the poky instructions are shorter.

If you're using poky then you have the corresponding bitbake already,
otherwise use the relevant release.

Those releases are old: the current release of oe-core is 2.0 (codename
jethro), bitbake 1.28.0.

Ross

--089e0149cbe8d9b6c0052addc086
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 February 2016 at 13:27, Nathan Sowatskey <span dir=3D"ltr">&lt;<a href=
=3D"mailto:nathan@nathan.to" target=3D"_blank">nathan@nathan.to</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div id=3D":632" class=3D"a3s"=
 style=3D"overflow:hidden">=C2=A0- Which version of bitbake should one use?=
 The one from oe-embedded, or the one from Poky?<br>
=C2=A0- Are the latest versions shown in the oe-embedded instructions corre=
ct? They are fido for oe-embedded, and 1.26 for bitbake.<br></div></blockqu=
ote></div><br>Poky is basically oe-core + bitbake + meta-yocto in a single =
repository for convenience, which is why the poky instructions are shorter.=
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">If yo=
u&#39;re using poky then you have the corresponding bitbake already, otherw=
ise use the relevant release.</div><div class=3D"gmail_extra"><br></div><di=
v class=3D"gmail_extra">Those releases are old: the current release of oe-c=
ore is 2.0 (codename jethro), bitbake 1.28.0.</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">Ross</div></div>

--089e0149cbe8d9b6c0052addc086--
