Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01618E009D7; Thu, 16 Jul 2015 11:04:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A0E0E009CC
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 11:04:42 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id A071027E2CF;
	Thu, 16 Jul 2015 18:04:41 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id eFj_j4WquFg5; Thu, 16 Jul 2015 18:04:40 +0000 (UTC)
Received: from [192.168.0.12] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 4F2E027E289;
	Thu, 16 Jul 2015 18:04:40 +0000 (UTC)
Message-ID: <55A7F231.8050509@dynamicdevices.co.uk>
Date: Thu, 16 Jul 2015 19:04:33 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Richard Tollerton <rich.tollerton@ni.com>, yocto@yoctoproject.org
References: <cover.1437067107.git.rich.tollerton@ni.com>
	<21d68aa45a210d7ada5c87793ae90edb099e2f04.1437067107.git.rich.tollerton@ni.com>
In-Reply-To: <21d68aa45a210d7ada5c87793ae90edb099e2f04.1437067107.git.rich.tollerton@ni.com>
Subject: Re: [meta-mono] [PATCH 4/4] mono-xsp-3.x.inc: use autogen.sh
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
X-List-Received-Date: Thu, 16 Jul 2015 18:04:46 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 16/07/2015 18:22, Richard Tollerton wrote:
> The following build failure was observed:
>
> | Makefile.am:7: error: BUILD_DOCS does not appear in AM_CONDITIONAL
>
> This occurs because aclocal must be called with "-I build/m4/shamrock -I
> build/m4/shave", as is done in autogen.sh.
>
> I tried adding those includes to EXTRA_AUTORECONF or acpaths. That seems
> to only partially solve the problem, as MONO_MODULE remains undefined
> and unsubstituted in configure, leading to:
>
> | xsp-3.0.11/configure: line 2651: syntax error near unexpected token `MONO_MODULE,'
>
> This might have something to do with the `automake --gnu` option in
> autogen.sh. I don't know for certain
>
> In any case, merely calling autogen.sh does work. This patch implements
> that, using autotools.bbclass:oe_runconf() as a template.
>
> Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
> ---
>  recipes-mono/mono-xsp/mono-xsp-3.x.inc | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/recipes-mono/mono-xsp/mono-xsp-3.x.inc b/recipes-mono/mono-xsp/mono-xsp-3.x.inc
> index ffe0a28..77af516 100644
> --- a/recipes-mono/mono-xsp/mono-xsp-3.x.inc
> +++ b/recipes-mono/mono-xsp/mono-xsp-3.x.inc
> @@ -9,6 +9,17 @@ inherit autotools-brokensep
>  
>  SRC_URI = "https://github.com/mono/xsp/archive/${PV}.tar.gz"
>  
> +do_configure () {
> +    set +e
> +    ${CACHED_CONFIGUREVARS} ${S}/autogen.sh --verbose ${CONFIGUREOPTS} ${EXTRA_OECONF}
> +    if [ "$?" != "0" ]; then
> +	echo "Configure failed. The contents of all config.log files follows to aid debugging"
> +	find ${S} -name config.log -print -exec cat {} \;
> +	bbfatal "oe_runconf failed"
> +    fi
> +    set -e
> +}
> +
>  S = "${WORKDIR}/xsp-${PV}"
>  
>  PACKAGES += "${PN}-test \

Many thanks for the updates, fixes, and cleanups Richard. Your
patch-sets for mono-xsp, fsharp, mono-basic are applied.

In future can you remove any trailing newlines from your patches please?

Thanks, Alex


