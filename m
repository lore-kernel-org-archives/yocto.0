Return-Path: <belen.barros.pena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16FAAE00770
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 06:26:52 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Dec 2012 06:25:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,266,1355126400"; d="scan'208";a="256426985"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga002.jf.intel.com with ESMTP; 12 Dec 2012 06:26:40 -0800
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 12 Dec 2012 14:26:38 +0000
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.151]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.21]) with mapi id
	14.01.0355.002; Wed, 12 Dec 2012 14:26:38 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Building pseudo fails
Thread-Index: AQHN2HSxqEvKpNYLQUWE9tQZu83P9Q==
Date: Wed, 12 Dec 2012 14:26:37 +0000
Message-ID: <CCEE4385.1DB1A%belen.barros.pena@intel.com>
In-Reply-To: <CAJTo0LbtCBm3zDQ1kmwCpBwuVM+tk2Cvs2HsaoLw1woV3zgZCQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.5.121010
x-originating-ip: [10.252.63.93]
MIME-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Building pseudo fails
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
X-List-Received-Date: Wed, 12 Dec 2012 14:26:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <3FE224EDDF199C4E8DF76547E47AA211@intel.com>
Content-Transfer-Encoding: quoted-printable

That totally worked. Silly me, just realised I forgot to check the quick
start guide to install the required packages.

Thanks, Ross.

Belen

On 12/12/2012 14:15, "Burton, Ross" <ross.burton@intel.com> wrote:

>On 12 December 2012 14:09, Barros Pena, Belen
><belen.barros.pena@intel.com> wrote:
>> I just downloaded the Danny release to an Ubuntu 12.10 computer, and
>> pseudo failed to build. Before opening a bug, I just wanted to make sure
>> it's not something silly I am doing. The log file is attached and below
>> I've pasted the terminal output.
>
>It appears you need to install the "chrpath" package.  If that fixes
>it then we've clearly got a mismatch between the "assumed to exist"
>list and the "verified to exist" list.
>
>Ross

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


