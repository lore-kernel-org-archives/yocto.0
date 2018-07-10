Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57229E00E47; Tue, 10 Jul 2018 09:17:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0601FE004F6;
	Tue, 10 Jul 2018 09:17:07 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Jul 2018 09:17:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,335,1526367600"; d="scan'208";a="53991459"
Received: from rossbach-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.249.32.194])
	by fmsmga008.fm.intel.com with ESMTP; 10 Jul 2018 09:17:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 10 Jul 2018 18:17:05 +0200
Message-ID: <2274431.fXWzuTuIFg@localhost.localdomain>
Organization: Intel Corporation
MIME-Version: 1.0
Subject: [layerindex-web] RFC: layer index docker fixes
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
X-List-Received-Date: Tue, 10 Jul 2018 16:17:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi folks

I've been trying to get the OE layer index example docker setup in shape,
based upon improvements from myself, Michael and Konrad. For the moment I've
taken most of what Michael and I did (with some fixes and tweaks, and broken up
into smaller patches) and a few pieces of the Dockerfile from Konrad's recent
patch and put it here:

  http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/log/?h=paule/dockerfixes

Konrad, I know you were a little bit more ambitious with your changes but I 
wanted to get something closer to what Michael is using and then we can build 
upon it. In particular I haven't yet explored docker-compose as you have,
although it looks like it would make deploying all of this a bit easier. 

Let me know what you think.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



