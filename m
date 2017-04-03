Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E074E00AA5; Mon,  3 Apr 2017 04:21:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.171 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30C8EE00A4C
	for <yocto@yoctoproject.org>; Mon,  3 Apr 2017 04:21:34 -0700 (PDT)
Received: by mail-qk0-f171.google.com with SMTP id h67so11956923qke.0
	for <yocto@yoctoproject.org>; Mon, 03 Apr 2017 04:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vOOpQtpK5Rb5WTAZAsMwadZsDwVhsBI3N1zAmsPFMJc=;
	b=J3pF3GroX5B4584nEq5yczzfd6pSGp6iSwal4Pci7XJJQpanRsL7px3tQImoN6sC3V
	6SuGH/ww9USHIvEQSmHuJ10U0DVnTAG/Oge6rTJGc7IyTP2HBR6mNQiskPg60zvnRC0q
	Yl/7xhQbgr9fEZ1Gnuyu1ymJGpK2fXu8gRrC+VKivd3KAP+7CeKtZiMOOg1/3CCkdXpy
	JpVsrLzmsYclZFzlV2Sq3A1Q+d6Ej4jZ63c2R3NOsYZKihAjF4ZGUDDnDf+T9ej0vGqx
	NGI+nP6h+e4Lrm9nVI/J2E2dLfTRFzLu6V8SKsSeBvrZzlNCRsAMRwwh5p/G0p2143S8
	IzRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vOOpQtpK5Rb5WTAZAsMwadZsDwVhsBI3N1zAmsPFMJc=;
	b=mV7XrLrth2XMcoP46qHKVLQJtdYdrA4IzQQITZ6xau3qlY2V5KUzXJ+04zSaL3zAjw
	nbKKxQopXL71kTc47067I1ldi44oMlX0+o6JyP1irDnoEelTeOsVKe8S9kFmxOdZ6O7j
	IdWS+bq+PY4DCuo/EtVSxm4219m6AbWNGHO1pBYBtIhCTmi+9GbgB/Mtg3Rw/liJMJTp
	gMZVTP2a28m4Xl++SZM7dR2pFmbgrvRwEnki4n8r9QKJ1Quzjq+u4MQY1u8DK/NQ6Z6z
	hlqrJ4V5KWoEo3qo6byQeVzpsPYzNh63ShfpaWT5HYeSa/rHAXgVOLNN5WewhC8dgTOr
	KNqw==
X-Gm-Message-State: AFeK/H1UaEA69Um8ZD3ttEgZAygEzBbaRX93XhoAzi3Mfx3nYNi4BGduuZZ2TslzsukRP/f5owduORwkJa+zvYtl
X-Received: by 10.55.175.195 with SMTP id y186mr14608030qke.26.1491218494176; 
	Mon, 03 Apr 2017 04:21:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 3 Apr 2017 04:21:13 -0700 (PDT)
In-Reply-To: <0a9201d2ac6b$36b55fa0$a4201ee0$@ln-systems.com>
References: <0a9201d2ac6b$36b55fa0$a4201ee0$@ln-systems.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 3 Apr 2017 12:21:13 +0100
Message-ID: <CAJTo0LbeDVgV3mAq=hK4opN70zVyBZ+nwRHcXeNt+d6c4PFJ2A@mail.gmail.com>
To: Colin Helliwell <colin.helliwell@ln-systems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: xsltproc failing to load docbook.xsl
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
X-List-Received-Date: Mon, 03 Apr 2017 11:21:36 -0000
Content-Type: multipart/alternative; boundary=94eb2c06093ca0f0fc054c415cd9

--94eb2c06093ca0f0fc054c415cd9
Content-Type: text/plain; charset=UTF-8

On 3 April 2017 at 12:12, <colin.helliwell@ln-systems.com> wrote:

> I guess I could patch out the '--nonet' for this package, but wondered if
> there's a correct way to fix this - a recipe dependency needed and/or
> something installed on the host system?
> (I've done a 'sudo apt-get install docbook-xsl docbook-xml'; but can't
> figure out where it's expecting the file to be)
>

Our xsltproc won't be looking on the host for stylesheets, so depend on
docbook-xsl-stylesheets-native.

Ross

--94eb2c06093ca0f0fc054c415cd9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 April 2017 at 12:12,  <span dir=3D"ltr">&lt;<a href=3D"mailto:colin.he=
lliwell@ln-systems.com" target=3D"_blank">colin.helliwell@ln-systems.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-c=
olor:rgb(204,204,204);padding-left:1ex"><div id=3D"gmail-:m4" class=3D"gmai=
l-a3s gmail-aXjCH gmail-m15b3389019d162da">I guess I could patch out the &#=
39;--nonet&#39; for this package, but wondered if<br>
there&#39;s a correct way to fix this - a recipe dependency needed and/or<b=
r>
something installed on the host system?<br>
(I&#39;ve done a &#39;sudo apt-get install docbook-xsl docbook-xml&#39;; bu=
t can&#39;t<br>
figure out where it&#39;s expecting the file to be)<br></div></blockquote><=
div><br></div><div>Our xsltproc won&#39;t be looking on the host for styles=
heets, so depend on docbook-xsl-stylesheets-native.</div><div><br></div><di=
v>Ross</div></div></div></div>

--94eb2c06093ca0f0fc054c415cd9--
