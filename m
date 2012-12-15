Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36A9BE003DA
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 16:50:04 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id qBF0o3vv002632
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 16:50:03 -0800 (PST)
Received: from msp-dhcp56.wrs.com (172.25.34.56) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Fri, 14 Dec 2012 16:50:03 -0800
Message-ID: <50CBC93C.2030802@windriver.com>
Date: Fri, 14 Dec 2012 18:50:04 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <50CB8173.4030801@am.sony.com>
	<CAJTo0LaHPuYMnasJJ3dvufb6HYy9rpf8CUpkB8CcwMNSyux5NQ@mail.gmail.com>
	<50CB9004.60908@windriver.com> <50CBA44C.4030009@am.sony.com>
In-Reply-To: <50CBA44C.4030009@am.sony.com>
Subject: Re: What is GMAE?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 15 Dec 2012 00:50:04 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/14/12 4:12 PM, Tim Bird wrote:
> On 12/14/2012 12:45 PM, Mark Hatle wrote:
>> On 12/14/12 1:46 PM, Burton, Ross wrote:
>>> On 14 December 2012 19:43, Tim Bird <tim.bird@am.sony.com> wrote:
>>>> "If you need GMAE, you should use the bitbake meta-toolchain-gmae command. The resulting installation script when run will support such development. However, if you are not concerned with GMAE, you
>>>> can generate the toolchain installer using bitbake meta-toolchain."
>>>>
>>>> After googling a bit, I figured out that GMAE stands for Gnome Mobile and Embedded.
>>>>
>>>> It might be good to put this acronym somewhere in the manual.
>>>> (I'm still not sure if I need GMAE or not...)
>>>
>>> Basically, GMAE means GTK+ 2 and bits of the GNOME stack.
>>>
>>> A stealth plan of mine is to remove every trace of GMAE from Yocto.
>>> It was an initiative Poky was involved with back in the OpenedHand
>>> days that didn't really take off, and we're still carrying pieces of
>>> it.
>>
>> I get this question a lot.  With the ability (new in 1.3) to build an SDK based
>> on the contents of any arbitrary image.. the meta-toolchain-gmae is simply not
>> necessary.
>>
>> bitbake -c populate_sdk <image recipe>
>
> Aha.  Thanks very much.
>
> Is this the preferred way to get a toolchain out of yocto?
> That's exactly what I'm working on at the moment (well, after
> fixing up some toolchain build issues I've encountered after
> messing around a bit with the toolchain recipes...;-)

I don't know if it's the preferred "Yocto Project" way.. but it's the only way I 
do it.

The code was implemented in the middle of the 1.3 process and does work in 1.3. 
  (However multilib support may not be there.  There are a series of patches 
pending for master that do enable the multilib support as part of the rpm/smart 
work.)

--Mark

>   -- Tim
>
>
> =============================
> Tim Bird
> Architecture Group Chair, CE Workgroup of the Linux Foundation
> Senior Staff Engineer, Sony Network Entertainment
> =============================
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


