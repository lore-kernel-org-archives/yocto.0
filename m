Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.9016.1615298000218750757
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 05:53:20 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linux.microsoft.com header.s=default header.b=SvfQeCEJ;
 spf=fail (domain: linux.microsoft.com, ip: 198.145.29.25, mailfrom: anbelski@linux.microsoft.com)
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
	by mail.yoctoproject.org (Postfix) with ESMTP id 7181038C031F
	for <yocto@yoctoproject.org>; Tue,  9 Mar 2021 13:53:19 +0000 (UTC)
Received: from [192.168.178.23] (unknown [83.135.237.155])
	by linux.microsoft.com (Postfix) with ESMTPSA id 193D9208CF22;
	Tue,  9 Mar 2021 05:53:17 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 193D9208CF22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1615297999;
	bh=QaJ7Dsq8A4Erq4ddjUjDdIkIeldQRr/O8WAhg1u4LJo=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=SvfQeCEJjhJrkMirixZD6jrKSq33U2HMkoA3My99QPz+csROqytcyhDiwHAeXY6Oh
	 Ac4f4LAgJGjhPIOZzsunZ4SfZzpGPyIRKwET1RF3Y4Os7w5SsQNCksgeHFiaePviQV
	 +jwGS7glDbEWS4yb2PzJm+WRYCByCNvQjvO/5Idw=
Subject: Re: [yocto] [meta-selinux][dunfell][gatesgarth][master][PATCH] libselinux-python: Fix build error due to missing target config
To: Joe MacDonald <joe@deserted.net>
Cc: yocto@yoctoproject.org, yi.zhao@windriver.com
References: <20210309115511.7522-1-anbelski@linux.microsoft.com>
 <20210309130043.GA9162@deserted.net>
From: "Anatol Belski" <anbelski@linux.microsoft.com>
Message-ID: <02b457c2-5719-ab43-8f23-e414aadff4d1@linux.microsoft.com>
Date: Tue, 9 Mar 2021 14:53:15 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20210309130043.GA9162@deserted.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Joe,

thanks for the quick check. The patch applies fine to dunfell and=20
gatesgarth, master has the changed recipe version in the bb name. I was=20
about to rebase to master but pulling shows already did it. I was too=20
slow :) thanks for the quick fix.

Regards

Anatol

On 3/9/2021 2:00 PM, Joe MacDonald wrote:
> Hi Anatol,
>
> I will confirm this against the other branches (dunfell and gatesgarth)
> but your patch doesn't appear to be against the current master branch (a=
nd
> it's unlikely one patch will apply to all branches).  Can you send out
> specific patches against the head of tree for each branch you care about=
,
> please?  Then I can get them merged for you.
>
> Thanks,
> -Joe.
>
> [[yocto] [meta-selinux][dunfell][gatesgarth][master][PATCH] libselinux-p=
ython: Fix build error due to missing target config] On 21.03.09 (Tue 11:55=
) Anatol Belski wrote:
>
>> This fixes the error below:
>>
>> gcc: error: unrecognized command line option
>> =E2=80=98-fmacro-prefix-map=3D/path/to/build/libselinux-python/3.0-r0=
=3D/usr/src/debug/libselinux-python/3.0-r0=E2=80=99
>>
>> Without inheriting the config, supposedly a wrong compiler is used.
>>
>> Signed-off-by: Anatol Belski <anbelski@linux.microsoft.com>
>> ---
>>   recipes-security/selinux/libselinux-python_3.0.bb | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/recipes-security/selinux/libselinux-python_3.0.bb b/recipe=
s-security/selinux/libselinux-python_3.0.bb
>> index 2b5438d..3c03df1 100644
>> --- a/recipes-security/selinux/libselinux-python_3.0.bb
>> +++ b/recipes-security/selinux/libselinux-python_3.0.bb
>> @@ -4,6 +4,8 @@ SRC_URI =3D "https://github.com/SELinuxProject/selinux/=
releases/download/${SELINUX
>>  =20
>>   require ${BPN}.inc
>>  =20
>> +inherit python3targetconfig
>> +
>>   LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D84b4d2c6ef954a2d4081e775a2=
70d0d0"
>>  =20
>>   SRC_URI[md5sum] =3D "b387a66f087b6d97713570e85ec89d89"
>> --=20
>> 2.17.1
>>
>>=20
>>
>
