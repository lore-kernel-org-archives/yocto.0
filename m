Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D084E009F3; Wed, 18 Jan 2017 11:50:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 339FAE009EA
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 11:50:07 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga104.jf.intel.com with ESMTP; 18 Jan 2017 11:50:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,250,1477983600"; d="scan'208";a="810498519"
Received: from mbadrulh-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.134.14])
	by FMSMGA003.fm.intel.com with ESMTP; 18 Jan 2017 11:50:05 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: openembedded-architecture@lists.openembedded.org
Date: Thu, 19 Jan 2017 08:50:03 +1300
Message-ID: <9459934.WN0IuyjPMC@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.13-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <8251941.rtFFyTMRIg@peggleto-mobl.ger.corp.intel.com>
References: <8251941.rtFFyTMRIg@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [Openembedded-architecture] Layer index enhancements
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
X-List-Received-Date: Wed, 18 Jan 2017 19:50:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wed, 18 Jan 2017 23:02:00 Paul Eggleton wrote:
> * We now pick up layer dependencies (and recommends) specified in the
> layer.conf, but only if they match the layer name - we don't handle
> collection names yet, so this won't currently work where the collection
> name doesn't match the layer name (e.g. oe-core, meta-oe...).

I was wrong about this - the collection name is collected and used in the 
dependency resolution. New layers / branches should have this information 
populated, however we haven't collected collection names for all of the 
existing layers. I have just gone in and checked meta-oe and oe-core are set 
up for master, morty, krogoth & jethro.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

