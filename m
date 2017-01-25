Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C535E00833; Wed, 25 Jan 2017 01:03:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 418EAE00828
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 01:03:13 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id d140so41244278wmd.2
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 01:03:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=fteZ5CuDGeOnQOyQbabsa4krzWGo03OfaX0PlcXE5/A=;
	b=C5j0rkgT1kOp2HoIUpZ4eZIqdCMTpRTrSgpjqFO0g3yxYU2eCqzW4f5PLiQk3IXuHV
	/lniqEA5iX7B4qBrI1JeQAtimvFtE2T85RrcvzC9ZsYR3s7vSIAY5UjXj87slRZrVpvd
	ba/jDPmB7GkrbYK4r1ydLF2RjRl95PgBqiJAeYogpsRL0E+HQv9puwLo+4v10z0vhvIh
	dfJDdpv3VUcrlxVB8zjWAefTZrnAP3F7s16DOII4F89cZKZs/mmDpRYO3XRIib950R50
	xuSkTF2PatF1k681YzP4HvDxImrP6CnlSHacW3cPo1ukAmHd5bUpDBK0tJb4p/zyfsN/
	Y4iQ==
X-Gm-Message-State: AIkVDXJJooswzO3XNQHabkZay9CD4+6Cx3xLXDZV8kz2r08XNtCgYwWUstmQpacZoMw9wg==
X-Received: by 10.28.111.75 with SMTP id k72mr21013166wmc.39.1485334992566;
	Wed, 25 Jan 2017 01:03:12 -0800 (PST)
Received: from tfsielt31850 ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id r6sm30370585wmd.4.2017.01.25.01.03.11
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 25 Jan 2017 01:03:11 -0800 (PST)
Message-ID: <1485334991.6808.3.camel@andred.net>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: Matt Hoosier <matt.hoosier@gmail.com>, yocto@yoctoproject.org
Date: Wed, 25 Jan 2017 09:03:11 +0000
In-Reply-To: <CAJgxT3_QyunmpzGW69j27sR_BFvvhisQVtG+-uGnMxhsO8mCLg@mail.gmail.com>
References: <CAJgxT3_QyunmpzGW69j27sR_BFvvhisQVtG+-uGnMxhsO8mCLg@mail.gmail.com>
X-Mailer: Evolution 3.22.3-1 
Mime-Version: 1.0
Subject: Re: Ordering of anonymous Python functions and task signature calculations
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
X-List-Received-Date: Wed, 25 Jan 2017 09:03:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2017-01-24 at 11:55 -0600, Matt Hoosier wrote:
> In order to support a use-case that embeds information about the Git
> revision of Yocto itself that was used to make a build, I would like to
> run
> some arbitrary Python code and dump the results (Git SHA1's, tag names,
> etc) into a Bitbake variable.

Have you looked at image-buildinfo.bbclass? From your description, it seems
to do what you want.

INHERIT += "image-buildinfo"

works well for me...


Cheers,
Andre'


