Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F400E00C59; Wed, 16 Jan 2019 06:12:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4DDFE00C29
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 06:12:09 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x0GEC5F2008053
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 16 Jan 2019 06:12:05 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.231) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Wed, 16 Jan 2019 06:12:05 -0800
To: Gaurang Shastri <gmshastri@gmail.com>, Nicolas Dechesne
	<nicolas.dechesne@linaro.org>
References: <CAE_REAuoUGr7L-Cc5_f38wy-Myq1g69D_97wA_cfEu=ULUyAQA@mail.gmail.com>
	<CAE_REAt2p+C+CRSCj=yfRBw4TEkswUP7uTpue8NLu3Gqzgn5xg@mail.gmail.com>
	<CAP71WjykQrPZpBDEpnhD6c_nEYRD5XweSN5dbU4Bb+q7WO3kmw@mail.gmail.com>
	<CAE_REAve_AHUs3V77y=J0CGyum3dTgngxTJgAvw5uX=o_C0FSQ@mail.gmail.com>
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
Message-ID: <52a5eba5-b0da-77cb-4c8f-9e6ddf56b438@windriver.com>
Date: Wed, 16 Jan 2019 08:12:04 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAE_REAve_AHUs3V77y=J0CGyum3dTgngxTJgAvw5uX=o_C0FSQ@mail.gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Community support for any Yocto release
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
X-List-Received-Date: Wed, 16 Jan 2019 14:12:10 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 1/16/19 2:58 AM, Gaurang Shastri wrote:
> Thanks Nicolas for the prompt answer and wiki page information.
> 
> So as you said, "Typically, alongside the latest release the previous two
> releases are also maintained.", do you mean any release will be maintained for 1
> year by community?

Generally it takes 6 months development between releases.  So the rough estimate
1 year of general updates from the community as a whole.  Sometimes it takes
slightly longer (or slightly less) then 6 months for the next release, and that
will then adjust the time scales for the prior version slightly as well.

One thing to keeo in mind for 'community support'.  "Support" is not intended to
be in the commercial sense, where there are specific fix time frames, etc.  It
just means there is an assigned maintainer and QA resources for that version
during that time.  It's still up to developers to send fixes for issues
encountered to the maintainers to get the issues fixed.

If you need a level of more dedicated support (time frame, resources, etc), you
should look for a commercial Yocto Project member.

--Mark

> Regards,
> Gaurang
> 
> On Wed, Jan 16, 2019 at 9:50 AM Nicolas Dechesne <nicolas.dechesne@linaro.org
> <mailto:nicolas.dechesne@linaro.org>> wrote:
> 
>     Hello,
> 
>     On Wed, Jan 16, 2019 at 9:47 AM Gaurang Shastri <gmshastri@gmail.com
>     <mailto:gmshastri@gmail.com>> wrote:
> 
> 
>         Hi All,
> 
>         For how many years yocto community officially support any Yocto release?
>         (This includes like bug fixes, CVE fixes, enhancements, etc etc)
> 
>         For example, the latest release happened on 11/15/2018 (Yocto 2.6), so
>         how long this will be supported by community?
> 
>         Sorry, if this information is already present on some wiki page, but I
>         am not able to find it. So pointer to that wiki page will really help.
> 
> 
>     This information is indeed available her:
>     https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance
> 
>     "Typically, alongside the latest release the previous two releases are also
>     maintained."
>      
> 
> 
>         Regards,
>         Gaurang Shastri
>         -- 
>         _______________________________________________
>         yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         https://lists.yoctoproject.org/listinfo/yocto
> 
> 


