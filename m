Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9C5BE00956; Wed,  4 Apr 2018 14:58:47 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C02F8E006B4
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2018 14:58:46 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Apr 2018 14:58:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,408,1517904000"; d="scan'208";a="31636062"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga006.jf.intel.com with ESMTP; 04 Apr 2018 14:58:42 -0700
Received: from klrodema-mobl1.amr.corp.intel.com (unknown [10.254.2.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id 79EFE5801C0
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2018 14:58:42 -0700 (PDT)
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAFzUWG=mpaXdjF09r8x_rYbxyVq6we5XB8uSbkXtEche0LWeJw@mail.gmail.com>
	<01e99de4-7329-a19d-0c8a-2b6c03230e86@linux.intel.com>
Message-ID: <5f5ef347-6b21-8948-abcc-84131c5c4069@linux.intel.com>
Date: Wed, 4 Apr 2018 14:58:41 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <01e99de4-7329-a19d-0c8a-2b6c03230e86@linux.intel.com>
Subject: Re: Setting a custom hostname using git revisions?
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
X-List-Received-Date: Wed, 04 Apr 2018 21:58:48 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 4/4/18 9:13 AM, Stephano Cetola wrote:
> On 4/4/18 8:48 AM, Giordon Stark wrote:
>> Hi all,
>>
>> I looked at the bitbake manual, but if I have a custom layer that's
>> checked out at a specific revision, how can I access the variable
>> containing the revision to embed it into the hostname variable?
>>
>> I would want to append the hostname variable in:
>> recipes-core/base-files/base-files_%.bbappend which is currently set to
>> "${MACHINE}".
>>
>> Instead, I would like something along the lines of
>> "${MACHINE}-${LAYER_REV}".
>>
>> Thanks,
>>
>> Giordon
>> -- 
>> Giordon Stark
>>
>>
> 
> This is pretty tricky. I'd use a python function inside your recipe.
> 
> You can get the layers like this:
> 
> layers = (bb.data.getVar("BBLAYERS", d, 1) or "").split()
> 
> Then if you have a look at the metadata_scm.bbclass, you can use some of
> the functions in there:
> 
> base_get_metadata_git_branch
> base_get_metadata_git_revision
> 
> Add some logic and you should be able to pull the revision information
> you care about out of that data.
> 
> Cheers,
> Stephano
> 
> 
A rather elaborate example of how to get the revision number can be seen
here:

https://github.com/openembedded/openembedded-core/blob/master/meta/classes/image-buildinfo.bbclass

--S

