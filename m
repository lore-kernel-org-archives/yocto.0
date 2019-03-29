Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7F9DE00D20; Fri, 29 Mar 2019 02:38:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.180 listed in list.dnswl.org]
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
	[209.85.167.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABC3FE00AB0
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 02:38:18 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id t81so1131495oig.10
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 02:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=VlN0euqLGOIlRHySijEm73Ea60SVnTE7xp7WGvcwwpI=;
	b=aPWL28u5pPrPOfy3u9NfWQmyeh6HkOcxir1SboBjth1qz40ZdWI6Tk2ZO3zgbKiT/g
	09gcixMreUeWAwEZom6XyBMa7eBdtcxWx+FkvuItBVQGRu2m+JcBkIT9625J+HvQ2gzr
	EVGNZpn+ewHSC8FYNjQ3anF+nZe77ydZmTkyYo2bcYwt4hdS2WOfgxW+RSnL2W2s22l+
	ewYLl6jI7LzBJJ8W0Vd2dkLYguC5glOt1BNqf2MObRyFoX+vEMey09I27e1QdawzJLCK
	h6hgFJdHBP7g9bQU71SCcgFsZRx9UCWPICM+V9HiHd4ckezRgQ5Df9diai3NjwXHLsIW
	M0sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=VlN0euqLGOIlRHySijEm73Ea60SVnTE7xp7WGvcwwpI=;
	b=gpXK2fdQt8vKE96DSeBbbd5nKtHDUaA5CVOlPRkN7LRsrXrRxnhHkxOlv5VAilACFE
	Lrs/6F7IdjKEqO7gdv9ysHl6pdnuzIjz/PgcVSSnjHnVdG6/kz6r/VKBsad8ygENnG5x
	gyLh3YxpLOF1eQ8zlg++iuH6fSkzP5LBqAc8bdvHxj4mEQH+ARkFJ/ucgCef/ytCKft8
	9buzfee9Tbkqw2+6Q1Apiu/A12vFBiPlnbE1nw8XVke/NpGd2cUuVj+pS7bcjs7gdsNx
	nvG5gQY4JCyZ5xKLvDU5M7xxXSy7f2vlNL/OFLCHBxRrUP19B2mne6PAnoQ5CwmlKkyZ
	2i5g==
X-Gm-Message-State: APjAAAW71XJZTJ1grRHFkP9U9sJ47DREbgvRzqj0ekTuRX4rwDjuA5Pd
	wkF141IY916eYzIiZbs2NuFHnJC4ku/zcYodYbfXDg==
X-Google-Smtp-Source: APXvYqy6W9Jt4be0RBGuF5NB7lhSpVmJx8I3BJ+fc6UTzuU76ZuuZOePTqYEEZjbXexBlUDDT/Vy/8QgBa+UwUfS2v4=
X-Received: by 2002:aca:ed88:: with SMTP id l130mr2940010oih.70.1553852298011; 
	Fri, 29 Mar 2019 02:38:18 -0700 (PDT)
MIME-Version: 1.0
References: <CACKFPN0H50ax69a33VOs6wymGz7SoFi1_atBM2WNh3f9MV6=kQ@mail.gmail.com>
	<CANNYZj_VMX8FdBhMCwvq_hMYNa3n_Ng-kMacAo4Eg1ug+VuPcQ@mail.gmail.com>
In-Reply-To: <CANNYZj_VMX8FdBhMCwvq_hMYNa3n_Ng-kMacAo4Eg1ug+VuPcQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 29 Mar 2019 10:38:07 +0100
Message-ID: <CANNYZj9vrTD_+ZAmpEU28TQ8-MwQ-aD6qAGpX_wSALpq6gpj+A@mail.gmail.com>
To: Dimitris Tassopoulos <dimtass@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Image introspection
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
X-List-Received-Date: Fri, 29 Mar 2019 09:38:19 -0000
Content-Type: text/plain; charset="UTF-8"

You can do that using

bitbake -e <image> and looking for how DISTRO_FEATURES is formed in
the output of the command.

Alex

On Fri, 29 Mar 2019 at 10:37, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>
> On Fri, 29 Mar 2019 at 09:51, Dimitris Tassopoulos <dimtass@gmail.com> wrote:
>
> > To do that, add this to your build/conf/local.conf file
> >
> >> DISTRO_FEATURES_remove = " 3g"
>
> This works around the issue after the fact. It's better to track down
> where 3g is added in the first place, and adjust that.
>
> Alex

