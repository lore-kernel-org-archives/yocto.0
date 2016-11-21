Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9F15E00A92; Mon, 21 Nov 2016 01:12:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CA2FE00A1E
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 01:12:47 -0800 (PST)
Received: by mail-wm0-f49.google.com with SMTP id t79so132146477wmt.0
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 01:12:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=MJNn+5XfiLgi53gvdQLnhskV8n2P0vNE9lQN/eoHI20=;
	b=KOiHBy6P0bBSukP+fLOyVqVOc8qCbsjuDQxlx2+Q4Nye1yTLbZ95sRfJCeV6XN/IqQ
	zZexvpa7NYR+iJEeegldQdq/xzfVwD9v4ulrntHE9nLNhjYePhv4tYsleGkITJLd4hT/
	2p8lRR8YBvID9Pm1wHaSST781i6ymWCYoYr/30lxIXdTW/F2hob0NljKUtS2dIRDSOWY
	cT1mM4Pa38WdL4DHP3SqhAL15oPVBPRz+WFebljV2Asqs+RFof5+94TtdsQgUnnXDSTV
	1/KLfro/fT944ohLQZARv5AQC21f4j0dkURmr0ibsnMs60PZVyvXoScrvPZsZv+OJFiF
	OKkA==
X-Gm-Message-State: AKaTC00g21L8yg/Ps4PKP50UVznvW5eyk5q+WTOslL94+btZSNlnt7BsjlttiTZyPXeZPQ==
X-Received: by 10.28.72.3 with SMTP id v3mr14622098wma.20.1479719566094;
	Mon, 21 Nov 2016 01:12:46 -0800 (PST)
Received: from tfsielt31850 ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	w79sm18291282wmw.0.2016.11.21.01.12.44 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 21 Nov 2016 01:12:45 -0800 (PST)
Message-ID: <1479719564.18484.1.camel@andred.net>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: yocto <yocto@yoctoproject.org>
Date: Mon, 21 Nov 2016 09:12:44 +0000
In-Reply-To: <1479324929.12931.32.camel@sierrawireless.com>
References: <1479324929.12931.32.camel@sierrawireless.com>
X-Mailer: Evolution 3.22.1-2 
Mime-Version: 1.0
Subject: Re: Unusual RPM / Smart Bug When Changing Architecture
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
X-List-Received-Date: Mon, 21 Nov 2016 09:12:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2016-11-16 at 11:35 -0800, Darcy Watkins wrote:
> 
> Is this a known issue?  Has it been fixed in a newer branch?  If so,
> which one?

I can only say that I've encountered this (when using IPK), too. It doesn't
seem to be related to RPM specifically, unless opkg and rpm just happen to
implement similar semantics. It seems something always prefers the more
specific package rather than the newer version.


Cheers,
Andre'


