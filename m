Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4950E012F3
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 22:09:44 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Mar 2013 22:09:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,849,1355126400"; d="scan'208";a="306981610"
Received: from unknown (HELO [10.255.13.217]) ([10.255.13.217])
	by fmsmga002.fm.intel.com with ESMTP; 14 Mar 2013 22:09:25 -0700
Message-ID: <5142AD04.30900@linux.intel.com>
Date: Thu, 14 Mar 2013 22:09:24 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <CAE_REAuOnhUG7GOgJHzSbGjrEyjKj8ApZ3J6W1=PtwZd2TM1Mg@mail.gmail.com>
	<CAE_REAuMoVX4RPkVN4UFKX0XvVPK5-b07M-53ueVeKtzWBCFWQ@mail.gmail.com>
	<4C570CD8-26A9-42D0-994E-5329CE7687D5@gmail.com>
In-Reply-To: <4C570CD8-26A9-42D0-994E-5329CE7687D5@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Regarding Licensing of "mbsalign.c" available in util-linux-2.21.2 version (Yocto-1.3-Danny)
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
X-List-Received-Date: Fri, 15 Mar 2013 05:09:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 03/11/2013 10:17 AM, Khem Raj wrote:
>
> On Mar 11, 2013, at 3:45 AM, Gaurang Shastri <gmshastri@gmail.com
> <mailto:gmshastri@gmail.com>> wrote:
>
>> Hi All,
>>
>> Any shades of light for below query ???
>>
>
> I would suggest to open a bug for it.
>
Timing is on this one!

I noticed this recently independent of this email!

I have contacted the maintainer of util-linux to clarify the license of 
mbsalign.c as it's used directly by cal and lslocks and included in the 
common library.

As it also turns out the original reason that util-linux was marked as 
GPLv3 because of lscpu, which is now be changed back to GPLv2.

I will keep people posted on this one.

We try to do our best to keep the license information up to date and 
sometimes files under core licenses slip by. As upstreams projects start 
to use SPDX this kind of problem can be avoided.

Thanks for pointing it out.

Sau!




>> //Gaurang Shastri
>>
>> On Fri, Mar 8, 2013 at 2:51 PM, Gaurang Shastri <gmshastri@gmail.com
>> <mailto:gmshastri@gmail.com>> wrote:
>>
>>     Hi All,
>>
>>     I have some concerns regarding util-linux-2.21.2 version . As per
>>     Yocto-1.3 (danny) recipe,
>>     {{{
>>
>>     LICENSE_${PN}-lscpu = "GPLv3+"  <-- util-linux_2.21.2.bb
>>     <http://util-linux_2.21.2.bb/>
>>
>>     LICENSE = "GPLv2+ & LGPLv2.1+ & BSD"   <-- util-linux.inc
>>
>>     }}}
>>
>>     So as per the above description, only lscpu is GPLv3.
>>
>>     But while looking into the source of util-linux-2.21.2, I found
>>     out that "util-linux-2.21.2/lib/mbsalign.c" is GPLv3 and it is
>>     used by following binaries while building:
>>     {{{
>>       -  fdisk
>>       -  partx
>>     }}}
>>
>>     So does it mean that the above binaries should also be GPLv3 and
>>     need to take care in util-linux.{bb,inc} ???
>>
>>     Regards,
>>     Gaurang Shastri
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

