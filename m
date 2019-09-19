Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52343E00E0D; Thu, 19 Sep 2019 07:00:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (wpdster[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.178 listed in list.dnswl.org]
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D53E2E00CAA
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 07:00:40 -0700 (PDT)
Received: by mail-qk1-f178.google.com with SMTP id f16so3439358qkl.9
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 07:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=BCn7MXI3wVUNbc7jkZvDxW2tO4DwCB7l2WOqVR1OLMk=;
	b=QjFhH6dbmUzG4o44zYO720HsykpkSxYIBLh6MPNUxvAsxAzX2S6VvUANlrTbtZVLe5
	08SZAVuM891ZAKubMkgfRNSGwqZNM3ztSG9e2cjYhxSafIjXCvMikMTeCxnF1ql/IiTf
	Aopol5Hzy35NLa28bY78vDiPkdy78UA6KRKe/p5S0zQpo3H7GpoTG59dIyn5w4uu2rVs
	mEgR9yHxn8bPWkDzjVRHpHONaKPU8n0Y0AfNcERdOqFue3BZ36V0DGIZpGlF71pAST8H
	eXFmQ3DVjGgViIEp2OEvx6LKKo8QJy27fX5R6PyGo/ExkVYGyBmoErtcqy/yM61iAMCJ
	lA1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=BCn7MXI3wVUNbc7jkZvDxW2tO4DwCB7l2WOqVR1OLMk=;
	b=RrfFgiX25hPK+S0rqzLckM9w74CtOhVUgJw3bBgxK46hTsGCCHXSvd4HXNK9quzcZF
	cJCavfoTeihAEN9GMKmXl4TdhY7UQpEs84OMKwvBRCBc3XNN8FlAfhV1SII/UadQ/T5K
	YnshBjFO/fHtlfozz5B9d460+dZ40WFFr5yp1emsJ1CMFKOhxLNX0qbrC9Uw5yA7fms4
	IixKdMofCV1g0w5fo2UNtUYLATxqxQgrhbbUCld36rfbtABoRYACpUbNqeKMdLTxNeCD
	F+HpUYfne58K22D5sBmgovTyCUfWgeewWkBcusb+1Nx6S3aqDYSGM91ntrwIDgnbFl7x
	leWw==
X-Gm-Message-State: APjAAAXwCGe8k/Sc0B6h0F1DQ8z4KwKp7Jc24IDqgHwuGPa51CLrFcB0
	eu+jvSsUTZWrpNV2Sdm22vjkb7KcWTh5edFXoX3kcA==
X-Google-Smtp-Source: APXvYqztKZVN+eOWMASyTtnbMvTChBY/qqHVVJzVnReDIK2tNqxQ573HsH7sEYTJkiSONMAyCA6eeMlkASRRDBiwWqA=
X-Received: by 2002:a05:620a:798:: with SMTP id
	24mr2977705qka.238.1568901639958; 
	Thu, 19 Sep 2019 07:00:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAF_dkJBpgkpBJMTueuiNFNEVDeLy6=ZowViJ-G4QzDBOx=qRZw@mail.gmail.com>
In-Reply-To: <CAF_dkJBpgkpBJMTueuiNFNEVDeLy6=ZowViJ-G4QzDBOx=qRZw@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Thu, 19 Sep 2019 10:00:13 -0400
Message-ID: <CAF_dkJC-3eSj70O_kNqEonnOyhGBAFamnJQfKsdCw+fzUHSqSg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to share files between recipes?
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
X-List-Received-Date: Thu, 19 Sep 2019 14:00:41 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 19, 2019 at 9:39 AM Patrick Doyle <wpdster@gmail.com> wrote:

> do_install() {
>     install -d ${D}/${datadir}
>     install -m 755 -d ${WORKDIR}/keys ${D}/${datadir}
> }
>
Oops... I just noticed the typo(s) in my recipe... I wasn't installing
the contents of my ${WORKDIR} in ${D}${datadir}/keys the way I thought
I was... all I was doing was creating empty directories.

That's why I ask questions like this... so that right after I ask
them, I can find the blatantly stupid mistake I made in my code.

Thanks for playing!

--wpd

