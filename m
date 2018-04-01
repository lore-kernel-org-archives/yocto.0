Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5456E00BAA; Sun,  1 Apr 2018 03:34:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3AE5E00932
	for <yocto@yoctoproject.org>; Sun,  1 Apr 2018 03:34:07 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 2382035CE77;
	Sun,  1 Apr 2018 10:34:06 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id TK5IkbVUQxq7; Sun,  1 Apr 2018 10:33:57 +0000 (UTC)
Received: from [127.0.0.1] (cpc111193-live30-2-0-cust656.17-2.cable.virginm.net
	[92.232.58.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 7236D35CE75;
	Sun,  1 Apr 2018 10:33:57 +0000 (UTC)
To: =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@gmail.com>
References: <c812b851-4cef-d5c3-e0cc-d1bca0547f3c@dynamicdevices.co.uk>
	<CALbNGRQ+o4RDANOy41g8K-K4FqNFPtTHA2jJUcb5NVk_EYeEgg@mail.gmail.com>
From: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <8a2e1f90-3b72-8dc4-fdee-c12613708b90@dynamicdevices.co.uk>
Date: Sun, 1 Apr 2018 11:33:58 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CALbNGRQ+o4RDANOy41g8K-K4FqNFPtTHA2jJUcb5NVk_EYeEgg@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: meta-mono: breaking as libglade removed
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
X-List-Received-Date: Sun, 01 Apr 2018 10:34:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB



On 31/03/2018 16:37, Andreas Müller wrote:
> On Fri, Mar 30, 2018 at 11:19 AM, Alex Lennon
> <ajlennon@dynamicdevices.co.uk> wrote:
>> Hi,
>>
>> libglade seems to have been removed which is breaking meta-mono builds.
>>
>> What's best to fix this? Should I be adding the recipe into meta-mono?
>>
>> Thanks,
>>
>> Alex
> As the one who removed it - so feel responsible...
>
> 1.You could add libglade to meta-mono but I think there some
> additional dependencies which need to be added too
> 2. Checked configure script of gtk-sharp-2.12.45: Seems libglade is an
> optional dependency. I think it should be good enough to remove it
> from dependencies.
>
> My suggestion would be 2.
>
> Andreas
>

Thanks Andreas. I've build successfully with option (2) and will keep an 
eye on it to see if anything breaks.

Cheers!

Alex


