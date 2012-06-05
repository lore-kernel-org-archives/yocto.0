Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27DA1E013A6
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2012 12:17:56 -0700 (PDT)
Received: by eekb45 with SMTP id b45so2242871eek.35
	for <yocto@yoctoproject.org>; Tue, 05 Jun 2012 12:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=cBzXoS8WUDoXshMEanuwv1rGTSyogyrX+AOA65+fEXI=;
	b=uDD9/U4EWBz/WUvApd4e25ySnQKU4Q8f1+valma2JfwouriF1s7W3EGKbkpnatbnb1
	dr4Oj7BSzE0iLsrVg3de8ThkQtvmQJzLDB+yheaDtpNnSmegwU9EGGOklalZ0bDfST1g
	1dRIp32cuOFl0V7MoQhhxD2enmWUtEGk77T0lb+eWfWMoDCwD9Z76uoJlQSrqFb5GFhQ
	DDuj3NHf97rcLGOxpuMf8wQVPo/WZC73f87QwJ66jTILgIbNuEkcqm200htF2nBMUve8
	nLaAYMsaiFx0FLjtE8eWtua5fusi0E2AQ3LHU4pGjXWRovoeoMKbFStQIpN3JXQ34YN5
	WxxA==
Received: by 10.14.99.200 with SMTP id x48mr6414696eef.77.1338923875823; Tue,
	05 Jun 2012 12:17:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.188.11 with HTTP; Tue, 5 Jun 2012 12:17:25 -0700 (PDT)
In-Reply-To: <4FCE56F8.5070308@linux.intel.com>
References: <1338867148-11213-1-git-send-email-b19537@freescale.com>
	<4FCE56F8.5070308@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 5 Jun 2012 12:17:25 -0700
Message-ID: <CAMKF1spcYYQmNLGFJhhJBLKD+E1s1=mMEkMaCyz1rCTzz7Vdqw@mail.gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: yocto@yoctoproject.org, msm@freescale.com
Subject: Re: [PATCH] fix the build issue of ppp
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
X-List-Received-Date: Tue, 05 Jun 2012 19:17:57 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 5, 2012 at 11:59 AM, Joshua Lock <josh@linux.intel.com> wrote:
> On 04/06/12 20:32, b19537@freescale.com wrote:
>>
>> From: Zhenhua Luo<b19537@freescale.com>
>>
>> =C2=A0 =C2=A0 this patch is for edison branch of poky
>>
>> =C2=A0 =C2=A0 fix following build issue of ppp:
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 make[2]: Entering directory
>> `/local/home/b19537/workspace/sdk-devel/build_p4080ds_release/tmp/work/p=
pce500mc-fsl-linux/ppp-2.4.5-r2/ppp-2.4.5/pppd/plugins/rp-pppoe'
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 powerpc-fsl-linux-gcc =C2=A0-m32 -mhard-floa=
t =C2=A0-mcpu=3De500mc =C2=A0-Wl,-O1
>> -Wl,--hash-style=3Dgnu -Wl,--as-needed
>> --sysroot=3D/local/home/b19537/workspace/sdk-devel/build_p4080ds_release=
/tmp/sysroots/p4080ds
>> -O2 -g -I../../../include '-DRP_VERSION=3D"3.8p"' -I../../.. -c -o plugi=
n.o
>> -fPIC plugin.c
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 In file included from plugin.c:53:0:
>>
>> /local/home/b19537/workspace/sdk-devel/build_p4080ds_release/tmp/sysroot=
s/p4080ds/usr/include/linux/if_pppox.h:85:25:
>> error: field 'pppol2tp' has incomplete type
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 make[2]: *** [plugin.o] Error 1
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 make[2]: *** Waiting for unfinished jobs....
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 make[2]: Leaving directory
>> `/local/home/b19537/workspace/sdk-devel/build_p4080ds_release/tmp/work/p=
pce500mc-fsl-linux/ppp-2.4.5-r2/ppp-2.4.5/pppd/plugins/rp-pppoe'
>
>
> PPP builds fine here, can you share some more information such as what
> causes the issue and where this patch has been tested?
>

Did you build it for ppc ?
ppc captures its own version of linux/if_pppol2tp.h and if this is not in s=
ync
with kernel bad things can happen on different architectures. I think in ca=
se
of ppc here some reference is coming in and including this file instead of =
the
one from kernel-headers for ppc but not for may be x86. This patch is safe
but it would be better if whole capturing of this file can be avoided.

> Further, there's no header on the patch. Please see the guidelines at:
>
> https://wiki.yoctoproject.org/wiki/Contribution_Guidelines
>

