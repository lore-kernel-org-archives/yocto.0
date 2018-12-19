Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63D2AE00BB7; Wed, 19 Dec 2018 12:18:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD9DAE0097C
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2018 12:18:41 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id wBJKIQY5011435
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 19 Dec 2018 12:18:28 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Wed, 19 Dec 2018 12:18:25 -0800
To: madoga <madoga@protonmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <XUiyo-p85y5jWlEvuX3SKzdKso_dCC7pwaVE-iWM1CTnvLdxdNtRehegAyegvEpvIKigBIxGQvq91nJEDY_NVoPGRudYCwyCrmBF3ZNJSl0=@protonmail.com>
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
Message-ID: <9e035958-ceae-48c4-0a69-6999a683d15f@windriver.com>
Date: Wed, 19 Dec 2018 14:18:24 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.3.3
MIME-Version: 1.0
In-Reply-To: <XUiyo-p85y5jWlEvuX3SKzdKso_dCC7pwaVE-iWM1CTnvLdxdNtRehegAyegvEpvIKigBIxGQvq91nJEDY_NVoPGRudYCwyCrmBF3ZNJSl0=@protonmail.com>
Subject: Re: Error while using PSEUDO
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
X-List-Received-Date: Wed, 19 Dec 2018 20:18:42 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 12/19/18 8:16 AM, madoga wrote:
> Hello everyone, 
> 
> I am trying to use pseudo due to I need to set my entire rootfs. I would like to
> ask you some questions about how to use it, considering that it does not seem to
> work. I am going to explain the process I have followed: 
> 
> I enabled PSEUDO_DISABLED and PSEUDO_PREFIX at meta/conf/bitbake.conf: / /
> /export PSEUDO_DISABLED = "0"//
> /
> /export PSEUDO_PREFIX = "${STAGING_DIR_NATIVE}${prefix_native}"/

The above is most certainly incorrect.  Bitbake has all of these settings
themselves.  Each recipe has it's own individual pseudo configuration and database.

The errors below are likely due to incorrect settings above.

> Also, FILESYSTEM_PERMS_TABLE variable is pointing to my custom fs-perms-cle.txt.
> It is declared at build/conf/local.conf. During the building process, I receive
> constantly these kind of warning messages about "host contamination":
> /WARNING: libgcc-7.3.0-r0 do_package_qa: QA Issue: libgcc: /libgcc-
> dbg/usr/src/debug/libgcc/7.3.0-r0/gcc-7.3.0/build.powerpc-clepm-linux-gnuspe.powerpc-distro-linux-gnuspe/gcc/insn-constants.h
> is owned by uid 1002, which is the same as the user running bitbake. This may be
> due to host contamination [host-user-contaminated]/
> 
> When it has finished, I check my rootfs or packages' image folder and
> permissions are always set exactly equal as the user running bitbake. What is
> going on? Have I missed something? Why my fs-perms.txt is ignored? I debugged
> package.bbclass and parameters are parsed OK...

Use the produced tarball from the build system, extract it with root permissions
on your system (or just view it in place) and the permissions will be correct.

You should not be attempting to use pseudo directly to manipulate things outside
of the build system.  That isn't what it's intended for.  Psuedo is to be used
with specific components to manage individual parts of the build system and
emulate the necessary filesystem parts and pieces that a regular user can not
typically access.

> I have also tried to declare LD_PRELOAD variable, pointing directly to my host
> libpseudo.so, but the result is the same: 
> /LD_PRELOAD = "/usr/lib/x86_64-linux/pseudo/libpseudo.so"//
> /
> /LD_PREFIX = "/usr/"/
> 
> Should I call fakeroot somewhere in the middle of the process?
> It looks like an easy process, reading Yocto's manual but I think I have
> forgotten something... I hope someone has had the same failure.

You do not call pseudo.  The build system calls pseudo.

If you are defining custom tasks that attempt to manipulate components prior to
packaging, then you may have to declare the task as a 'fakeroot' task, this will
trigger the build system to load the necessary components and set it up in a
consistent way for that particular recipe's behavior.

--Mark

> Thank you!
> Best Regards,
> Mario
> 


