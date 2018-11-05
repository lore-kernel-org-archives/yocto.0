Return-Path: <patrick.boettcher@posteo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7C78E008E3; Mon,  5 Nov 2018 00:46:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [185.67.36.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9FEFE00872
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2018 00:46:44 -0800 (PST)
Received: from submission (posteo.de [89.146.220.130]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 6759620E24
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2018 09:46:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
	t=1541407603; bh=TEhcSt4xb7xQO+a2L96i15wPVP6JKnn1/UwZk6PruBI=;
	h=Date:From:To:Cc:Subject:From;
	b=HEbsKW5AZvImPoSUyyzgVwUP/rCGbrDRalkAVSEGFc96KesALwv1Q/G63mqWvDMEd
	W8PUNt6o62xtHDHvednreurIaEMgUu0kh3fLik8f7P+TolsVefthF2WYWNFvdH/ABc
	lrGoVZt2VcNU2KZJ5AaUVkMGcrlmdGKua/x1w1D8ox+7bjwAwcjqhDGx8QYbo+jgiU
	4Rnlm3XkIwxKTXZnG7ELTJpTyEi80+rqrDv7ySteOQVhPP8fYS8dCP3baY32WN3cC6
	DPqmuT7EumiSS2nJvEW5oZrV5oUNsnepMx+be1HhktHVt9OEzRY9gh49Djjm2S3lLE
	IgD771MqaRjnA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 42pR9t3z0mz6tmQ;
	Mon,  5 Nov 2018 09:46:42 +0100 (CET)
Date: Mon, 5 Nov 2018 09:46:41 +0100
From: Patrick Boettcher <patrick.boettcher@posteo.de>
To: Andre McCurdy <armccurdy@gmail.com>
Message-ID: <20181105094641.1ad619bb@yaise-pc1>
In-Reply-To: <CAJ86T=WZ9fbqo6FQ6y-573Fmw+Lb_rCuZeNWGaLNmDLqFJk8cg@mail.gmail.com>
References: <20181104175530.3ca8ed50@yaise-pc1>
	<CAJ86T=WZ9fbqo6FQ6y-573Fmw+Lb_rCuZeNWGaLNmDLqFJk8cg@mail.gmail.com>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to request a certain version of a recipes for an image?
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
X-List-Received-Date: Mon, 05 Nov 2018 08:46:46 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 4 Nov 2018 18:38:18 -0800
Andre McCurdy <armccurdy@gmail.com> wrote:

> On Sun, Nov 4, 2018 at 2:30 PM Patrick Boettcher
> <patrick.boettcher@posteo.de> wrote:
> >
> > Hi list,
> >
> > I'm using the morty-release for my device.
> >
> > My sources consists of different layers. Some application
> > specific-layers (which contains a image-recipe), our
> > BSP-provider and tooling-layers.
> >
> > It now happens that in there is package (dt-utils) which has
> > recipes in two different layers, with different versions.
> >
> > In my image-file I request the package via
> >
> >     IMAGE_INSTALL += "dt-utils"
> >
> > How do I force the version of dt-utils for this image? By default it
> > selects the wrong one.
> >
> > Here's what I tried, by adding to the image-recipe:
> >
> >     DEPENDS += "dt-utils (>= 2017.03.0)"
> >
> > and
> >
> >     RDEPENDS += "dt-utils (>= 2017.03.0)"
> >
> > seems to have no effect. Adding the version-logic to the
> > IMAGE_INSTALL-line fails to build.
> >
> > What works is to add PREFERRED_VERSION to local.conf. But this is
> > not committable, so I'd like to avoid it.  
> 
> You can't directly influence the build of one recipe (ie dt-utils) by
> making a change in another recipe (ie the image recipe), so the
> DEPENDS and RDEPENDS style changes you have tried will not work.
> Variables in the image recipe are not visible when the dt-utils recipe
> is built.
> 
> Setting PREFERRED_VERSION from a global config file is a valid
> solution. In that case it's up to you to decide which global config to
> use - adding to local.conf, the machine config, the distro config, a
> meta layer config file will all work. Using either the distro or
> machine config would be the most typical approach - depending on
> whether you want to version preference to apply to one build
> configuration (ie one machine) or to all your builds (ie your distro).
> 
> An alternative solution would to be to change the priority of the
> recipes in the meta layer(s) which contains the dt-utils recipes. e.g.
> increasing BBFILE_PRIORITY_xxx in the layer.conf in the meta layer
> with the dt-utils recipe you want to use.

Thanks Andre, thanks Randy for clearing up my mis-conception of recipes
and conf-files. 

--
Patrick.