yes thats needed for better patch management
> Cheers,
> Joshua
>
>
>>
>> Signed-off-by: Zhenhua Luo<b19537@freescale.com>
>> ---
>> =C2=A0.../ppp-fix-build-issue-of-rp-pppoe.so.patch =C2=A0 =C2=A0 =C2=A0 =
| =C2=A0 23
>> ++++++++++++++++++++
>> =C2=A0meta/recipes-connectivity/ppp/ppp_2.4.5.bb =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | =C2=A0 =C2=A03 +-
>> =C2=A02 files changed, 25 insertions(+), 1 deletions(-)
>> =C2=A0create mode 100644
>> meta/recipes-connectivity/ppp/ppp-2.4.5/ppp-fix-build-issue-of-rp-pppoe.=
so.patch
>>
>> diff --git
>> a/meta/recipes-connectivity/ppp/ppp-2.4.5/ppp-fix-build-issue-of-rp-pppo=
e.so.patch
>> b/meta/recipes-connectivity/ppp/ppp-2.4.5/ppp-fix-build-issue-of-rp-pppo=
e.so.patch
>> new file mode 100644
>> index 0000000..ed2141a
>> --- /dev/null
>> +++
>> b/meta/recipes-connectivity/ppp/ppp-2.4.5/ppp-fix-build-issue-of-rp-pppo=
e.so.patch
>> @@ -0,0 +1,23 @@
>> +--- a/include/linux/if_pppol2tp.h =C2=A0 =C2=A0 =C2=A02012-06-04 04:22:=
37.966729643
>> -0500
>> ++++ b/include/linux/if_pppol2tp.h =C2=A0 =C2=A0 =C2=A02012-06-04 04:31:=
04.325905458
>> -0500
>> +@@ -32,6 +32,20 @@
>> + =C2=A0 =C2=A0 =C2=A0 __u16 d_tunnel, d_session; =C2=A0 =C2=A0 =C2=A0/*=
 For sending outgoing packets */
>> + };
>> +
>> ++/* The L2TPv3 protocol changes tunnel and session ids from 16 to 32
>> ++ * bits. So we need a different sockaddr structure.
>> ++ */
>> ++struct pppol2tpv3_addr {
>> ++ =C2=A0 =C2=A0 =C2=A0 pid_t =C2=A0 pid; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* pid that owns the fd.
>> ++ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* 0 =
=3D> =C2=A0current */
>> ++ =C2=A0 =C2=A0 =C2=A0 int =C2=A0 =C2=A0 fd; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* FD of UDP or IP socket to =
use
>> */
>> ++
>> ++ =C2=A0 =C2=A0 =C2=A0 struct sockaddr_in addr; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0/* IP address and port to send to
>> */
>> ++
>> ++ =C2=A0 =C2=A0 =C2=A0 __u32 s_tunnel, s_session; =C2=A0 =C2=A0 =C2=A0/=
* For matching incoming packets
>> */
>> ++ =C2=A0 =C2=A0 =C2=A0 __u32 d_tunnel, d_session; =C2=A0 =C2=A0 =C2=A0/=
* For sending outgoing packets
>> */
>> ++};
>> ++
>> + /* Socket options:
>> + =C2=A0* DEBUG =C2=A0 =C2=A0 =C2=A0- bitmask of debug message categorie=
s
>> + =C2=A0* SENDSEQ =C2=A0 =C2=A0- 0 =3D> =C2=A0don't send packets with se=
quence numbers
>> diff --git a/meta/recipes-connectivity/ppp/ppp_2.4.5.bb
>> b/meta/recipes-connectivity/ppp/ppp_2.4.5.bb
>> index 72464bf..6c4bd08 100644
>> --- a/meta/recipes-connectivity/ppp/ppp_2.4.5.bb
>> +++ b/meta/recipes-connectivity/ppp/ppp_2.4.5.bb
>> @@ -10,7 +10,7 @@ LIC_FILES_CHKSUM =3D
>> "file://pppd/ccp.c;beginline=3D1;endline=3D29;md5=3De2c43fe6e81ff77
>>
>> =C2=A0file://pppd/plugins/passprompt.c;beginline=3D1;endline=3D10;md5=3D=
3bcbcdbf0e369c9a3e0b8c8275b065d8
>> \
>>
>> =C2=A0file://pppd/tdb.c;beginline=3D1;endline=3D27;md5=3D4ca3a9991b01103=
8d085d6675ae7c4e6
>> \
>>
>> =C2=A0file://chat/chat.c;beginline=3D1;endline=3D15;md5=3D0d374b8545ee5c=
62d7aff1acbd38add2"
>> -PR =3D "r2"
>> +PR =3D "r3"
>>
>> =C2=A0SRC_URI =3D "http://ppp.samba.org/ftp/ppp/ppp-${PV}.tar.gz \
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://makefile.patch \
>> @@ -18,6 +18,7 @@ SRC_URI =3D "http://ppp.samba.org/ftp/ppp/ppp-${PV}.ta=
r.gz
>> \
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://pppd-resolv-varrun.patc=
h \
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://enable-ipv6.patch \
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://makefile-remove-hard-us=
r-reference.patch \
>> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://ppp-fix-build-issue-of-rp-pp=
poe.so.patch \
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://pon \
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://poff \
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://init \
>
>
> --
> Joshua Lock
> =C2=A0 =C2=A0 =C2=A0 =C2=A0Yocto Project
> =C2=A0 =C2=A0 =C2=A0 =C2=A0Intel Open Source Technology Centre
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

