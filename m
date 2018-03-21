Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9A35E008D3; Wed, 21 Mar 2018 08:57:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 704A8E007DA
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 08:57:22 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Mar 2018 08:57:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,340,1517904000"; d="scan'208";a="26851017"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga007.jf.intel.com with ESMTP; 21 Mar 2018 08:57:21 -0700
Received: from vmfreder-mobl2.amr.corp.intel.com (unknown [10.254.102.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id 6C7C7580461;
	Wed, 21 Mar 2018 08:57:21 -0700 (PDT)
To: yocto@yoctoproject.org
From: Stephano Cetola <stephano.cetola@linux.intel.com>
Message-ID: <fcd1a031-05a5-b50d-31b0-75d50667f0a3@linux.intel.com>
Date: Wed, 21 Mar 2018 08:57:20 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: [RFC] Priority Settings Between Layers
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
X-List-Received-Date: Wed, 21 Mar 2018 15:57:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

We're updating our manuals and I want to be sure the information we are
providing is correct. Here is the section in question:


TIP
Ordering and BBFILE_PRIORITY for the layers listed in BBLAYERS matter.
For example, if multiple layers define a machine configuration, the
OpenEmbedded build system uses the last layer searched given similar
layer priorities. The build system works from the top-down through the
layers listed in BBLAYERS.


Is this accurate? I have tested this with a simple machine config
example but I want to be sure I am not missing anything. Also, I'm
assuming this holds true for all configurations, not just machine.

Cheers,
Stephano

