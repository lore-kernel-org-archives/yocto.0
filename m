Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34BC5E00D13; Mon, 25 Sep 2017 18:46:48 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B689CE00C8F
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 18:46:47 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Sep 2017 18:46:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,438,1500966000"; d="scan'208";a="1198978676"
Received: from lmazlan-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.67.104])
	by fmsmga001.fm.intel.com with ESMTP; 25 Sep 2017 18:46:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: akuster <akuster@mvista.com>
Date: Tue, 26 Sep 2017 14:46:36 +1300
Message-ID: <2004188.SJkL5qRLq8@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <de690f3d-428d-0a09-20e4-5ffb26acd7f6@mvista.com>
References: <1506382892-1617-1-git-send-email-amanda.r.brindle@intel.com>
	<de690f3d-428d-0a09-20e4-5ffb26acd7f6@mvista.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: Re: [layerindex][PATCH] Indicate if layer has YP Compatible certification
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
X-List-Received-Date: Tue, 26 Sep 2017 01:46:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 26 September 2017 2:23:15 PM NZDT akuster wrote:
> On 09/25/2017 04:41 PM, Amanda Brindle wrote:
> > Allow admin to create Yocto Project versions with the version name,
> > description, an icon link that represents that version, and a link that
> > contains more information about the version.
> 
> Who are the Admins ?

As far as this patch is concerned, anyone who is a superuser or has the 
required permission.

For the OE layer index specifically - Michael Halstead, Mark Hatle and myself 
currently. It's most likely we will grant the permission to someone who is 
involved with maintaining the Yocto Project Compatible program that this links 
to and they'll be the one who manages these things.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

