Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43734E00DFA; Tue,  9 Jan 2018 04:45:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52335E00A00
	for <yocto@yoctoproject.org>; Tue,  9 Jan 2018 04:45:24 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Jan 2018 04:45:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,335,1511856000"; 
   d="scan'208";a="9334193"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga008.jf.intel.com with ESMTP; 09 Jan 2018 04:45:23 -0800
To: "Kok, Vincent Chin Keong" <vincent.chin.keong.kok@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <04146D936EE8544DA96D472768509EC31AAD3DA9@PGSMSX111.gar.corp.intel.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <c0d1faf4-1896-3263-1046-bded8246f07b@linux.intel.com>
Date: Tue, 9 Jan 2018 14:45:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <04146D936EE8544DA96D472768509EC31AAD3DA9@PGSMSX111.gar.corp.intel.com>
Subject: Re: Upgrading Yocto Project Version - To Rocko
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
X-List-Received-Date: Tue, 09 Jan 2018 12:45:27 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/09/2018 01:55 PM, Kok, Vincent Chin Keong wrote:

> I was wondering, how can I upgrade to Yocto version 2.4 (Rocko)? Do I 
> just remove the previous poky folder I downloaded and re-download a 
> newer version of poky and checkout the branch and tags?

The easiest is to perform a clean clone of the poky repo, and check out 
the tag you want.

Alex

