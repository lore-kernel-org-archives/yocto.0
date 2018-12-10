Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 990B8E00C4D; Mon, 10 Dec 2018 02:23:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com
	[209.85.217.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 373B8E00C10
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2018 02:23:18 -0800 (PST)
Received: by mail-vs1-f47.google.com with SMTP id h78so6289551vsi.6
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2018 02:23:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=apzLsRYW3wvYGLtfoKeyck4RNk3LrbNZiGTnjRd4Mww=;
	b=fpo+gsqdPtgAmuWUFKblN8DzMAE3yOMqxeijxht9lwS+HhRnHR+spyJi2d0gjhRtTx
	62LeSB6T6roxTlWOs8XTe/E84m0IwNSuoV3BP9Cr7vNt1iDA3JBRgcR97UyDS1hp9lCQ
	SMYUMq0SK9IDuleG7QcpCG0GHzj8J1FzGeR1BDN6FezE7IREwco09MNSZqBWTXaztbhs
	PKbnGF9VGg7je/rs8GOVmIxl/abBah5hm6r5uz1QYOKmEh2F/i2G7uxb/RldCLuqzTsy
	qc+RhJ3Y7ZycChTY3QqPYwdhw3vVlCxC1XDHDmF38c3NiTBIEfvRfg4mmLonwf6Ph7MF
	TVrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=apzLsRYW3wvYGLtfoKeyck4RNk3LrbNZiGTnjRd4Mww=;
	b=ZH4riOPqMxZaSNKuEp/9NBTtR+TTgevWwx5y3aQqG4wssSwWP7DeXNWnuUBt79ktmp
	xvGzpDRRtgOqBm1jCJimovzatavvFS0A37qevJg9iyVuackroO2+cHlgcaihH4m2dLLi
	xsmg4M8sg1sN27P5xTKIVWuVHEc8L4B8mhfPM1cshebvOu8SjlrMbnrQCeuznN80Q41j
	ckN6DeEERWHMcBZNPOEL3B0C9tijVYHvZmsNkCzEMQ/rMgXmy8m1/sVJrHkSCnRyn0kq
	9SuC2whbRR3NVyGuLkES3WE6hravP5AVYfPd0y3kyaOJkIGGu6SunvcMDrUJYTY3s0JZ
	AzTA==
X-Gm-Message-State: AA+aEWao/dSbnxsWS45N/gD9tTv+i05leVWR49mk+NSLGvMsWAH+LKQT
	ocJ+qnPO9cSXHM7cMBqWSWA4z0S2JSTsT+YVDUIRdA==
X-Google-Smtp-Source: AFSGD/V0rYUKnPw9yeHbvtXKtUmNAlK+3JKaBqxPUbKFLQEOKUglGViyq17WOTYJ7hp6zKwF53L6pU9irYG7b27XGZw=
X-Received: by 2002:a67:2f81:: with SMTP id v123mr4993417vsv.12.1544437396996; 
	Mon, 10 Dec 2018 02:23:16 -0800 (PST)
MIME-Version: 1.0
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Mon, 10 Dec 2018 11:23:03 +0100
Message-ID: <CAKRytNzSNFQ17H-bRdzMnrcpWRW9Y05HB=zcXNLTm0XMPedehA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Some questions about mdns library (sumo branch, but also master)
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
X-List-Received-Date: Mon, 10 Dec 2018 10:23:18 -0000
Content-Type: multipart/alternative; boundary="0000000000006d0b73057ca85a81"

--0000000000006d0b73057ca85a81
Content-Type: text/plain; charset="UTF-8"

Hi!
I'm trying to use mdns library (
https://layers.openembedded.org/layerindex/recipe/72471/), however I have
some questions.

1) what is the purpose of "
files/0001-nss_mdns-Do-not-include-nss.h-when-libc-glibc.patch
<http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/recipes-protocols/mdns/files/0001-nss_mdns-Do-not-include-nss.h-when-libc-glibc.patch?h=master>"?
Is it really necessary?
2) Is it possibile to update it to the latest version in open embedded? I
updated to version 8xx.x.x and it seems to be ok, but I prefer to know if
there is a reason why it is still at 7xx.x.x.
3) Inside the mdns receipe there is a reference to "libnss_mdns" but it
seems fixed to version 0.2. On open embedded there is version 0.10. To use
mdns should I install libnss 0.10?
4) How does mdns library manage IPv4 Link local? Is there something to
configure or packages to add to receive a link local address after 60
seconds?

I'm asking about mdns and not avahi, because I want to use the official
Apple library instead of Avahi. Do you have other additional suggestions
about this topic?

Thank you.

--0000000000006d0b73057ca85a81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div>I&#39;m trying to use mdns library (<a =
href=3D"https://layers.openembedded.org/layerindex/recipe/72471/">https://l=
ayers.openembedded.org/layerindex/recipe/72471/</a>), however I have some q=
uestions.</div><div><br></div><div>1) what is the purpose of &quot;<a href=
=3D"http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/rec=
ipes-protocols/mdns/files/0001-nss_mdns-Do-not-include-nss.h-when-libc-glib=
c.patch?h=3Dmaster" style=3D"box-sizing:border-box;background-color:rgb(255=
,255,255);color:rgb(51,122,183);text-decoration:none;font-family:&quot;Helv=
etica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;font-style:norma=
l;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px">files/0001-nss_mdns-Do-not-include-nss.h=
-when-libc-glibc.patch</a>&quot;? Is it really necessary?</div><div>2) Is i=
t possibile to update it to the latest version in open embedded? I updated =
to version 8xx.x.x and it seems to be ok, but I prefer to know if there is =
a reason why it is still at 7xx.x.x.</div><div>3) Inside the mdns receipe t=
here is a reference to &quot;libnss_mdns&quot; but it seems fixed to versio=
n 0.2. On open embedded there is version 0.10. To use mdns should I install=
 libnss 0.10?</div><div>4) How does mdns library manage IPv4 Link local? Is=
 there something to configure or packages to add to receive a link local ad=
dress after 60 seconds?<br></div><div><br></div><div>I&#39;m asking about m=
dns and not avahi, because I want to use the official Apple library instead=
 of Avahi. Do you have other additional suggestions about this topic?<br></=
div><div><br></div><div>Thank you.<br></div><div><br></div><div><br></div><=
/div>

--0000000000006d0b73057ca85a81--
