Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D697E00C77; Tue, 10 Jul 2018 05:18:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.156.101 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtpcmd10101.aruba.it (smtpcmd10101.aruba.it [62.149.156.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2D7AE0080A
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 05:18:16 -0700 (PDT)
Received: from [10.0.3.79] ([78.6.3.122]) by smtpcmd10.ad.aruba.it with bizsmtp
	id 90JE1y0152dwwGE010JF0p; Tue, 10 Jul 2018 14:18:15 +0200
To: yocto@yoctoproject.org
References: <72f720d8-8638-808a-0433-316f83caa781@faresoftware.it>
	<94004992-f933-ec78-cd60-d496616d9bf5@geanix.com>
	<6c7dc4a9-cc58-8485-50c3-656860e265a5@geanix.com>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <702dffd1-0b3a-ce81-c16d-ceddb5ff5555@faresoftware.it>
Date: Tue, 10 Jul 2018 14:18:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.0
MIME-Version: 1.0
In-Reply-To: <6c7dc4a9-cc58-8485-50c3-656860e265a5@geanix.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1531225095; bh=ZWHKjAeXOHpLwyarEeGCEyzgd6UGdblYJvoXLQaPTxg=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=KsLsotVbPFzyFuffYkqRk4XxfvfBnoULs7SVKbbhq6f5iQsuTyJqCD1pF4VjiHVbn
	m/X4Z/dQHuyUfB/bHifSUQlm4NJAGW7ud76vIQyGz47wwUhw8E4IgBRwNAb6/vYMGh
	HcmJvN5NqCuneLIhCZY7pQeTozpd4mU5gNSU7r6bvJjZi6eT1mhAjNMPNVFfBrGNh/
	n6FBM/GVuI10yesH01J8bKZd+MiJO7Ka4X2+B19JhX+gMCmKW6PQGM7r7XZivEzobI
	0kNYcn/kb4/z4KUqoCDEwehodeE/9umdnF8gFCTr0r+q69Enne8mRyB+u/UPdtRCh7
	X5KVHjkroGLUw==
Subject: Re: SRC_URI git from ssh fails
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
X-List-Received-Date: Tue, 10 Jul 2018 12:18:18 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Now it works.

But it was a problem of git repository.

I rebuild the SRCREC on the repository and now I acan fetch the source code.


I choose this recipe method.

PV="1.0"

SRCREV="refs/tags/${PV}"


SRC_URI = " \
     git://user@server/repos.git;protocol=ssh \
"

Thanks for the help

MZ

Il 10/07/2018 10:40, Martin Hundebøll ha scritto:
> Hi again,
>
> On 2018-07-10 10:37, Martin Hundebøll wrote:
>> Hi Mauro,
>>
>> On 2018-07-10 10:31, Mauro Ziliani wrote:
>>> Hi all
>>>
>>> I'm working with Krogoth and imx6dlsabresd board.
>>>
>>> I'm in trouble fetching source code from a git repository via ssh.
>>>
>>> If I get manually the source codes with
>>>
>>> git clone ssh://user@server/repos.git -b 0.4
>>>
>>> it works
>>>
>>>
>>> If I put it in myrecipe_git.bb with
>>>
>>>
>>> SRC_URI = " \
>>>
>>>     git://user@server/repos.git;protocol=ssh;tag=0.4 \
>>>
>>> "
>>
>> You might get lucky with a colon instead of the slash:
>>
>>      git://user@server:repos.git;protocol=ssh;tag=0.4
>>
>> But it is just a wild guess, and I didn't really test it :)
>>
>> // Martin
>>
>>>
>>> S="${WORKDIR}/${PN}-${PV}"
>>>
>>>
>>> the fecth task fails.
>>>
>>>
>>> I try also SRCREV="0.4" outside SRC_URI and rev=0.4 in place of tag=0.4
>
> Oh, don't base your checkouts on tags, as they can change without 
> bitbake noticing.
>
> Put a commit id in SRCREV instead and look into AUTOREV if you need to 
> always build the latest and greatest.
>
> // Martin
>
>>>
>>> Where I mistake?
>>>
>>>
>>> Thanks
>>>
>>>
>>> MZ
>>>
>>>
>>
>


