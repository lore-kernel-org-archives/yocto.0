Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73C99E00CAE; Thu, 24 Nov 2016 03:15:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.181 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59DCDE00955
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 03:15:10 -0800 (PST)
Received: by mail-qk0-f181.google.com with SMTP id n21so45850122qka.3
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 03:15:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vHiLPDn2iv7u2x27zNsvma8EAc/M4BILfHDNQ1bjt28=;
	b=RwRViYfhm+RMcKpKo0DPiSWMtxrhs4Xf8mOgJNID0lq2QUx4qFtGAZ09PUAEKJvJ7H
	NX2khfMFmb6CJVMR9SvY1wqufaNfDYDVlCq5u2IydrtbD6K/gxAJBxaXexdT73+qGmXZ
	mDHwTWsjWvj9n5onxcYwa1e7qN4jH6ZnUExo901zvvmmEnzGGkYgZhjk9h/i8PE+H69I
	Iam66z7qu/E5Yly4lsLQPom1zpfRUEwafp1lEoI5NB7RR7DzEV4c/MFO9sXytcI35QTP
	o4WtC0GjZ4GNGVyupxRWrgxopVxWsKg3Bm/Tst5dMLlOCVRIUrJ8T0ewWLM8yCIaeEZz
	y9Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vHiLPDn2iv7u2x27zNsvma8EAc/M4BILfHDNQ1bjt28=;
	b=d4o3/NSr364voo4O2e3wwU1e9VghEsYCYanpWOQ56KxtQ0+BjeLO8Oxf40CM8L/JZ7
	z/Q2rMky1VO0c5VDxveRf49erokQN0NvYQEYTwDJnLoi5Ki1roG4ch0J11xenLp9EHVI
	k3lRI5dHWpUg8BJzqIfOQ/Jepx3ADGz8dUHCCIKiqIOBRX+3TtU/5UnsuDeFE8f3FJGF
	0v+jUMCQdt9717iP+etKkhL0wCmjEF+LRXvYZy/5E7BiU3X3AaLD3ENXYhDwqy9nG04Q
	Qg6AVUgs5cpEIsT6tpe3y21D6dWsUz4HKv06T1BPQxsSqwKc4x71uQKbu8o7W3e/hGRM
	0KRg==
X-Gm-Message-State: AKaTC01GOZlSw+b+fBJnlaagPmNwvC6j2Mal0DsUf2c79aDulM86twxQP61XpnN39fjS9xPQurNZ3kcNzDpXAzwU
X-Received: by 10.55.8.20 with SMTP id 20mr1514163qki.3.1479986109402; Thu, 24
	Nov 2016 03:15:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.85.136 with HTTP; Thu, 24 Nov 2016 03:14:49 -0800 (PST)
In-Reply-To: <823264942.1789329.1479984190440@mail.yahoo.com>
References: <1587381958.322993.1479895234059.ref@mail.yahoo.com>
	<1587381958.322993.1479895234059@mail.yahoo.com>
	<CAJTo0LbHi-79qj7B9PoOt0jyLaxeHU6aUTwwaiOsiXbi1Ra4xw@mail.gmail.com>
	<823264942.1789329.1479984190440@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 24 Nov 2016 11:14:49 +0000
Message-ID: <CAJTo0LZZ_53Jk5y4XCVmxNhUSPZtC=nGubuKfH3rC-ChEOJJ7g@mail.gmail.com>
To: Oliver <urnen81@yahoo.es>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Use recipes but not whole layer
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
X-List-Received-Date: Thu, 24 Nov 2016 11:15:13 -0000
Content-Type: multipart/alternative; boundary=001a114c9d6052e5a705420a1e05

--001a114c9d6052e5a705420a1e05
Content-Type: text/plain; charset=UTF-8

On 24 November 2016 at 10:43, Oliver <urnen81@yahoo.es> wrote:

> In order to success in generate recipeA, I need to extend the boost to
> expand some configuration parameters(log).
> On the other side someone would like to use recipeB. He/She will
> unwillingly inherit the boost modifications.
>

The changes to boost would likely count as distro policy, so shouldn't be
in the same layer as a generic purpose recipe.

Ross

--001a114c9d6052e5a705420a1e05
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 November 2016 at 10:43, Oliver <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:urnen81@yahoo.es" target=3D"_blank">urnen81@yahoo.es</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div id=3D"m_-3770428484090169041yui_3_=
16_0_1_1479983373001_6316" dir=3D"ltr">In order to success in generate reci=
peA, I need to extend the boost to expand some configuration parameters(log=
).</div><div id=3D"m_-3770428484090169041yui_3_16_0_1_1479983373001_6055" d=
ir=3D"ltr">On the other side someone would like to use recipeB. He/She will=
 unwillingly inherit the boost modifications.</div><div id=3D"m_-3770428484=
090169041yui_3_16_0_1_1479983373001_6456" dir=3D"ltr"></div></blockquote></=
div><br>The changes to boost would likely count as distro policy, so should=
n&#39;t be in the same layer as a generic purpose recipe.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114c9d6052e5a705420a1e05--
