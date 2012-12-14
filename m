Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D41D2E00294
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 15:37:51 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Dec 2012 15:37:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,285,1355126400"; d="scan'208";a="234333685"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga001.jf.intel.com with ESMTP; 14 Dec 2012 15:37:51 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.66]) with mapi id
	14.01.0355.002; Fri, 14 Dec 2012 15:37:49 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: =?iso-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [RFCv3 0/7][eclipse-poky] Integrate yocto
	documentation into eclipse
Thread-Index: AQHN2GoEdX8QjpSJXECbYEmzFIAds5gY9R5A
Date: Fri, 14 Dec 2012 23:37:49 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B6C126@ORSMSX101.amr.corp.intel.com>
References: <cover.1354805521.git.timo.mueller@bmw-carit.de>
	<50C88216.3010803@timomueller.eu>
In-Reply-To: <50C88216.3010803@timomueller.eu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFCv3 0/7][eclipse-poky] Integrate yocto documentation into eclipse
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
X-List-Received-Date: Fri, 14 Dec 2012 23:37:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Timo,

Sorry for the delay, but finally got a chance to look into these patches.  =
I like how it automate the docgen and integrate them into eclipse.  The con=
cern that I'm having is, it seems converting all the Yocto Project Docs, or=
iginally I thought only for ADT manual.  So to view these doc in eclipse ar=
e nice, but since we don't have some corresponding feature support in eclip=
se plug-in, it'll look awkward to combine these docs with ADT plugin.  BTW,=
 to support our bitbake commander plug-in running on windows usage, we rece=
ntly split the  plug-in into 2 features: ADT and bitbake commander and the =
doc plug-in is part of ADT feature.  So I'd suggest, if we want to show all=
 the docs, probably create a separate Yocto Doc Feature.  If we want to com=
bine with ADT plug-in, then probably only covert the ADT manual content gen=
eration and integration.  Make sense?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo M=FCller
Sent: Wednesday, December 12, 2012 5:10 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: Re: [yocto] [RFCv3 0/7][eclipse-poky] Integrate yocto documentatio=
n into eclipse

Hi,

mail@timomueller.eu wrote, On 06.12.2012 16:48:
> From: Timo Mueller <timo.mueller@bmw-carit.de>
>
> Hi,
>
> since the last proposal some things have changed:
> 1. Eclipse help generation is now part of the yocto-docs project
> (currently available in the origin/timo branch) 2. We agreed that the
> plugin should be licensed under the EPL v1.0 instead of having a
> separate documentation plugin licensed under the CCA-SA 2.0 UK.
>
> The last patch set was adding generated eclipse help files (html) to
> the repository. One major change in this patch series is that I
> extended the plugin build system to integrate the generation into the
> build process. Thus keeping the eclipse help and the official
> documentation in sync is now automated.
> Also the eclipse help is now part of the user.doc plugin and no longer
> contained in a separate plugin/feature.
>
> Rational from the original patch:
> <snip>
> the documentation of the yocto project can currently be viewed online
> or as a separate pdf. When using the eclipse ide to develop software
> on base of a yocto sysroot and toolchain it would be convenient to
> access the relevant parts of the documentation from within the ide.
> </snip>
> <snip>
> I have intergrated this
> documentation in the ide and it can now be accessed through the
> eclipse help center (Help -> Help Contents).
> </snip>
>
> Best regards
> Timo
>
> Timo Mueller (7):
>    plugins/sdk.ide.doc.user: Add empty eclipse help
>    plugins/sdk.ide.doc.user: Add about.html to prepare addition of yocto
>      documentation
>    scripts/generate_doc.sh: Add script to handle eclipse help generation
>    plugins/sdk.ide.doc.user: Add yocto documentation to the table of
>      contents
>    scripts/generat-doc.sh: Copy generated eclipse help into the user.doc
>      plugin
>    scripts/build.sh: Add documentation generation to the default build
>    (TEMPORARY): Use origin/timo branch of yocto docs project
>
>   .../META-INF/MANIFEST.MF                           |    3 +-
>   plugins/org.yocto.sdk.ide.doc.user/about.html.in   |  166 +++++++++++++=
+++++++
>   .../org.yocto.sdk.ide.doc.user/build.properties    |    9 +-
>   plugins/org.yocto.sdk.ide.doc.user/html/book.css   |    1 +
>   plugins/org.yocto.sdk.ide.doc.user/plugin.xml      |   31 ++++
>   plugins/org.yocto.sdk.ide.doc.user/toc.xml         |   21 +++
>   scripts/build.sh                                   |    7 +
>   scripts/generate_doc.sh                            |   91 +++++++++++
>   8 files changed, 326 insertions(+), 3 deletions(-)
>   create mode 100644 plugins/org.yocto.sdk.ide.doc.user/about.html.in
>   create mode 100644 plugins/org.yocto.sdk.ide.doc.user/html/book.css
>   create mode 100644 plugins/org.yocto.sdk.ide.doc.user/toc.xml
>   create mode 100755 scripts/generate_doc.sh
>

The name of the poky-ref-manual will be changed to ref-manual. This change =
has an impact on this patch series, since the name is used in the generate-=
doc shell script.
But with the temporary fix in patch 7, the timo branch is used, which will =
for the time being remain unaffected by the name changes. This way you can =
test the documentation integration proposed in this patch set.
I would like to get your opinion on the general approach to integrate the d=
ocumentation into eclipse. If it fits into the eclipse-poky project in gene=
ral, I will rewrite this patch series to reflect the changes. The rewrite w=
ill also remove the "the" from the different help chapters (as Scott pointe=
d out to me).
I also agreed with Scott that once this approach is agreed on I will provid=
e the necessary patches to the timo branch of the yocto-docs project and he=
 will merge the eclipse generation into the master of the project.

Best regards,
Timo

PS: I also apologize for not signing off the patch series. I will make up f=
or that in the reworked patches.
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

