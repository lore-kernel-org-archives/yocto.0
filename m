Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 566FEE00D0E; Fri, 18 Jan 2019 06:00:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.156.86 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd0986.aruba.it (smtpcmd0986.aruba.it [62.149.156.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A767E00CF1
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 06:00:35 -0800 (PST)
Received: from [10.0.3.114] ([78.6.3.122])
	by smtpcmd09.ad.aruba.it with bizsmtp
	id Rq0Y1z00n2dwwGE01q0ZB6; Fri, 18 Jan 2019 15:00:34 +0100
To: "Burton, Ross" <ross.burton@intel.com>
References: <0dd6be51-9a1c-c514-6cfb-2f8bc3464b2a@faresoftware.it>
	<CAJTo0LZKCdj6SSQ3iu9CCQjtSC6WakQmfxhwiKNk0occ7k6Ofg@mail.gmail.com>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <e42136b2-26e6-3e19-e139-7da98c4f1856@faresoftware.it>
Date: Fri, 18 Jan 2019 15:00:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZKCdj6SSQ3iu9CCQjtSC6WakQmfxhwiKNk0occ7k6Ofg@mail.gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1547820034; bh=79szs2X4yIFkXbOg5dOtBw+G66iWgHQ1df4UXIeDfMI=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=iYRXIiy0Lv4zuEnv8XR445ncKpssfoAfMKMEj3bTbAtYKTnqojsLGFClgn7nuqMgm
	TSyoqvM8+onBrr6NFK6I8K8EZEVSHUe3rO5xjaxyR1dlE/fa/ejO7rtC21+ZZsZIrd
	kr9F722NUuYBPQNEb7DHxzRTI+r6IRM+5d8yQJ9NKiUXfLNg9NTZjsEkbejVX47dcw
	wVpv2WBRE76T6UJF4IRC4XxDCv1UvR7VBoodzzJ1eG1/Ra9wuIl+wzX+LnV5nZsNLC
	FygOcUX5Z7bdAJ7xWch/cw1lXnoGYfCiWmpWCY3rj4QViKr5Cz6C6CoWWf3JfWRuhM
	mjKpdualgKwjg==
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Fetch from git every bitbake
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
X-List-Received-Date: Fri, 18 Jan 2019 14:00:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: it

I try AUTOREV in the recipe app_1.0.bb


SRCREV := "${AUTOREV}"

But it doesn't work.

Which other variables could inhibit AUTOREV?


MZ

Il 17/01/19 15:09, Burton, Ross ha scritto:
> Look up AUTOREV in the manual, that does exactly what you want.
>
> Ross
>
> On Thu, 17 Jan 2019 at 14:08, Mauro Ziliani <mauro@faresoftware.it> wrote:
>> Hi all.
>>
>> How can I force the pull from git repository of my app every time I do
>>
>> bitbake app
>>
>>
>> Best regards,
>>
>>    MZ
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

