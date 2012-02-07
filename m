Return-Path: <belen.barros.pena@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 787BFE0030B
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2012 03:23:36 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Feb 2012 03:23:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="107277088"
Received: from irsmsx601.ger.corp.intel.com ([163.33.7.164])
	by orsmga002.jf.intel.com with ESMTP; 07 Feb 2012 03:23:34 -0800
Received: from irsmsx104.ger.corp.intel.com (163.33.3.159) by
	irsmsx601.ger.corp.intel.com (163.33.7.164) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 7 Feb 2012 11:23:28 +0000
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.99]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.165]) with mapi id
	14.01.0355.002; Tue, 7 Feb 2012 11:23:28 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Joshua Lock <josh@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Wang, Shane" <shane.wang@intel.com>
Thread-Topic: [yocto] RFC: Hob 1.2 design
Thread-Index: AQHM5Yrp5BarafXGYUmHwyFKKMBbiA==
Date: Tue, 7 Feb 2012 11:23:28 +0000
Message-ID: <CB56B9C2.7503%belen.barros.pena@intel.com>
In-Reply-To: <4F3046F3.80102@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.14.0.111121
x-originating-ip: [10.254.196.68]
MIME-Version: 1.0
Subject: Re: RFC: Hob 1.2 design
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
X-List-Received-Date: Tue, 07 Feb 2012 11:23:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <2024714E3C950640AECABED7B38F6B82@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi Joshua,

Additional package details appear on clicking the package name using an
information bubble. The bubble is also dismissed on click using a 'close'
button. This functionality is shown on the first video (not on the second
one: I skipped it to keep it short).

Cheers

Belen

On 06/02/2012 21:32, "Joshua Lock" <josh@linux.intel.com> wrote:

>On 31/01/12 17:39, Wang, Shane wrote:
>> Hi, all,
>>
>> Belen has a new video for Hob2 workflow and design.
>>
>> https://wiki.yoctoproject.org/wiki/File:Hob1.2-screencast2.mov
>
>It just came to my attention through another channel that the
>description column of the packages table is no longer present.
>
>There had been some discussion about how to show relevant description
>information in that column, so I'm surprised to see it go.
>
>Belen, I assume from a design perspective this field was removed as it
>didn't show anything particularly useful? If we have useful data to
>include in that field is there a more appropriate way to integrate it
>into the UI? Perhaps a tooltip? Or an information overlay as has been
>used in other areas of the design?
>
>I'm concerned that if we give the user a list of packages without any
>more information we aren't making it easy for them to build an OS image
>without already understanding exactly all of the components they need -
>thoughts?
>
>Cheers,
>Joshua
>--=20
>Joshua Lock
>         Yocto Project "Johannes factotum"
>         Intel Open Source Technology Centre

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


