Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 811CBE00C25; Sat, 24 Aug 2019 06:30:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,FORGED_MUA_MOZILLA,
	RDNS_DYNAMIC autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
X-Greylist: delayed 900 seconds by postgrey-1.32 at yocto-www;
	Sat, 24 Aug 2019 06:30:03 PDT
Received: from blaine.gmane.org (195-159-176-226.customer.powertech.no
	[195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36A42E00B8E
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2019 06:30:03 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.89)
	(envelope-from <gley-yocto@m.gmane.org>) id 1i1Vsk-000vH0-6v
	for yocto@yoctoproject.org; Sat, 24 Aug 2019 15:15:02 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Tim Blechmann <tim@klingt.org>
Date: Sat, 24 Aug 2019 20:52:28 +0800
Message-ID: <qjrbuc$3n00$1@blaine.gmane.org>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.8.0
X-Mozilla-News-Host: news://news.gmane.org
Openpgp: preference=signencrypt
Autocrypt: addr=tim@klingt.org; keydata=
	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
	EfM=
Subject: metadata mismatch between image and package (uninative)
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
X-List-Received-Date: Sat, 24 Aug 2019 13:30:05 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

hi all,

i'm currently running into an issue of non-deterministic metadata: my
packages build fine when building the package itself, but i'm getting a
metadata mismatch when building as dependency of an image:

>  ERROR: When reparsing /path/to/poky/meta/recipes-core/packagegroups/packagegroup-core-boot.bb.do_build, the basehash value changed from 86577a31ea46d8046d45301bfc53b8240e3576adecd75f7cfd25945ebab0a10c to 3439e8b4cd0f876338d38c9a5d2dc7c50440754f33a03212130766c7514d52ea. The metadata is not deterministic and this needs to be fixed.


the relevant part of the diff comes from PATH:
`${STAGING_DIR}-uninative/${BUILD_ARCH}-linux${bindir_native}:`


> Dependency on variable BUILD_ARCH was added
> Dependency on variable STAGING_DIR was added
> Variable PATH value changed from '${@extra_path_elements(d)}${COREBASE}/scripts:${STAGING_BINDIR_TOOLCHAIN}:${STAGING_BINDIR_CROSS}:${STAGING_DIR_NATIVE}${sbindir_native}:${STAGING_BINDIR_NATIVE}:${STAGING_DIR_NATIVE}${base_sbindir_native}:${STAGING_DIR_NATIVE}${base_bindir_native}:/path/to/poky/bitbake/bin:${HOSTTOOLS_DIR}' to '${STAGING_DIR}-uninative/${BUILD_ARCH}-linux${bindir_native}:${@extra_path_elements(d)}${COREBASE}/scripts:${STAGING_BINDIR_TOOLCHAIN}:${STAGING_BINDIR_CROSS}:${STAGING_DIR_NATIVE}${sbindir_native}:${STAGING_BINDIR_NATIVE}:${STAGING_DIR_NATIVE}${base_sbindir_native}:${STAGING_DIR_NATIVE}${base_bindir_native}:/path/to/poky/bitbake/bin:${HOSTTOOLS_DIR}'

my distro is based on poky, which INHERITs "uninative"

--

i've been able to build by `INHERIT_remove`ing "uninative", but this
feels like a hack.

so i'm wondering: what could cause a reparse error when `uninative` is
enabled?

tia,
tim


