Return-Path: <prvs=02881bdfd6=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD60CE00AF4; Mon, 24 Apr 2017 23:34:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [95.211.112.140 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 4450 seconds by postgrey-1.32 at yocto-www;
	Mon, 24 Apr 2017 23:34:53 PDT
Received: from mx5-04.smtp.antispamcloud.com (mx5-04.smtp.antispamcloud.com
	[95.211.112.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE0FEE00AE6
	for <yocto@lists.yoctoproject.org>;
	Mon, 24 Apr 2017 23:34:53 -0700 (PDT)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx5.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1d2stv-0003BR-RJ; Tue, 25 Apr 2017 07:20:36 +0200
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 25 Apr 2017 07:20:34 +0200
To: Martin Jansa <martin.jansa@gmail.com>, <yocto@lists.yoctoproject.org>
References: <20170420162022.20237-1-Martin.Jansa@gmail.com>
	<20170424142954.21979-1-Martin.Jansa@gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <4e2320d2-3683-e53a-a743-fca98ab2b23a@topic.nl>
Date: Tue, 25 Apr 2017 07:20:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170424142954.21979-1-Martin.Jansa@gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.00373463603078)
X-Recommended-Action: accept
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W/95+6ZE6dI+d
	FNTaLLKrTD4PkK8WOoKuw32u9iEtZmisSr42qUwvK7U11fJ5smF5bE7GwnNXTE7JFCR1ojdwNNWh
	Akiqthr2GPQrLGksqFAmq4pa+ISQPcjh5m8F8r10v6jaRShsLzQjYzqmB8yx3mbjO41FyBEqIaDu
	dcVplPGNaieKxw/vh63RdlaW2Zj1hcQD6Dxo9kokFZNwiacNPxeTCKssqlJePCDBHWfCYUvWOATT
	vnG+QUCcfrSs6FZc7tZ3vKwSN7Mv0HNteAusUZ8BuYwGqmI8Tx/Ism0pnCcmlWACu0WC7nIKSPYV
	aBAANeo6Hr4UJMIZEVOGlXeApA3I626B4k1VCg2pmPRu/tvWqbHjoSsKzb0xSHmdZggDL7YMdryk
	AcR9VxnZfbxQ1r3upx1n/FUf/NwbTI+uRoXlWvXEyVXmV1DcCGMoc6ig/SVaKi0jvtxxX4zA29pu
	2ONYQFX+rhdRbxagFZk9QeU7sEKSfUWHty4XO0JvVoTKUz0sPgnpAk2KA2vJwMd1uVp/3TgIM4oj
	TBFr687rGjvGLWY+MgHYxfRtKtuAsj1l++DuIQUs/5JJj4C/n4CILo0QSzGNvD+RngRrZomAbi+I
	zFFbdmFRdTAoG6SY1sg8WZMQHZerjzK9EzjaFAkBJjQB58XtL2OmUgcwtsJrsd9thWJcDArBQLlQ
	+zm4f1mvd1VPQgOyF0VU5Apg2BGZWUHvm3Pq/TMVhLiLVSlbDnJRp6u8pvhScfA/A8cvIbAoat8L
	S2e4SlwewFA6IsrEu+8FlMDlS0F+Xe5yN1w7xOM+N/va7eJfVmRiUj5eV7t2WXisEhouQOnJvApe
	rtAfTgwUMLkhMj+HvXPzRQ5NOto=
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
Subject: Re: [PATCHv2][meta-gplv2] gnutls: add older gnutls compatible with nettle
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
X-List-Received-Date: Tue, 25 Apr 2017 06:34:56 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 24-04-17 16:29, Martin Jansa wrote:
> * gnutls depends on nettle-3.1* since 3.4.0:
>   The requirement for nettle was bumped from 3.0 to 3.1 in gnutls_3_4_0
>   https://gitlab.com/gnutls/gnutls/commit/c84129af91b21d33ffe086e50763277=
1b0e76498
>   and from 2.7 to 3.0 a bit earlier also in gnutls_3_4_0
>   https://gitlab.com/gnutls/gnutls/commit/3fa80cf68919f07b3351b2722278ba4=
63d6e731c
> * add recipe for last release in 3.3 branch which is compatible
>   with nettle 2.7.1 used in meta-gplv2
>
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  .../gnutls/configure.ac-fix-sed-command.patch      | 31 ++++++++++++++++=
++++++
>  recipes-support/gnutls/gnutls_3.3.27.bb            | 23 ++++++++++++++++
>  2 files changed, 54 insertions(+)
>  create mode 100644 recipes-support/gnutls/gnutls/configure.ac-fix-sed-co=
mmand.patch
>  create mode 100644 recipes-support/gnutls/gnutls_3.3.27.bb
>
> diff --git a/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.p=
atch b/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
> new file mode 100644
> index 0000000..44a9934
> --- /dev/null
> +++ b/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
> @@ -0,0 +1,31 @@
> +From eb93aa7b986c84da60a3db40afb29d1a70c50223 Mon Sep 17 00:00:00 2001
> +From: Robert Yang <liezhi.yang@windriver.com>
> +Date: Sat, 17 Jan 2015 17:02:15 +0000
> +Subject: [PATCH] configure.ac: fix sed command
> +
> +The "sed 's/.bak//g'" matchs "bitbake", which would cause strange errors
> +when the S contains "bitbake", fix to "sed 's/\.bak$//'`"
> +
> +Upstream-Status: Pending
> +
> +Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> +---
> + configure.ac | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/configure.ac b/configure.ac
> +index c6818a0..1c4582d 100644
> +--- a/configure.ac
> ++++ b/configure.ac
> +@@ -466,7 +466,7 @@ if test "$NEED_LIBOPTS_DIR" =3D "true";then
> + 	dnl replace libopts-generated files with distributed backups, if prese=
nt
> + 	missing_baks=3D
> + 	for i in ${srcdir}/src/*-args.c.bak ${srcdir}/src/*-args.h.bak; do
> +-		nam=3D`echo $i|sed 's/.bak//g'`
> ++		nam=3D`echo $i|sed 's/\.bak$//'`

How about:
  nam=3D`basename $i .bak`


> + 		if test -f $i;then
> + 			cp -f $i $nam
> + 		else
> +--
> +2.0.1
> +
> diff --git a/recipes-support/gnutls/gnutls_3.3.27.bb b/recipes-support/gn=
utls/gnutls_3.3.27.bb
> new file mode 100644
> index 0000000..c98da34
> --- /dev/null
> +++ b/recipes-support/gnutls/gnutls_3.3.27.bb
> @@ -0,0 +1,23 @@
> +require recipes-support/gnutls/gnutls.inc
> +
> +LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd32239bcb673463ab874e80d47fae=
504 \
> +                    file://COPYING.LESSER;md5=3Da6f89e2100d9b6cdffcea4f3=
98e37343"
> +
> +FILESEXTRAPATHS_prepend =3D "${COREBASE}/meta/recipes-support/${BPN}/${B=
PN}:"
> +
> +SRC_URI +=3D " \
> +    file://correct_rpl_gettimeofday_signature.patch \
> +    file://configure.ac-fix-sed-command.patch \
> +    file://use-pkg-config-to-locate-zlib.patch \
> +"
> +SRC_URI[md5sum] =3D "8ee8cebd7f7575b11f232766a21c31d3"
> +SRC_URI[sha256sum] =3D "8dfda16c158ef5c134010d51d1a91d02aa5d43b8cb711b15=
72650a7ffb56b17f"
> +
> +# This version doesn't support this option added in newer gnutls
> +# ERROR: gnutls-3.3.27-r0 do_configure: QA Issue: gnutls: configure was =
passed unrecognised options: --with-idn [unknown-configure-option]
> +PACKAGECONFIG[libidn] =3D ""
> +# but it still has the libidn dependency, without this option
> +EXTRA_OECONF +=3D "--disable-crywrap"
> +
> +# This version doesn't support this option added in newer gnutls
> +EXTRA_OECONF_remove =3D "--without-libunistring-prefix"
>



Kind regards,

Mike Looijmans
System Expert

TOPIC Products
Materiaalweg 4, NL-5681 RJ Best
Postbus 440, NL-5680 AK Best
Telefoon: +31 (0) 499 33 69 79
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail






