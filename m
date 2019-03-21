Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 377F1E00CDD; Thu, 21 Mar 2019 05:41:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66A3CE00BC8
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2019 05:41:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x2LCeDtD027256
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Mar 2019 05:40:43 -0700
Received: from soho-mhatle-m.corp.ad.wrs.com (128.224.60.85) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.439.0; Thu, 21 Mar 2019 05:40:28 -0700
To: Lukasz Zemla <Lukasz.Zemla@woodward.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <CE2E43470FE5444A811B580382FE5EDF55BAE8B824@KEMPMAIL2.woodward.com>
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
Message-ID: <d00867a1-0580-5d00-8d5e-add12c4e2968@windriver.com>
Date: Thu, 21 Mar 2019 08:40:28 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.5.3
MIME-Version: 1.0
In-Reply-To: <CE2E43470FE5444A811B580382FE5EDF55BAE8B824@KEMPMAIL2.woodward.com>
Subject: Re: Thud: building SDK fails: cannot find -lssp
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
X-List-Received-Date: Thu, 21 Mar 2019 12:41:14 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 3/20/19 5:30 PM, Lukasz Zemla wrote:
> Hello All,
> 
> I am trying to build SDK using Yocto thud tagged 2.6.1. Toolchain from meta-linaro (edb7ffc2a121df7596385595abe75180296103e0). Unfortunately it fails during perl build, complaining about missing ssp_nonshared and ssp libraries. 

The ssp component comes from the toolchain.  If you can reproduce this on the
base system (not meta-linaro toolchain), then it may be a broader bug.
Otherwise, it's likely related to either a bug or configuration decision in
meta-linaro.

--Mark

> Do you have any ideas how to fix it? 
> I know it is about stack smash protector, but shouldn't it be automatically included and available for linker during a build?
> 
> 
> | x86_64-pokysdk-linux-gcc  --sysroot=/data/home/user/00-projects/proj_myproj_system0/build_myproj_system0/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-perl/5.24.4-r0/recipe-sysroot -Wl,-O1 -fstack-protector -o miniperl \
> |     opmini.o perlmini.o  gv.o toke.o perly.o pad.o regcomp.o dump.o util.o mg.o reentr.o mro_core.o keywords.o hv.o av.o run.o pp_hot.o sv.o pp.o scope.o pp_ctl.o pp_sys.o doop.o doio.o regexec.o utf8.o taint.o deb.o universal.o globals.o perlio.o perlapi.o numeric.o mathoms.o locale.o pp_pack.o pp_sort.o caretx.o dquote.o time64.o  miniperlmain.o  -lpthread  -ldl -lm -lcrypt -lutil -lc
> | /data/home/user/00-projects/proj_myproj_system0/build_myproj_system0/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-perl/5.24.4-r0/recipe-sysroot-native/usr/bin/x86_64-pokysdk-linux/../../libexec/x86_64-pokysdk-linux/gcc/x86_64-pokysdk-linux/7.1.1/ld: cannot find -lssp_nonshared
> | /data/home/user/00-projects/proj_myproj_system0/build_myproj_system0/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-perl/5.24.4-r0/recipe-sysroot-native/usr/bin/x86_64-pokysdk-linux/../../libexec/x86_64-pokysdk-linux/gcc/x86_64-pokysdk-linux/7.1.1/ld: cannot find -lssp
> | collect2: error: ld returned 1 exit status
> | makefile:391: recipe for target 'lib/buildcustomize.pl' failed
> | make[1]: *** [lib/buildcustomize.pl] Error 1
> | make[1]: Leaving directory '/data/home/user/00-projects/proj_myproj_system0/build_myproj_system0/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-perl/5.24.4-r0/perl-5.24.4'
> | make[1]: Entering directory '/data/home/user/00-projects/proj_myproj_system0/build_myproj_system0/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-perl/5.24.4-r0/perl-5.24.4'
> | ./miniperl -Ilib autodoc.pl
> | make[1]: ./miniperl: Command not found
> | makefile:441: recipe for target 'pod/perlintern.pod' failed
> 
> Thank you in advance,
> Lukasz
> 
> ***
> The information in this email is confidential and intended solely for the individual or entity to whom it is addressed.  If you have received this email in error please notify the sender by return e-mail, delete this email, and refrain from any disclosure or action based on the information.
> ***
> 


