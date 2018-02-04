Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB2E9E00DE6; Sun,  4 Feb 2018 15:37:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82A29E005BB
	for <yocto@yoctoproject.org>; Sun,  4 Feb 2018 15:37:23 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Feb 2018 15:37:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,462,1511856000"; d="scan'208";a="15407360"
Received: from bchew-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.66.233])
	by orsmga008.jf.intel.com with ESMTP; 04 Feb 2018 15:37:19 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Steve Bedford <steve.bedford@timesys.com>
Date: Mon, 05 Feb 2018 12:37:16 +1300
Message-ID: <2218595.iJQ83WTA63@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CALRpHvKDyjyynB7oaEWoWDfnwv7sDpq1DcUdHAOsbdoFKxcEWw@mail.gmail.com>
References: <CALRpHvKDyjyynB7oaEWoWDfnwv7sDpq1DcUdHAOsbdoFKxcEWw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web] Updating layers?
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
X-List-Received-Date: Sun, 04 Feb 2018 23:37:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Steve

On Friday, 12 January 2018 4:52:23 AM NZDT Steve Bedford wrote:
> Is the layerindex not running the update script?  I see end of September as
> last updates, and a bunch of branches in our layer (meta-timesys) were
> never picked up.

FYI we've fixed this as of a few hours after your email - apologies for the 
downtime, we should now have things in place to avoid that kind of outage.
Let me know if you see any other anomalies.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

