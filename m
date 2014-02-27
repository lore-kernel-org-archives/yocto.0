Return-Path: <cristian.iorga@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97305E00804
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 00:52:43 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Feb 2014 00:52:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,553,1389772800"; d="scan'208";a="490768680"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by orsmga002.jf.intel.com with ESMTP; 27 Feb 2014 00:51:51 -0800
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 27 Feb 2014 08:51:50 +0000
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.202]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.61]) with mapi id
	14.03.0123.003; Thu, 27 Feb 2014 08:51:50 +0000
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: Chris Tapp <opensource@keylevel.com>, Yocto Project
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Later versions of gstreamer
Thread-Index: AQHPMzY60jhLkcCl3U+dFRWTw+G225rIywEQ
Date: Thu, 27 Feb 2014 08:51:50 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB16D02A51@IRSMSX105.ger.corp.intel.com>
References: <9AB00C54-DF23-4674-A970-64444675D90B@keylevel.com>
In-Reply-To: <9AB00C54-DF23-4674-A970-64444675D90B@keylevel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Re: Later versions of gstreamer
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
X-List-Received-Date: Thu, 27 Feb 2014 08:52:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Chris,

Carlos Rafael has more details, he maintains a gstreamer 1.x.y branch and h=
e says that is has support for danny also.

See details below.

Good luck.

Regards,
Cristian Iorga
YP
Intel Corporation


> -----Original Message-----
> From: Carlos Rafael Giani [mailto:dv@pseudoterminal.org]
> Subject: Re: [yocto] Rgardring GSTreamer1.0 integration on Yocto dylan
> <missing>
> On 2014-01-28 13:49, Khaja Hussain Shaik wrote:
>> Hi Carlos,
>>
>> Did you get a chance to look into the porting of gst1.0 to Dylan?
>>
>> Regards
>> Khaja
>>
> I have now upgraded the recipes in meta-gstreamer1.0 to version 1.2.2.
> It is a backport from the current OE-core recipes. Furthermore, I=20
> added the Orc OE-core recipes to this layer. This way, gstreamer is=20
> built with Orc support by default, even for danny and dylan.
>
> cheers,
> Carlos

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Chris Tapp
Sent: Wednesday, February 26, 2014 11:03 PM
To: Yocto Project
Subject: [yocto] Later versions of gstreamer

I'm currently using 'danny' for a project, but that only has Gstreamer 0.10=
 in the meta data.

Has anyone tried using 1.0.x (or, better still, 1.2.x) with 'danny'?

Unfortunately, I'm stuck at 'danny' as I need video acceleration for cedart=
rail and that isn't supported in later versions.

Chris Tapp

opensource@keylevel.com
www.keylevel.com



_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

