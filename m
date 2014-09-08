Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 693E8E00786; Mon,  8 Sep 2014 13:02:59 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20B1FE0056A
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 13:02:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s88K2rL2021792
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 8 Sep 2014 13:02:53 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Mon, 8 Sep 2014 13:02:53 -0700
Message-ID: <540E0B56.6060805@windriver.com>
Date: Mon, 8 Sep 2014 16:02:30 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Ilya Dmitrichenko <errordeveloper@gmail.com>, yocto
	<yocto@yoctoproject.org>
References: <CAPhDKbFei3vk24Zt2K169DGW+_QLhEWtV+MGXFPOgOr8TFFX0w@mail.gmail.com>	<540C68E0.5050907@windriver.com>	<CAPhDKbGc=aZ0Uy2XD5nSivugzwERKFJXbW3MJH=ye4UEM-X5Tg@mail.gmail.com>	<540D9DC2.5010900@windriver.com>	<CAPhDKbH3sj49qfuBnKY-JvD2AGarFpx1PnSOij67Uvr3gABeTg@mail.gmail.com>
	<CAPhDKbHBLE1_PVZZzWhLoz0Dxhh7GVWuoyNpQ+faV-7ZcV912A@mail.gmail.com>
In-Reply-To: <CAPhDKbHBLE1_PVZZzWhLoz0Dxhh7GVWuoyNpQ+faV-7ZcV912A@mail.gmail.com>
Subject: Re: Kernel features
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
X-List-Received-Date: Mon, 08 Sep 2014 20:02:59 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-09-08 02:07 PM, Ilya Dmitrichenko wrote:
> On 8 September 2014 13:14, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
>
>> Ah, but we do verify it. There's a check config task, that used to
>> be more visible, I got complaints and we hid it. I have a 1.7 task
>> to make it more visible again :)
>
> I have ran kernel_configcheck and it didn't appear to indicate anything.

The audit files in the source tree should say something. But maybe they
broke (again), when I'm making the results more visible, I'll confirm
if it is working properly.

Bruce

>
>>> Warning: The Kconfig option CONFIG_SND_DAVINCI_SOC_MCASP that you have
>>> specified depends on CONFIG_SND_DAVINCI_SOC. I will enable
>>> CONFIG_SND_DAVINCI_SOC as a module for you.
>>
>>
>> This one you can't do without parsing and evaluating all the Kconfigs,
>> which is expensive, and hard to do. We can do something basic by looking
>> at only the direct options within a particular Kconfig, since they are
>> immediately available.
>
> I see. Have anyone though of making Kconfig itself to dump out deps
> tree in JSON or other machine-readable format?
>
>> But we do detect a whole set of other errors already, and for the most
>> part, they lead pretty quickly to the issue.
>
> Bruce, that's great to hear!
>


