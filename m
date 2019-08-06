Return-Path: <jku@goto.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11E4EE00D64; Tue,  6 Aug 2019 01:19:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.45 listed in list.dnswl.org]
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
	[209.85.167.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6947E00D59
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 01:19:50 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id c19so60330714lfm.10
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2019 01:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goto.fi; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=pyr1z6N9zt3/hmvtDBpWfEs6Sp4712HORpZ5lGXccyc=;
	b=iisf1v5+nBrIz9FY152S6rhRGT7hHI8oSAwPXIeaipwZbONPYYmVuxTXs43iSlIwJx
	tkpdyZoX4wAtFXFI4NGsTwBZ1aW8SmkDCLFcZ+YLwC31dvkE4ho9khDEJh1Kr5BAGZWc
	gF/ucY0J/iX6bFn6uRwbMt28kVrRr+GjzNLEw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=pyr1z6N9zt3/hmvtDBpWfEs6Sp4712HORpZ5lGXccyc=;
	b=cYZRXmqGlaEA6nVy8pJqfGI367KaWSxW/bt2H/gsZ30b6ClCyBs2DGExqTMQh7a6sK
	rGYX8JyBOBhicH6PT5t5cwz7uvZJF5wLW967z2qPKKa1xAQzZg1jGVqy2/obCAXJ8p93
	DRFhsMZ5EyM33RyAUICBmbszf6jENG7pKdPiNLoQ6GR9kWn1ywv3AaQp8NQzHOLsBSbW
	meJQLNufJyoXC442qZyh4AQpewrhN7iAyp7jsOKAJNeEF/ODbqIGd3Mn/H1xYHdMVHUD
	VdxZg1xdJzYoFmg6zJPJDuMw9ZnjMEojX2UwwqN+4bZ77plELERNRmjS7IO0MYZsXxeF
	QElA==
X-Gm-Message-State: APjAAAWky5LvUqrTmmEZ6wet9DUomSq8FWD1GsBoSjrmr0d3kn0pc2ei
	5ldSH6wdKu4rBNElwMRS+BLE3a6voNfgeZbsUyAqN5R8iUaP4A==
X-Google-Smtp-Source: APXvYqx5Au3a6Kfmf5Qe6wxxbdeKRRNV3RWd7yYP5uqW2vePGQHMY4/DrpGx5KCRfWRB7aSSllGh3NAdtoF/c/pE/TE=
X-Received: by 2002:a05:6512:146:: with SMTP id
	m6mr1538316lfo.90.1565079589767; 
	Tue, 06 Aug 2019 01:19:49 -0700 (PDT)
MIME-Version: 1.0
References: <efee19a9-0d34-a551-60da-022d5e6469bf@faresoftware.it>
In-Reply-To: <efee19a9-0d34-a551-60da-022d5e6469bf@faresoftware.it>
From: Jussi Kukkonen <jku@goto.fi>
Date: Tue, 6 Aug 2019 11:19:34 +0300
Message-ID: <CAD5=o+o=8xFdEQwq99bTcpxjh5=hbqvKM=SUfufsnT_SVxPSEQ@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Yocto Pyro, bitbake, git pull for my recipe (Why not?)
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
X-List-Received-Date: Tue, 06 Aug 2019 08:19:53 -0000
Content-Type: text/plain; charset="UTF-8"

From the AUTOREV documentation:

   If you use the previous statement to retrieve the latest version of
software, you need to be sure PV contains ${SRCPV}.

Typically this looks something like:
PV = "1.2+git${SRCPV}"

HTH,
  Jussi

On Mon, 5 Aug 2019 at 11:47, Mauro Ziliani <mauro@faresoftware.it> wrote:
>
> Hi all.
>
> It seems that bitbake doesn't check the remote git repository of my
> application (terminal is the name of the recipe) every time I do
>
>
> bitbake  terminal
>
>
> The recipe is this
>
> # ------------ the recipe ---------
>
> SRCREV="${AUTOREV}"
>
> SRC_URI = " \
>
>      git://git@server/terminal.git;protocol=ssh;branch=master \
>
> "
>
>
> S := "${WORKDIR}/git"
>
> inherit qmake5
>
> # ------------ the end of recipe ---------
>
>
> Any idea to force git pull?
>
>
> Best regards,
>
>    MZ
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

