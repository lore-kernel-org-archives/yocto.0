Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60FFCE00B5A; Wed, 13 Jan 2016 09:07:42 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACAC5E008EE
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 09:07:39 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 13 Jan 2016 09:07:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,290,1449561600"; d="scan'208";a="632883469"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.151])
	([10.219.5.151])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Jan 2016 09:06:59 -0800
To: Jussi Kukkonen <jussi.kukkonen@intel.com>,
	Anibal Limon <anibal.limon@intel.com>
References: <37b747fd-ad90-45e9-b3cc-4595c4d83661@fmsmsx108.amr.corp.intel.com>
	<CAHiDW_GGH6X3vyFXe5+JCZz3pn8L0HPDfxN3BsjT3nbYC_oj_w@mail.gmail.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <56968498.5070207@linux.intel.com>
Date: Wed, 13 Jan 2016 11:08:40 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAHiDW_GGH6X3vyFXe5+JCZz3pn8L0HPDfxN3BsjT3nbYC_oj_w@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [AUH] gpgme: upgrading to 1.6.0 SUCCEEDED
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
X-List-Received-Date: Wed, 13 Jan 2016 17:07:42 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Jussi,

Thanks for the feedback, comments below...

Cheers,
	alimon


On 01/13/2016 07:42 AM, Jussi Kukkonen wrote:
> Hi,
> 
> On 11 January 2016 at 06:21, <auh@auh.yoctoproject.org> wrote:
> 
>> Hello,
>>
>> You are receiving this email because you are the maintainer
>> of *gpgme* recipe and this is to let you know that the automatic attempt
>> to upgrade the recipe to *1.6.0* has Succeeded.
>>
> 
> 
> First, thanks for the effort Anibal, the upgrade helper is looking very
> useful: I'm certainly going to use it.
> 
> Couple of small issues:
> * The license diffs do not seem correct: they look like like diffs between
> an empty file and the new license file version (see the parent gpgme post
> for example)

Yes i see, i'll review/fix the problem.

> * Is the decision to use "buildhistory-diff -a" intentional? I'm not 100%
> sure what exactly "-a" option brings with it but I've usually avoided it on
> upgrades because the path changes in  -dbg package are so verbose as to
> hide everything else...

It was mine decision for provide more output for the maintainers but if
you think that's enough without -a that's ok.

May be a good idea will be to sent two files one,

	- buildhistory-diff.txt: Without -a.
	- buildhistory-diff-all.txt: With -a/

Comments?

> 
> Thanks,
>   Jussi
> 
> 
>> *LICENSE CHANGED* please review the gpgme.h.in.diff file and update the
>> LICENSE
>> variable in the recipe if is needed.
>>
>> The recipe has been successfully compiled for machines qemux86,
>> qemux86-64, qemuarm, qemumips, qemuppc.
>>
>> Next steps:
>>     - apply the patch: git am 0001-gpgme-upgrade-to-1.6.0.patch
>>     - check that required upstream patches have not been commented from
>> the recipe,
>>       if upstream patches were commented the reason is specified in the
>> commit message.
>>     - compile an image that contains the package
>>     - perform some basic sanity tests
>>     - amend the patch and sign it off: git commit -s --reset-author --amend
>>     - send it to the list
>>
>> Attached are the patch, license diff (if change) and bitbake log.
>> Any problem please contact Anibal Limon <anibal.limon@intel.com>.
>>
>> Regards,
>> The Upgrade Helper
> 
> 
> 

