Return-Path: <belen.barros.pena@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FD19E00307
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 03:56:12 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 03 Feb 2012 03:56:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="62878365"
Received: from irsmsx602.ger.corp.intel.com ([163.33.3.242])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Feb 2012 03:56:09 -0800
Received: from irsmsx103.ger.corp.intel.com (163.33.3.157) by
	irsmsx602.ger.corp.intel.com (163.33.3.242) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 3 Feb 2012 11:55:16 +0000
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.99]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.221]) with mapi id
	14.01.0355.002; Fri, 3 Feb 2012 11:55:15 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Saul Wold <sgw@linux.intel.com>
Thread-Topic: [yocto] Hob 1.2 design - Settings dialogue
Thread-Index: AQHM4mqw9BVEzUnPNkOolHsPnmQH1A==
Date: Fri, 3 Feb 2012 11:55:14 +0000
Message-ID: <CB517B14.6FF7%belen.barros.pena@intel.com>
In-Reply-To: <4F2B0386.1010407@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.14.0.111121
x-originating-ip: [10.252.5.69]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob 1.2 design - Settings dialogue
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
X-List-Received-Date: Fri, 03 Feb 2012 11:56:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <42923226B466AD4A9C3B6B570F350BF0@intel.com>
Content-Transfer-Encoding: quoted-printable

That should be no problem. I just need a list of all parameters required
to set up the proxy (server, port, username, password...).

If you guys can provide that, I'll add them to the Settings dialogue.

Cheers

Belen

On 02/02/2012 21:43, "Saul Wold" <sgw@linux.intel.com> wrote:

>On 02/02/2012 08:58 AM, Barros Pena, Belen wrote:
>> I've uploaded a document detailing the design of the Settings dialogue
>>for Hob 1.2 at
>>
>>=20
>>https://wiki.yoctoproject.org/wiki/File:Settings-dialogue-design-spec-v1.
>>0.pdf
>>
>> Sorry it's a boring document instead of a video: it seemed the only way
>>to provide the necessary level of detail
>>
>> Let me know if you have any questions or comments.
>>
>Belen, great start, we talked the last couple of days of possibly adding
>a proxies tab that can read the site.conf and set up proxies and save
>them.
>
>Dexcaun was looking into that.
>
>Sau!
>
>> Belen
>> ---------------------------------------------------------------------
>> Intel Corporation (UK) Limited
>> Registered No. 1134945 (England)
>> Registered Office: Pipers Way, Swindon SN3 1RJ
>> VAT No: 860 2173 47
>>
>> This e-mail and any attachments may contain confidential material for
>> the sole use of the intended recipient(s). Any review or distribution
>> by others is strictly prohibited. If you are not the intended
>> recipient, please contact the sender and delete all copies.
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


