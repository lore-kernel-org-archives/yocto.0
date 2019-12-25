Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.10649.1577259875341440855
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Dec 2019 23:44:36 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: yi.zhao@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8F1CE011C2; Tue, 24 Dec 2019 23:44:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2038FE011B6
	for <yocto@yoctoproject.org>; Tue, 24 Dec 2019 23:44:34 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xBP7iWYO016998
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 24 Dec 2019 23:44:32 -0800 (PST)
Received: from [128.224.162.174] (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 24 Dec
 2019 23:44:31 -0800
Subject: Re: [meta-selinux][PATCH 4/6] selinux-initsh.inc: install selinux-init.sh and selinux-labeldev.sh when using systemd
To: Joe MacDonald <joe@deserted.net>
CC: <yocto@yoctoproject.org>
References: <20191223082152.7706-1-yi.zhao@windriver.com>
 <20191223082152.7706-4-yi.zhao@windriver.com>
 <20191224142238.GA39081@deserted.net>
From: "Yi Zhao" <yi.zhao@windriver.com>
Message-ID: <7b1eb6f6-d106-47d8-8750-72e2bb1d261a@windriver.com>
Date: Wed, 25 Dec 2019 15:44:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191224142238.GA39081@deserted.net>
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable


On 12/24/19 10:22 PM, Joe MacDonald wrote:
> Hi Yi,
>
> I've merged the others in this series, can you elaborate a bit on how
> this ensures we don't have a problem coming back that 5fd3c5b71 was
> intended to address?


There are 3 recipes require selinux-initsh.inc: selinux-init_0.1.bb,=20
selinux-labeldev_0.1.bb and selinux-autorelabel_0.1.bb. The=20
${SELINUX_SCRIPT_SRC}.sh will expand to different script name=A0 in each=20
of recipes: selinux-init.sh, selinux-labeldev.sh and=20
selinux-autorelabel.sh. These scripts will be invoked by systemd=20
services. The commit 5fd3c5b71edb99659aeb5cb5903088d84517382e move all=20
installation codes to selinux-autorelabel_0.1.bb which make the=20
selinux-init.sh and selinux-labeldev.sh will be not installed. This=20
patch keeps the touching .autorelabel code in the selinux-autorelabel=20
recipe and move the rest codes back to selinux-initsh.inc.


//Yi


>
> Thanks,
> -J.
>
> [[meta-selinux][PATCH 4/6] selinux-initsh.inc: install selinux-init.sh =
and selinux-labeldev.sh when using systemd] On 19.12.23 (Mon 16:21) Yi Zh=
ao wrote:
>
>> The commit 5fd3c5b71edb99659aeb5cb5903088d84517382e introduced an issu=
e
>> that selinux-init.sh and selinux-labeldev.sh are not installed when
>> using systemd which will cause the selinux-ini.service and
>> selinux-labeldev.service fail to startup. Move the do_install codes fr=
om
>> selinux-autorelabel to selinux-initsh.inc to make sure install these
>> scripts when using systemd.
>>
>> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>> ---
>>   recipes-security/selinux/selinux-autorelabel_0.1.bb | 3 ---
>>   recipes-security/selinux/selinux-initsh.inc         | 9 +++++++--
>>   2 files changed, 7 insertions(+), 5 deletions(-)
>>
>> diff --git a/recipes-security/selinux/selinux-autorelabel_0.1.bb b/rec=
ipes-security/selinux/selinux-autorelabel_0.1.bb
>> index 7e7d08c..b898c3b 100644
>> --- a/recipes-security/selinux/selinux-autorelabel_0.1.bb
>> +++ b/recipes-security/selinux/selinux-autorelabel_0.1.bb
>> @@ -21,9 +21,6 @@ require selinux-initsh.inc
>>  =20
>>   do_install_append() {
>>   	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'fals=
e', d)}; then
>> -		install -d ${D}${bindir}
>> -		install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh ${D}${bindir}
>> -		sed -i -e '/.*HERE$/d' ${D}${bindir}/${SELINUX_SCRIPT_SRC}.sh
>>   		echo "# first boot relabelling" > ${D}/.autorelabel
>>   	fi
>>   }
>> diff --git a/recipes-security/selinux/selinux-initsh.inc b/recipes-sec=
urity/selinux/selinux-initsh.inc
>> index 6084762..0a6cf4b 100644
>> --- a/recipes-security/selinux/selinux-initsh.inc
>> +++ b/recipes-security/selinux/selinux-initsh.inc
>> @@ -27,8 +27,13 @@ do_install () {
>>   	       -e '/.*HERE$/d' -e '/.*Contents.*sysvinit/d' \
>>   	       ${D}${sysconfdir}/init.d/${SELINUX_SCRIPT_DST}
>>  =20
>> -	install -d ${D}${systemd_unitdir}/system
>> -	install -m 0644 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.service ${D}${syste=
md_unitdir}/system
>> +    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'fa=
lse', d)}; then
>> +        install -d ${D}${systemd_unitdir}/system
>> +        install -m 0644 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.service ${D}=
${systemd_unitdir}/system
>> +        install -d ${D}${bindir}
>> +        install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh ${D}${bin=
dir}
>> +        sed -i -e '/.*HERE$/d' ${D}${bindir}/${SELINUX_SCRIPT_SRC}.sh
>> +    fi
>>   }
>>  =20
>>   sysroot_stage_all_append () {
>> --=20
>> 2.17.1
>>
