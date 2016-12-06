Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15614E00CAF; Tue,  6 Dec 2016 06:11:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE6E9E00C9B
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 06:11:46 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga105.fm.intel.com with ESMTP; 06 Dec 2016 06:11:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,310,1477983600"; d="scan'208";a="1095339066"
Received: from sawilso3-mobl.amr.corp.intel.com (HELO [10.254.188.115])
	([10.254.188.115])
	by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2016 06:11:35 -0800
To: Patrick Ohly <patrick.ohly@intel.com>, Stefano Babic <sbabic@denx.de>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
	<30a3dd41-2e1c-8658-b83d-8632944d1709@denx.de>
	<1481017522.17535.38.camel@intel.com>
From: "Lopez, Mariano" <mariano.lopez@linux.intel.com>
Message-ID: <8e1fdcb8-d9fb-0e51-2e21-91e7e7c6f450@linux.intel.com>
Date: Tue, 6 Dec 2016 08:11:34 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <1481017522.17535.38.camel@intel.com>
Cc: =?UTF-8?Q?Andr=c3=a9_Draszik?= <git@andred.net>, yocto@yoctoproject.org,
	"Lopez, Mariano" <mariano.lopez@intel.com>
Subject: Re: update mechanisms
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
X-List-Received-Date: Tue, 06 Dec 2016 14:11:49 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 12/6/2016 3:45 AM, Patrick Ohly wrote:
> On Tue, 2016-12-06 at 10:01 +0100, Stefano Babic wrote:
>> Hi Patrick,
>>
>> On 30/11/2016 15:59, Patrick Ohly wrote:
>>> I've started a Wiki page
>>> https://wiki.yoctoproject.org/wiki/System_Update - rudimentary at the
>>> moment, but might as well be mentioned already now.
>> I have seen Mariano added an entry for SWUpdate, too, thanks  - I would
>> like to edit for better explanation on some parts. Should I try to edit
>> directly the page or is it better to discuss it here ?

It will be interesting to have your input directly, I tried to fill the 
table with my experience with SWUpdate but I think you could give a 
better insight of this. Thanks for joining the effort.

> Use your own judgment. If its uncontroversial, the feel free to edit the
> page directly, otherwise let's discuss it here.
>
> If feel that putting information directly into the table is too limiting
> (it should be brief), then feel free to start a complete section about
> SWUpdate.
>
> I'll do the same for swupd. Editing the sections should be possible
> without conflicts, we just have to be more careful about editing the
> table concurrently.
>

I agree with you, that we need to have a section per project, the table 
is too limiting.

Mariano

