Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AD30E003DB; Fri, 20 Jan 2017 12:42:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C919AE0033D
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 12:42:31 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 9CC9368A019; Fri, 20 Jan 2017 20:42:30 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 0B92D68A019;
	Fri, 20 Jan 2017 20:42:29 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id A3100674024D;
	Fri, 20 Jan 2017 21:42:29 +0100 (CET)
To: yocto@yoctoproject.org
References: <709d0576-a880-c109-b602-73cf671a96ae@mlbassoc.com>
	<CAJTo0LZina7gy9PAiEj_1Wusvfi8HDMpqfHg5oYKkJbHBdsxgA@mail.gmail.com>
	<6bf7b6d1-fcbc-6f27-6694-4742e3f4f8e5@mlbassoc.com>
	<CAJTo0LYL5JtzNV7S-E68h=6hMrzBkrrquF9-wOWQ=wHOsVk2TA@mail.gmail.com>
	<eee4fd59-1c5a-5ce0-e51c-1f43b23fd0da@mender.io>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <b8b4d89e-5429-b184-58ab-2363f68836bd@mlbassoc.com>
Date: Fri, 20 Jan 2017 21:42:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <eee4fd59-1c5a-5ce0-e51c-1f43b23fd0da@mender.io>
Subject: Re: sstate-cache and native recipes
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
X-List-Received-Date: Fri, 20 Jan 2017 20:42:35 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-01-20 14:05, Kristian Amlie wrote:
> On 18/01/17 12:28, Burton, Ross wrote:
>>
>> On 18 January 2017 at 09:51, Gary Thomas <gary@mlbassoc.com
>> <mailto:gary@mlbassoc.com>> wrote:
>>
>>     How would one change the recipe to reflect that?  Is there an
>>     override that effectively says "not -native"?
>>
>>
>> do_install_class-target.
>
> This is exactly the annoyance I've hit as well. Did you have any success
> with this?
>
> I can probably give it a spin as well if you want me to.
>

I have a patch that I'll post tomorrow

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

