Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8546E0034C
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 13:03:25 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 08 Feb 2013 13:03:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,632,1355126400"; d="scan'208";a="200261734"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by AZSMGA002.ch.intel.com with ESMTP; 08 Feb 2013 13:03:24 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.151]) with mapi id
	14.01.0355.002; Fri, 8 Feb 2013 13:03:24 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [RFC v5 00/12][eclipse-poky] Integrate yocto
	documentation	into eclipse
Thread-Index: AQHOBf+yhGUTLkkPyEqhFGgLaIb7xphwctnA
Date: Fri, 8 Feb 2013 21:03:23 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DE27A6@ORSMSX101.amr.corp.intel.com>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360320932.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFC v5 00/12][eclipse-poky] Integrate yocto documentation	into eclipse
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
X-List-Received-Date: Fri, 08 Feb 2013 21:03:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Timo,

Thanks, these are merged into eclipse-poky master with the following patch =
to address an issue in your original patches :-)

Cheers,
Jessica

Fixed the DOC_GIT hard coded issueHEADmaster
Signed-off-by: Jessica Zhang <jessica.zhang@intel.com>
Diffstat
-rwxr-xr-x      scripts/generate-doc.sh 3

1 files changed, 1 insertions, 2 deletions
diff --git a/scripts/generate-doc.sh b/scripts/generate-doc.sh
index 588638c..d645e54 100755
--- a/scripts/generate-doc.sh
+++ b/scripts/generate-doc.sh
@@ -56,8 +56,7 @@ DOC_PLUGIN_DIR=3D${PLUGIN_FOLDER}/plugins/org.yocto.doc.u=
ser
DOC_HTML_DIR=3D${DOC_PLUGIN_DIR}/html/
# git clone
-#DOC_GIT=3Dgit://git.yoctoproject.org/yocto-docs.git
-DOC_GIT=3Dfile:///home/timo/_dev/oss/yocto/yocto-docs
+DOC_GIT=3Dgit://git.yoctoproject.org/yocto-docs.git
git clone ${DOC_GIT} ${DOC_DIR} || fail $? "git clone ${DOC_GIT}"
cd ${DOC_DIR}
git checkout ${REFERENCE} || fail $? "git checkout ${REFERENCE}"

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Friday, February 08, 2013 5:25 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [RFC v5 00/12][eclipse-poky] Integrate yocto documentation=
 into eclipse

From: Timo Mueller <timo.mueller@bmw-carit.de>

v5: Incorporates changes resulting from the renaming of documentation and a=
dds the profile-manual. This patch set requires changes proposed in "[PATCH=
][yocto-docs] Update eclipse help generation to support all documents"

From RFC v4:
Hi,

the last proposal integrated the yocto documentation into the existing doc =
plugin of the yocto ADT feature. As Jessica pointed out is does not make se=
nse to bundle all parts of the yocto documentation with the ADT feature. As=
 some parts of the documentation could also be helpful with the BitBake Com=
mander feature, we agreed to encapsulate the yocto documentation into its o=
wn feature.

01..02: Fixing typos in build and site scripts
03..12: Adding the yocto documentation as a new feature
13: Temporary patch to use timo branch of docs project - DO NOT MERGE

From the last propsal:
<snip>
One major change in this patch series is that I extended the plugin build s=
ystem to integrate the generation into the build process. Thus keeping the =
eclipse help and the official documentation in sync is now automated.
</snip>

<snip>
the documentation of the yocto project can currently be viewed online or as=
 a separate pdf. When using the eclipse ide to develop software on base of =
a yocto sysroot and toolchain it would be convenient to access the relevant=
 parts of the documentation from within the ide.
</snip>

<snip>
I have intergrated this
documentation in the ide and it can now be accessed through the eclipse hel=
p center (Help -> Help Contents).
</snip>

Best regards
Timo

Timo Mueller (12):
  features/sdk.site: Fixed typo in category name
  Fixed typo in version variable name
  plugins/sdk.ide.doc.user: Add empty eclipse help
  plugins/sdk.ide.doc.user: Add about.html to prepare addition of yocto
    documentation
  features/org.yocto.doc: Add new feature containing yocto project
    documentation
  features/doc.headless.build: Added headless build for yocto.doc
    feature
  features/sdk.site: Added yocto.doc feature to update site
  scripts/build.sh: Added yocto.doc feature to build
  scripts/generate-doc.sh: Add script to handle eclipse help generation
  plugins/sdk.ide.doc.user: Add yocto documentation to the table of
    contents
  scripts/generate-doc.sh: Copy generated eclipse help into the
    user.doc plugin
  scripts/build.sh: Add documentation generation to the default build

 .../org.yocto.bc.headless.build/customTargets.xml  |   4 +-
 features/org.yocto.doc.headless.build/.project     |  11 +
 .../org.yocto.doc.headless.build/build.properties  | 262 +++++++++++++++++=
++++  .../org.yocto.doc.headless.build/customTargets.xml | 212 ++++++++++++=
+++++
 features/org.yocto.doc/.project                    |  17 ++
 features/org.yocto.doc/build.properties            |   3 +
 features/org.yocto.doc/feature.properties          | 163 +++++++++++++
 features/org.yocto.doc/feature.xml                 |  35 +++
 features/org.yocto.doc/license.html                | 107 +++++++++
 .../org.yocto.sdk.headless.build/customTargets.xml |   4 +-
 features/org.yocto.sdk.site/category.xml           |  10 +-
 features/org.yocto.sdk.site/site.xml               |  10 +-
 plugins/org.yocto.doc.user/.classpath              |   6 +
 plugins/org.yocto.doc.user/.project                |  28 +++
 plugins/org.yocto.doc.user/META-INF/MANIFEST.MF    |   8 +
 .../OSGI-INF/l10n/bundle.properties                |   3 +
 plugins/org.yocto.doc.user/about.html.in           | 189 +++++++++++++++
 plugins/org.yocto.doc.user/build.properties        |   9 +
 plugins/org.yocto.doc.user/html/book.css           |   1 +
 plugins/org.yocto.doc.user/plugin.xml              |  39 +++
 plugins/org.yocto.doc.user/toc.xml                 |  24 ++
 scripts/build.sh                                   |  18 +-
 scripts/generate-doc.sh                            |  87 +++++++
 23 files changed, 1238 insertions(+), 12 deletions(-)  create mode 100644 =
features/org.yocto.doc.headless.build/.project
 create mode 100644 features/org.yocto.doc.headless.build/build.properties
 create mode 100644 features/org.yocto.doc.headless.build/customTargets.xml
 create mode 100644 features/org.yocto.doc/.project  create mode 100644 fea=
tures/org.yocto.doc/build.properties
 create mode 100644 features/org.yocto.doc/feature.properties
 create mode 100644 features/org.yocto.doc/feature.xml
 create mode 100644 features/org.yocto.doc/license.html
 create mode 100644 plugins/org.yocto.doc.user/.classpath
 create mode 100644 plugins/org.yocto.doc.user/.project
 create mode 100644 plugins/org.yocto.doc.user/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.doc.user/OSGI-INF/l10n/bundle.propert=
ies
 create mode 100644 plugins/org.yocto.doc.user/about.html.in
 create mode 100644 plugins/org.yocto.doc.user/build.properties
 create mode 100644 plugins/org.yocto.doc.user/html/book.css
 create mode 100644 plugins/org.yocto.doc.user/plugin.xml
 create mode 100644 plugins/org.yocto.doc.user/toc.xml
 create mode 100755 scripts/generate-doc.sh

--
1.7.11.7

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

