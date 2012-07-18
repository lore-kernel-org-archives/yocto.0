Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44C0FE00348
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 10:36:10 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Jul 2012 10:36:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="169949829"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 18 Jul 2012 10:36:09 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 18 Jul 2012 10:36:08 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.93]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.44]) with mapi id
	14.01.0355.002; Wed, 18 Jul 2012 10:36:08 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "mail@timomueller.eu" <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [RFC 0/8] Integrate yocto documentation into eclipse
Thread-Index: AQHNZOWzp4jsU1ECeEGi/XdoRhnTmpcvTRXQ
Date: Wed, 18 Jul 2012 17:36:07 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46AB747F@ORSMSX101.amr.corp.intel.com>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1342614895.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFC 0/8] Integrate yocto documentation into eclipse
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
X-List-Received-Date: Wed, 18 Jul 2012 17:36:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Timo,

Can you send me the link to the branch that I can take a look at this new p=
lug-in?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of mail@timomueller.eu
Sent: Wednesday, July 18, 2012 6:03 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [RFC 0/8] Integrate yocto documentation into eclipse

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

the documentation of the yocto project can currently be viewed online or as=
 a separate pdf. When using the eclipse ide to develop software on base of =
a yocto sysroot and toolchain it would be convenient to access the relevant=
 parts of the documentation from within the ide.

In order to achieve this, I've generated eclipse help from yocto's document=
ation (adt-manual, yocto-project-qs). I have intergrated this documentation=
 in the ide and it can now be accessed through the eclipse help center (Hel=
p -> Help Contents). Please let me know what you think about it?

Yocto's documentation is licensed under the Creative Commons Attribution-Sh=
are Alike 2.0 UK: England & Wales (CCA-SA), which is incompatible to the Ec=
lipse Public License 1.0. Thus I've created a standalone feature to simply =
redistribute the documentation avoiding licensing issues. Do you agree on t=
he way this is structured?

Cheers,
  Timo

Timo Mueller (8):
  plugins/sdk.doc.user: Added plugin for the yocto project
    documentation
  plugins/sdk.doc.user: Added empty table of contents
  feature/sdk.doc: Added feature containing yocto documentation plugins
  feature/sdk.doc: Added org.yocto.sdk.doc.user plugin
  plugins/sdk.doc.user: Added yocto quick start guide
  feature/sdk: Added org.yocto.sdk.doc feature.
  features/sdk.site: Added eclipse help feature to update site
  plugins/sdk.doc.user: Added yocto adt manual

 features/org.yocto.sdk.doc/.project                |   17 +
 features/org.yocto.sdk.doc/build.properties        |    5 +
 features/org.yocto.sdk.doc/feature.properties      |  208 ++++++
 features/org.yocto.sdk.doc/feature.xml             |   40 ++
 features/org.yocto.sdk.doc/license.html            |  237 +++++++
 .../sourceTemplateFeature/feature.properties       |  208 ++++++
 .../sourceTemplateFeature/license.html             |  237 +++++++
 features/org.yocto.sdk.site/category.xml           |    6 +
 features/org.yocto.sdk.site/site.xml               |    3 +
 features/org.yocto.sdk/feature.xml                 |    5 +
 plugins/org.yocto.sdk.doc.user/.classpath          |    6 +
 plugins/org.yocto.sdk.doc.user/.project            |   28 +
 .../.settings/org.eclipse.jdt.core.prefs           |    8 +
 .../org.yocto.sdk.doc.user/META-INF/MANIFEST.MF    |    8 +
 .../OSGI-INF/l10n/bundle.properties                |    3 +
 plugins/org.yocto.sdk.doc.user/about.html          |   82 +++
 plugins/org.yocto.sdk.doc.user/adt-manual-toc.xml  |   61 ++
 plugins/org.yocto.sdk.doc.user/build.properties    |   14 +
 .../html/adt-manual/ch01.html                      |   90 +++
 .../html/adt-manual/ch01s02.html                   |  166 +++++
 .../html/adt-manual/ch02.html                      |  450 +++++++++++++
 .../html/adt-manual/ch02s02.html                   |   56 ++
 .../html/adt-manual/ch02s03.html                   |  182 ++++++
 .../html/adt-manual/ch03.html                      |   97 +++
 .../html/adt-manual/ch03s02.html                   |   78 +++
 .../html/adt-manual/ch04.html                      |  675 ++++++++++++++++=
