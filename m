Return-Path: <paul.eggleton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3643CE00CD0; Thu, 13 Oct 2016 18:48:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 110C9E00CC7
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 18:48:21 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga105.fm.intel.com with ESMTP; 13 Oct 2016 18:48:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,491,1473145200"; d="scan'208";a="1070205067"
Received: from thiyagax-mobl2.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.140])
	by fmsmga002.fm.intel.com with ESMTP; 13 Oct 2016 18:48:18 -0700
From: Paul Eggleton <paul.eggleton@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 14 Oct 2016 14:48:16 +1300
Message-ID: <1707604.JiaMnXxcz2@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.6-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
MIME-Version: 1.0
Cc: "Lock, Joshua" <joshua.g.lock@intel.com>,
	Scott Rifenbark <srifenbark@gmail.com>
Subject: Migration info - runqemu
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
X-List-Received-Date: Fri, 14 Oct 2016 01:48:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi folks,

We need some info for the migration section of the 2.2 manual about what the 
user needs to do to adapt to the new python-based runqemu. Robert / Joshua, 
can one of you please write something short that explains what users need to 
do (i.e. changes to the metadata for BSPs, or any other changes in operation)? 
It doesn't need to be polished, Scott Rifenbark will take care of that. Just 
replying to this email with Scott on CC should be sufficient.

Thanks,
Paul

-- 
Paul Eggleton
Intel Open Source Technology Centre

