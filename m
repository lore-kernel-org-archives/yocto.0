Return-Path: <Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD449E00B01; Thu, 22 Oct 2015 09:52:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from FLEMING.seektech.com (unknown [66.192.149.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82D64E00AF6
	for <yocto@yoctoproject.org>; Thu, 22 Oct 2015 09:52:38 -0700 (PDT)
Received: from WRIGHT.seescan.com (192.168.11.30) by mail.seektech.com
	(192.168.3.10) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Thu, 22 Oct 2015 09:52:35 -0700
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Thu, 22 Oct 2015 09:52:36 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Thu, 22 Oct 2015 09:52:35 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to output all distro features in a given build?
Thread-Index: AQHRDOoNiJ8vsIf6rki0H3xm+2N+KA==
Date: Thu, 22 Oct 2015 16:52:35 +0000
Message-ID: <1445532662631.18853@seescan.com>
References: <1445522442-14456-1-git-send-email-ajlennon@dynamicdevices.co.uk>
In-Reply-To: <1445522442-14456-1-git-send-email-ajlennon@dynamicdevices.co.uk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: WRIGHT.seescan.com
X-GFI-SMTP-RemoteIP: 192.168.11.30
Subject: How to output all distro features in a given build?
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
X-List-Received-Date: Thu, 22 Oct 2015 16:52:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I know how to add and remove distro features.=0A=
=0A=
However, what I'm after is how to dynamically list all the distro features =
that a build thinks is needs once all the files are combined together.=0A=
=0A=
For example, one can look at dependencies for a _single_ package by doing:=
=0A=
=0A=
 $ bitbake -g seescan-image-ccu-dev -u depexp=0A=
=0A=
Also, one can look in the manifest file for all the included packages. This=
 is great.=0A=
=0A=
I'm after for a method to do the same for distro features.=0A=
=0A=
Frederick=