++++
 .../html/adt-manual/ch04s02.html                   |   94 +++
 .../html/adt-manual/ch04s03.html                   |   77 +++
 .../html/adt-manual/ch04s04.html                   |   37 ++
 .../html/adt-manual/ch04s05.html                   |   65 ++
 .../html/adt-manual/ch04s06.html                   |  100 +++
 .../html/adt-manual/ch04s07.html                   |  161 +++++
 .../html/adt-manual/ch04s08.html                   |  184 ++++++
 .../html/adt-manual/ch05.html                      |  112 ++++
 .../html/adt-manual/ch05s02.html                   |   41 ++
 .../html/adt-manual/index.html                     |  260 ++++++++
 plugins/org.yocto.sdk.doc.user/html/book.css       |    1 +
 .../yocto-project-qs/figures/building-an-image.png |  Bin 0 -> 14891 bytes
 .../figures/using-a-pre-built-image.png            |  Bin 0 -> 12733 bytes
 .../yocto-project-qs/figures/yocto-environment.png |  Bin 0 -> 73095 bytes
 .../figures/yocto-project-transp.png               |  Bin 0 -> 8626 bytes
 .../html/yocto-project-qs/index.html               |  542 ++++++++++++++++
 plugins/org.yocto.sdk.doc.user/plugin.xml          |   19 +
 plugins/org.yocto.sdk.doc.user/toc.xml             |    9 +
 .../yocto-project-qs-toc.xml                       |   32 +
 45 files changed, 4704 insertions(+), 0 deletions(-)  create mode 100644 f=
eatures/org.yocto.sdk.doc/.project
 create mode 100644 features/org.yocto.sdk.doc/build.properties
 create mode 100644 features/org.yocto.sdk.doc/feature.properties
 create mode 100644 features/org.yocto.sdk.doc/feature.xml
 create mode 100644 features/org.yocto.sdk.doc/license.html
 create mode 100644 features/org.yocto.sdk.doc/sourceTemplateFeature/featur=
e.properties
 create mode 100644 features/org.yocto.sdk.doc/sourceTemplateFeature/licens=
e.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/.classpath
 create mode 100644 plugins/org.yocto.sdk.doc.user/.project
 create mode 100644 plugins/org.yocto.sdk.doc.user/.settings/org.eclipse.jd=
t.core.prefs
 create mode 100644 plugins/org.yocto.sdk.doc.user/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.sdk.doc.user/OSGI-INF/l10n/bundle.pro=
perties
 create mode 100644 plugins/org.yocto.sdk.doc.user/about.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/adt-manual-toc.xml
 create mode 100644 plugins/org.yocto.sdk.doc.user/build.properties
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch01.htm=
l
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch01s02.=
html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02.htm=
l
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02s02.=
html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02s03.=
html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch03.htm=
l
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch03s02.=
html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04.htm=
l
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s02.=
html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s03.=
html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s04.=
html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s05.=
html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s06.=
html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s07.=
html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s08.=
html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch05.htm=
l
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch05s02.=
html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/index.ht=
ml
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/book.css
 create mode 100755 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/fi=
gures/building-an-image.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/fi=
gures/using-a-pre-built-image.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/fi=
gures/yocto-environment.png
 create mode 100755 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/fi=
gures/yocto-project-transp.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/in=
dex.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/plugin.xml
 create mode 100644 plugins/org.yocto.sdk.doc.user/toc.xml
 create mode 100644 plugins/org.yocto.sdk.doc.user/yocto-project-qs-toc.xml

--
1.7.7.6

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

