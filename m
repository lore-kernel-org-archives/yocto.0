Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AD2DE00770
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 06:57:51 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Mar 2013 06:57:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,850,1355126400"; d="scan'208";a="303426440"
Received: from unknown (HELO [10.255.13.217]) ([10.255.13.217])
	by fmsmga001.fm.intel.com with ESMTP; 15 Mar 2013 06:57:48 -0700
Message-ID: <514328DC.30103@linux.intel.com>
Date: Fri, 15 Mar 2013 06:57:48 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Gaurang Shastri <gmshastri@gmail.com>
References: <CAE_REAuOnhUG7GOgJHzSbGjrEyjKj8ApZ3J6W1=PtwZd2TM1Mg@mail.gmail.com>
	<CAE_REAuMoVX4RPkVN4UFKX0XvVPK5-b07M-53ueVeKtzWBCFWQ@mail.gmail.com>
	<4C570CD8-26A9-42D0-994E-5329CE7687D5@gmail.com>
	<5142AD04.30900@linux.intel.com>
	<CAE_REAsY=72buk0smfJDdjqBQm3spJ8dPfqMPc3cY9uyPn9XVQ@mail.gmail.com>
In-Reply-To: <CAE_REAsY=72buk0smfJDdjqBQm3spJ8dPfqMPc3cY9uyPn9XVQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 15 Mar 2013 13:57:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/15/2013 06:31 AM, Gaurang Shastri wrote:
> Thanks for replying on this.
>
> FYI, I have already open a bug for this:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=4014
>

Thanks,

I have a patch from the upstream author of the code changing the license 
from GPLv3 to LGPLv2.1 so this will be resolved shortly.

We can also take this patch into the Danny release to clarify it.

Sau!

> Regards,
> Gaurang Shastri
>
> On Fri, Mar 15, 2013 at 10:39 AM, Saul Wold <sgw@linux.intel.com
> <mailto:sgw@linux.intel.com>> wrote:
>
>
>
>     On 03/11/2013 10:17 AM, Khem Raj wrote:
>
>
>         On Mar 11, 2013, at 3:45 AM, Gaurang Shastri
>         <gmshastri@gmail.com <mailto:gmshastri@gmail.com>
>         <mailto:gmshastri@gmail.com <mailto:gmshastri@gmail.com>>> wrote:
>
>             Hi All,
>
>             Any shades of light for below query ???
>
>
>         I would suggest to open a bug for it.
>
>     Timing is on this one!
>
>     I noticed this recently independent of this email!
>
>     I have contacted the maintainer of util-linux to clarify the license
>     of mbsalign.c as it's used directly by cal and lslocks and included
>     in the common library.
>
>     As it also turns out the original reason that util-linux was marked
>     as GPLv3 because of lscpu, which is now be changed back to GPLv2.
>
>     I will keep people posted on this one.
>
>     We try to do our best to keep the license information up to date and
>     sometimes files under core licenses slip by. As upstreams projects
>     start to use SPDX this kind of problem can be avoided.
>
>     Thanks for pointing it out.
>
>     Sau!
>
>
>
>
>             //Gaurang Shastri
>
>             On Fri, Mar 8, 2013 at 2:51 PM, Gaurang Shastri
>             <gmshastri@gmail.com <mailto:gmshastri@gmail.com>
>             <mailto:gmshastri@gmail.com <mailto:gmshastri@gmail.com>>>
>             wrote:
>
>                  Hi All,
>
>                  I have some concerns regarding util-linux-2.21.2
>             version . As per
>                  Yocto-1.3 (danny) recipe,
>                  {{{
>
>                  LICENSE_${PN}-lscpu = "GPLv3+"  <--
>             util-linux_2.21.2.bb <http://util-linux_2.21.2.bb>
>                  <http://util-linux_2.21.2.bb/>
>
>
>                  LICENSE = "GPLv2+ & LGPLv2.1+ & BSD"   <-- util-linux.inc
>
>                  }}}
>
>                  So as per the above description, only lscpu is GPLv3.
>
>                  But while looking into the source of util-linux-2.21.2,
>             I found
>                  out that "util-linux-2.21.2/lib/__mbsalign.c" is GPLv3
>             and it is
>                  used by following binaries while building:
>                  {{{
>                    -  fdisk
>                    -  partx
>                  }}}
>
>                  So does it mean that the above binaries should also be
>             GPLv3 and
>                  need to take care in util-linux.{bb,inc} ???
>
>                  Regards,
>                  Gaurang Shastri
>
>
>             _________________________________________________
>             yocto mailing list
>             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>             <mailto:yocto@yoctoproject.org
>             <mailto:yocto@yoctoproject.org>__>
>             https://lists.yoctoproject.__org/listinfo/yocto
>             <https://lists.yoctoproject.org/listinfo/yocto>
>
>
>
>
>         _________________________________________________
>         yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         https://lists.yoctoproject.__org/listinfo/yocto
>         <https://lists.yoctoproject.org/listinfo/yocto>
>
>

