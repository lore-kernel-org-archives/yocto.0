Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CC03E00E34; Mon,  5 Mar 2018 18:01:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0602E0084D;
	Mon,  5 Mar 2018 18:01:18 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w2620iLR023037
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 5 Mar 2018 18:00:45 -0800
Received: from [128.224.162.197] (128.224.162.197) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Mon, 5 Mar 2018 18:00:43 -0800
To: Cal Sullivan <california.l.sullivan@intel.com>,
	<meta-intel@yoctoproject.org>, <yocto@yoctoproject.org>
References: <1520215408-21854-1-git-send-email-Qi.Chen@windriver.com>
	<5defbf56-e7d1-33d0-13a3-66dcd1fc819d@intel.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <56dc198a-7216-35bd-5de2-05a28ca78768@windriver.com>
Date: Tue, 6 Mar 2018 10:01:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <5defbf56-e7d1-33d0-13a3-66dcd1fc819d@intel.com>
X-Originating-IP: [128.224.162.197]
Subject: Re: [meta-intel] [PATCH] systemd-boot: fix bbappend file to suit latest version
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
X-List-Received-Date: Tue, 06 Mar 2018 02:01:19 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 03/06/2018 05:51 AM, Cal Sullivan wrote:
> Thanks for the patch. I assume this is needed when OE-core merges the 
> update to v236?
>
> Thanks,
> Cal
>

Yes. It's needed when OE-core merges the update to v237.

Best Regards,
Chen Qi

> On 03/04/2018 06:03 PM, Chen Qi wrote:
>> Fix the bbappend file to suit the latest systemd version.
>>
>> As systemd has now dropped autotools support, using ninja
>> instead of make in do_compile.
>>
>> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
>> ---
>>   recipes-bsp/systemd-boot/systemd-boot_%.bbappend | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/recipes-bsp/systemd-boot/systemd-boot_%.bbappend 
>> b/recipes-bsp/systemd-boot/systemd-boot_%.bbappend
>> index 9e6cc16..46dd8a4 100644
>> --- a/recipes-bsp/systemd-boot/systemd-boot_%.bbappend
>> +++ b/recipes-bsp/systemd-boot/systemd-boot_%.bbappend
>> @@ -7,11 +7,11 @@ SRC_URI_append_intel-x86-common = " \
>>   PACKAGE_ARCH_intel-x86-common = "${INTEL_COMMON_PACKAGE_ARCH}"
>>     do_compile_append_intel-x86-common() {
>> -    oe_runmake linux${SYSTEMD_BOOT_EFI_ARCH}.efi.stub
>> +    ninja src/boot/efi/linux${SYSTEMD_BOOT_EFI_ARCH}.efi.stub
>>   }
>>     do_deploy_append_intel-x86-common() {
>> -    install ${B}/linux*.efi.stub ${DEPLOYDIR}
>> +    install ${B}/src/boot/efi/linux*.efi.stub ${DEPLOYDIR}
>>   }
>>     # includes rmc-boot.inc if rmc-boot is the EFI_PROVIDER
>
>


