Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02DB2E006F3; Thu, 10 Jul 2014 08:52:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D44FCE00572
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 08:52:28 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id et14so11388794pad.13
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 08:52:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=P5ee77k3VNvI03nKy8EexRBHq96ytyT9gPGQeiQwgtA=;
	b=h4jo2GJ3hSy6enb7RiKondPqeSxbHycLH6GZ5B+jBUNmFZXjEiAY4NtBem2oIU3JD1
	wn4YNO1cYwVVOfa9+SapYlDL6uaQiONy6vb8eaws6pr4CsIfZMHpNFZ7Hd+Tg/C1ime+
	9Fy3Tb65VwGMJYHEmZATbVeDWecEWLD5aDEQEYtozC8FDxRRUBrCYC01+u35jV+E/68n
	c1HVCurRE+/e5SoVnNeGQV1yK8cwGcETUUZseYcd1qlEpvLWaqqUNTsKLGx6jPcj7PPQ
	179rG6kZFedGODjABoC5XClA6EfHkIvH/VPrpVUJOgelWqzkomLjRWKg1hcIetbG9Zas
	PglA==
X-Gm-Message-State: ALoCoQnkjlNAUFiLy/Ch6XS94xGhFxMLpnvt8IkwlZIgok38iXiZK/A/uqI9db5PIMeO5Zh0B0sI
X-Received: by 10.68.164.4 with SMTP id ym4mr48009192pbb.53.1405007547787;
	Thu, 10 Jul 2014 08:52:27 -0700 (PDT)
Received: from [172.16.1.20] (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55])
	by mx.google.com with ESMTPSA id pn4sm62349696pbb.7.2014.07.10.08.52.26
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 10 Jul 2014 08:52:27 -0700 (PDT)
Message-ID: <53BEB6B2.7040109@mvista.com>
Date: Thu, 10 Jul 2014 08:52:18 -0700
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>, yocto@yoctoproject.org
References: <1405002633-2125-1-git-send-email-akuster@mvista.com>
	<1405002633-2125-2-git-send-email-akuster@mvista.com>
	<53BEAC13.5000208@linux.intel.com>
In-Reply-To: <53BEAC13.5000208@linux.intel.com>
Subject: Re: [meta-security][PATCH 1/3] packagegroup: Add initial set of package groups
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
X-List-Received-Date: Thu, 10 Jul 2014 15:52:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

will fix in V2 .

thanks,
Armin

On 07/10/2014 08:06 AM, Saul Wold wrote:
> On 07/10/2014 07:30 AM, Armin Kuster wrote:
>> Signed-off-by: Armin Kuster <akuster@mvista.com>
>> ---
>>   .../packagegroup/packagegroup-core-security.bb     | 45 
>> ++++++++++++++++++++++
>>   1 file changed, 45 insertions(+)
>>   create mode 100644 
>> recipes-security/packagegroup/packagegroup-core-security.bb
>>
>> diff --git 
>> a/recipes-security/packagegroup/packagegroup-core-security.bb 
>> b/recipes-security/packagegroup/packagegroup-core-security.bb
>> new file mode 100644
>> index 0000000..1acc4a9
>> --- /dev/null
>> +++ b/recipes-security/packagegroup/packagegroup-core-security.bb
>> @@ -0,0 +1,45 @@
>> +DESCRIPTION = "Security packagegroup for Poky"
>> +LICENSE = "MIT"
>> +LIC_FILES_CHKSUM = 
>> "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
>> + 
>> file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>> +
>> +PR = "r0"
>> +
> You can drop the PR as they are un-needed now with the PR Server
>
>> +inherit packagegroup
>> +
>> +PACKAGES = "\
>> +    packagegroup-core-security \
>> +    packagegroup-security-utils \
>> +    packagegroup-security-scanners \
>> +    "
>> +
>> +RDEPENDS_packagegroup-core-security = "\
>> +    packagegroup-security-utils \
>> +    packagegroup-security-scanners \
>> +    "
>> +
>> +SUMMARY_packagegroup-security-utils = "Security utilities"
>> +RDEPENDS_packagegroup-security-utils = "\
>> +    nmap \
>> +    libseccomp \
>> +    pinentry \
>> +    ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils", 
>> "",d)} \
>> +    "
>> +
>> +SUMMARY_packagegroup-security-scanners = "Security scanners"
>> +RDEPENDS_packagegroup-security-scanners = "\
>> +    nikto \
>> +    checksecurity \
>> +    "
>> +
>> +SUMMARY_packagegroup-security-audit = "Security Audit tools "
>> +RDEPENDS_packagegroup-security-audit = " \
>> +    buck-security \
>> +    redhat-security \
>> +    "
>> +
>> +SUMMARY_packagegroup-security-hardening = "Security Hardening tools"
>> +RDEPENDS_packagegroup-security-hardening = " \
>> +    bastille \
>> +    "
>> +
>>


