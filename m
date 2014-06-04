Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13ED4E00BDF; Wed,  4 Jun 2014 02:59:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2443E00B5C
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 02:59:46 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Jun 2014 02:59:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,972,1392192000"; d="scan'208";a="542282240"
Received: from sawijeko-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.128])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jun 2014 02:59:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Neuer User <auslands-kv@gmx.de>
Date: Wed, 04 Jun 2014 10:59:44 +0100
Message-ID: <1441499.7MxWvtiUat@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.4-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <lmmokk$hkl$2@ger.gmane.org>
References: <lmmmm6$o20$1@ger.gmane.org> <lmmoff$hkl$1@ger.gmane.org>
	<lmmokk$hkl$2@ger.gmane.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: best way to add conditional configure option
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
X-List-Received-Date: Wed, 04 Jun 2014 09:59:50 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 04 June 2014 11:24:36 Neuer User wrote:
> I searched through other recipes for "EXTRA_OECONF_" and found somehting
> that worked:
> 
> EXTRA_OECONF_append_mx6 = "--enable-imx6"

BTW I'd suggest a leading space in the value, since _append won't add one for 
you. You might have got away with not adding one this time if the original 
value already had a trailing space, but it's good practice to add one.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

