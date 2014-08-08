Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DF11E00572; Fri,  8 Aug 2014 07:09:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4BF3E004E0
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 07:09:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s78E9EX4001906
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 8 Aug 2014 07:09:14 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.232) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Fri, 8 Aug 2014 07:09:13 -0700
Message-ID: <53E4DA09.9080307@windriver.com>
Date: Fri, 8 Aug 2014 09:09:13 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Pierre Yves MORDRET <pierre-yves.mordret@st.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <888B7DC5D4899F46A9721989283666969C1E56EE1B@SAFEX1MAIL5.st.com>
	<53E3A6DE.7010500@windriver.com>
	<888B7DC5D4899F46A9721989283666969C1E56EE49@SAFEX1MAIL5.st.com>
In-Reply-To: <888B7DC5D4899F46A9721989283666969C1E56EE49@SAFEX1MAIL5.st.com>
Subject: Re: Installing Application Development SDK hangs when using "screen"
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
X-List-Received-Date: Fri, 08 Aug 2014 14:09:22 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 8/8/14, 8:21 AM, Pierre Yves MORDRET wrote:
> Hi Mark,
>
> This is on Daisy branch. On Dylan branch I didn't experience such trouble. It came up with Daisy.

(I haven't used Daisy very much... but...)

There was a bug in the master version of the SDK installer that was displaying 
special characters to the screen in some instances.  It caused what appeared to 
be a lockup on my screen for a while, but it was actually just taking a very 
long time to complete the operation, then a 'return' would allow the prompt to 
come back.

This was recently fixed by a commit from Richard 
2d1660112e54653f7bb763939d0416472c49fe01

If you can, cherry-pick that commit from master into your Daisy branch and try 
again.  If this works, we should get that submitted to Daisy.

--Mark


> Regards
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Mark Hatle
>> Sent: jeudi 7 août 2014 12:19
>> To: yocto@yoctoproject.org
>> Subject: Re: [yocto] Installing Application Development SDK hangs when
>> using "screen"
>>
>> On 8/7/14, 8:59 AM, Pierre Yves MORDRET wrote:
>>> Hi there,
>>>
>>> I have a tricky issue to sort out. I'm using a build server(Ubuntu 12.04 LTS)
>> for building my Yocto project and Application Dev SDK (bitbake -c
>> populate_sdk).
>>> On this build server I 'm used to using "screen" tool. Using "screen" and
>> bitbake at the same time seems to have no issues.
>>>
>>> However when installing the App. Dev. SDK via self-installer, it hangs every
>> time after a while. The culprit seems to be "screen".
>>> If I am IN a "screen" session OR I am OUT "screen" session but there is a
>> running screen session that belongs to me, it hangs.
>>>
>>> Did someone experience such trouble ? Any ideas ?
>>
>> I've seen some terminal failures in the past, but it's always been due to
>> overwriting in-place terminal files.
>>
>> I've not seen anything on a new SDK installation.
>>
>> Which branch of the Yocto Project are you using?
>>
>> --Mark
>>
>>> Thanks in advance
>>> Pierre-Yves
>>>
>>>
>>>
>>>
>>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


