Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 427B9E006F5
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2013 08:00:52 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r03G0nxg025559
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 Jan 2013 08:00:49 -0800 (PST)
Received: from msp-dhcp10.wrs.com (172.25.34.10) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Thu, 3 Jan 2013 08:00:49 -0800
Message-ID: <50E5AB37.10900@windriver.com>
Date: Thu, 3 Jan 2013 10:00:55 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Marko Lindqvist <cazfi74@gmail.com>
References: <1357199532-22977-1-git-send-email-cazfi74@gmail.com>
In-Reply-To: <1357199532-22977-1-git-send-email-cazfi74@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Fix prelink build with automake-1.13
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
X-List-Received-Date: Thu, 03 Jan 2013 16:00:52 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 1/3/13 1:52 AM, Marko Lindqvist wrote:
> [PATCH] fix build with automake-1.13.
>
> Long obsolete AM_CONFIG_HEADER is completely removed from automake-1.13,
> which errors out upon seeing it.
> configure.in -> configure.ac rename is not strictly necessary yet,
> use of deprecated name still gives only warning.
>
> Problem in dropping obsolete constructs is that support for autotools
> versions so ancient that now-obsolete way is the only way to do things.
> configure.in seems to have AC_PREREQ(2.13), but with these changes
> (if not earlier) such an ancient autoconf will not do.
>

Do you know if the change to AC_CONFIG_HEADER (from AM_CONFIG_HEADER) is 
supported in autoconf 2.13?  Assuming it likely is, I'll get this merged. 
Otherwise we should expect to bump the AC_PREREQ.

BTW I'll check and see if this patch is specific to the cross-prelinker or 
applicable to the upstream prelink as well.  Seems like if it's applicable there 
they may want it as well..

--Mark

>   - ML
>


