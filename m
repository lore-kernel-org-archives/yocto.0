Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96422E007C1; Mon, 28 Jul 2014 03:41:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F330E006ED
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 03:40:56 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 8E00327E049;
	Mon, 28 Jul 2014 10:40:55 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id nDJIjihZikLs; Mon, 28 Jul 2014 10:40:54 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 2AD8527E031;
	Mon, 28 Jul 2014 10:40:54 +0000 (UTC)
Message-ID: <53D628B4.9070503@dynamicdevices.co.uk>
Date: Mon, 28 Jul 2014 11:40:52 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <53D623AD.5080006@dynamicdevices.co.uk>
	<3638255.FXZXZqP4FB@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <3638255.FXZXZqP4FB@peggleto-mobl5.ger.corp.intel.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
Subject: Re: 'pod' problem building openssl 1.0.1g with latest daisy branch
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
X-List-Received-Date: Mon, 28 Jul 2014 10:41:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 28/07/2014 11:34, Paul Eggleton wrote:
> Hi Alex,
>
> On Monday 28 July 2014 11:19:25 Alex J Lennon wrote:
>> I pulled the latest daisy branch over the weekend and since am having
>> trouble building openssl 1.0.1g.
>>
>> I removed tmp and rebuilt just in case there was some issue there but
>> the problem remains.
>>
>> Conf:
>>
>> BB_VERSION        = "1.22.0"
>> BUILD_SYS         = "i686-linux"
>> NATIVELSBSTRING   = "Ubuntu-14.04"
>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>> MACHINE           = "imx6qsabresd"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.6.1"
>> TUNE_FEATURES     = "armv7a vfp neon cortexa9"
>> TARGET_FPU        = "vfp-neon"
>> meta
>> meta-yocto        = "daisy:37532ceb19e08a44ef2a3c86e63ffb60ae8b8f5c"
>> meta-oe
>> meta-efl
>> meta-webserver
>> meta-networking   = "daisy:a6dcf6265822ca1484d991d10a3042e04a960cdb"
>> meta-fsl-arm      = "master:fc8bcfae0658375b1c241b6b9633b0c2dce6ac88"
>> meta-fsl-arm-extra = "master:9481991ec1f17bb2555a2a32d1680b1f743d7101"
>> meta-fsl-demos    = "master:27fdb2f2642ecd55d5633bde880dd4c37acd0d42"
>> meta-mono         = "master:74bd3be613ebb980e60e5b98814d4a4bd96a61e0"
>>
>> Layers:
>>
>> ${BSPDIR}/sources/poky.daisy/meta \
>> ${BSPDIR}/sources/poky.daisy/meta-yocto \
>> ${BSPDIR}/sources/meta-openembedded.daisy/meta-oe \
>> ${BSPDIR}/sources/meta-openembedded.daisy/meta-efl \
>> ${BSPDIR}/sources/meta-openembedded.daisy/meta-webserver \
>> ${BSPDIR}/sources/meta-openembedded.daisy/meta-networking \
>> ${BSPDIR}/sources/meta-fsl-arm \
>> ${BSPDIR}/sources/meta-fsl-arm-extra \
>> ${BSPDIR}/sources/meta-fsl-demos \
>> ${BSPDIR}/sources/meta-mono \
>>
>> Failure seems related to corrupt 'pod' files
>>
>> | installing man1/ciphers.1ssl
>> | installing man1/cms.1ssl
>> | cms.pod around line 457: Expected text after =item, not a number
>> | cms.pod around line 461: Expected text after =item, not a number
>> | cms.pod around line 465: Expected text after =item, not a number
>> | cms.pod around line 470: Expected text after =item, not a number
>> | cms.pod around line 474: Expected text after =item, not a number
>> | POD document had syntax errors at /usr/bin/pod2man line 71.
>> | make: *** [install_docs] Error 255
>> | ERROR: oe_runmake failed
>>
>> I see from a little googling that there's recent (-ish) commentary on an
>> issue building these files with perl
>>
>> e.g.
>> http://askubuntu.com/questions/454575/error-255-when-trying-to-install-opens
>> sl-1-0-1g-from-source
>>
>> I see my perl-native is 5.14.3 so not quite the same as the issue in the
>> link above.
>>
>> Can anybody comment on whether this is a known issue or somehow finger
>> trouble on my part?
> So, I think this is an issue with newer host Perl and OpenSSL 1.0.1g. This 
> looks like it might be the patch that fixes it:
>
> https://git.openssl.org/gitweb/?p=openssl.git;a=commit;h=23f5908ac753b176af2a0690e0ebb53c95ef192b
>
> If so we can apply this in daisy (master already has 1.0.1h which includes 
> this fix.)

I'll give this a quick test then shortly thanks Paul.

In the meantime I can also confirm that running make install_sw instead
of make install works as an interim - albeit inappropriate for Yocto - fix

ref: https://github.com/openssl/openssl/issues/57

Cheers,

Alex


