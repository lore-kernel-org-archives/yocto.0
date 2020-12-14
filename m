Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.93.22])
 by mx.groups.io with SMTP id smtpd.web09.32911.1607942132541437684
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Dec 2020 02:35:33 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=bcRjFJee;
 spf=none, err=SPF record not found (domain: optimcloud.com, ip: 46.23.93.22, mailfrom: dingo@optimcloud.com)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id da8764d9;
	Mon, 14 Dec 2020 11:35:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=
	subject:to:references:from:message-id:date:mime-version
	:in-reply-to:content-type:content-transfer-encoding; s=obsd; bh=
	5z6fyFSejmSY1Y4vB/Mm6at69vPvpUBXBDT9qX+Vbm8=; b=bcRjFJeeJFr9YiAU
	uCM1vjCgA2bc9SCHtzo3DiKNWwph2sSDLfogwDs6tfVEORQKoqsImasQmmo8agWq
	EQx0oyeeIoUmtvr3REFajggOhmB+kkyZAe5Fu2CKkbk1w/TcStzxt36sW214DIYS
	xaljSwaGOTXNmCS4za3ja/z8XO0xPkauATQWRXFDBobCT+mw/WpcHKbF6WOPYVFe
	UHcYGLtVSzATrfW7Z2F3YkbFjUGl/F43v8V8BCQjDNK18gLw9eqphtq60y1tHhox
	UluAJD9XU92irspwtdBSfN36jSP8BVZSyn/pohUX/o/vZlN3SNuiIUaaLUAnomHu
	P5lhSw==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=subject:to
	:references:from:message-id:date:mime-version:in-reply-to
	:content-type:content-transfer-encoding; q=dns; s=obsd; b=apHS/L
	0N/bfXnZz+Okoq+fFlg5/pcKBC5weCesc/zoHUg3NHKxP3oxzYlGTW6dxeta1+4E
	oxoSos1o9fQpZlikaEY6Owc2kF+tZo3m0Xx6mwkHp8uJcMtNk1LYJfKBjAWt5DND
	I6qj1b/Dw0Waa4TB9qHVJpFUmFslqv7vulsZEyFZN6HNxESrvybDKh9jSiLuf/lO
	jkkUp49cwVI80OlN17btHYG/GpgaQmRNTCTAp7CwCWa+2Y9eDRYRHixsqIN9l71M
	At3+MjFOEIE2tR3zovWrBwl5TZjgQ8TmjpHipiddBHJyAkIdBWQ4VInuUUamNYlm
	NHsEHuIqXfI7n1Fg==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id 690e55c1 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO) auth=yes user=support@optimcloud.com;
	Mon, 14 Dec 2020 11:35:28 +0100 (CET)
Subject: Re: [yocto] file /etc/ethertypes conflicts between netbase-1:6.2-r0.corei7_64 and ebtables-2.0.10+4-r4.corei7_64
To: Randy MacLeod <randy.macleod@windriver.com>, yocto@lists.yoctoproject.org
References: <f02242ba-a5ac-a4bc-ce1d-16604306acd5@optimcloud.com>
 <d40483ac-7d13-dc87-fd0e-2ba00e464682@windriver.com>
From: "Dingo" <dingo@optimcloud.com>
Message-ID: <83249359-8593-1f3a-c626-f44e2cb26979@optimcloud.com>
Date: Mon, 14 Dec 2020 17:35:23 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <d40483ac-7d13-dc87-fd0e-2ba00e464682@windriver.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 12/12/20 3:41 AM, Randy MacLeod wrote:
> On 2020-12-11 1:21 p.m., Dingo wrote:
>> file /etc/ethertypes conflicts between attempted installs of 
>> netbase-1:6.2-r0.corei7_64 and ebtables-2.0.10+4-r4.corei7_64
>
> Thanks for the report. Unless someone replies here,
> can you submit a fix to the oe-core and/or meta-oe lists?

Okay its been submitted


>
> If not, can you open a bug in the YP Bugzilla?
>
> Create an account here:
> https://bugzilla.yoctoproject.org/createaccount.cgi
> then file a bug:
> https://bugzilla.yoctoproject.org/
>
> Thanks,
> ../Randy
>
>
>> commit ba069a5a3dae374744f68a57ab9e7869167beb2b
>> Author: Alexander Kanavin <alex.kanavin@gmail.com>
>> Date:   Fri Dec 4 21:07:14 2020 +0100
>>      netbase: upgrade 6.1 -> 6.2
>>      Not sure why this didn't inherit allarch, but now it does - only
>>      static data is installed.
>>
>>      (From OE-Core rev: ae1880436b293449318655f5b0207d2a741052ba)
>>
>>      Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
>>      Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>> diff --git a/meta/recipes-core/netbase/netbase_6.1.bb 
>> b/meta/recipes-core/netbase/netbase_6.2.bb
>> similarity index 65%
>> rename from meta/recipes-core/netbase/netbase_6.1.bb
>> rename to meta/recipes-core/netbase/netbase_6.2.bb
>> index 33eca459d5..a54d2e7764 100644
>> --- a/meta/recipes-core/netbase/netbase_6.1.bb
>> +++ b/meta/recipes-core/netbase/netbase_6.2.bb
>> @@ -6,17 +6,18 @@ LICENSE = "GPLv2"
>>   LIC_FILES_CHKSUM = 
>> "file://debian/copyright;md5=3dd6192d306f582dee7687da3d8748ab"
>>   PE = "1"
>>
>> -SRC_URI = "${DEBIAN_MIRROR}/main/n/${BPN}/${BPN}_${PV}~bpo10+1.tar.xz"
>> -S = "${WORKDIR}/${BPN}-${PV}~bpo10+1"
>> +SRC_URI = "${DEBIAN_MIRROR}/main/n/${BPN}/${BPN}_${PV}.tar.xz"
>>
>> -SRC_URI[md5sum] = "4fa7517285b4045ac0dc8dbf6730dd7a"
>> -SRC_URI[sha256sum] = 
>> "4e9c3082dff8896cb6b6bea9bb2200d82fb0d7c8d8c8fc9b18704fe553316237"
>> +inherit allarch
>> +
>> +SRC_URI[sha256sum] = 
>> "309a24146a06347d654b261e9e07a82fab844b173674a42e223803dd8258541e"
>>
>>   UPSTREAM_CHECK_URI = "${DEBIAN_MIRROR}/main/n/netbase/"
>> -do_install () {
>>
>> -       install -d ${D}/${mandir}/man8 ${D}${sysconfdir}
>> +do_install () {
>> +       install -d ${D}${sysconfdir}
>>          install -m 0644 ${S}/etc/rpc ${D}${sysconfdir}/rpc
>>          install -m 0644 ${S}/etc/protocols ${D}${sysconfdir}/protocols
>>          install -m 0644 ${S}/etc/services ${D}${sysconfdir}/services
>> +       install -m 0644 ${S}/etc/ethertypes ${D}${sysconfdir}/ethertypes
>>   }
>>
>>
>>
>> 
>>
>
>
