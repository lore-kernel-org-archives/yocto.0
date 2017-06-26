Return-Path: <kenny@understoryweather.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CA38E009C2; Mon, 26 Jun 2017 16:35:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E33E5E00524
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 16:35:23 -0700 (PDT)
Received: by mail-vk0-f54.google.com with SMTP id r125so8472238vkf.1
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 16:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=understoryweather-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=2FNcfpLqNob6/M1OiGZBbzqGdJz7wnDcFQSm7myG3jY=;
	b=YD5xEjHhak06vaz7OuiokG+yD22xRjqfOzDnLDLgZlp0+iYC9mQ164mBbXkuHpKJKK
	M9LIrcs2fRWa+C8xrbWfQxSd7O3d1r3zi1wISGiAW/sQqpPErk9YEbuVX1m6zjOLJq3A
	ncDJNbe0I1fNxS5mkc1B/RAF/30gehTDwTb7ftCjrNbZholYw4F/84BBRefy1vzB/JYZ
	ZLmBT9xAQTkiv3oSvAlohOs6K1o/0A+YQJOe3gAfR4iheIkG6EZ0rDoL8wuYFE6Jrx5z
	GyhB81yFHgZahmTqb0hpKGdc1MVg6FbqJ9Ra2GBgdZX1wybHQs5vKU0OdxWpty9ILscz
	Gb6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=2FNcfpLqNob6/M1OiGZBbzqGdJz7wnDcFQSm7myG3jY=;
	b=Inr92gZhbx2rhQiHf82X0XEA5wq0uM04zFSeQgfJnNAIKVnZ9RKjzcEuR31mp/PdXF
	/yhjJFf48h3/UHr8HsvLwvQeDy4SK2VHpacPjsUvtriFGXwoMF5mptXpZB6EesUvsIRs
	XmjJQFNeS6KZGK7WUzC9RlfGrBSPYD21F/26YIF7P8GPZYYN9K3DdJiibrsJTDd2rmkW
	ClgRi3v1z3B9dbwDQ015o5LcsbT4Gj/8jKz1V79BYCDVvsZxTPLFixF8yLs6skDKd/6V
	1UJTscGKs/284/raBraLW/sYXOYYTkX9wHz8PTsKyWRFVQRKbn7J9rB20Ew4ai91/F/U
	lGNw==
X-Gm-Message-State: AKS2vOw1dq3qfj+MGbylcavgslZIPy3oyrVRpkVscACvsSkymiv7lHlE
	R6GD2Eh5Lnj9/IaLKASpV6C820hJ6kTVEB8=
X-Received: by 10.31.10.198 with SMTP id 189mr1426679vkk.36.1498520122222;
	Mon, 26 Jun 2017 16:35:22 -0700 (PDT)
MIME-Version: 1.0
From: Kenny Koller <kenny@understoryweather.com>
Date: Mon, 26 Jun 2017 23:35:11 +0000
Message-ID: <CAPtqgUzbiQXyvU7qVy95ibN_xpYU7=NyxvjnRUHqRSPOo3Eo4Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Determining the correct layers for a Beaglebone build.
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
X-List-Received-Date: Mon, 26 Jun 2017 23:35:24 -0000
Content-Type: multipart/alternative; boundary="001a1144132292ff120552e56771"

--001a1144132292ff120552e56771
Content-Type: text/plain; charset="UTF-8"

I'm trying to figure out which set of meta layers I need to build a distro
and images for a Beaglebone Black.

I cloned poky and within I see meta-yocto and meta-yocto-bsp. The latter
has recipes for the Beaglebone.

I also found this page which suggests cloning meta-yocto:

https://www.yoctoproject.org/downloads/bsps/pyro23/beaglebone

Then there is meta-ti. Where does this fit in?

Also when I clone say poky should I checkout the branch or a specific tag?

It's not clear to me the best way start with a piece of hardware then
determine the correct layers.

Thanks.

--001a1144132292ff120552e56771
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m trying to figure out which set of meta layers=
 I need to build a distro and images for a Beaglebone Black.</div><div><br>=
</div><div>I cloned poky and within I see meta-yocto and meta-yocto-bsp. Th=
e latter has recipes for the Beaglebone.</div><div><br></div><div>I also fo=
und this page which suggests cloning meta-yocto:</div><div><br></div><div><=
a href=3D"https://www.yoctoproject.org/downloads/bsps/pyro23/beaglebone">ht=
tps://www.yoctoproject.org/downloads/bsps/pyro23/beaglebone</a><br></div><d=
iv><br></div><div>Then there is meta-ti. Where does this fit in?</div><div>=
<br></div><div>Also when I clone say poky should I checkout the branch or a=
 specific tag?</div><div><br></div><div>It&#39;s not clear to me the best w=
ay start with a piece of hardware then determine the correct layers.</div><=
div><br></div><div>Thanks.</div><div><br></div></div>

--001a1144132292ff120552e56771--
