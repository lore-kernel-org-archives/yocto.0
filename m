Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE004E00294
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 12:45:47 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id qBEKjmHi025588
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 12:45:48 -0800 (PST)
Received: from msp-dhcp56.wrs.com (172.25.34.56) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Fri, 14 Dec 2012 12:45:46 -0800
Message-ID: <50CB9004.60908@windriver.com>
Date: Fri, 14 Dec 2012 14:45:56 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <50CB8173.4030801@am.sony.com>
	<CAJTo0LaHPuYMnasJJ3dvufb6HYy9rpf8CUpkB8CcwMNSyux5NQ@mail.gmail.com>
In-Reply-To: <CAJTo0LaHPuYMnasJJ3dvufb6HYy9rpf8CUpkB8CcwMNSyux5NQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 14 Dec 2012 20:45:47 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/14/12 1:46 PM, Burton, Ross wrote:
> On 14 December 2012 19:43, Tim Bird <tim.bird@am.sony.com> wrote:
>> "If you need GMAE, you should use the bitbake meta-toolchain-gmae command. The resulting installation script when run will support such development. However, if you are not concerned with GMAE, you
>> can generate the toolchain installer using bitbake meta-toolchain."
>>
>> After googling a bit, I figured out that GMAE stands for Gnome Mobile and Embedded.
>>
>> It might be good to put this acronym somewhere in the manual.
>> (I'm still not sure if I need GMAE or not...)
>
> Basically, GMAE means GTK+ 2 and bits of the GNOME stack.
>
> A stealth plan of mine is to remove every trace of GMAE from Yocto.
> It was an initiative Poky was involved with back in the OpenedHand
> days that didn't really take off, and we're still carrying pieces of
> it.

I get this question a lot.  With the ability (new in 1.3) to build an SDK based 
on the contents of any arbitrary image.. the meta-toolchain-gmae is simply not 
necessary.

bitbake -c populate_sdk <image recipe>

--Mark

> Ross
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


