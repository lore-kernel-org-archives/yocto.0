Return-Path: <prvs=6977bbb5e=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F44CE010CC; Fri, 15 Jun 2018 01:01:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.230.2.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Fri, 15 Jun 2018 01:01:27 PDT
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0312AE00C80
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2018 01:01:27 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.51,226,1526335200"; d="scan'208";a="10865042"
To: =?UTF-8?Q?Andr=c3=a9_Draszik?= <git@andred.net>, <yocto@yoctoproject.org>
References: <20180330084019.18955-1-git@andred.net>
	<20180330084019.18955-4-git@andred.net>
From: Richard Leitner <richard.leitner@skidata.com>
Openpgp: preference=signencrypt
Autocrypt: addr=richard.leitner@skidata.com; prefer-encrypt=mutual; keydata=
	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
	P3I6bcPJefUstj65yFQnTw==
Message-ID: <3463e929-53ce-df98-355c-11de357fc5ae@skidata.com>
Date: Fri, 15 Jun 2018 10:00:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <20180330084019.18955-4-git@andred.net>
X-Originating-IP: [192.168.111.252]
X-ClientProxiedBy: sdex3srv.skidata.net (192.168.111.81) To
	sdex5srv.skidata.net (192.168.111.83)
Subject: Re: [meta-java][PATCH 3/3] openjdk-8: use ca-certificates-java
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
X-List-Received-Date: Fri, 15 Jun 2018 08:01:29 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi,
this commit of yours breaks the build on meta-java's current
mater-next branch (when building an image containing openjre-8
or openjdk-8) with following message:

ERROR: openjre-8-test-image-1.0-r0 do_rootfs: [log_check] openjre-8-test-image: found 1 error message in the logfile:
[log_check] E: /yocto/meta-java-test/build/tmp/work/qemuarm-poky-linux-gnueabi/openjre-8-test-image/1.0-r0/rootfs/etc/ca-certificates/update.d/ca-certificates-java-hook exited with code 1.

ERROR: openjre-8-test-image-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /yocto/meta-java-test/build/tmp/work/qemuarm-poky-linux-gnueabi/openjre-8-test-image/1.0-r0/temp/log.do_rootfs.19892
ERROR: Task (/yocto/meta-java-test/meta-java/recipes-images/images/openjre-8-test-image.bb:do_rootfs) failed with exit code '1'


The logfile contains following error:

Running hooks in /yocto/meta-java-test/build/tmp/work/qemuarm-poky-linux-gnueabi/openjre-8-test-image/1.0-r0/rootfs/etc/ca-certificates/update.d...
/yocto/meta-java-test/build/tmp/work/qemuarm-poky-linux-gnueabi/openjre-8-test-image/1.0-r0/rootfs/etc/ca-certificates/update.d/ca-certificates-java-hook: no JVM_LIBDIR specified
E: /yocto/meta-java-test/build/tmp/work/qemuarm-poky-linux-gnueabi/openjre-8-test-image/1.0-r0/rootfs/etc/ca-certificates/update.d/ca-certificates-java-hook exited with code 1.
done.


Therefore it will be removed from master-next.

It would be great if you could send an fixed version.

Thank you!

regards;Richard.L


On 03/30/2018 10:40 AM, André Draszik wrote:
> From: André Draszik <andre.draszik@jci.com>
> 
> The OpenJDK-8 package currently comes with a trustStore
> that was generated at OpenJDK-8-native build time from
> *all* certificates available in the system, not just from
> those that are marked as trusted.
> 
> This isn't right...
> 
> openjdk-8 and openjre-8 now RDEPENDS on (and use) the CA
> certificates as provided by the ca-certificates-java
> package just added.
> 
> This makes sure that Java now uses the same trusted CA
> certificates as the rest of the system.
> 
> Signed-off-by: André Draszik <andre.draszik@jci.com>
> ---
>  recipes-core/openjdk/openjdk-8-common.inc |  2 ++
>  recipes-core/openjdk/openjdk-8-cross.inc  | 12 +++++++++++-
>  2 files changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/recipes-core/openjdk/openjdk-8-common.inc b/recipes-core/openjdk/openjdk-8-common.inc
> index b2020c3..c8d157e 100644
> --- a/recipes-core/openjdk/openjdk-8-common.inc
> +++ b/recipes-core/openjdk/openjdk-8-common.inc
> @@ -254,3 +254,5 @@ def version_specific_cflags(d):
>  CFLAGS_append = " ${@version_specific_cflags(d)}"
>  CXXFLAGS_append = " ${@version_specific_cflags(d)}"
>  CXX_append = " -std=gnu++98"
> +
> +RDEPENDS_${PN} = "ca-certificates-java"
> diff --git a/recipes-core/openjdk/openjdk-8-cross.inc b/recipes-core/openjdk/openjdk-8-cross.inc
> index d70c946..6795c92 100644
> --- a/recipes-core/openjdk/openjdk-8-cross.inc
> +++ b/recipes-core/openjdk/openjdk-8-cross.inc
> @@ -57,7 +57,6 @@ EXTRA_OECONF_append = "\
>      --with-sys-root=${STAGING_DIR_HOST} \
>      --with-tools-dir=${STAGING_DIR_NATIVE} \
>      --with-boot-jdk=${STAGING_LIBDIR_NATIVE}/jvm/openjdk-8-native \
> -    --with-cacerts-file=${STAGING_LIBDIR_NATIVE}/jvm/openjdk-8-native/jre/lib/security/cacerts \
>      \
>      --disable-precompiled-headers \
>      --disable-zip-debug-info \
> @@ -88,6 +87,17 @@ do_install_append() {
>                pack200 --repack --effort=9 --segment-limit=-1 --modification-time=latest --strip-debug "$0"'
>        fi
>      fi
> +
> +    if [ -d ${D}${JDK_HOME} ] ; then
> +      rm ${D}${JDK_HOME}/jre/lib/security/cacerts
> +      ln -s ${@os.path.relpath("${sysconfdir}/ssl/certs/java/cacerts", "${JDK_HOME}/jre/lib/security/cacerts")} \
> +            ${D}${JDK_HOME}/jre/lib/security/cacerts
> +    fi
> +    if [ -d ${D}${JRE_HOME} ] ; then
> +      rm ${D}${JRE_HOME}/lib/security/cacerts
> +      ln -s ${@os.path.relpath("${sysconfdir}/ssl/certs/java/cacerts", "${JRE_HOME}/lib/security/cacerts")} \
> +            ${D}${JRE_HOME}/lib/security/cacerts
> +    fi
>  }
>  
>  export MAKE_VERBOSE = "y"
> 

