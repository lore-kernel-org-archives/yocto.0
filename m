Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D57F0E00B1E; Tue,  6 May 2014 10:03:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69704E006EF
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 10:03:34 -0700 (PDT)
Received: by mail-ie0-f179.google.com with SMTP id lx4so9731612iec.24
	for <yocto@yoctoproject.org>; Tue, 06 May 2014 10:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=dhIWcJ218QQqoSsAbJ20W8fBUsVqTZtzdqAqmK00lPA=;
	b=lL0MjLDR5xsKG+iqq8BMiMg0tXOPdB4aYTyL7/oGcLmsC6sK4V+r06I9WqLE5/Qi0I
	WoTyIu7Ohdn3wPYtEZ292+UgUBKz3ytgnwz//C2JY2HKcVTwHezHyEmhtCTecAfXOegC
	yfi0dcQO4VeqHxZMYSsG4p3Ge4oP6fy8x5fdlMDbVAdfhmCxfI45r7VxBlRyUC7wa5Dz
	zKKsPQb3ceLJpuoFRiYiahqfL3nQtca8ZHRJHzBfR+99OMxo7amTzyvQ1NOr+l+J6qG7
	7f6fKC1chEUBrfQNuD03EoeX2BvCDMr+Ho5/mDnTLehHG3aNDuSmCgAg9nArwAnyHHZv
	KvYg==
X-Received: by 10.43.35.143 with SMTP id sw15mr39057305icb.29.1399395813595;
	Tue, 06 May 2014 10:03:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.74.228 with HTTP; Tue, 6 May 2014 10:03:03 -0700 (PDT)
In-Reply-To: <5368923F.9060003@gmail.com>
References: <5368923F.9060003@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 6 May 2014 10:03:03 -0700
Message-ID: <CAMKF1soK9VA1q-Db-VTgqDdXCYHj0y1iyisj9ywP52KuFhQmgQ@mail.gmail.com>
To: koansoftware@gmail.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [RFC] Upgrade to a package with all its dependency without network
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
X-List-Received-Date: Tue, 06 May 2014 17:03:34 -0000
Content-Type: text/plain; charset=UTF-8

Marco

On Tue, May 6, 2014 at 12:41 AM, Marco <koansoftware@gmail.com> wrote:
> Hello,
> I need to be able to upgrade to a package with all its dependency chain on a
> target system that does not have access to the network.
>
> I'm trying to understand what may be the best and also the simplest
> solution.
> Perhaps there is already this functionality in OE/Yocto?
>
> I thought to implement a new opkg feture so that I can to generate the list
> of dependencies of a package and then extract the packages from OE/Yocto
> using a script or an application.
>
> Another possibility would be to extend the operation of bitbake so I pull
> out the package and dependencies putting them in a dedicated directory to be
> moved on the target for the update.
>
> For now I'm just analyzing what may be the possibilities and I'd love to
> have any comments or advice from someone more experienced than me on this
> topic.
>

I would say file a feature/enhancement request in Yocto bugzilla so it
does not get lost.

