Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web10.8235.1594870164360160674
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jul 2020 20:29:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 06G3SCw0011874
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Wed, 15 Jul 2020 20:28:32 -0700
Received: from [128.224.162.174] (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Wed, 15 Jul
 2020 20:28:08 -0700
Subject: Re: [yocto] [meta-selinux][PATCH 0/4] refpolicy: update to 20200229+git
To: Scott Murray <scott.murray@konsulko.com>
CC: <yocto@lists.yoctoproject.org>, <joe@deserted.net>
References: <20200707082914.30094-1-yi.zhao@windriver.com>
 <alpine.LFD.2.23.451.2007141131280.11165@godzilla.spiteful.org>
 <2629bc61-5450-4c6f-6241-6599077e0a86@windriver.com>
 <alpine.LFD.2.23.451.2007150526540.11165@godzilla.spiteful.org>
From: "Yi Zhao" <yi.zhao@windriver.com>
Message-ID: <a96ffcc8-913d-a6e0-5f08-68d123bfd3d4@windriver.com>
Date: Thu, 16 Jul 2020 11:27:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.23.451.2007150526540.11165@godzilla.spiteful.org>
X-Originating-IP: [128.224.162.174]
X-MIME-Autoconverted: from 8bit to quoted-printable by mail5.wrs.com id 06G3SCw0011874
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable


On 7/15/20 6:38 PM, Scott Murray wrote:
> On Wed, 15 Jul 2020, Yi Zhao wrote:
>
>> On 7/15/20 12:19 AM, Scott Murray wrote:
>>> On Tue, 7 Jul 2020, Yi Zhao wrote:
>>>
>>>> Here is the changelog for this is patchset:
>>>>
>>>> * Drop refpolicy 2.20190201
>>>>     If we still keep two versions of refpolicy, it is difficult to m=
aintain
>>>>     two huge local patchsets. So drop this version and only keep the=
 git
>>>>     version.
>>>>
>>>> * Add patches to make systemd/sysvinit can work with all policy type=
s.
>>>>
>>>> Here are the results with this patcheset:
>>>>
>>>> Machine: qemux86-64
>>>> Image: core-image-selinux
>>>> Init manager: sysvinit and systemd
>>>> Policy types: minimum, targeted, standard, mcs, mls
>>>> Boot command: runqemu qemux86-64 kvm nographic bootparams=3D"selinux=
=3D1
>>>> enforcing=3D1" qemuparams=3D"-m 1024"
>>>>
>>>> 1. All refpolicy type can be built without problems.
>>>>
>>>> 2. With parameter selinux=3D1 & enforcing=3D1
>>>> The qemu can boot up and login with all policy types.
>>> [snip]
>>>
>>> I suspect I'm really missing something, but I'm unable to successfull=
y
>>> make this work with poky + meta-selinux and its meta-openembedded
>>> dependencies with either sysvinit or systemd; I see denials on boot a=
nd
>>> cannot log in due to denials on reading /etc/passwd.  That's also the
>>> behavior I see without this update, so I'm wondering if I'm just doin=
g
>>> something significantly wrong with respect to configuration.  My
>>> local.conf additions for testing are just:
>>>
>>> DISTRO_FEATURES_append =3D " selinux"
>>
>> Please set the following DISTRO_FEATURES:
>>
>> DISTRO_FEATURES_append =3D " acl xattr pam selinux"
> Ah, poky is missing "pam", I somehow missed that when I checked
> previously.  I can get logged in when I add it and rebuild.  It likely
> would make sense to use the check_features class in e.g.
> core-image-selinux to catch this.  Would you be okay with a patch that
> does so?

Thanks. It makes sense. I can send a patch later or you can also do it.


>
>> If you see some AVC denials for {map} like below:
>>
>> avc:=C2=A0 denied=C2=A0 { map } for=C2=A0 pid=3D249 comm=3D"dbus-daemo=
n" path=3D"/etc/passwd"
>> dev=3D"vda" ino=3D345 scontext=3Dsystem_u:system_r:system_dbusd_t:s0-s=
0:c0.c1023
>> tcontext=3Dsystem_u:object_r:etc_t:s0 tclass=3Dfile permissive=3D0
>> avc:=C2=A0 denied=C2=A0 { map } for=C2=A0 pid=3D319 comm=3D"avahi-daem=
on" path=3D"/etc/passwd"
>> dev=3D"vda" ino=3D345 scontext=3Dsystem_u:system_r:avahi_t:s0
>> tcontext=3Dsystem_u:object_r:etc_t:s0 tclass=3Dfile permissive=3D0
>> avc:=C2=A0 denied=C2=A0 { map } for=C2=A0 pid=3D379 comm=3D"login" pat=
h=3D"/etc/passwd" dev=3D"vda"
>> ino=3D345 scontext=3Dsystem_u:system_r:local_login_t:s0-s0:c0.c1023
>> tcontext=3Dsystem_u:object_r:etc_t:s0 tclass=3Dfile permissive=3D0
>>
>> They are harmless.
> Having spurious denials seems like it would make using them for detecti=
ng
> actual bad behavior harder, I'll likely start looking at the policy to
> see if some of this can be fixed.

For this issue, there is a discussion in=20
http://oss.tresys.com/pipermail/refpolicy/2017-September/009865.html

Actually I saw lots of map denials on /etc/passwd or /etc/group for=20
various commands. I'm not sure if we should allow them all via=20
files_map_etc_files(domain) or dontaudit them ...


//Yi

>
> Thanks,
>
> Scott
