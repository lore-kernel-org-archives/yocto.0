Return-Path: <pwr@iae.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD8CBE00D00; Mon, 14 Oct 2019 14:37:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [213.75.39.15 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from cpsmtpb-ews10.kpnxchange.com (cpsmtpb-ews10.kpnxchange.com
	[213.75.39.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E263FE00C9B
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 14:37:50 -0700 (PDT)
Received: from cpsps-ews22.kpnxchange.com ([10.94.84.188]) by
	cpsmtpb-ews10.kpnxchange.com with Microsoft SMTPSVC(7.5.7601.17514); 
	Mon, 14 Oct 2019 23:37:49 +0200
X-Brand: 7Ljiz6bi2A==
X-KPN-SpamVerdict: e1=0;e2=0;e3=0;e4=(e1=10;e3=10;e2=11;e4=10);EVW:Whi
	te;BM:NotScanned;FinalVerdict:Clean
X-CMAE-Analysis: v=2.3 cv=COFUoijD c=1 sm=1 tr=0 cx=a_idp_e
	a=dZ5u/0G9QtS9WKCcNUBnHQ==:117 a=dZ5u/0G9QtS9WKCcNUBnHQ==:17
	a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=8SZ6bD3cDFYA:10 a=IkcTkHD0fZMA:10
	a=XobE76Q3jBoA:10 a=iGHA9ds3AAAA:8 a=MGKn9dxrm5ou16CtvTAA:9
	a=QEXdDO2ut3YA:10 a=negAFZogEOMA:10 a=dD6BtpIPcVMA:10
	a=nM-MV4yxpKKO9kiQg6Ot:22
X-CM-AcctID: kpn@feedback.cloudmark.com
Received: from smtp.kpnmail.nl ([195.121.84.13]) by cpsps-ews22.kpnxchange.com
	over TLS secured channel with Microsoft SMTPSVC(8.5.9600.16384);
	Mon, 14 Oct 2019 23:37:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kpnmail.nl; s=kpnmail01;
	h=content-type:mime-version:date:message-id:to:subject:from;
	bh=g03E5ZVE/Jo70RYksjYeNkRFDUVQ5oU+oAJe1HFKRsM=;
	b=XVcfS723xzcQCye6VK1ErRJ2s/FEnWQGyNdujXMq3M7o7eFscxc1kiYFYD/W/9nnpfV0EfZlxWg42
	Kcql/xYO6ylEh/Wz+KxV5MIaz2GbmwN0dtbP45oTVCedVH0z1yxexgIdgF24c3v3krB7ZiOn+3am3N
	njiZmUejcwU16lTk=
X-Originating-IP: 86.89.1.39
Received: from [192.168.2.198] (unknown [86.89.1.39])
	by smtp.kpnmail.nl (Halon) with ESMTP
	id de4fad95-eeca-11e9-b3da-005056998788;
	Mon, 14 Oct 2019 23:37:49 +0200 (CEST)
From: pwr@iae.nl
To: yocto@yoctoproject.org
References: <d4ac9051-6d08-f41d-ad28-c0ae9daffae0@iae.nl>
	<51d72979-2472-aa84-40cf-7d9e31b05b1c@intel.com>
Message-ID: <cab3d8e0-4f40-33ff-4dd0-ef0ed917dc56@iae.nl>
Date: Mon, 14 Oct 2019 23:37:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <51d72979-2472-aa84-40cf-7d9e31b05b1c@intel.com>
X-OriginalArrivalTime: 14 Oct 2019 21:37:49.0112 (UTC)
	FILETIME=[9FFE4B80:01D582D7]
X-RcptDomain: yoctoproject.org
Subject: Re: NooB: qemu-native compile error during bitbake core-image-sato
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: pwr@iae.nl
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 14 Oct 2019 21:37:52 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-GB

On 14-10-2019 18:54, Ross Burton wrote:
> On 14/10/2019 17:20, pwr@iae.nl wrote:
>> Hello list,
>>
>> First time here so, hi there :-) I'm new to yocto but not new to linux=
=2E
>>
>> I'm following the Yocto Project Quick Build manual=20
>> (https://www.yoctoproject.org/docs/2.7.1/brief-yoctoprojectqs/brief-yo=
ctoprojectqs.html)
>> on an Arch (Manjaro) machine (uname -r: 4.19.79-1-MANJARO). I know=20
>> Manjaro is not an official supported distribution but I'm hopping on=20
>> some help nevertheless.
>>
>> My build stops at:
>> =C2=A0>> bitbake core-image-sato
>>
>> Build Configuration:
>> BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=3D "1.42.0"
>> BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D "x86_64-linux"
>> NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "manjaro"
>> TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=3D "i586-poky-linux"
>> MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D "qemux86"
>> DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D "poky"
>> DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "2.7.1"
>> TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "m32 i586"=

>> TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=3D ""
>> meta
>> meta-poky
>> meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=20
>> "my-yocto-2.7.1:38d5c8ea98cfa49825c473eba8984c12edf062be"
>>
>> WARNING: Your host glibc verson (2.30) is newer than that in=20
>> uninative (2.29). Disabling uninative so that sstate is not corrupted.=

>>
>> ERROR: qemu-native-3.1.0-r0 do_compile: oe_runmake failed
>> ERROR: qemu-native-3.1.0-r0 do_compile: Function failed: do_compile=20
>> (log file is located at=20
>> poky/build/tmp/work/x86_64-linux/qemu-native/3.1.0-r0/temp/log.do_comp=
ile.1259)
>> ERROR: Logfile of failure stored in:=20
>> poky/build/tmp/work/x86_64-linux/qemu-native/3.1.0-r0/temp/log.do_comp=
ile.1259
>>
>> One of the errors in the log.do_compile.1259 file (file attached):
>> poky/build/tmp/work/x86_64-linux/qemu-native/3.1.0-r0/qemu-3.1.0/linux=
-user/syscall.c:253:16:=20
>> error: static declaration of =E2=80=98gettid=E2=80=99 follows non-stat=
ic declaration
>> =C2=A0=C2=A0 253 | _syscall0(int, gettid)
>> OR
>> poky/build/tmp/work/x86_64-linux/qemu-native/3.1.0-r0/qemu-3.1.0/linux=
-user/ioctls.h:223:9:=20
>> error: =E2=80=98SIOCGSTAMPNS=E2=80=99 undeclared here (not in a functi=
on); did you=20
>> mean =E2=80=98SIOCGSTAMP_OLD=E2=80=99?
>> =C2=A0=C2=A0 223 |=C2=A0=C2=A0 IOCTL(SIOCGSTAMPNS, IOC_R, MK_PTR(MK_ST=
RUCT(STRUCT_timespec)))
>>
>>
>> I do not know enough to understand where this error comes from. But I =

>> suspect it may have to do with the warning I got just before the failu=
re:
>>
>> Is there a way to tell the build system to ignore the newer version=20
>> glibc? And use the 2.29 version.
>> Or can someone help me to debug this error?
>
> You're trying to build an older qemu against a very new kernel. If you =

> can, grab the warrior branch from git instead of using the 2.7.1=20
> release as that has the fix in.=C2=A0 Alternatively, cherry-pick this c=
ommit:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D0570ef5a5e1=
80f7504df970645d1fcce6310b828=20
>
>
> Ross

Thanks, it seams to work. That is, using the warrior branch. I'll also=20
try the patch you suggested.

For future reference, how could I have found this answer? I searched=20
like crazy but never found any reference that qemu is "old" and my=20
kernel is "new".

Robert.




