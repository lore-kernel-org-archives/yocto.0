Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A370E00543; Fri,  1 Aug 2014 15:08:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89EDFE004DD
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 15:08:51 -0700 (PDT)
Received: by mail-pa0-f51.google.com with SMTP id ey11so6522938pad.24
	for <yocto@yoctoproject.org>; Fri, 01 Aug 2014 15:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=zRl1lFrGa19Ev1amjIUOx0HMi9c8SPoMP3vuNGdM8sE=;
	b=hcj2hgsLJSiJY6s0C8b2i+2crFuXiMquJtGYDuYOORLU2xh4duB9QRZ6Ji5y42QPLd
	9JyUZdNslnD+jaPo0lM8P2pfdKJTpt34N3vj/bvbMgRuAG44WMPbhfPv3WRHSksBHag3
	LpDKXxSeA53KHOvuWrboH9RbZTc9dwHMMwgRuqds0maZVpxnMgRLy8czFjK9uvQQwf9b
	GiUPIWGA/BxGeAwr/26qEPKFaUP3zt5PTBrc32petqSL7TwROel6I/yklDvevF0Q7NBm
	ZhMIidODu+GQWDqyMnFVON+vAluFnMDVrgIH5gOPHhvW7FZT+Zw5/xOsVRWikacRtQQG
	H84Q==
X-Received: by 10.67.22.65 with SMTP id hq1mr9331964pad.137.1406930930906;
	Fri, 01 Aug 2014 15:08:50 -0700 (PDT)
Received: from ?IPv6:2601:c:9380:601:3408:7910:38f:fe0a?
	([2601:c:9380:601:3408:7910:38f:fe0a])
	by mx.google.com with ESMTPSA id
	bp4sm14711613pdb.24.2014.08.01.15.08.48 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 01 Aug 2014 15:08:49 -0700 (PDT)
Message-ID: <53DC0FEE.8060509@gmail.com>
Date: Fri, 01 Aug 2014 15:08:46 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>, Armin Kuster <akuster@mvista.com>
References: <1406850306-28069-1-git-send-email-akuster@mvista.com>
	<CAMKF1soO9AfjdtGcxdzV0ANaTBqqWNwQw=0ioA-wOUs9P9TsGw@mail.gmail.com>
In-Reply-To: <CAMKF1soO9AfjdtGcxdzV0ANaTBqqWNwQw=0ioA-wOUs9P9TsGw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH] toyomo: ccs-tools
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
X-List-Received-Date: Fri, 01 Aug 2014 22:08:58 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Khem,

Thanks for the feedback.  Will incorporate suggestions into V2.

- Armin

On 07/31/2014 07:11 PM, Khem Raj wrote:
> On Thu, Jul 31, 2014 at 4:45 PM, Armin Kuster <akuster@mvista.com> wrote:
>> Add userland support program ccs-tools
>>
>> Signed-off-by: Armin Kuster <akuster@mvista.com>
>> ---
>>   recipes-security/ccs-tools/README             | 12 ++++++++
>>   recipes-security/ccs-tools/ccs-tools_1.8.3.bb | 42 +++++++++++++++++++++++++++
>>   2 files changed, 54 insertions(+)
>>   create mode 100644 recipes-security/ccs-tools/README
>>   create mode 100644 recipes-security/ccs-tools/ccs-tools_1.8.3.bb
>>
>> diff --git a/recipes-security/ccs-tools/README b/recipes-security/ccs-tools/README
>> new file mode 100644
>> index 0000000..89d2d00
>> --- /dev/null
>> +++ b/recipes-security/ccs-tools/README
>> @@ -0,0 +1,12 @@
>> +Documentation:
>> +http://tomoyo.sourceforge.jp/1.8/index.html.en
>> +
>> +
>> +To start via command line add:
>> +
>> +" security=tomoyo TOMOYO_trigger=/usr/lib/systemd/systemd"
>> +
>> +To initialize:
>> +/usr/lib/ccs-tools/init_policy
>
> the above info would be nicer on target. May be add it to package description
>
>> +
>> +DISTRO_FEATURES_append = " tomoyo"
>> diff --git a/recipes-security/ccs-tools/ccs-tools_1.8.3.bb b/recipes-security/ccs-tools/ccs-tools_1.8.3.bb
>> new file mode 100644
>> index 0000000..939a5d7
>> --- /dev/null
>> +++ b/recipes-security/ccs-tools/ccs-tools_1.8.3.bb
>> @@ -0,0 +1,42 @@
>> +SUMMARY = "Tomoyo"
>> +DESCRIPTION = "TOMOYO Linux is a Mandatory Access Control (MAC) implementation for Linux that can be used to increase the security of a system, while also being useful purely as a system analysis tool."
>> +SECTION = "security"
>> +LICENSE = "GPL-2.0"
>> +LIC_FILES_CHKSUM = "file://README.ccs;md5=5b80632c6a2a3b7fa92ea46eff15bee9"
>> +
>> +DEPENDS = "ncurses"
>> +
>> +SRC_URI = "http://osdn.dl.sourceforge.jp/tomoyo/49693/ccs-tools-1.8.3-20130406.tar.gz"
>> +
>> +SRC_URI[md5sum] = "ffff535584cdf9ae28b85061c32e5618"
>> +SRC_URI[sha256sum] = "1e4129b59cd7fdb963962af7f2cccf4a66c77a4b0948f67320b569aaf6585fcf"
>> +
>> +S = "${WORKDIR}/${PN}"
>> +do_make(){
>> +    oe_runmake USRLIBDIR=${libdir} all
>> +    cd ${S}/kernel_test
>> +    oe_runmake  all
>> +}
>> +
>> +do_install(){
>> +    oe_runmake INSTALLDIR=${D}  USRLIBDIR=${libdir} install
>> +}
>> +
>> +PACKAGE="${PN} ${PN}-dbg"
>> +
>> +FILES_${PN} = "\
>> +    ${sbindir}/* \
>> +    ${base_sbindir}/* \
>> +    ${libdir}/* \
>> +    ${mandir}/man8/* \
>
> manpages should go into ${PN}-doc
>
>> +"
>> +
>> +FILES_${PN}-dbg = "\
>> +    ${base_sbindir}/.debug/* \
>> +    ${sbindir}/.debug/* \
>> +    ${libdir}/.debug/* \
>> +    ${libdir}/ccs/.debug/* \
>> +    /usr/src/debug/* \
>> +"
>> +
>> +
>> --
>> 1.9.1
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

