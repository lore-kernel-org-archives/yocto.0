Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FFF7E0055D
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2013 09:26:24 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id rASHQHfD001138
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 28 Nov 2013 09:26:18 -0800 (PST)
Received: from server.local (128.224.22.47) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.2.347.0;
	Thu, 28 Nov 2013 09:26:17 -0800
Message-ID: <52977CB8.3070304@windriver.com>
Date: Thu, 28 Nov 2013 12:26:16 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Diego Sueiro
	<diego.sueiro@gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<CAMCfZKHzjj6n2pxe6H_QETQRSPbQ=tGWim54NkakiHxyL5feZA@mail.gmail.com>
	<52976F39.6050003@windriver.com> <4684047.2lGL8cktov@helios>
In-Reply-To: <4684047.2lGL8cktov@helios>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Thu, 28 Nov 2013 17:26:25 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/28/2013, 11:41 AM, Paul Eggleton wrote:
> Hi Bruce / Diego,
>
> On Thursday 28 November 2013 11:28:41 Bruce Ashfield wrote:
>> On 11/28/2013, 11:26 AM, Diego Sueiro wrote:
>>> On Thu, Nov 28, 2013 at 1:49 PM, Bruce Ashfield
>>>
>>> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>> wrote:
>>>      And the patch I attached for the kern-tools to use the dedicated
>>>      release branch for dylan fixed the other patching issue you were
>>>      seeing.
>>>
>>> This patch was applied in some repo?
>>
>> That's why I cc'd Paul on the submission, but I suspect it got lost, since
>> I never did get a comment .. and we are all pretty busily juggling multiple
>> things at once.
>>
>> Paul: can you find the patch in the history of this thread ? If not I
>> can resend it directly.
>
> I've still got it in my queue. I'll try to process and send that out tomorrow,
> sorry for the delay.

No worries. I of all people understand a merge backlog (as I look at my 
pending
BSP merge list :)

Bruce

>
> Cheers,
> Paul
>


