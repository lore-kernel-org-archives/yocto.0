Return-Path: <leon@anavi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1943AE00ACF; Fri, 18 Dec 2015 03:00:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RDNS_NONE,T_DKIM_INVALID autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from anavi.org (unknown [91.215.217.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BDF3E00349
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2015 03:00:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=anavi.org;
	s=default; 
	h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=rfdGs2X4w582JuJuCThgUJkl2YYf01Xsjwj4BF3yf2U=; 
	b=qc9JYabzuvYgtTDbXb/rtOjH+vmyyBqe9ChqY6DwzDrnlch8Y7M/OFDz4zZMcsgR4M67rzjmp3kX0bAHJE9BvBvXLPmx6bpPOEMDjCBGI3WOnBkvvmc4fuLL2jABnFC42bseM3mWgZNS4rfuRwlCxZP2DDDoXE161kfSi9cY+QQ=;
Received: from localhost ([::1]:45127 helo=voyager.icnhost.net)
	by voyager.icnhost.net with esmtpa (Exim 4.85)
	(envelope-from <leon@anavi.org>)
	id 1a9sll-0002LB-BM; Fri, 18 Dec 2015 13:00:17 +0200
MIME-Version: 1.0
Date: Fri, 18 Dec 2015 13:00:17 +0200
From: Leon Anavi <leon@anavi.org>
To: Andrei Gherzan <andrei@gherzan.ro>
In-Reply-To: <CAK18fxEpvZK5izHF1WCjgSr1OHHKJxLHsiz0uC0S=4fuNwDhdw@mail.gmail.com>
References: <1450395478-4272-1-git-send-email-leon@anavi.org>
	<CAK18fxEpvZK5izHF1WCjgSr1OHHKJxLHsiz0uC0S=4fuNwDhdw@mail.gmail.com>
Message-ID: <e1392f0b42f54e8f917fa64a8b1d9aad@anavi.org>
X-Sender: leon@anavi.org
User-Agent: Roundcube Webmail/1.0.5
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - voyager.icnhost.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - anavi.org
X-Get-Message-Sender-Via: voyager.icnhost.net: authenticated_id: leon@anavi.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] Add Python modules to support Raspberry Pi Sense Hat
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
X-List-Received-Date: Fri, 18 Dec 2015 11:00:25 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi Andrei,

On 2015-12-18 12:38, Andrei Gherzan wrote:
> On Fri, Dec 18, 2015 at 12:37 AM, Leon Anavi <leon@anavi.org> wrote:
> 
>> Python modules python-sense-hat and python-rtimu have been
>> added to support the add-on board Sense Hat for Raspberry Pi.
>> 
>> Python module python-rtimu uses the source code from the
>> GitHub repository of RPi-Distro.
>> 
>> Signed-off-by: Leon Anavi <leon@anavi.org>
>> ---
>> recipes-devtools/python/python-rtimu_git.bb [1] | 12
>> +++++++++
>> recipes-devtools/python/python-sense-hat_2.1.0.bb [2] | 31
>> +++++++++++++++++++++++
>> 2 files changed, 43 insertions(+)
>> create mode 100644 recipes-devtools/python/python-rtimu_git.bb [1]
>> create mode 100644
>> recipes-devtools/python/python-sense-hat_2.1.0.bb [2]
> 
> First of all thank you for your contribution and involvement. As this
> is your first patch I will try to give you some hints:
> 1. I would lik eto have this patch split in 2 patches (for each bb
> file)
> 2. Then use the commit log following the guidelines here:
> http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines [8]
> (Ex: "python-sense-hat: Add recipe to support..."

Thank you for the provided hints. I am working with Sense Hat for a 
hobby project so I will be able to fix my commits and send them again 
during the weekend. Fortunately today is Friday so I will do it tomorrow 
:)

> 
>> diff --git a/recipes-devtools/python/python-rtimu_git.bb [1]
>> b/recipes-devtools/python/python-rtimu_git.bb [1]
>> new file mode 100644
>> index 0000000..9d2f249
>> --- /dev/null
>> +++ b/recipes-devtools/python/python-rtimu_git.bb [1]
>> @@ -0,0 +1,12 @@
>> +DESCRIPTION = "RTIMULib is a C++ and Python library that makes it
>> easy to use 9-dof and 10-dof IMUs with embedded Linux systems"
> 
> I'm not familiar with this library but as I see it, I don't think is
> specific to Raspberrypi. So I'm wondering if it wouldn't be better to
> have this in meta-oe for example and the other one, which is
> definitely rpi specific, here.

Honestly I am also not that familiar with the details. As far as I 
understood this library is especially for Raspberry PI and Intel Edison. 
The recipe is using source code from the GitHub repository of 
organization RPi-Distro. Therefore I believe that meta-raspberrypi is 
the right place for python-rtimu.

Best regards, Leon

> 
>> +HOMEPAGE = "https://github.com/RPi-Distro/RTIMULib/ [3]"
>> +SECTION = "devel/python"
>> +LICENSE = "MIT"
>> +LIC_FILES_CHKSUM =
>> "file://../../LICENSE;md5=96cdecb41125f498958e09b72faf318e"
>> +
>> +SRC_URI =
>> 
> "git://github.com/RPi-Distro/RTIMULib.git;protocol=http;branch=master
>> [4] "
>> +SRCREV = "b949681af69b45f0f7f4bb53b6770037b5b02178"
>> +
>> +S = "${WORKDIR}/git/Linux/python/"
>> +
>> +inherit setuptools
>> diff --git a/recipes-devtools/python/python-sense-hat_2.1.0.bb [2]
>> b/recipes-devtools/python/python-sense-hat_2.1.0.bb [2]
>> new file mode 100644
>> index 0000000..0665536
>> --- /dev/null
>> +++ b/recipes-devtools/python/python-sense-hat_2.1.0.bb [2]
>> @@ -0,0 +1,31 @@
>> +SUMMARY = "Python module to control the Raspberry Pi Sense HAT
>> used in the Astro Pi mission"
>> +HOMEPAGE = "https://github.com/RPi-Distro/python-sense-hat [5]"
>> +SECTION = "devel/python"
>> +LICENSE = "BSD"
>> +LIC_FILES_CHKSUM =
>> "file://LICENCE.txt;md5=d80fe312e1ff5fbd97369b093bf21cda"
>> +
>> +SRCNAME = "sense-hat"
>> +
>> +SRC_URI =
>> 
> "https://pypi.python.org/packages/source/s/${SRCNAME}/${SRCNAME}-${PV}.tar.gz
>> [6]"
>> +
>> +SRC_URI[md5sum] = "71217f15ea963040f06e2f50722186ca"
>> +SRC_URI[sha256sum] =
>> "c6c76707c0ea514e4b0f1f96f1b5b79755875891aae037df7434b6aad7b9dbca"
>> +
>> +S = "${WORKDIR}/${SRCNAME}-${PV}"
>> +
>> +inherit setuptools
>> +
>> +DEPENDS_${PN} += "
>> + jpeg
>> + jpeg-dev
>> + zlib
>> + zlib-dev
>> + freetype
>> + freetype-dev
>> + "
>> +
>> +RDEPENDS_${PN} += "
>> + python-numpy
>> + python-rtimu
>> + python-imaging
>> + "
>> --
>> 2.5.0
>> 
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto [7]
> 
> 
> 
> Links:
> ------
> [1] http://python-rtimu_git.bb
> [2] http://python-sense-hat_2.1.0.bb
> [3] https://github.com/RPi-Distro/RTIMULib/
> [4] 
> http://github.com/RPi-Distro/RTIMULib.git;protocol=http;branch=master
> [5] https://github.com/RPi-Distro/python-sense-hat
> [6] 
> https://pypi.python.org/packages/source/s/${SRCNAME}/${SRCNAME}-${PV}.tar.gz
> [7] https://lists.yoctoproject.org/listinfo/yocto
> [8] http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines

-- 
http://anavi.org/

