Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20FB1E01426; Thu, 19 Jul 2018 07:27:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.158.149 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtpcmd05149.aruba.it (smtpweb149.aruba.it [62.149.158.149])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B00BEE00EE2
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 07:27:55 -0700 (PDT)
Received: from [10.0.3.122] ([78.6.3.122])
	by smtpcmd05.ad.aruba.it with bizsmtp
	id CeTr1y00D2dwwGE01eTr3s; Thu, 19 Jul 2018 16:27:54 +0200
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <ee33909d-862b-cbd6-0e72-79dbf568b781@faresoftware.it>
	<2219937.nEza9XO89O@localhost.localdomain>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <c522af0c-eb79-0e7b-8706-1fd260022778@faresoftware.it>
Date: Thu, 19 Jul 2018 16:27:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <2219937.nEza9XO89O@localhost.localdomain>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1532010474; bh=3jyHG7W2AO91DMRvgk3lXvEkchv1tkYGclPvVa0Ty2g=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=RMLsWCeh+IroiNwJaF+ZpygxblfbQA2akHk9IoZFRAPsWDPPtLP5HGPVHZhtIT2W7
	RJnnS3Abd70jVydtqxdxEt6j9bjByBe5ThKmDH0aM71F4DkUihQAp6vvECinAEnVFH
	ZbQfEO9LHuGpe7k/LVWIHCick1R8kvrJcZhG+sAi7N0mpkY0KTE+Mvy4NY0Ryh0wiL
	jNLhVArWF8wkPJnYt7pkG4mYxlQP/64Lva7y6sgYKyFMejK/sRs7JEqtEKtJMUGQGH
	6xLxeuS1aXWgNVF0Y+Jv5BBGvuAz+zR/X2J/Y50GeW/LeXBqL77R5YAmzmxkJO25ZO
	uujxtHweIrxIA==
Cc: yocto@yoctoproject.org
Subject: Re: Setting recipe version inside an image recipe
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
X-List-Received-Date: Thu, 19 Jul 2018 14:27:57 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Thank you.

Your suggestion is very useful.

The best choice at the end is to have one  recipe every stable version 
of myapp.

So I can freeze the true production recipe for that version.

Maybe in the future the recipe myapp could be evolve with some 
enhancement which could not be compatible with older version.

Good idea.

Best regards,

MZ

Il 19/07/2018 16:02, Paul Eggleton ha scritto:
> Hi Mauro
>
> On Thursday, 19 July 2018 2:36:18 PM CEST Mauro Ziliani wrote:
>> I'm working with Krogoth.
>>
>> I'd like to do this.
>>
>> - I have my application added to yocto tree by its own recipe myapp_git.bb
>>
>> This recipe get the source code from a local git repository setting
>> SRCREV for the last stable application source code.
>>
>> SRCREV is fixed in myapp_git.bb
>>
>>
>> - I have the recipe for the final production image for the embedded
>> system  myos.bb, which declare
>>
>> IMAGE_INSTALL_append = " myapp "
>>
>> The myos.bb compiles myapp with the version declare in myapp_git.bb recipe
>>
>>
>> I'd like to do that
>>
>> - prepare a base recipe myos-base.inc  where I define all I need the
>> produce the final image with
>>
>> IMAGE_INSTALL_append = " myapp "
>>
>> - prepare myos.bb recipe where I can fix the version of myapp.bb to a
>> prpduction version
>>
>> - prepare myos-test.bb recipre where I can fix the HEAD branch of git
>> from I can download the  latest source code for test.
>>
>>
>> I try this
>>
>> - inside myapp_git.bb I put SRCREV="${MYAPP_SRCREV}"
>>
>> - inside myos.bb I set MYAPP_SRCREV="prodution-version-X" to download
>> the tag/branch production-version-X
>>
>> - inside myos-test.bb I set MYAPP_SRCREV="${AUTOREV}" to download the
>> latest git commit
> You cannot do this I'm afraid - in general you cannot set a variable in one
> recipe that will be read by another. See:
>
> https://wiki.yoctoproject.org/wiki/Technical_FAQ#How_do_I_change_how_my_recipe_is_built_depending_on_what_image_I.27m_building.3F
>
> The only real way to do what you're looking for is to have two different
> recipes (where the name is actually different, not just the version). e.g. you
> could have myapp_git.bb and myapp-test_git.bb. You could use a common
> .inc file and "require" that from both .bb files in order to keep the common
> parts in one place. Then you can specify the corresponding package name
> in each image recipe.
>
> Cheers,
> Paul
>


