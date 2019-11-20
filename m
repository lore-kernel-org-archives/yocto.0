Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27248E00E2F; Wed, 20 Nov 2019 00:06:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC1FEE00E24
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 00:06:14 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Nov 2019 00:06:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,221,1571727600"; d="scan'208";a="231846975"
Received: from wsulaima-mobl.gar.corp.intel.com (HELO shodan.localnet)
	([10.255.169.110])
	by fmsmga004.fm.intel.com with ESMTP; 20 Nov 2019 00:06:10 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
Date: Wed, 20 Nov 2019 21:06:08 +1300
Message-ID: <29155136.VOVqtgXEB2@shodan>
Organization: Intel Corporation
In-Reply-To: <6a6629bc-00c4-7229-1c38-0096c3a5b0c3@topic.nl>
References: <20191119123755.2526-1-quentin.schulz@streamunlimited.com>
	<6a6629bc-00c4-7229-1c38-0096c3a5b0c3@topic.nl>
MIME-Version: 1.0
Cc: "radek.dostal@streamunlimited.com" <radek.dostal@streamunlimited.com>,
	"andriy.danylovskyy@streamunlimited.com"
	<andriy.danylovskyy@streamunlimited.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [warrior] [meta-qt4] 3rdparty: javascriptcore: JITStubs.cpp: allow builds of JavaScriptCore with gcc v8
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
X-List-Received-Date: Wed, 20 Nov 2019 08:06:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Mike

On Wednesday, 20 November 2019 9:00:10 PM NZDT Mike Looijmans wrote:
> I ran into this issue yesterday, and this patch solves the compilation on 
> warrior. However, it's a patch for Qt itself, and not for OE.
> 
> Is there already a warrior patch in the making, or should I submit one?

Quentin sent one yesterday (with the same subject). If you could give it a try 
and confirm it fixes the failure that would be great.

Thanks
Paul

-- 

Paul Eggleton
Intel System Software Products



