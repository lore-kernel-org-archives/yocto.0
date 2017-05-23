Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84C4EE00970; Tue, 23 May 2017 07:53:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C3C8E0077F
	for <yocto@yoctoproject.org>; Tue, 23 May 2017 07:53:32 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id e127so32182708wmg.1
	for <yocto@yoctoproject.org>; Tue, 23 May 2017 07:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6G9hIpPYTQQDNYD7DbuwHQ/e0nP1W1rkC+0Z08n2jPc=;
	b=k3EZoa0KuKl9OPhSNHkGGAZ6vnImK+ZuJA1wjz6JJa1e5AKkauRoprLSiB8jHpHXV3
	WJ8A698zU0jev5YS1nbcFWwgp4NF96KOHlQ8+OQOdbuoTC1d9DJXXvFEStXJExzf2nLf
	Or7z0wp/mN56OHQSE4y3SKaU1pRdmUtNlJ+PvgvmXzdfWA83BIM7ZPP8+frOGuVtzIdE
	b4NJODuuZMVrYAcbBHPJ9XgBgzx5l1BJfccuBq6aLX9+M6XIwQf52IbY1dbg+yWJaNOc
	JqegW3HQwi7Ipf8p2dinSD8+UakkN1ZCcU6/9tG0NCpT8hWETiWznZXGKgDK3W9mkEc1
	AeGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6G9hIpPYTQQDNYD7DbuwHQ/e0nP1W1rkC+0Z08n2jPc=;
	b=LUn2A9VbYm64nOuMtDBBGpPOrYQptXmXM13eNse2PtHnP8vLmUTtFX9JdUjcSs6aRY
	elQGsVcfa1NBuelY5i6fUxQdmQxBzuohz5AE0iib8Imm2VeX/pbmTjuVIfzOdcOZQNCN
	tE6wPRU92clk8QKeH5tP4atPyqLGfE4mMDDKOv3CuqdJAuFWpUJAmoqt8MdzArEltjSA
	dDWzqVcIwOF+cbmM+uKOuqR9q3C1dywq9v5e7abZEsWPmUAyg98QeoPhrQ8LWeYYg2Vb
	kYjqDlhfpwpGBTxeVFAF3jghlhY1z3uVe8Nfe3aLZhi180XnQ2INluYYwGBQc96CcgWV
	2S4w==
X-Gm-Message-State: AODbwcDxBcIrwIqAftwOV/MZBhoYlPmZtNub5aasXR0wm8bRs3L85Nmk
	/oECFPhbb1hka7mQpAZEeJsKHH6Rcg==
X-Received: by 10.80.151.5 with SMTP id c5mr21883207edb.30.1495551211918; Tue,
	23 May 2017 07:53:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Tue, 23 May 2017 07:53:01 -0700 (PDT)
In-Reply-To: <8e6767cb65d32fa715ac54c70e775e072c2b2533.1495517079.git.jackie.huang@windriver.com>
References: <cover.1495517079.git.jackie.huang@windriver.com>
	<8e6767cb65d32fa715ac54c70e775e072c2b2533.1495517079.git.jackie.huang@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 23 May 2017 07:53:01 -0700
Message-ID: <CAMKF1srRCZ4=wpK+QTPLF=xMs8wQR9CGVPvbVGNX1JZAY9kLwg@mail.gmail.com>
To: jhuang0 <jackie.huang@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH 2/2 v2] ecryptfs-utils: add new recipe
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
X-List-Received-Date: Tue, 23 May 2017 14:53:35 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, May 22, 2017 at 10:30 PM,  <jackie.huang@windriver.com> wrote:
> +        install -d ${D}${systemd_system_unitdir}
> +        install -m 0644 ${WORKDIR}/ecryptfs.service ${D}${systemd_system_unitdir}

you could squash above into install -D -m 0644
${WORKDIR}/ecryptfs.service
${D}${systemd_system_unitdir}/ecryptfs.service

