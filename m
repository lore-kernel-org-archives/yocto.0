Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5016DE01476
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 20:44:21 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Jan 2013 20:44:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,476,1355126400"; d="scan'208";a="247453911"
Received: from unknown (HELO [10.255.14.213]) ([10.255.14.213])
	by orsmga001.jf.intel.com with ESMTP; 15 Jan 2013 20:44:20 -0800
Message-ID: <50F63023.80306@linux.intel.com>
Date: Tue, 15 Jan 2013 20:44:19 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <CAPhnLPDoOkB=-mzUQ55cdT998oqGev+hkOiLV9vEGNUqcSXj=g@mail.gmail.com>
	<70CC66F5C30A414DADDA6973E4CA391A83C8B0@039-SN1MPN1-001.039d.mgd.msft.net>
In-Reply-To: <70CC66F5C30A414DADDA6973E4CA391A83C8B0@039-SN1MPN1-001.039d.mgd.msft.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Weekly build availability.
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
X-List-Received-Date: Wed, 16 Jan 2013 04:44:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/15/2013 08:37 PM, McClintock Matthew-B29882 wrote:
> On Tue, Jan 15, 2013 at 7:09 PM, Flanagan, Elizabeth
> <elizabeth.flanagan@intel.com> wrote:
>> - p1022ds failed due to a libxml2_2.8.0 failure. it is also throwing
>> warnings about missing patches.
>
> I've got a master-next branch I'm testing now and should be on master
> soon. I'm also debugging the oprofile issues from nightly-ppc as well.
>
There is a patch from Bogdan for this one, see "oprofile: set correct 
kernel path", there is clearly more work needed here, but that will get 
us past this failure until we get the libpfm recipe in, which looks like 
it will be required also.

Sau!

> -M
>
>

