Return-Path: <gvkalra@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0365E00D30; Wed,  3 Jul 2019 17:52:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gvkalra[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 447BAE00BF7
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2019 17:52:58 -0700 (PDT)
Received: by mail-pg1-f172.google.com with SMTP id s27so2053117pgl.2
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2019 17:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=inkk+Yy/e24n19mD1jA0GmGaTzkAsuXYlgnsGlckUTE=;
	b=u0wIUPyipgvpw28fuFxkqGHvcrIsQiim+oPUc3vwDLoD40tLTuFlgUUHLaLOK9Oy3k
	SycqFNmdLvGNElbx5/gzCbaVRnxrDlEQ6M/8UpEa3pv0crv6Jg/V9/NMEI4XLmqKIzkg
	J0ZdiAmAJrhfMORYrYGeTpDXxL/3VJzJNNNyVYD+ZR2cWoS6K15ODCO0Jakpnv560wdI
	+H6o2+6PrPPyWS6kKiyFdKYvUb3Y9+CM/W+UpfsOByJE6XSF9x1mi4SLIucT9gwIQceY
	KpABRkJv4uSNls9aj7bi9qLy5il2M/v4LPLLRSgT5D2RBkPEsWFgEYz21SugM9GeQJMH
	pj8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=inkk+Yy/e24n19mD1jA0GmGaTzkAsuXYlgnsGlckUTE=;
	b=hK2HZz9frx8++Dw3KyUHj6DNAtjvA/WFHCsZ60SUoMNTSUB4EeqPU+vw4pMtVlb8vs
	WfTZ6yufS19DNZhZXSdEazffv/GU0vPVpHrpjHZ5ogaqGYG/2y/sBZfHmgGSw+Y9q+7G
	MBBjeJZEZ4VcRNgc+vi7P9C2JaXde6n+M5OyBWR44TXg4nZDZpMwJiuoKKsboM2CaJSJ
	vh/qYawOCSQ4/Ayyh494f5BwEh9ZfketdHUCJjFYfslKCD2fUpr1zsliUgeYKA6k0kG9
	QRD1+HnTsy8FgYoSoCwQK1GDalEabAHCL8yhQ3oV6yK54pdCZwtXKAguuO76fjqm5WRM
	pQ2w==
X-Gm-Message-State: APjAAAXEdFRT3GOXN/v5PLXzMYw0HmMjtueEseW/lovkT59uYOmIhDnf
	WgkwwGPmnHVtnrjI0vsegdpCRa4Qbxrthce9/8Vzh+oMBis=
X-Google-Smtp-Source: APXvYqzmD6yMDcdZZJFB3N2tClqLDdWzeZrT58IV7nmeQv4x1oh9KbPnJQzO3CMsZCZLXzmo72xfWmG0hf+0SspPOZQ=
X-Received: by 2002:a17:90a:5884:: with SMTP id
	j4mr16773312pji.142.1562201577349; 
	Wed, 03 Jul 2019 17:52:57 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.16451.1562092664.2881.yocto@yoctoproject.org>
In-Reply-To: <mailman.16451.1562092664.2881.yocto@yoctoproject.org>
From: Gaurav Kalra <gvkalra@gmail.com>
Date: Thu, 4 Jul 2019 09:52:21 +0900
Message-ID: <CAD5qJ_sNwTt_ksAKcP-rFu58Kw3-Kw5eOBKG97KT_AuwL0wzTg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Anyone built Yocto with Qt5 layer for imx6?
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
X-List-Received-Date: Thu, 04 Jul 2019 00:52:58 -0000
Content-Type: text/plain; charset="UTF-8"

>
> Date: Tue, 2 Jul 2019 17:48:23 +0300
> From: Onur Eser <onureser12@gmail.com>
> To: yocto@yoctoproject.org
> Subject: [yocto] Anyone built Yocto with Qt5 layer for imx6?
> Message-ID:
>         <CAG+Ob8YPP5=7hH0eE2iuUOJsPmBKuQds2SfX+PyZViaWfo0R5w@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> Hello, Yocto Community!
> Trying to build Yocto with Qt5 layer for Humming Board 2. But I had almost
> a billion of errors and I am so bored. Does anyone had it built? Can you
> guys share some steps or configurations with me?

If I am not mistaken, boot2qt has support for imx6.
Have a look here:
https://codereview.qt-project.org/gitweb?p=yocto/meta-boot2qt.git;a=blob;f=b2qt-init-build-env;h=bec9db92b8b06e01afcea7a75d204382c6f81742;hb=refs/heads/thud

>
> Thanks!
> Onur

