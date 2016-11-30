Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94DD8E00C40; Wed, 30 Nov 2016 06:31:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.210.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wj0-f193.google.com (mail-wj0-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92DECE00C25
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 06:31:50 -0800 (PST)
Received: by mail-wj0-f193.google.com with SMTP id jb2so22439819wjb.3
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 06:31:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=6fib0JbaYArrEPN6zjhCg2H1IAtNWbAPhA5dzDiyURU=;
	b=HuGdnO9BM4bw3AlJFwUtMT46h9fnVn000haW0/Jd7YUlZQab4leOnlxi9hKsbX2goA
	fWunUKAbHCfux8el4X/OcHQV2OR3bPMRPVszQZocjXKw4LwJZufR5b+/8rVXhVUv6AUV
	ymxCdOrYLNyqjtr9sgWS5crFpYXPY4CupCsnN+CIvaCD3jbNgvXCrVN4sd56cWIDOGlh
	fQemRhcWrAJiriBdwt+MkXX3g4HXqOESYZaRpgeKt5xem2PhCjacUchkeralrHmCTiaD
	Ie3+GXInY0fTGA/yQ5XAh2sGo3McIeulDW01alf0r9T3Zzcdk8r+mAJGBcNcicENslqL
	SMgA==
X-Gm-Message-State: AKaTC0008jvjo55ELP1G5ykvbzUK1hHa/5AR4VwxdbjOkXESZkolKt8NGa9yKajzuvMl5A==
X-Received: by 10.194.14.73 with SMTP id n9mr31437106wjc.189.1480516309656;
	Wed, 30 Nov 2016 06:31:49 -0800 (PST)
Received: from tfsielt31850 ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	ua15sm73235993wjb.1.2016.11.30.06.31.48
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 30 Nov 2016 06:31:48 -0800 (PST)
Message-ID: <1480516308.13682.1.camel@andred.net>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: Patrick Ohly <patrick.ohly@intel.com>
Date: Wed, 30 Nov 2016 14:31:48 +0000
In-Reply-To: <1480503859.6873.280.camel@intel.com>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
X-Mailer: Evolution 3.22.2-1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-swupd][PATCH] bsdiff: update to latest version
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
X-List-Received-Date: Wed, 30 Nov 2016 14:31:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2016-11-30 at 12:04 +0100, Patrick Ohly wrote:
> On Mon, 2016-11-21 at 12:03 +0000, André Draszik wrote:
> > This allows us to completely remove the build time
> > depenency on libcheck when not needed, reducing
> > overall build time, and in addition tests can be
> > converted into a PACKAGECONFIG to enable them if
> > needed.
> 
> +1
> 
> Sorry for the delay, I had to check with Joshua first who's going to
> merge your patches. I'm currently working on a major update of
> meta-swupd (see https://github.com/ostroproject/ostro-os/pull/198) and
> if there's enough interest for using it as part of Yocto, might continue
> maintaining it.

Thanks Patrick. Are you saying you would otherwise abandon meta-swupd
completely, or have it be a part of ostro-os only?
swupd via meta-swupd seems to be a very good addition to yocto.

Thanks,
Andre'


