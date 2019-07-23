Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39ECBE0098A; Mon, 22 Jul 2019 18:52:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 262B8E008F2
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 18:52:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x6N1pL6G032066
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 22 Jul 2019 18:51:36 -0700
Received: from [128.224.162.136] (128.224.162.136) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Mon, 22 Jul 2019 18:51:30 -0700
To: Armin Kuster <akuster808@gmail.com>
References: <20190706233230.2774-1-akuster808@gmail.com>
	<20190706233230.2774-2-akuster808@gmail.com>
From: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <b893d9fb-74ec-d807-ae8d-ce7830d96ed3@windriver.com>
Date: Tue, 23 Jul 2019 09:51:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190706233230.2774-2-akuster808@gmail.com>
X-Originating-IP: [128.224.162.136]
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security-compliance][PATCH 2/4] openscap: add 1.3.1 recipes for upstream source
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
X-List-Received-Date: Tue, 23 Jul 2019 01:52:05 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi Armin,


I got the following error when build openscap:

ERROR: openscap-git-r0 do_compile_ptest_base: Function failed: 
do_compile_ptest_base (log file is located at 
/buildarea/build/tmp/work/core2-64-poky-linux/openscap/git-r0/temp/log.do_compile_ptest_base.329146)
ERROR: Logfile of failure stored in: 
/buildarea/build/tmp/work/core2-64-poky-linux/openscap/git-r0/temp/log.do_compile_ptest_base.329146
Log data follows:
| DEBUG: Executing shell function do_compile_ptest_base
| 
/buildarea/build/tmp/work/core2-64-poky-linux/openscap/git-r0/temp/run.do_compile_ptest_base.329146: 
line 108: oe-runcmake: command not found
| WARNING: 
/buildarea/build/tmp/work/core2-64-poky-linux/openscap/git-r0/temp/run.do_compile_ptest_base.329146:1 
exit 127 from 'oe-runcmake tests'
| ERROR: Function failed: do_compile_ptest_base (log file is located at 
/buildarea/build/tmp/work/core2-64-poky-linux/openscap/git-r0/temp/log.do_compile_ptest_base.329146)


//Yi


On 7/7/19 7:32 AM, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>   .../recipes-openscap/openscap/openscap.inc            | 11 +++++------
>   .../recipes-openscap/openscap/openscap_1.3.1.bb       | 10 ++++++++++
>   .../recipes-openscap/openscap/openscap_git.bb         |  4 ++--
>   3 files changed, 17 insertions(+), 8 deletions(-)
>   create mode 100644 meta-security-compliance/recipes-openscap/openscap/openscap_1.3.1.bb
>
> diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap.inc b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
> index 4c1f206..e5daaf8 100644
> --- a/meta-security-compliance/recipes-openscap/openscap/openscap.inc
> +++ b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
> @@ -10,10 +10,10 @@ DEPENDS = "autoconf-archive dbus acl bzip2 pkgconfig gconf procps curl libxml2 l
>   
>   DEPENDS_class-native = "autoconf-archive-native pkgconfig-native swig-native curl-native libxml2-native libxslt-native dpkg-native libgcrypt-native nss-native"
>   
> -inherit cmake pkgconfig python3native perlnative ptest
> -
>   S = "${WORKDIR}/git"
>   
> +inherit cmake pkgconfig python3native perlnative ptest
> +
>   PACKAGECONFIG ?= "python3 rpm perl"
>   PACKAGECONFIG[python3] = "-DENABLE_PYTHON3=True, , python3, python3"
>   PACKAGECONFIG[perl] = "-DENABLE_PERL=True,, perl, perl"
> @@ -25,7 +25,6 @@ EXTRA_OECONF += "-DENABLE_PROBES_INDEPENDENT=yes -DENABLE_PROBES_LINUX=yes -DWIT
>                   -DENABLE_OSCAP_UTIL_DOCKER=no \
>                   "
>   
> -EXTRA_OECONF_class-native += "-DENABLE_PROBES=True"
>   
>   STAGING_OSCAP_DIR = "${TMPDIR}/work-shared/${MACHINE}/oscap-source"
>   STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
> @@ -33,9 +32,9 @@ STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
>   EXTRANATIVEPATH += "chrpath-native"
>   
>   do_configure_append_class-native () {
> -	sed -i 's:OSCAP_DEFAULT_CPE_PATH.*$:OSCAP_DEFAULT_CPE_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe":' ${S}/config.h
> -	sed -i 's:OSCAP_DEFAULT_SCHEMA_PATH.*$:OSCAP_DEFAULT_SCHEMA_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas":' ${S}/config.h
> -	sed -i 's:OSCAP_DEFAULT_XSLT_PATH.*$:OSCAP_DEFAULT_XSLT_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl":' ${S}/config.h
> +	sed -i 's:OSCAP_DEFAULT_CPE_PATH.*$:OSCAP_DEFAULT_CPE_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe":' ${B}/config.h
> +	sed -i 's:OSCAP_DEFAULT_SCHEMA_PATH.*$:OSCAP_DEFAULT_SCHEMA_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas":' ${B}/config.h
> +	sed -i 's:OSCAP_DEFAULT_XSLT_PATH.*$:OSCAP_DEFAULT_XSLT_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl":' ${B}/config.h
>   }
>   
>   do_clean[cleandirs] += " ${STAGING_OSCAP_BUILDDIR}"
> diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.1.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.1.bb
> new file mode 100644
> index 0000000..c29fd42
> --- /dev/null
> +++ b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.1.bb
> @@ -0,0 +1,10 @@
> +SUMARRY = "NIST Certified SCAP 1.2 toolkit"
> +
> +require openscap.inc
> +
> +SRCREV = "3a4c635691380fa990a226acc8558db35d7ebabc"
> +SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3 \
> +           file://run-ptest \
> +"
> +
> +DEFAULT_PREFERENCE = "-1"
> diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
> index 3dfa99e..aded920 100644
> --- a/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
> +++ b/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
> @@ -3,9 +3,9 @@
>   
>   SUMARRY = "NIST Certified SCAP 1.2 toolkit with OE changes"
>   
> +include openscap.inc
> +
>   SRCREV = "4bbdb46ff651f809d5b38ca08d769790c4bfff90"
>   SRC_URI = "git://github.com/akuster/openscap.git;branch=oe-1.3 \
>              file://run-ptest \
>   "
> -
> -include openscap.inc

