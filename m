Return-Path: <laurentiu.palcu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D068FE01488
	for <yocto@yoctoproject.org>; Thu, 16 May 2013 10:20:24 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 May 2013 10:20:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,685,1363158000"; d="scan'208";a="303508438"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by azsmga001.ch.intel.com with ESMTP; 16 May 2013 10:20:21 -0700
Received: from irsmsx105.ger.corp.intel.com (163.33.3.28) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 16 May 2013 18:20:20 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.161]) by
	IRSMSX105.ger.corp.intel.com ([169.254.7.3]) with mapi id
	14.03.0123.003; Thu, 16 May 2013 18:20:17 +0100
From: "Palcu, Laurentiu" <laurentiu.palcu@intel.com>
To: =?iso-8859-2?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] u-boot standalone application
Thread-Index: AQHOUjLhMbzEdz6wWUmnqEXPbgrBS5kIDl0A
Date: Thu, 16 May 2013 17:20:16 +0000
Message-ID: <F50B87185088EB4790E240C070C3DF4B16B9A4B7@IRSMSX104.ger.corp.intel.com>
References: <CAFyqS9q85RaBTtwvJxBHFbNSXENirtFt9+R6Mx6EDnHCtNxBMA@mail.gmail.com>
In-Reply-To: <CAFyqS9q85RaBTtwvJxBHFbNSXENirtFt9+R6Mx6EDnHCtNxBMA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: u-boot standalone application
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
X-List-Received-Date: Thu, 16 May 2013 17:20:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

I'm not sure this is what you want but, did you try to play with=20
externalsrc.bbclass? It should allow you to build out-of-tree sources.

Laurentiu

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Hans Beck=E9rus
Sent: Thursday, May 16, 2013 3:42 PM
To: yocto@yoctoproject.org
Subject: [yocto] u-boot standalone application

Hi. Anyone ever experimented with building a u-boot standalone application =
out-of-tree?
To be able to do that u-boot must install libstubs.o and applicable header =
files in the sysroot staging folder. Is there some example of how to do thi=
s already or am I the first to try this out?

Why do it this way you may ask? Well, we do not wish to have our code merge=
d in the u-boot source tree, but instead compile it from an isolated packag=
e. Sounds so simple... ;)

Hans
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

