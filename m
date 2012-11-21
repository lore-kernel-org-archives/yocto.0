Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 048E4E01447
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 15:01:24 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Nov 2012 15:01:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,295,1352102400"; d="scan'208";a="252605172"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga002.fm.intel.com with ESMTP; 21 Nov 2012 15:01:24 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 21 Nov 2012 15:01:23 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.171]) with mapi id
	14.01.0355.002; Wed, 21 Nov 2012 15:01:23 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
Thread-Topic: [yocto] inconsistent pages out there for setting up your yocto
	dev host
Thread-Index: AQHNyDq5TaOylHmOQ0GQZnQw2I2eZpf054CQ
Date: Wed, 21 Nov 2012 23:01:22 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946AC664C@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1211211718070.14208@oneiric>
	<2124581.mHRnlHMV84@helios>
In-Reply-To: <2124581.mHRnlHMV84@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: inconsistent pages out there for setting up your yocto	dev host
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
X-List-Received-Date: Wed, 21 Nov 2012 23:01:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Paul Eggleton
>Sent: Wednesday, November 21, 2012 2:51 PM
>To: Robert P. J. Day
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] inconsistent pages out there for setting up your
>yocto dev host
>
>On Wednesday 21 November 2012 17:23:56 Robert P. J. Day wrote:
>>   i've noticed there are various web pages purporting to explain how
>> to set up a proper OE/yocto development host, but they give what is
>> pretty clearly contradictory information.
>>
>>   as one example, there's this page on getting started with OE:
>>
>> http://www.openembedded.org/wiki/Getting_started
>
>I produced this page recently; FWIW I also came up with the pared-down
>package
>lists that went into the Quick Start Guide which this page borrows. How
>is
>this contradictory if it uses the same information?
>
>> that claims to steal from a number of sources including the yocto QS
>> guide, but look at the packages one is instructed to install on that
>> page, particularly under fedora: python, perl, git, and so on.
>
>So I don't recall exactly how perl got on that list; but python and git
>are
>absolutely required on the host. That's why they're in ASSUME_PROVIDED.

Paul - Should I remove perl from the essentials list for fedora and centos?

>
>>   as i read it, the sanity.bbclass and ASSUME_PROVIDED will dictate
>> what needs to be there and what will be used if it's installed
>> natively, no?  it certainly seems that that wiki page is insructing
>> the developer to install a lot of software that OE will handle
>> automatically, no?
>
>Er, no. Well, if by "handle automatically" you mean "error out when they
>are
>not present" then that's not very helpful - it's much easier if people
>just
>get a list of what they need to install up front.
>
>Cheers,
>Paul
>
>--
>
>Paul Eggleton
>Intel Open Source Technology Centre
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

