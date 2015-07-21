Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F103FE0097F; Tue, 21 Jul 2015 10:40:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B37CE00837
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 10:40:44 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 21 Jul 2015 10:40:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,517,1432623600"; d="scan'208";a="527840470"
Received: from lsandov1-mobl-linux.zpn.intel.com (HELO [10.219.4.55])
	([10.219.4.55])
	by FMSMGA003.fm.intel.com with ESMTP; 21 Jul 2015 10:40:41 -0700
Message-ID: <55AE8445.60302@linux.intel.com>
Date: Tue, 21 Jul 2015 12:41:25 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: Victor Rodriguez <vm.rod25@gmail.com>, 
	openembedded-devel@lists.openembedded.org
References: <CAK5mtexdmYF7ivs+nwa7WZSqVb8sZCq5Euvt8oK2HimiXy7PMA@mail.gmail.com>	<55AE6705.5040907@mlbassoc.com>
	<CAK5mtex-n4XrVXG18zG=ha_+R1-Z5Yh6TKLWudt1CVpXpUHokQ@mail.gmail.com>
In-Reply-To: <CAK5mtex-n4XrVXG18zG=ha_+R1-Z5Yh6TKLWudt1CVpXpUHokQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [oe] Question about IMAGE_INSTALL_append and CORE_IMAGE_EXTRA_INSTALL
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
X-List-Received-Date: Tue, 21 Jul 2015 17:40:47 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit





On 07/21/2015 10:45 AM, Victor Rodriguez wrote:
> On Tue, Jul 21, 2015 at 10:36 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>> On 2015-07-21 09:26, Victor Rodriguez wrote:
>>>
>>> Hi team
>>>
>>> I have a question , according to documentation there is a difference
>>> between
>>>
>>> IMAGE_INSTALL_append
>>>
>>> and
>>>
>>> CORE_IMAGE_EXTRA_INSTALL
>>>
>>> Specifies the list of packages to be added to the image. You should
>>> only set this variable in the local.conf configuration file found in
>>> the Build Directory.
>>>
>>> When I use the second one and try to build a core-image-minimal-xfce
>>> bitbake does not install what I wanted in my image . I had a really
>>> hard time few weekends ago because of this.
>>>
>>> I wonder If I am missing something or if this is a bug
>>
>>
>> The core-image-minimal-xfce recipe does not "play nice" with
>> the core-image class and is not respecting CORE_IMAGE_EXTRA_INSTALL.
>>
>> I think this should be filed as a bug (and feel free to suggest a patch)
>>
>> BTW, this question should really be on the OpenEmbedded development list.
>
>
> Thanks Gary
>
> I will submit the BUG , do you know the Bugzila where I should submit it ?

Victor, you can file a bug at https://bugzilla.yoctoproject.org

>
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>> --
>> _______________________________________________
>> Openembedded-devel mailing list
>> Openembedded-devel@lists.openembedded.org
>> http://lists.openembedded.org/mailman/listinfo/openembedded-devel

