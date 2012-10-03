Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36770E00717
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 09:15:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 03 Oct 2012 09:15:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,528,1344236400"; d="scan'208";a="230075090"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 03 Oct 2012 09:15:11 -0700
Received: from [10.237.105.49] (mlindnex-mobl1.ger.corp.intel.com
	[10.237.105.49])
	by linux.intel.com (Postfix) with ESMTP id 31F1D2C8001
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 09:15:11 -0700 (PDT)
Message-ID: <506C648E.6090002@linux.intel.com>
Date: Wed, 03 Oct 2012 19:15:10 +0300
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
Organization: Intel OTC
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:15.0) Gecko/20120907 Thunderbird/15.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAJTo0LYvfkAbdngN6KA_wes62RgJYVAjYHKvyVv+unjQDmt2ew@mail.gmail.com>
	<50645E48.7050208@linux.intel.com>
	<1348765649.32215.1.camel@empanada>
	<9EAF22A4DBD743CEA7903B14F00DB03F@intel.com>
	<506B018E.6010101@linux.intel.com>
	<1349193749.8890.6.camel@empanada>
In-Reply-To: <1349193749.8890.6.camel@empanada>
Subject: Re: Cannot do atom-pc build with meta-cedartrail
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Oct 2012 16:15:12 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2012-10-02 19:02, Tom Zanussi wrote:
> On Tue, 2012-10-02 at 18:00 +0300, Mihai Lindner wrote:
>> On 2012-09-29 23:50, Ross Burton wrote:
>>> On Thursday, 27 September 2012 at 18:07, Tom Zanussi wrote:
>>>> Yeah, looks like the other SRC_URIs do that, but it's missing from that
>>>> SRC_URI - I just pushed a fix for this one to meta-intel/master.
>>>
>>> Thanks Tom, I've been frequently flipping between atom-pc and cedartrail and this was getting annoying.
>>>
>>> Ross 
>>>
>>>
>>>
>>
>> Unfortunately this change breaks SRC_URI appends, discarded or overwritten; e.g. adding meta-tlk brings no change to SRC_URI.
>>
> 
> It shouldn't though, since the application of the meta-tlk SRC_URI
> bbappend should follow the SRC_URI assignment in the cedartrail
> bbappend.  On the other hand, the layer priorities don't seem to be
> right - meta-cedartrail is supposed to have a priority of 6, but it
> doesn't actually seem to:
> 
> BBFILE_PRIORITY_cedartrail = "6" 
> 
> [trz@empanada build]$ bitbake-layers show_layers
> layer                 path                                      priority
> ==========================================================================
> meta                  /home/trz/yocto/crownbay-test/meta        5
> meta-yocto            /home/trz/yocto/crownbay-test/meta-yocto  5
> meta-yocto-bsp        /home/trz/yocto/crownbay-test/meta-yocto-bsp  5
> meta-intel            /home/trz/yocto/crownbay-test/meta-intel  5
> meta-cedartrail       /home/trz/yocto/crownbay-test/meta-intel/meta-cedartrail  5
> meta-tlk              /home/trz/yocto/crownbay-test/meta-intel/meta-tlk  5
> 
> On the other hand, meta-tlk does follow meta-cedatrail in the parse
> order so should append to the SRC_URI...
> 
> Tom
> 
> 
> 

Submitted bug #3217 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3217
For the records.

Cheers,

-- 
Mihai Lindner

