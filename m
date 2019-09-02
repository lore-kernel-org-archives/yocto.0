Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8B08E0096F; Mon,  2 Sep 2019 07:27:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C74DE003C1
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2019 07:27:01 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id r15so10116279qtn.12
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2019 07:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=nF3cq87PLtenP3ZvXCxoMzCyOynO2T122xhC5Nd/u2A=;
	b=GuxWY3hbNsiwHBIgq0PZxmKx8wdxA7porKjFXNeuH/2fXPD08A7iU5W14d2CGFN7Fp
	0RZBvH8MKFP2JSZR5Mxr7y6aQRWb74l5pt/oVb1GMVHiwY2D58GoL0mkdy3eXq55fETc
	/WmKkoCSUMUMolHSQ+vRUzlOJBN/cWYJdLfR6LWSGPoPCooA9JFRJmxRk584eK6upCYv
	HxWAD8qb7hKxWJfB9Fogz4V2+aqC4kB4SMPKWriyrTca0K9tbsDVn0mr5b8x7Au77Evh
	atH3FZ/MbeHtGSZC/Za86MA2gwjnWbGDMhK4KaoLGowjFZnU5deipLb8YkVBu5VbWoVq
	VviQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=nF3cq87PLtenP3ZvXCxoMzCyOynO2T122xhC5Nd/u2A=;
	b=XdhD7YQIQhPzonwqNdnaCEgPGkrv6nU8UGeIk21g+rEcG+8hYs4azB4Sb6tji9/7qD
	zlEqMMH7lZ28qL1SqGSBWQ62hPKxnV4lfkLn/wCfT6ziJnF4bCxGCb6X7ATXqUMDp8lk
	Bx2ISb2aulnK+N9rrhCWitkg2CkgKRNxyh7UNe+eX7iJCHZxtoAQ1H8SnThnQAAjz1fp
	jTLwxzRKybwvfynk6ccTRp+nbLpaYb45jMIcmaBHENWDPp7+LOXi23LeDGGFyEfQiP2A
	MQy7ONe8V33pK2VB6ZJegm+S8m9cemaQD1+xvUp9pXt7N2aMnCfzaDF7EqzojHdxKP52
	P0Pw==
X-Gm-Message-State: APjAAAU6GfdcpxC9l97qRntZigsQ0/GVGVerGqVJU0gaG+Nz5u9oSQcd
	4UrmfjDikk/GHFK694yAQB7Xu0EramQpujEyn67OLXlozTFXgQ==
X-Google-Smtp-Source: APXvYqwb3XO8fikJtAGupoqwHmhlEM0NezNN6Ivf8Cq/JjIGlVChAb62f5AUnoR4hHGlPwNnLpfkXduLPskL9siKWrY=
X-Received: by 2002:ac8:6684:: with SMTP id d4mr28478103qtp.286.1567434420497; 
	Mon, 02 Sep 2019 07:27:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAJKO-ja632JpvyfytYme9tGn3RWx5pBHr9Up59gXtw_bqmP-9g@mail.gmail.com>
In-Reply-To: <CAJKO-ja632JpvyfytYme9tGn3RWx5pBHr9Up59gXtw_bqmP-9g@mail.gmail.com>
From: Beth Flanagan <pidge@toganlabs.com>
Date: Mon, 2 Sep 2019 15:26:49 +0100
Message-ID: <CANik3vEF71r2tcN8r_PRVSsM59gs2x1OLAmQy9dEyevpV0Kizw@mail.gmail.com>
To: Brian Silverman <bri@readysetstem.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Fetching Yocto layers
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
X-List-Received-Date: Mon, 02 Sep 2019 14:27:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 2, 2019 at 2:05 PM Brian Silverman <bri@readysetstem.com> wrote=
:
>
> Is there a way to automatically fetch/add a yocto layer from another laye=
r?
>
> My problem is that I=E2=80=99d like to be able to build instructions of m=
y product from one version number.  But here=E2=80=99s our normal (example)=
 build instructions:
>
> git clone git://git.yoctoproject.org/poky -b some_poky_tag
>
> cd poky
> git clone git://git.somelayer1.com/meta-layer1 -b some_layer1_tag
>
> git clone git://git.somelayer2.com/meta-layer2 -b some_layer2_tag
>
> git clone git://git.mylayer.com/meta-mylayer -b some_mylayer_tag
>
> source ./oe-init-build-env
> bitbake-layers add-layer ../meta-layer1
> bitbake-layers add-layer ../meta-layer2
> bitbake-layers add-layer ../meta-mylayer
>
> bitbake mylayer-image
>
>
> The tags chosen above are based on what we test and ship.  So my issue is=
 that someone has to correctly follow the above instructions for different =
versions of multiple layers if they want a reproducible build of a specific=
 version of mylayer-image.
>
> Is there a canonical why to encode this information within my layer?  Obv=
iously I could script the above, store it in my layer, and have the user ru=
n that script.  But, that seems very unyocto-like.

There is combo-layer. I've used it before and for certain applications
it's useful.

https://wiki.yoctoproject.org/wiki/Combo-layer

http://git.yoctoproject.org/cgit.cgi/poky-config/tree/

-b

>
> --
>
> Brian Silverman
>
> Ready Set STEM
>
> bri@readysetstem.com
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

