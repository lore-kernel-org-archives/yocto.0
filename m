Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 747D3E00D3A; Thu, 19 Oct 2017 03:28:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mailrelay1-3.pub.mailoutpod1-cph3.one.com
	(mailrelay1-3.pub.mailoutpod1-cph3.one.com [46.30.212.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A70FE00C96
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 03:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=W7ML81lwiIcbvfw4Koi4xZJiJbhChjywjgA/dxe386c=;
	b=rUwF73Bfu071abxS4YzX2PhoqGtNF9uAV1ywNACwPtmUt5bX4Rqo6A5yQ8ZUgoOWbFpxvKay6pQc1
	sE/XwM7b55IiRgSVxReRdQ4oScuJyBnC0zQVPwD+cUql/5Us72dUZnvRHP5g8cbyWG+DfYlr6rUFym
	XvLOOvULTSFaaXnA=
X-HalOne-Cookie: c67f0768131f4ec14c35f41f7f15405dcd7a3a9c
X-HalOne-ID: 46f1467d-b4b8-11e7-a520-b8ca3afa9d73
Received: from [192.168.178.20] (unknown [89.13.10.176])
	by smtpfilter1.public.one.com (Halon) with ESMTPSA
	id 46f1467d-b4b8-11e7-a520-b8ca3afa9d73;
	Thu, 19 Oct 2017 10:28:41 +0000 (UTC)
To: =?UTF-8?Q?St=c3=a9phane_Ancelot?= <sancelot@numalliance.com>,
	yocto@yoctoproject.org
References: <bc2a1b00-29ca-e3e7-3e54-51f8f88650e7@numalliance.com>
	<7d046f0a-a71a-27d5-c5a2-6fdf55b950ee@embexus.com>
	<c01a4416-8c30-d548-d23a-ca422ed534dc@numalliance.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <e4f40bfb-402c-0a34-0b4e-46700849adb6@embexus.com>
Date: Thu, 19 Oct 2017 12:28:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <c01a4416-8c30-d548-d23a-ca422ed534dc@numalliance.com>
Subject: Re: sfdisk package
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
X-List-Received-Date: Thu, 19 Oct 2017 10:28:44 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 19.10.2017 12:26, Stéphane Ancelot wrote:
> Hi,
>
> right, it might be this, but how can you retrieve this information ?
>
> searching in recipes I have not found it .
find meta* -type f | xargs grep -e 'sfdisk'
meta/recipes-core/util-linux/util-linux.inc:PACKAGES =+ 
"util-linux-agetty util-linux-fdisk util-linux-cfdisk util-linux-sfdisk \
meta/recipes-core/util-linux/util-linux.inc:FILES_util-linux-sfdisk = 
"${sbindir}/sfdisk"
meta/recipes-core/util-linux/util-linux.inc:RRECOMMENDS_${PN} = 
"util-linux-fdisk util-linux-cfdisk util-linux-sfdisk util-linux-mount 
util-linux-readprofile util-linux-mkfs util-linux-mountpoint 
util-linux-prlimit"
>
> Regards,
>
> S.Ancelot
>
>
> Le 19/10/2017 à 11:39, Ayoub Zaki a écrit :
>>
>>
>> On 19.10.2017 11:36, Stéphane Ancelot wrote:
>>> Hi,
>>>
>>> I would need sfdisk package, I have not found it.
>>>
>>> I suppose I must create it or are there any software forge where I 
>>> could find it ?
>> util-linux-sfdisk ?
>>>
>>> Regards,
>>>
>>> S.Ancelot
>>>
>>
>

-- 
Ayoub Zaki
Embedded Systems Consultant

Vaihinger Straße 2/1
D-71634 Ludwigsburg

Tel.     : +4971415074546
Mobile   : +4917662901545
Email    : ayoub.zaki@embexus.com
Homepage : https://embexus.com


