Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57968E00D84; Tue, 17 Sep 2019 06:10:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60180E00DB5
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 06:10:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x8HD9JF6011411
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 17 Sep 2019 06:09:45 -0700
Received: from soho-mhatle-m.local (147.11.117.245) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Tue, 17 Sep 2019 06:09:17 -0700
To: Hongxu Jia <hongxu.jia@windriver.com>, <mark.hatle@kernel.crashing.org>,
	<jason.wessel@windriver.com>, <yocto@yoctoproject.org>
References: <1568687654-21734-1-git-send-email-hongxu.jia@windriver.com>
	<1568687654-21734-2-git-send-email-hongxu.jia@windriver.com>
From: Mark Hatle <mark.hatle@windriver.com>
Openpgp: preference=signencrypt
Autocrypt: addr=mark.hatle@windriver.com; prefer-encrypt=mutual; keydata=
	mQENBFYKxFgBCACt/pzutBp6p/xVKTFJjHbM3KpQKCblyot/YP+bpTr51Hrc5xDXBQhoG7TC
	aIRvRIvbhEevEQK9y04gW3JK/5lobq5ORebolcsHlYBUvpNeIPjupLQwGvz/TPtrLRNGLqDC
	rvsM6OA2XbQ2bwzxWaSQS3ImE2O2iXOZn9HhThMGeDB4Nff3fgUvXOTDIrgWOn9K2DgLL7Yc
	zkUIlFdj+Nraksd/7BSk8oH6tjeBVhFqSFvKta9QxWgdr58oPaTYaW/xNqUjlLrbJuMw/MSe
	xzuYfdfDfm6J8kRjMOnwQ0n8svJElzqAk+d83ow38gpGQ+LkjGgnf8ZFJ4rUJFADroX3ABEB
	AAG0JU1hcmsgSGF0bGUgPG1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbT6JATcEEwEIACEFAlYK
	xFgCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQfv796/r0vvlvZAf9Gs+eN320yhRW
	V/fZCsngKhmOK4v3HrTwFrkSmoD9QHQiE/5IPdNacHwIPwZx07tNBohB8xOeNqCPRYRBwGhA
	AnxKOPyd0nnm6ZhPzbA57v4x3IGRQr4QzvcBTASJq91l3Ew4lpAslyx5w1DPPqRD7G8ycDKg
	peKyDwmdkvCunVisSAQI3XIMq2y230biTO98tDPEezg+lg+yTsz9ZT33F5KNuWrpf8VL5fG/
	mt+kAv7wtsx/KTRbqhH3iFXF6eBSwMjAfTXFlkLfbM9riJGXrWEl9n2S2R3cDHNHug0lb8f4
	whK370KEO4OwRKIYW/VUBmzk5XZUE9DTlDSV8ycsrrkBDQRWCsRYAQgAwK3FuHCE+HW3YWdH
	PUjeSn5p//xJ57u8g2rng8zm9zNjmYgpPv5UxozaD9i2jf4mlQLHGGOezhHae8K4Nj70oVcv
	8AmwcrJa9i9WL1oy/9R3fHMWf/Ctt9VXTO0qlCuq6PDzaUfvsXR61aJIjTKNQTOjCLjY1vXm
	VSewUgARysmA8WrjTfwGBihMBxAX0+kIjx8nOlam0WvekMBXZ0AbS56oTLRxYao6DI3GeB/N
	oWPy/5DfuTKaSdM0Pf8al20x9RuNN5/HLMlyDH/k8bIa1xd9aAqW+Feiw5gC107V2E6ULyIy
	q6em2UrsmIRxrvpHqbNgQKqvTehJ+V/i4g/uOwARAQABiQEfBBgBCAAJBQJWCsRYAhsMAAoJ
	EH7+/ev69L755XAH/3ZcNhooqd9OBhFkvXm1iWZ8EoC7motWqVn2oEyxoonsg8AD9kFXiN+T
	dYp7dH99EZu9q4ptj56AXm4uHzOgywL/5/V2TY6twCGAjUGzDjAB5gzoi+JLIBlDiyOip0eL
	QswIhRk473xy3j8DA4oVamnSPWgyNJ+qsdt37YWDzoDFFvtDoRU7Eb+znfIMDKzlny0XU/8L
	cW1bNHJlpv/78GPdfP4tjysEd8MuA5jf5o5w4XqcwTqalffEJtQ/s3pbkstEi7qm5uPui5Kt
	gq6YYLSqcSNe0GWAF9/T+qwyo7burSTxUWCWtMmlXdAQLW9SynLhB3Jbch0nFAh0fCKi6yY=
