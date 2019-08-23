Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0FCDE00CD5; Thu, 22 Aug 2019 20:21:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61BD6E00BB5
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 20:21:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x7N3KUFa026671
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 22 Aug 2019 20:21:06 -0700
Received: from [128.224.162.148] (128.224.162.148) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 22 Aug 2019 20:20:57 -0700
To: JH <jupiter.hce@gmail.com>
References: <CAA=hcWQ3N8VevOFcsL+595HZp4UqcgdQgQrQJFpMttDFLZPVdA@mail.gmail.com>
	<CAA=hcWQ9fMMFw65h4M8LWM_Mqx-MDN2sUDy+pzLSMgFV1bak1Q@mail.gmail.com>
	<d61333d0-47a1-194a-abbc-d3dbf34bc296@windriver.com>
	<CAA=hcWT7mowfMWp+JoT+2Oi8S+M+j19cEfDXgrPQwih+WQoYPg@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <b57b4749-ffb3-ebaf-5bc6-992bc1541c2d@windriver.com>
Date: Fri, 23 Aug 2019 11:34:37 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAA=hcWT7mowfMWp+JoT+2Oi8S+M+j19cEfDXgrPQwih+WQoYPg@mail.gmail.com>
X-Originating-IP: [128.224.162.148]
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Can Yocto build to set up process running priority in service?
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
X-List-Received-Date: Fri, 23 Aug 2019 03:21:34 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 08/23/2019 10:58 AM, JH wrote:
> Thanks ChenQi, can the process priority be set in ExecStart= of the
> xxx.service file?
>
> Thank you.
>
> Kind regards,
>
> - jh

I didn't try it out. But I think the answer is likely to be 'No'.

systemd does not like the old 'nice'. So there's no mechanism integrated 
in systemd.
You can use more modern way of CPUWeight, which makes use cgroup 
mechanism. Check systemd.recource-control(5) for more info.

Best Regards,
Chen Qi

> On 8/23/19, ChenQi <Qi.Chen@windriver.com> wrote:
>> On 08/23/2019 05:32 AM, JH wrote:
>>> I have two processes launched from a service unit, how can the Yocto
>>> customer distro to set up high_priority_process?
>>>
>>> ExecStartPre=low_priority_priority
>>> ExecStart=high_priroty_process
>>>
>>> Thank you.
>>>
>>> Kind regards,
>>>
>>> - jh
>>>
>>> On 8/22/19, JH <jupiter.hce@gmail.com> wrote:
>>>> Hi,
>>>>
>>>> How to set up process running priority for services in Yocto build
>>>> using renice or some method?
>>>>
>>>> Thank you.
>>>>
>>>> Kind regards,
>>>>
>>>> - jupiter
>>>>
>> Not sure about your exact needs. But as far as I know, nice value is
>> inherited. You can just set it for the shell that starts a yocto build.
>> If you are using some scripts, the same logic holds.
>>
>> Best Regards,
>>
>> Chen Qi
>>
>>


