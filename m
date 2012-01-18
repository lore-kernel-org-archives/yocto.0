Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D9B6E00307
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 14:20:26 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 103E4F811F4; Wed, 18 Jan 2012 15:20:23 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0CBA3F811F3;
	Wed, 18 Jan 2012 15:20:22 -0700 (MST)
Message-ID: <4F1745A6.3050502@mlbassoc.com>
Date: Wed, 18 Jan 2012 15:20:22 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <02E7334B1630744CBDC55DA8586225831FAEC2@ORSMSX102.amr.corp.intel.com>
In-Reply-To: <02E7334B1630744CBDC55DA8586225831FAEC2@ORSMSX102.amr.corp.intel.com>
Subject: Re: Making machine config a build dependency for core-image recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Jan 2012 22:20:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-18 15:04, Yang, Fei wrote:
> I encountered a build issue when trying to generate /etc/inittab.
> I have a meta-xxx/conf/machine/conf file which contains serial console information such as SERIAL_CONSOLE = "115200 ttyXYZ" or "115200 ttyS0" by default.
> When I update that conf file and make an incremental build, the /etc/inittab doesn't get updated, I finally have to remove all the binaries and force a complete re-build to generate correct /etc/inittab with updated serial console settings, which take more than an hour to finish.
> How do I create a dependency so that when I update my machine/conf file, an incremental build would take care of the change and re-generate the files in root FS accordingly? If that is impossible for now, can I just delete one or a few task binaries to trigger a rebuild on /etc/inittab? This would greatly reduce my build time.

You really only need to rebuild the sysvinit package.

    % ... make your modifications to machine/conf
    % bitbake sysvinit -c cleansstate
    % bitbake <whatever-image-you-like>

This package is not marked as machine dependent via
   PACKAGE_ARCH = "${MACHINE_ARCH}"
perhaps it should be since /etc/inittab is target dependent?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

