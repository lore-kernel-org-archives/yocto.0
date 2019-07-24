Return-Path: <jku@goto.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCEE2E00D53; Wed, 24 Jul 2019 02:10:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.167.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
	[209.85.167.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9821E00AB4
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 02:10:00 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id c19so31415860lfm.10
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 02:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goto.fi; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=P1YL9dAZjY/XWKj7M3rigyJCkXk8QxoFEs/+OuoGfgU=;
	b=lODUIRxQs2LkYpf8d1++LZN5ZsqSy2XkxUwIN1DSX5qa5/+rnbmF3DQuKaz2bDaNO/
	o1XJNTU0WPy2fxvZ8YzF0m55CRSpXbxdgR+srTP1SiV87MuwRHbfjzeONxuAa7F6COvl
	FCO+m2/PND6s+4RISaP7cNoRd08eZdjgQFTOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=P1YL9dAZjY/XWKj7M3rigyJCkXk8QxoFEs/+OuoGfgU=;
	b=CxEkUXLOCEYMkdbxrflymftuzTETZRu4MC9mQyZ6QNnfIgueYkwtlUY4Xs66iZiV2j
	FQGuEc25+UVAg6+kL2NjswNABam93wmN1guJfGzpCf/RHh//Bs5LjaYe3e18FQVJdLtV
	wMezraN0F6bbQ6qT3X+KsBlmy/W6WmXMIYG2Tvtbw7zvUodrk8m3kFdFDi9G+lOJkZGh
	YMIAIhVpevs0fLv60U0NjO5Zi46xCUOquFIcwQp7d+CXAdLyBUqYKHtIYZw3JdAqsgpw
	BmcEDkc2USU4QqlcPu6EguFcXpPWgPcEyB90rF8Jp/NftGKAOLRDa3gcsuQeOp6PPgHr
	b1gQ==
X-Gm-Message-State: APjAAAXZQAXQ8scu0h6ahO/fACkvgCz4Zctg2Zckw9x9HZUxgO7hO5js
	NYI360Qvq7l4hwvZahPCnGNHF6adAXsxOhF2d4c=
X-Google-Smtp-Source: APXvYqy5RQkHqvSe88lP3bBk2rPLc921g804HH7Nezf0JBaan5zmnwsi/jM1ifnzazcNAGvHd5VHQgW4H8KCW4ztWbw=
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr27072166lfp.61.1563959399434; 
	Wed, 24 Jul 2019 02:09:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWRAA9pGSy2DK1T1h7cH=n1yCN_vwwdChivaBcbH=nm+rA@mail.gmail.com>
In-Reply-To: <CAA=hcWRAA9pGSy2DK1T1h7cH=n1yCN_vwwdChivaBcbH=nm+rA@mail.gmail.com>
From: Jussi Kukkonen <jku@goto.fi>
Date: Wed, 24 Jul 2019 12:09:43 +0300
Message-ID: <CAD5=o+p32DFi0q7s872tA1+u+U_WzjyexwPDvVYq6bfKbFTp+Q@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: install -m 0644 ${S}/lib/systemd/system/${PN}.service ${D}/${systemd_system_unitdir} failed to add service file to ${systemd_system_unitdir}
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
X-List-Received-Date: Wed, 24 Jul 2019 09:10:01 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Jul 2019 at 14:48, JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> I set up the configuration for service files at following:
>
> SYSTEMD_SERVICE_${PN} = "${PN}.service bootstrap.service"
>
> do_install() {
>     ..............
>     install -d ${D}/${systemd_system_unitdir}
>     install -m 0644 ${S}/lib/systemd/system/*.service
> ${D}/${systemd_system_unitdir}
> }
>
> Despite both service files are in build directory, the final image
> installation does not include those service files, appreciate anyone
> help.

Your script installs from ${S} but your explanation talks about the
build directory. Did you intend to install from ${B}?

If that's not the issue, then you want dig deeper: look in the build
logs and the package directories inside workdir: does the file
actually get installed and packaged? Is the correct package really
added to image?

HTH,
  Jussi

