Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport1.gamestop.com (mail1.gamestop.com [12.25.107.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D091EE014C6
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 11:52:44 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,516,1355119200"; 
   d="scan'208";a="7140389"
Received: from unknown (HELO GV1HQPEX01.babgsetc.pvt) ([172.22.1.244])
	by gsironport1.gamestop.com with ESMTP; 22 Jan 2013 13:52:44 -0600
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.225]) by
	GV1HQPEX01.babgsetc.pvt ([172.22.1.191]) with mapi id 14.02.0318.004;
	Tue, 22 Jan 2013 13:52:44 -0600
From: Patrick Turley <PatrickTurley@gamestop.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Thread-Topic: [yocto] Build external module against Yocto kernel
Thread-Index: AQHN8q6s5QOP/6xKnEq8yLl/GYg/sJhLBNOAgAAApYCAAAxrAIAAAagAgAAHNgCAAAN4gIAACr+AgAsKVYA=
Date: Tue, 22 Jan 2013 19:52:43 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C36FEBC@GV1HQPEX03.babgsetc.pvt>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
	<1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
	<50F5992C.9070705@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D97A@GV1HQPEX03.babgsetc.pvt>
	<50F5A221.2070209@windriver.com>
	<C6510F6D410BB64A8C15398EDC6B847C57DD15B4@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C57DD15B4@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build external module against Yocto kernel
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
X-List-Received-Date: Tue, 22 Jan 2013 19:52:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <6213FC0750E9F546843C6F3C4A1B10D4@gamestop.com>
Content-Transfer-Encoding: quoted-printable

On Jan 15, 2013, at 1:16 PM, "Zhang, Jessica" <jessica.zhang@intel.com> wro=
te:

> For your LDFLAGS question in another email thread, the yocto SDK is mainl=
y produced for application developer, but seems we are hearing more usage r=
equest for it to support kernel module build as well.  As Eric pointed, can=
 you just set LDFLAGS=3D"" and we'll add that instruction to developer's ma=
nual?

I *can* clear the LDFLAGS variable just before building modules against the=
 kernel. That works.

I understand history makes this difficult, and this is a problem OE/Yocto w=
asn't originally *intended* to solve. My use case in an outlier, and I don'=
t presume to know what "should" be done. On the other hand, I wouldn't want=
 anyone to feel that putting those instructions in the documentation is a "=
tidy" solution.


