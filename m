Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1DBCE00928; Thu, 28 Jan 2016 05:36:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E17DE0088B
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 05:36:11 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 28 Jan 2016 05:36:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,358,1449561600"; d="scan'208";a="735853248"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 28 Jan 2016 05:36:10 -0800
To: yocto@yoctoproject.org
References: <1453224275-7493-1-git-send-email-philip@balister.org>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <56AA1887.7020904@linux.intel.com>
Date: Thu, 28 Jan 2016 15:32:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.5.0
MIME-Version: 1.0
In-Reply-To: <1453224275-7493-1-git-send-email-philip@balister.org>
Subject: Re: [meta-qt4][PATCH 1/3] qwt: Add recipe.
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
X-List-Received-Date: Thu, 28 Jan 2016 13:36:14 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/19/2016 07:24 PM, Philip Balister wrote:
>   * Copied from meta-openembedded/jethro.
>   * Used by GNU Radio.

ERROR: QA Issue: File '/usr/lib/libqwtmathml.so.6.0.1' from qwt was 
already stripped, this will prevent future debugging! [already-stripped]
ERROR: QA Issue: File '/usr/lib/libqwt.so.6.0.1' from qwt was already 
stripped, this will prevent future debugging! [already-stripped]
ERROR: QA Issue: File 
'/usr/lib/qt4/plugins/designer/libqwt_designer_plugin.so' from qwt was 
already stripped, this will prevent future debugging! [already-stripped]
ERROR: Fatal QA errors found, failing task.
ERROR: Function failed: do_package


Can you fix this please?

Aelx


