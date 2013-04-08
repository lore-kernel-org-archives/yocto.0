Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8536E014E8
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 09:03:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r38G3uUK001197
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 8 Apr 2013 09:03:56 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Mon, 8 Apr 2013 09:03:56 -0700
Message-ID: <5162EA66.1090306@windriver.com>
Date: Mon, 8 Apr 2013 12:03:50 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1304081135020.23038@oneiric>
	<5162E975.5040705@windriver.com>
	<alpine.DEB.2.02.1304081200410.11037@oneiric>
In-Reply-To: <alpine.DEB.2.02.1304081200410.11037@oneiric>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: working my way through the kernel hands-on labs finally
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
X-List-Received-Date: Mon, 08 Apr 2013 16:04:00 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-04-08 12:02 PM, Robert P. J. Day wrote:
> On Mon, 8 Apr 2013, Bruce Ashfield wrote:
>
>> On 13-04-08 11:41 AM, Robert P. J. Day wrote:
>>>
>>>     finally have the time to work my way through the ELC 2013 hands on
>>> kernel labs described here:
>>>
>>> https://www.yoctoproject.org/tools-resources/presentations/working-kernel
>>>
>>> since i'll almost certainly use some of them in my next yocto course,
>>> so the occasional question for anyone who's already been down this
>>> road.  start with lab 1.
>>>
>>>     the doc mentions including the meta-yocto and meta-yocto-bsp layers
>>> -- are those strictly necessary? the layer.conf definition file for
>>> the lab1 layer doesn't list those layers as dependencies. what will
>>> happen if i leave them out? what's the policy on explicitly listing
>>> dependencies on those two layers in a new layer?
>>>
>>>     also, just doing a basic fetch for lab1 produces:
>>>
>>> ERROR: QA Issue:
>>> /home/rpjday/yocto/k_lab/layers/meta-lab1-qemux86/recipes-kernel/linux/linux_3.0.18.bb:
>>> Variable FILES is set as not being package specific, please fix this.
>>>
>>>     is that deliberate? something that will be resolved later in the
>>> lab as part of an exercise? just curious.
>>
>> Probably not deliberate, the kernel labs aren't about packaging.
>> Which branch are you using for your tests ? Even if it's an old
>> release branch, there may have been some QA backports between the
>> time the lab was done, and the time you are running it.
>
>    i'm using HEAD for everything, even though the labs dictate
> poky-danny-8.0.1; if anything breaks because of that, i'll make a note
> of it.

That's what I wondered. These were all done against 1.3, so the QA
warning (and other issues you'll see) are very likely caused by this
skew. For the next round of conferences, there are plans to update
them to use 1.4 and get required cleanup.

Bruce

>
> rday
>


