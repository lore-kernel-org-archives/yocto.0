Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E7ADE00346
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 07:51:02 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 06 Sep 2012 07:51:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,380,1344236400"; d="scan'208";a="142202279"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Sep 2012 07:51:01 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.225.40) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 6 Sep 2012 07:51:01 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.127]) with mapi id
	14.01.0355.002; Thu, 6 Sep 2012 07:51:00 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "mail@timomueller.eu" <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [RFC 0/6][yocto-docs] Add eclipse help generation to
	build	system.
Thread-Index: AQHNjA7lghAkm7fRf0egbumL5I2xlZd9ZSOw
Date: Thu, 6 Sep 2012 14:50:59 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A64D0B@ORSMSX101.amr.corp.intel.com>
References: <cover.1346922110.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1346922110.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFC 0/6][yocto-docs] Add eclipse help generation to build	system.
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
X-List-Received-Date: Thu, 06 Sep 2012 14:51:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Timo,=20

Thanks for the patches here.  I need to be sure that these patches are base=
d on the most recent documentation files found in the yocto-docs/master bra=
nch, which is at http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/log/.=
  Can you confirm this for me?

Thanks,=20
Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of mail@timomueller.eu
Sent: Thursday, September 06, 2012 2:05 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [RFC 0/6][yocto-docs] Add eclipse help generation to build=
 system.

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

before my vacation I've submitted a patch to the eclipse-poky project
integrating the documentation into the eclipse IDE. To enable the integrati=
on
into eclipse I've manually generated eclipse help from the documentation
using the eclipse stylesheet provided by docbook.

I've added the target 'eclipse' to the documentation's build system to
automate the process of eclipse help generation. This can help to
facilitate the process of keeping the integrated documentation in sync
with the yocto documentation.

In this first RFC I've only integrated the adt-manual as a PoC,
because I'm also proposing some changes to the existing html
generation. These changes add a separation of the options used for the
different output formats. They also help to keep the Makefile clean and
concise.

Cheers,
	Timo

Timo Mueller (6):
  documentation/adt-manual: Moved stylesheet parameters to
    customization file
  documentation/adt-manual/adt-manual-eclipse-customization.xsl: Added
    stylesheet for eclipse help
  documentation/Makefile: Added eclipse target for generating eclipse
    help
  documentation/template/titlepage.templates.xml: Remove title from pdf
    template
  documentation/adt-manual/adt-manual.xml: Added title to bookinfo
  documentation/Makefile: Added eclipse target to adt-manual
    documentation

 documentation/Makefile                             |   36 ++++++++++++++--=
---
 .../adt-manual/adt-manual-customization.xsl        |    7 +++-
 .../adt-manual-eclipse-customization.xsl           |   22 ++++++++++++
 documentation/adt-manual/adt-manual.xml            |    5 ++-
 documentation/template/titlepage.templates.xml     |   13 -------
 5 files changed, 57 insertions(+), 26 deletions(-)
 create mode 100644 documentation/adt-manual/adt-manual-eclipse-customizati=
on.xsl

--=20
1.7.7.6

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

