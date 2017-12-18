Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F906E00D6B; Mon, 18 Dec 2017 07:05:06 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A52D6E00CE8
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 07:05:05 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Dec 2017 07:05:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,422,1508828400"; d="scan'208";a="188014351"
Received: from jlock-mobl3.ger.corp.intel.com ([10.252.0.114])
	by fmsmga006.fm.intel.com with ESMTP; 18 Dec 2017 07:05:03 -0800
To: Martin Kelly <mkelly@xevo.com>, "Avery, Brian" <brian.avery@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <13c0ade8-e1fe-d4e7-a73b-67ea4c425321@xevo.com>
	<A3D4AF61-F4E3-49DE-BC93-DE355D147B7E@intel.com>
	<a280cd23-80e9-474f-0f2c-db0d5070b8cf@xevo.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
Message-ID: <3a1dd0c7-8e98-5497-cc87-256e2f5eabf4@linux.intel.com>
Date: Mon, 18 Dec 2017 15:05:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <a280cd23-80e9-474f-0f2c-db0d5070b8cf@xevo.com>
Cc: "Lock, Joshua G" <joshua.g.lock@intel.com>
Subject: Re: CROPS status?
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
X-List-Received-Date: Mon, 18 Dec 2017 15:05:06 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Hi Martin,

On 14/12/17 20:52, Martin Kelly wrote:
> On 12/13/2017 12:44 PM, Avery, Brian wrote:
>> + joshua.
>>
>> I am no longer working on the YP, but Joshua is looking after CROPS. 
>> It is actually a family of containers, so some parts have been updated 
>> more recently.
>>
>> -brian
>>
> 
> Thanks Brian. Joshua, do you know the code status? Is the project still 
> actively being worked on? Are there any related repositories I should be 
> looking at?

We have relatively little time for feature development, but we are 
attempting to keep the container images up-to-date with new distro 
releases. There are Fedora 27 and Ubuntu 17.10 versions of the 
containers available on Docker Hub[1].

Thanks,
Joshua

1. https://hub.docker.com/r/crops/

