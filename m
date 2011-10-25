Return-Path: <martin.jansa@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FA3EE00559
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 01:10:53 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywm14 with SMTP id 14so315978ywm.35
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 01:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=bW2BicxDEi67nX3ofEf+NvTyjZHP2Ng3XeFa+5DaUxw=;
	b=V8q73zgGtMDqOWviTEGz4D1MKGeEUZoE9Y38PLMcTdkXm5z3pb/HM/A+UM8mHd4QZF
	K6jctr50kYswdDa0F1vco/IuvVQZd2GCFwuG0xLvLdT1Q2lO24nwCkdskdk/4T2NaUiY
	uRYQidzUTvVye2WMeTX7f3s6w0EnSqw3v1OjI=
MIME-Version: 1.0
Received: by 10.150.189.10 with SMTP id m10mr24609445ybf.78.1319530252008;
	Tue, 25 Oct 2011 01:10:52 -0700 (PDT)
Received: by 10.151.85.12 with HTTP; Tue, 25 Oct 2011 01:10:51 -0700 (PDT)
In-Reply-To: <CA+chaQerLbLcFTuuHZs_KimTQmqOHkhyFUCx-7FzTZfKHFkMgQ@mail.gmail.com>
References: <1317275552-19908-1-git-send-email-msm@freescale.com>
	<1317275552-19908-7-git-send-email-msm@freescale.com>
	<CA+chaQerLbLcFTuuHZs_KimTQmqOHkhyFUCx-7FzTZfKHFkMgQ@mail.gmail.com>
Date: Tue, 25 Oct 2011 10:10:51 +0200
Message-ID: <CA+chaQfYyHq5urZwLty9=Na_CM53xmvLV7tURK6DeZ6ZWkE65A@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Matthew McClintock <msm@freescale.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 7/7] Add proper deps for nfs-utils, util-linux, and strace
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Oct 2011 08:10:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 12, 2011 at 2:06 PM, Martin Jansa <martin.jansa@gmail.com> wrot=
e:
> On Thu, Sep 29, 2011 at 7:52 AM, Matthew McClintock <msm@freescale.com> w=
rote:
>> These packages need these deps for the RPM generation stage:
>
> This was already applied, but I'll reply here and please send next
> patch adressing those comments.
>
> Today I've noticed that perl and libperl are pulled to my images only
> because of util-linux and strace I belive I don't need them, see
> inline comments

PING

I've fixed nfs_utils, could you please fix util-linux and strace as suggest=
ed?

Regards,

>> =C2=A0error: Failed dependencies:
>> | =C2=A0 =C2=A0 =C2=A0 /usr/bin/python is needed by nfs-utils-1.2.3-r2.p=
pce5500
>> | =C2=A0 =C2=A0 =C2=A0 /usr/bin/perl is needed by util-linux-2.19.1-r4.p=
pce5500
>> | =C2=A0 =C2=A0 =C2=A0 /usr/bin/perl is needed by strace-4.5.20-r2.ppce5=
500
>>
>> Signed-off-by: Matthew McClintock <msm@freescale.com>
>> ---
>> =C2=A0.../nfs-utils/nfs-utils_1.2.3.bb =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A02 +-
>> =C2=A0meta/recipes-core/util-linux/util-linux.inc =C2=A0 =C2=A0 =C2=A0 =
=C2=A0| =C2=A0 =C2=A02 +-
>> =C2=A0meta/recipes-devtools/strace/strace_4.5.20.bb =C2=A0 =C2=A0 =C2=A0=
| =C2=A0 =C2=A02 ++
>> =C2=A03 files changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb b/me=
ta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
>> index 08468fe..e8b0490 100644
>> --- a/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
>> +++ b/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
>> @@ -9,7 +9,7 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D0636e73ff0215=
e8d672dc4c32c317bb3"
>>
>> =C2=A0# util-linux for libblkid
>> =C2=A0DEPENDS =3D "libcap libnfsidmap libevent util-linux tcp-wrappers"
>> -RDEPENDS_${PN} =3D "portmap"
>> +RDEPENDS_${PN} =3D "portmap python"
>
> python is needed only for
> ./usr/sbin/mountstats:#!/usr/bin/env python
> ./usr/sbin/nfsiostat:#!/usr/bin/python
> could you please move them to separate packages and keep python
> runtime dependency only there?
>
>> =C2=A0RRECOMMENDS_${PN} =3D "kernel-module-nfsd"
>>
>> =C2=A0PR =3D "r2"
>> diff --git a/meta/recipes-core/util-linux/util-linux.inc b/meta/recipes-=
core/util-linux/util-linux.inc
>> index 1f242b7..afce673 100644
>> --- a/meta/recipes-core/util-linux/util-linux.inc
>> +++ b/meta/recipes-core/util-linux/util-linux.inc
>> @@ -55,7 +55,7 @@ FILES_util-linux-libuuid-dev =3D "${libdir}/libuuid.so=
 ${libdir}/libuuid.a ${libdi
>> =C2=A0FILES_util-linux-lscpu =3D "${bindir}/lscpu"
>>
>> =C2=A0RRECOMMENDS_${PN} =3D "util-linux-fdisk util-linux-cfdisk util-lin=
ux-sfdisk util-linux-mount util-linux-readprofile "
>> -RDEPENDS_${PN} =3D "util-linux-umount util-linux-swaponoff util-linux-l=
osetup"
>> +RDEPENDS_${PN} =3D "util-linux-umount util-linux-swaponoff util-linux-l=
osetup perl"
>
> perl is needed only for
> /usr/bin/chkdupexe
> could you please move chkdupexe to separate package and add perl only
> to RDEPENDS_${PN}-chkdupexe?
>
>> =C2=A0RRECOMMENDS_${PN}_virtclass-native =3D ""
>> =C2=A0RDEPENDS_${PN}_virtclass-native =3D ""
>> diff --git a/meta/recipes-devtools/strace/strace_4.5.20.bb b/meta/recipe=
s-devtools/strace/strace_4.5.20.bb
>> index 391669f..b3d2aa5 100644
>> --- a/meta/recipes-devtools/strace/strace_4.5.20.bb
>> +++ b/meta/recipes-devtools/strace/strace_4.5.20.bb
>> @@ -5,6 +5,8 @@ LICENSE =3D "BSD"
>> =C2=A0LIC_FILES_CHKSUM =3D "file://COPYRIGHT;md5=3D4535377ede62550fdeaf3=
9f595fd550a"
>> =C2=A0PR =3D "r2"
>>
>> +RDEPENDS =3D "perl"
>
> This should be RDEPENDS_${PN}
> and much better would be to split
> strace-graph to separate package and add perl only to
> RDEPENDS_${PN}-graph
>
>> +
>> =C2=A0SRC_URI =3D "${SOURCEFORGE_MIRROR}/strace/strace-${PV}.tar.bz2 \
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://sigmask.patch \
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 "
>> --
>> 1.7.6.1
>
> And also you need to bump PR when you're changing RDEPENDs (otherwise
> issues are shown much later when it's rebuild because of some other
> changes).
>
> Regards,
>

