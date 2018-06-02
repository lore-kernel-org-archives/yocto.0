Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 954F8E00EBA; Fri,  1 Jun 2018 20:04:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BEACE00C50
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 20:04:31 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Jun 2018 20:04:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,468,1520924400"; d="scan'208";a="54147079"
Received: from yingqite-mobl1.gar.corp.intel.com (HELO [10.249.69.196])
	([10.249.69.196])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Jun 2018 20:04:29 -0700
To: Alan Martinovic <alan.martinovic@senic.com>,
	Alexander Kanavin <alex.kanavin@gmail.com>
References: <CAOT_U5b9-3yK1PRieqixN86pXSPeTdDfzca42vS2ZndXTb6_Fw@mail.gmail.com>
	<CANNYZj-Haidas8Y4f_Wqyf-yYfhRjLe1UFT-HfOt-jxY=kNunA@mail.gmail.com>
	<CAOT_U5ZS1gvRzqyrstEeWfepDGKR1gaxzHv3Hz-iRk6evhMazA@mail.gmail.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <c6b82388-5963-ba54-00c2-74c91b89a697@intel.com>
Date: Sat, 2 Jun 2018 11:04:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CAOT_U5ZS1gvRzqyrstEeWfepDGKR1gaxzHv3Hz-iRk6evhMazA@mail.gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: wic appending ".1" to a file name on multiple images build
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
X-List-Received-Date: Sat, 02 Jun 2018 03:04:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 06/01/2018 07:56 PM, Alan Martinovic wrote:
> Yeah, a deep dive it is then. :)
> 
> Am just trying to print from the code using the Python debugger (as
> used in the source file).
>     self._log.debug("Print this")
> 
> but it's not printing anything even when running bitbake with -DDDvvv

wic create with -D should help you get started.

