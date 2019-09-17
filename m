Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E69E6E00D59; Tue, 17 Sep 2019 06:05:48 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD08AE00CD5
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 06:05:45 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x8HD511I011310
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 17 Sep 2019 06:05:17 -0700
Received: from soho-mhatle-m.local (147.11.117.245) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Tue, 17 Sep 2019 06:05:03 -0700
To: Hongxu Jia <hongxu.jia@windriver.com>, <mark.hatle@kernel.crashing.org>,
	<jason.wessel@windriver.com>, <yocto@yoctoproject.org>
References: <1568687654-21734-1-git-send-email-hongxu.jia@windriver.com>
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
Message-ID: <527e7760-4ac9-1eb7-d335-c9c48403e072@windriver.com>
Date: Tue, 17 Sep 2019 08:05:02 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1568687654-21734-1-git-send-email-hongxu.jia@windriver.com>
Subject: Re: [meta-openssl102-fips][PATCH 1/2] README.build: update steps for communtiy
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
X-List-Received-Date: Tue, 17 Sep 2019 13:05:49 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 9/16/19 9:34 PM, Hongxu Jia wrote:
> Since the layer is now published via the Yocto Project and
> git.yoctoproject.org, we should update steps in README.build

Merged.

> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> ---
>  README.build | 21 ++++++++++++++++-----
>  1 file changed, 16 insertions(+), 5 deletions(-)
> 
> diff --git a/README.build b/README.build
> index df3f4e4..9735028 100644
> --- a/README.build
> +++ b/README.build
> @@ -36,6 +36,14 @@ In order to build a precompiled version of the binary, you must first
>  construct a target system that includes a target development environment
>  and meta-openssl102-fips layer without feature/openssl-fips
>  
> +The easiest way to do this with Yocto is include this layer [1]
> +and meta-openssl102 [2], and install packagegroup-core-buildessential
> +to image [3]
> +
> +[1] git://git.yoctoproject.org/meta-openssl102
> +[2] git://git.yoctoproject.org/meta-openssl102-fips
> +[3] echo "IMAGE_INSTALL += 'packagegroup-core-buildessential'" >> conf/local.conf
> +
>  The easiest way to do this with Wind River Linux is include:
>  
>      --templates features/target-toolchain --layers meta-openssl102-fips
> @@ -112,13 +120,16 @@ Building Steps (based on section 4 of the UsersGuide-2.0.pdf):
>      Move the tar archive back to your host project into a directory accessable
>      by the build system.
>  
> -5.  Configure the build system to include the template feature/openssl-fips
> -    and locate your custom prebuilt tar archive:
> -    In your build directory, edit conf/local.conf, add:
> +5.  Configure the build system to enable openssl-fips and locate your custom
> +    prebuilt tar archive.
>  
> -    WRTEMPLATE += "feature/openssl-fips"
> +    For Yocto, in your build directory, edit conf/local.conf, add:
> +      OPENSSL_FIPS_ENABLED = "1"
> +      OPENSSL_FIPS_PREBUILT = "<path>"
>  
> -    OPENSSL_FIPS_PREBUILT = "<path>"
> +    For Wind River Linux, in your build directory, edit conf/local.conf, add:
> +      WRTEMPLATE += "feature/openssl-fips"
> +      OPENSSL_FIPS_PREBUILT = "<path>"
>  
>      Where path is the location on the host with the prebuilt openssl-fips.
>  
> 


