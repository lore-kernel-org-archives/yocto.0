Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37A04E00863; Tue, 22 Mar 2016 13:21:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD959E00509
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 13:21:22 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 22 Mar 2016 13:21:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,378,1455004800"; d="scan'208";a="929658362"
Received: from szexingn-mobl4.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.129.75])
	by fmsmga001.fm.intel.com with ESMTP; 22 Mar 2016 13:21:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Stefano Cordibella <stefano.cordibella@edalab.it>
Date: Wed, 23 Mar 2016 09:21:16 +1300
Message-ID: <8582586.SaQgZAliaG@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.5-300.fc23.x86_64; KDE/4.14.18; x86_64; ;
	)
In-Reply-To: <56F158B7.7020300@edalab.it>
References: <56F158B7.7020300@edalab.it>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Append a pkg_postinst script
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
X-List-Received-Date: Tue, 22 Mar 2016 20:21:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Stefano,

On Tue, 22 Mar 2016 15:37:43 Stefano Cordibella wrote:
>      just a simple question: what is the best way to append a
> pkg_postinst script?
> I haven't found any information about a pkg_postint_${PN}_append () ...
> I extended a recipe, via bbappend, that already defined a
> pkg_postinst_${PN} ()...

pkg_postint_${PN}_append should work just fine.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

