Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5F09E00DB1; Tue,  6 Feb 2018 23:46:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54DC5E00D5F
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 23:46:49 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id w177kkSr019968
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Wed, 7 Feb 2018 09:46:46 +0200
To: Robert Berger <yocto.user.mailinglist@gmail.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <ac8ff7de-889b-f948-87ba-cac758900512@vitheia.com>
	<4662d7ee-4215-e81e-58aa-a98a42c5ad56@gmail.com>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <b2a06fdc-c5b5-42be-e1e9-1005c5c531e6@vitheia.com>
Date: Wed, 7 Feb 2018 09:46:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <4662d7ee-4215-e81e-58aa-a98a42c5ad56@gmail.com>
Subject: Re: static libraries missing from sdk
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
X-List-Received-Date: Wed, 07 Feb 2018 07:46:51 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Thanks for your answer.
I already have the ALLOW_EMPTY_${PN} = "1" in the recipe

What I still don't get is why the -dev gets installed but the -staticdev 
doesn't, even though the dependency is satisfied (the empty pkg exists).


On 06/02/18 22:25, Robert Berger wrote:
> Hi,
>
> On 2018-02-06 14:53, Mircea Gliga wrote:
>> Hello,
>>
>> I have a problem providing a static library in the SDK:
>> I have a recipe that builds a library. It outputs an -dev pkg with 
>> the /usr/{include,lib} libs in it and a -staticdev pkg with the 
>> static library.
>> The main pkg is empty, in my recipe I have added ALLOW_EMPTY_${PN} = 
>> "1" because the -dev and -staticdev depend on it
>>
>> In my local.conf I have added:
>>      SDKIMAGE_FEATURES += "dev-pkgs dbg-pkgs staticdev-pkgs"
>>
>> Then I run
>>      bitbake my-image -c populate_sdk
>> After installing the SDK, I get the headers (from the -dev pkg) but 
>> not the static library from the -staticdev pkg.
>>
>> Why is that ? From my understanding specifying staticdev-pkgs in the 
>> SDKIMAGE_FEATURE should have this covered.
>>
>> I was able to "force" the install of the -staticdev pks by adding to 
>> local.conf:
>>
>>      TOOLCHAIN_TARGET_TASK_append = " mylibrary-staticdev"
>>
>> Do you have to manually take care of this ? Then, what's the purpose 
>> of SDKIMAGE_FEATURES += " staticdev-pkgs" ?
>> I would like to  have all static libraries in the SDK.
>>
>> Thanks and regards
>
> This sounds like:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=11724
>
>>
>>
>>
>


