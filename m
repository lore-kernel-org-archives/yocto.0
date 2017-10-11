Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1B04E00B87; Wed, 11 Oct 2017 05:14:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6C86E008A4
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 05:14:20 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Oct 2017 05:14:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,361,1503385200"; d="scan'208";a="1204656908"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by fmsmga001.fm.intel.com with ESMTP; 11 Oct 2017 05:14:18 -0700
Date: Wed, 11 Oct 2017 15:13:46 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>
Message-ID: <20171011121345.GA5587@mbabyjoh-desk.ger.corp.intel.com>
References: <HK2PR04MB0995028C6AD9F658017BCB29E64A0@HK2PR04MB0995.apcprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <HK2PR04MB0995028C6AD9F658017BCB29E64A0@HK2PR04MB0995.apcprd04.prod.outlook.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding test case in LTP in Yocto
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
X-List-Received-Date: Wed, 11 Oct 2017 12:14:23 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Umamahesh, 

>Hi,
>
>Anyone suggest me how to add an test case in LTP (Linux Test Procedure) in Yocto distribution.
>
>  Please suggest.

Prepare patch for Linux Test Project and then, update the ltp recipe by following the steps
mentioned here:
http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#new-recipe-patching-code

You could also send the new test case to LTP mailing list (ltp@lists.linux.it) for review. Then,
it could be included in the next release and will be part of the distro later (slow process)

>   Thanks
>   Umamahesh

Best Regards,
Maxin

