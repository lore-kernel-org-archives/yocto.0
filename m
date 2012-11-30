Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE26FE002AB
	for <yocto@yoctoproject.org>; Thu, 29 Nov 2012 18:57:17 -0800 (PST)
Received: from mail-pa0-f72.google.com ([209.85.220.72])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 29 Nov 2012 18:57:17 -0800
Received: by mail-pa0-f72.google.com with SMTP id fb10so23493pad.11
	for <yocto@yoctoproject.org>; Thu, 29 Nov 2012 18:57:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=M0Cn5Jw/mAMYsxlJOmHed1BRlA4VmTFzzW7R0dLUC9c=;
	b=YhfYXd/lAmwJ2984rQZa+nJ5sFA6/WBSPppcx9IXJL8dCKWfPJcR44nPIeRLKMoMks
	qcXKQrr1p1tW7ZsHVi9Oj6GNXG170ZZSG8YreNeNMvbLhAZARArXluALxjIfwhPHO6uu
	wz/UDb1ZyU22vikgGyhtXnIyV3n7pjfSsGoyDD9HX0qIMiYrQh2DXkaWEtNldlcko70I
	PCq4gYUQn1KTEIa5b7Rv8jW300lwE58MyIfpmOq/M30L4r5yStPfvh6jB/0LoNlRynBp
	s5PDcGWIGNaSixy7EpFcGX/IcoLAHZnjBwFXLzQDsxg6oc83DWCpaX2O5rKkZisjSxzF
	UGHg==
Received: by 10.66.9.2 with SMTP id v2mr67035427paa.18.1354244237293;
	Thu, 29 Nov 2012 18:57:17 -0800 (PST)
Received: by 10.66.9.2 with SMTP id v2mr67035420paa.18.1354244237201;
	Thu, 29 Nov 2012 18:57:17 -0800 (PST)
Received: from [192.168.1.104] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id sy1sm2199275pbc.66.2012.11.29.18.57.15
	(version=SSLv3 cipher=OTHER); Thu, 29 Nov 2012 18:57:16 -0800 (PST)
Message-ID: <50B8208A.5020103@intel.com>
Date: Thu, 29 Nov 2012 18:57:14 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <20121023184056.GR3269@jama.jama.net>
	<1351076036-25453-1-git-send-email-sledz@dresearch-fe.de>
	<1351076036-25453-2-git-send-email-sledz@dresearch-fe.de>
	<1351077244.22340.90.camel@ted> <509E1F87.4000100@r-finger.com>
In-Reply-To: <509E1F87.4000100@r-finger.com>
X-Gm-Message-State: ALoCoQmUXxz+L+L790K9SUWCof/jgYYTDbWse/14S7w+LEez6a8BMehSSDaZKR7Alwj/aDEttw3Zx5mRbHUjHBzYiYEGPr49daSJ7PrbRu7ix9GmYqFWzCSOlE/b9anF5zQNBxJr/GE0D4Ceu5kET1jj9efMuLg2Og==
Subject: Re: [PATCH resend][opkg-utils] opkg.py/opkg-build: fix creation of tar archives
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
X-List-Received-Date: Fri, 30 Nov 2012 02:57:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/10/2012 01:33 AM, Tomas Frydrych wrote:
> On 24/10/12 12:14, Richard Purdie wrote:
>> On Wed, 2012-10-24 at 12:53 +0200, Steffen Sledz wrote:
>>> Since openSUSE 12.2 the installed tar uses posix instead of gnu encoding
>>> by default. This format is not fully supported by opkg and results in
>>> ipk packages not installable at the target.
>>>
>>> Collected errors:
>>>   * get_header_tar: Unknown typeflag: 0x78: Success.
>>>   * get_header_tar: Unknown typeflag: 0x78: Success.
>>>   * get_header_tar: Unknown typeflag: 0x78: Success.
>>>   * extract_archive: Don't know how to handle /var/lib/opkg/tmp/opkg-mg997m/chicken-bin-fGRvr4/PaxHeaders.17512/.: No such file or directory.
>>>   * get_header_tar: Unknown typeflag: 0x78: No such file or directory.
>>>   * get_header_tar: Unknown typeflag: 0x78: No such file or directory.
>>>   ...
>>>
>>> Signed-off-by: Steffen Sledz <sledz@dresearch-fe.de>
>>> ---
>>>   opkg-build |    6 +++---
>>>   opkg.py    |    6 +++---
>>>   2 files changed, 6 insertions(+), 6 deletions(-)
>>
>> Merged to master, thanks.
>
> Could this be also applied to the danny branch (and perhaps even denzil)?

Hi Tomas,

I have applied this to my sgarman/denzil-next branches.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

