Return-Path: <Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E4F8E00ACF; Wed, 14 Oct 2015 09:09:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from FLEMING.seektech.com (unknown [66.192.149.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 089D6E00A9B
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 09:09:49 -0700 (PDT)
Received: from WRIGHT.seescan.com (192.168.11.30) by mail.seektech.com
	(192.168.3.10) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Wed, 14 Oct 2015 09:09:46 -0700
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Wed, 14 Oct 2015 09:09:44 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Wed, 14 Oct 2015 09:09:44 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: Dave Mulder <dmulder@lasx.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Updating NIC drivers in older Yocto
Thread-Index: AdEF8pCQNAjBJSeaSNaYBXligY+ZggAqB1kj
Date: Wed, 14 Oct 2015 16:09:43 +0000
Message-ID: <1444838892200.77547@seescan.com>
References: <BLUPR10MB073931FBD2D4D84CF807DEA3D0300@BLUPR10MB0739.namprd10.prod.outlook.com>
In-Reply-To: <BLUPR10MB073931FBD2D4D84CF807DEA3D0300@BLUPR10MB0739.namprd10.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: WRIGHT.seescan.com
X-GFI-SMTP-RemoteIP: 192.168.11.30
Subject: Re: Updating NIC drivers in older Yocto
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
X-List-Received-Date: Wed, 14 Oct 2015 16:09:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I think #2 is a reasonable solution.?

________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Dave Mulder <dmulder@lasx.com>
Sent: Tuesday, October 13, 2015 1:30 PM
To: yocto@yoctoproject.org
Subject: [yocto] Updating NIC drivers in older Yocto

I have been using a Sandy Bridge Yocto 1.3 build for a couple years now, on=
 off-the-shelf Intel PC motherboards. I also build an application.

I am now looking into using more recent motherboards. The OS boots just fin=
e, but the new NICs (Intel, Realtek) are not supported by the old 3.4.11 ke=
rnel.

What's the best way to support new NICs?  I can see three options:


1.       New Yocto.  I suspect (but would be happy to be wrong) that my app=
lication would need to be built against a different sysroot/toolchain, whic=
h seems like it would cause backward-compatibility problems (can't run new =
application on old OS), and I would prefer to not have multiple builds of t=
he application and have to have the host software determine which version i=
s needed (it's an embedded application, and the OS is headless).

2.       New kernel, old Yocto.  I don't know that this is actually an opti=
on, or how new of a kernel can be used in Yocto 1.3.  If this is an option,=
 it seems like my application would not need to be rebuilt.

3.       Loadable drivers for new NICs (rather than using the ones built in=
to the kernel).  I don't know that this is doable either.

Are there other options?  Can a new application be built that will work wit=
h multiple versions of the OS?  Is that even a problem, or am I just assumi=
ng the worst?

Thanks!
Dave

