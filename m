Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83A3DE0076A
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 08:38:00 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7OFbmqW014180;
	Fri, 24 Aug 2012 16:37:48 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 11916-06; Fri, 24 Aug 2012 16:37:44 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7OFbdIK014174
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Fri, 24 Aug 2012 16:37:40 +0100
Message-ID: <1345822661.14369.79.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: =?ISO-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
Date: Fri, 24 Aug 2012 16:37:41 +0100
In-Reply-To: <1345731602-47313-2-git-send-email-bjst@enea.com>
References: <1345731602-47313-1-git-send-email-bjst@enea.com>
	<1345731602-47313-2-git-send-email-bjst@enea.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/3] Add -ptest package group
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
X-List-Received-Date: Fri, 24 Aug 2012 15:38:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2012-08-23 at 16:20 +0200, Björn Stenberg wrote:
> This patch creates a new package group -ptest to contain the tests for
> each package.
> 
> ---
>  meta/classes/distutils-common-base.bbclass |    5 ++++-
>  meta/classes/image.bbclass                 |    6 ++++--
>  meta/classes/package.bbclass               |    8 ++++++--
>  meta/classes/task.bbclass                  |    2 +-
>  meta/conf/bitbake.conf                     |   14 ++++++++++++--
>  5 files changed, 27 insertions(+), 8 deletions(-)
> 
> diff --git a/meta/classes/distutils-common-base.bbclass b/meta/classes/distutils-common-base.bbclass
> index f66a5cd..7db015b 100644
> --- a/meta/classes/distutils-common-base.bbclass
> +++ b/meta/classes/distutils-common-base.bbclass
> @@ -5,7 +5,7 @@ EXTRA_OEMAKE = ""
>  export STAGING_INCDIR
>  export STAGING_LIBDIR
>  
> -PACKAGES = "${PN}-dev ${PN}-dbg ${PN}-doc ${PN}"
> +PACKAGES = "${PN}-dev ${PN}-dbg ${PN}-ptest ${PN}-doc ${PN}"
>  
>  FILES_${PN} = "${bindir}/* ${libdir}/* ${libdir}/${PYTHON_DIR}/*"
>  
> @@ -19,3 +19,6 @@ FILES_${PN}-dbg += "\
>    ${PYTHON_SITEPACKAGES_DIR}/*/.debug \
>    ${PYTHON_SITEPACKAGES_DIR}/*/*/.debug \
>  "
> +FILES_${PN}-ptest += "\
> +  ${PYTHON_SITEPACKAGES_DIR}/${PTEST_NAME} \
> +"
> diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
> index 72720f1..c154bc2 100644
> --- a/meta/classes/image.bbclass
> +++ b/meta/classes/image.bbclass
> @@ -29,13 +29,13 @@ ROOTFS_BOOTSTRAP_INSTALL = "${@base_contains("IMAGE_FEATURES", "package-manageme
>  FEATURE_INSTALL = "${@' '.join(oe.packagegroup.required_packages(oe.data.typed_value('IMAGE_FEATURES', d), d))}"
>  FEATURE_INSTALL_OPTIONAL = "${@' '.join(oe.packagegroup.optional_packages(oe.data.typed_value('IMAGE_FEATURES', d), d))}"
>  
> -# packages to install from features, excluding dev/dbg/doc
> +# packages to install from features, excluding dev/dbg/doc/ptest
>  NORMAL_FEATURE_INSTALL = "${@' '.join(oe.packagegroup.required_packages(normal_groups(d), d))}"
>  NORMAL_FEATURE_INSTALL_OPTIONAL = "${@' '.join(oe.packagegroup.optional_packages(normal_groups(d), d))}"
>  
>  def normal_groups(d):
>      """Return all the IMAGE_FEATURES, with the exception of our special package groups"""
> -    extras = set(['dev-pkgs', 'staticdev-pkgs', 'doc-pkgs', 'dbg-pkgs'])
> +    extras = set(['dev-pkgs', 'staticdev-pkgs', 'doc-pkgs', 'dbg-pkgs', 'ptest-pkgs'])
>      features = set(oe.data.typed_value('IMAGE_FEATURES', d))
>      return features.difference(extras)
>  
> @@ -53,6 +53,8 @@ def complementary_globs(featurevar, d):
>              globs.append('*-doc')
>          elif feature == 'dbg-pkgs':
>              globs.append('*-dbg')
> +        elif feature == 'ptest-pkgs':
> +            globs.append('*-ptest')
>      return ' '.join(globs)
>  
>  IMAGE_INSTALL_COMPLEMENTARY = '${@complementary_globs("IMAGE_FEATURES", d)}'
> diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
> index d122cd9..6483a1f 100644
> --- a/meta/classes/package.bbclass
> +++ b/meta/classes/package.bbclass
> @@ -1236,7 +1236,7 @@ python package_do_filedeps() {
>  
>      # Determine dependencies
>      for pkg in packages.split():
> -        if pkg.endswith('-dbg') or pkg.endswith('-doc') or pkg.find('-locale-') != -1 or pkg.find('-localedata-') != -1 or pkg.find('-gconv-') != -1 or pkg.find('-charmap-') != -1 or pkg.startswith('kernel-module-'):
> +        if pkg.endswith('-dbg') or pkg.endswith('-doc') or pkg.find('-locale-') != -1 or pkg.find('-localedata-') != -1 or pkg.find('-gconv-') != -1 or pkg.find('-charmap-') != -1 or pkg.startswith('kernel-module-') or pkg.endswith('-ptest'):
>              continue

I think filedeps could be useful in this case, autodetecting any
dependencies scripts in the -ptest package could have for example so I'd
not do the above.

>  
>          provides_files = []
> @@ -1330,7 +1330,7 @@ python package_do_shlibs() {
>                  combos.append("-".join(options[0:i]))
>              return combos
>  
> -        if (file.endswith('.dylib') or file.endswith('.so')) and not pkg.endswith('-dev') and not pkg.endswith('-dbg'):
> +        if (file.endswith('.dylib') or file.endswith('.so')) and not pkg.endswith('-dev') and not pkg.endswith('-dbg') and not pkg.endswith('-ptest'):


ditto, we want to detect shlib dependencies.

>              # Drop suffix
>              name = file.rsplit(".",1)[0]
>              # Find all combinations
> @@ -1648,6 +1648,8 @@ python package_depchains() {
>                  depend = depend.replace('-dev', '')
>              if depend.endswith('-dbg'):
>                  depend = depend.replace('-dbg', '')
> +            if depend.endswith('-ptest'):
> +                depend = depend.replace('-ptest', '')
>              pkgname = getname(depend, suffix)
>              #bb.note("Adding %s for %s" % (pkgname, depend))
>              if pkgname not in rreclist and pkgname != pkg:
> @@ -1669,6 +1671,8 @@ python package_depchains() {
>                  depend = depend.replace('-dev', '')
>              if depend.endswith('-dbg'):
>                  depend = depend.replace('-dbg', '')
> +            if depend.endswith('-ptest'):
> +                depend = depend.replace('-ptest', '')
>              pkgname = getname(depend, suffix)
>              #bb.note("Adding %s for %s" % (pkgname, depend))
>              if pkgname not in rreclist and pkgname != pkg:

I also suspect the above two hunks are not needed since ptest won't use
depchains.


> diff --git a/meta/classes/task.bbclass b/meta/classes/task.bbclass
> index 6ec154a..653f149 100644
> --- a/meta/classes/task.bbclass
> +++ b/meta/classes/task.bbclass
> @@ -20,7 +20,7 @@ python () {
>      packages = d.getVar('PACKAGES', True).split()
>      genpackages = []
>      for pkg in packages:
> -        for postfix in ['-dbg', '-dev']:
> +        for postfix in ['-dbg', '-ptest', '-dev']:
>              genpackages.append(pkg+postfix)
>      d.setVar('PACKAGES', ' '.join(packages+genpackages))
>  }
> diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
> index d5a43e9..07d057f 100644
> --- a/meta/conf/bitbake.conf
> +++ b/meta/conf/bitbake.conf
> @@ -220,6 +220,10 @@ SUMMARY_${PN}-dbg ?= "${SUMMARY} - Debugging files"
>  DESCRIPTION_${PN}-dbg ?= "${DESCRIPTION}  \
>  This package contains ELF symbols and related sources for debugging purposes."
>  
> +SUMMARY_${PN}-ptest ?= "${SUMMARY} - Package test files"
> +DESCRIPTION_${PN}-ptest ?= "${DESCRIPTION}  \
> +This package contains test directory with the name ${PTEST_NAME} for package test purposes."
> +
>  SUMMARY_${PN}-dev ?= "${SUMMARY} - Development files"
>  DESCRIPTION_${PN}-dev ?= "${DESCRIPTION}  \
>  This package contains symbolic links, header files, and \
> @@ -242,7 +246,7 @@ HOMEPAGE = "unknown"
>  # Ensure that -dev packages recommend the corresponding -dev packages of their
>  # deps, and the same for -dbg.
>  DEPCHAIN_PRE  = ""
> -DEPCHAIN_POST = "-dev -dbg"
> +DEPCHAIN_POST = "-dev -dbg -ptest"
>  
>  DEPENDS = ""
>  RDEPENDS = ""
> @@ -263,7 +267,7 @@ SOLIBSDEV_darwin8 = ".dylib"
>  SOLIBSDEV_darwin9 = ".dylib"
>  
>  PACKAGE_BEFORE_PN ?= ""
> -PACKAGES = "${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}-doc ${PN}-locale ${PACKAGE_BEFORE_PN} ${PN}"
> +PACKAGES = "${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}-doc ${PN}-locale ${PN}-ptest ${PACKAGE_BEFORE_PN} ${PN}"
>  PACKAGES_DYNAMIC = "${PN}-locale-*"
>  FILES = ""
>  
> @@ -307,6 +311,12 @@ SECTION_${PN}-dbg = "devel"
>  ALLOW_EMPTY_${PN}-dbg = "1"
>  RRECOMMENDS_${PN}-dbg = "${PN} (= ${EXTENDPKGV})"
>  
> +PTEST_PATH ?= "${libdir}/${PN}/ptest"
> +FILES_${PN}-ptest = "${PTEST_PATH}/*"
> +SECTION_${PN}-ptest = "devel"
> +ALLOW_EMPTY_${PN}-ptest = "1"
> +RDEPENDS_${PN}-ptest = "${PN} (= ${EXTENDPKGV})"
> +
>  FILES_${PN}-locale = "${datadir}/locale"
>  
>  # File manifest

Would a ptest.bbclass containing the above make more sense? How
widespread do we think these tests will be?

Also these patches are against OE-Core so need to go to the
openembedded-code mailing list.

I do like the idea of better testing of packages and this is a good
start though. My biggest worry is the overhead of the patches to
software to enable the tests. Are you planning to engage the upstreams
and see if we can get them to accept the patches? I have to be very
cautious of anything which would "strangle" us with patch
overhead/overload and stop us being unable to update recipes.

Cheers,

Richard



