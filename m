Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE4BEE00B9C; Sun,  1 Apr 2018 20:38:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F384E00944
	for <yocto@yoctoproject.org>; Sun,  1 Apr 2018 20:38:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w323c3mT024250
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 1 Apr 2018 20:38:03 -0700 (PDT)
Received: from [128.224.163.178] (128.224.163.178) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Sun, 1 Apr 2018 20:38:02 -0700
To: Anuj Mittal <anuj.mittal@intel.com>, <yocto@yoctoproject.org>
References: <20180328065517.13807-1-kai.kang@windriver.com>
	<20180328065517.13807-3-kai.kang@windriver.com>
	<5ca43c93-c0b3-b2e1-29a8-797b72cda370@intel.com>
From: Kang Kai <Kai.Kang@windriver.com>
Message-ID: <0897c8b3-9555-2900-d24e-8d0d3e36cafc@windriver.com>
Date: Mon, 2 Apr 2018 11:36:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <5ca43c93-c0b3-b2e1-29a8-797b72cda370@intel.com>
Subject: Re: [PATCH 2/2] audit: fix pkgconfigdir
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
X-List-Received-Date: Mon, 02 Apr 2018 03:38:06 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 2018年03月28日 15:10, Anuj Mittal wrote:
> Hi,
>
> On 03/28/2018 02:55 PM, Kai Kang wrote:
>> Because 'libdir' is set with ${base_libdir} in recipe file of audit,
>> package config files(.pc) are installed to ${base_libdir}/pkgconfig that
>> variable pkgconfigdir is set with ${libdir}/pkgconfig in makefile.
>>
>> Set pkgconfigdir directly to install .pc files to right directory.
>>
>> Signed-off-by: Kai Kang <kai.kang@windriver.com>
>> ---
>>   recipes-security/audit/audit_2.7.6.bb | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/recipes-security/audit/audit_2.7.6.bb b/recipes-security/audit/audit_2.7.6.bb
>> index 5bfda7b..33b49c9 100644
>> --- a/recipes-security/audit/audit_2.7.6.bb
>> +++ b/recipes-security/audit/audit_2.7.6.bb
>> @@ -45,6 +45,7 @@ EXTRA_OEMAKE += "PYLIBVER='python${PYTHON_BASEVERSION}' \
>>   	PYINC='${STAGING_INCDIR}/$(PYLIBVER)' \
>>   	pyexecdir=${libdir}/python${PYTHON_BASEVERSION}/site-packages \
>>   	STDINC='${STAGING_INCDIR}' \
>> +	pkgconfigdir=${libdir}/pkgconfig \
>>   	"
>>   
>>   SUMMARY_audispd-plugins = "Plugins for the audit event dispatcher"
>> @@ -64,7 +65,7 @@ FILES_audispd-plugins += "${sysconfdir}/audisp/audisp-remote.conf \
>>   	"
>>   FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/*/.debug"
>>   FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}"
>> -FILES_${PN}-dev += "${base_libdir}/*.so ${base_libdir}/*.la ${base_libdir}/pkgconfig/*"
>> +FILES_${PN}-dev += "${base_libdir}/*.so ${base_libdir}/*.la"
> Aren't these already part of FILES_${PN}-dev in bitbake.conf in oe-core?

Thanks for point out. It is a legacy patch added in 2012 and I will 
remove it with V2.

--Kai
>
> Thanks,
> Anuj
>

-- 
Regards,
Neil | Kai Kang