Organization: Wind River Systems
Message-ID: <e8303e82-efe0-042c-ee8f-3504570f55d3@windriver.com>
Date: Tue, 17 Sep 2019 08:09:13 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1568687654-21734-2-git-send-email-hongxu.jia@windriver.com>
Subject: Re: [meta-openssl102-fips][PATCH 2/2] README.build: add FAQ to support fips on arm/aarch64/x86
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
X-List-Received-Date: Tue, 17 Sep 2019 13:10:16 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 9/16/19 9:34 PM, Hongxu Jia wrote:
> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> ---
>  README.build | 36 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/README.build b/README.build
> index 9735028..bc8fcf3 100644
> --- a/README.build
> +++ b/README.build
> @@ -245,3 +245,39 @@ Note this sample command is functionally equivalent to:
>  $ env OPENSSL_FIPS=1 openssl sha1 -hmac etaonrishdlcupfm fips_hmac.c
>  HMAC-SHA1(fips_hmac.c)= ae25ad68d9a8cc04075100563a437fa37829afcc
>  
> +===============
> +FAQ
> +===============
> +1. How to support fips on 32bit arm (such as MACHINE = qemuarm)?
> +Set env MACHINE='arm' before Building the FIPS Object Module
> +(Building Steps 3), which affects fips config not to add option
> +`-march=armv7-a' to avoid failure on gcc8:
> +[snip]
> +|`cc1: error: -mfloat-abi=hard: selected processor lacks an FPU'
> +[snip]
> +
> +2. How to support fips on aarch64 (such as MACHINE = qemuarm64)?
> +For aarch64, FIPS 140-2 module only support android, wrapper gcc
> +at Building the FIPS Object Module(Building Steps 3) to define
> +macro FIPS_REF_POINT_IS_CROSS_COMPILER_AWARE to simulate what
> +android did. Provide a way to add bbappend to wrapper gcc:
> +mkdir -p recipes-devtools/gcc
> +cat << ENDOF > recipes-devtools/gcc/gcc_9.%.bbappend
> +do_install_append_aarch64() {
> +    create_cmdline_wrapper \${D}/\${bindir}/gcc -DFIPS_REF_POINT_IS_CROSS_COMPILER_AWARE
> +}
> +
> +FILES_\${PN}-symlinks += "\${bindir}/gcc.real"
> +ENDOF

I'm not sure the above wrapper is really allowed by the FIPS 140-2 User Guide.
However, if it were, the instructions should be different.  Something like

cat > gcc-wrapper.sh << EOF
#!/bin/sh
gcc -FFIPS_REF_POINT_IS_CROSS_COMPILER_AWARE $@
EOF
chmod +x gcc-wrapper.sh

export CC='gcc-wrapper.sh'

I've not tried this though.

I'll give this a try and see if this will work.  We will document it with a
caveat about being unclear if it's allowed.

--Mark

> +3. How to support fips on 32bit x86? (Such as MACHINE = qemux86,
> +or lib32-image on qemux86-64)
> +Set env MACHINE='i686' before Building the FIPS Object Module
> +(Building Steps 3) which affect fips config not to add option
> +`-m 64' on lib32-image which workaround the following failure
> +[snip]
> +|/usr/include/bits/long-double.h:44:10: fatal error:
> +bits/long-double-64.h: No such file or directory
> +|   44 | #include <bits/long-double-64.h>
> +[snip]
> +



