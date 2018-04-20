Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5DD4E009F8; Thu, 19 Apr 2018 18:44:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 022BFE00756
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2018 18:44:23 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w3K1iMvR003932
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 19 Apr 2018 18:44:22 -0700 (PDT)
Received: from [128.224.162.156] (128.224.162.156) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.361.1;
	Thu, 19 Apr 2018 18:44:21 -0700
To: akuster808 <akuster808@gmail.com>, <yocto@yoctoproject.org>
References: <1524122123-9222-1-git-send-email-wenzong.fan@windriver.com>
	<b48ec690-e06b-7fdf-72b1-33269102d5f6@gmail.com>
From: wenzong fan <wenzong.fan@windriver.com>
Message-ID: <e7a0b6f7-fe14-662a-44fd-f117c3372466@windriver.com>
Date: Fri, 20 Apr 2018 09:50:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <b48ec690-e06b-7fdf-72b1-33269102d5f6@gmail.com>
Subject: Re: [meta-selinux][PATCH] systemd: create /var/lib/systemd/backlight in advance
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
X-List-Received-Date: Fri, 20 Apr 2018 01:44:24 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 04/19/2018 10:05 PM, akuster808 wrote:
> 
> 
> On 04/19/2018 12:15 AM, wenzong.fan@windriver.com wrote:
>> From: Wenzong Fan <wenzong.fan@windriver.com>
>>
>> The systemd-backlight@.service which called after selinux-init.service
>> will create /var/lib/systemd/backlight with incorrect security labels,
>> this causes the systemd-backlight service fails to start and stop.
>>
>> Creating /var/lib/systemd/backlight in advance to make sure it could
>> always be relabelled by selinux-init while first booting.
>>
>> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>> ---
>>   recipes-core/systemd/systemd_%.bbappend | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/recipes-core/systemd/systemd_%.bbappend b/recipes-core/systemd/systemd_%.bbappend
>> index 5ac3adb..b17e70a 100644
>> --- a/recipes-core/systemd/systemd_%.bbappend
>> +++ b/recipes-core/systemd/systemd_%.bbappend
>> @@ -1 +1,7 @@
>>   inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-audit', '', d)}
>> +
>> +do_install_append() {
>> +	if ${@bb.utils.contains('PACKAGECONFIG', 'backlight', 'true', 'false', d)}; then
>> +		install -d ${D}${localstatedir}/lib/systemd/backlight
>> +	fi
>> +}
> Wont this affect the hash when running the yocto-check-layer ??
> 
> See
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/commit/?id=4fefe83c3203c11fadbe43637a3058284b60427b
> for examples.

Oops, I'll refresh the patch and send V2.

Thanks
Wenzong

> 
> - armin
> 

