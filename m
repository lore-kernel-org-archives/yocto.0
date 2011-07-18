Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id C57124C800B2
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 15:04:18 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6IK48iY016369;
	Mon, 18 Jul 2011 15:04:09 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <CAMKF1spmvx9r18fmKkpJ2xA35N-VPbgekKFzjeMCbu5HjZQLjg@mail.gmail.com>
Date: Mon, 18 Jul 2011 15:04:08 -0500
Message-Id: <55FA1316-DD0A-42BB-97D2-D60EBE267E97@kernel.crashing.org>
References: <132F0612-EDF2-4086-80D3-F5E9737AD965@kernel.crashing.org>
	<CAMKF1so2OiMrHWhHi7i4gt0-2-EfFcZ2Paj84qw+6ZMTSMsaPw@mail.gmail.com>
	<2D727437-8D9C-44CA-8470-EAD5E6932976@kernel.crashing.org>
	<4E246BD2.1020903@linux.intel.com>
	<3001BA68-6FDC-475C-B9EE-2F0BEDF73170@kernel.crashing.org>
	<CAMKF1spa0bLVz6Z9qReWWbUwxU8cYirRJ7Jz5sh39+-U3Lx3zQ@mail.gmail.com>
	<C182B12B-1903-4C44-A929-0CD36B900DB2@kernel.crashing.org>
	<CAMKF1srwt=SbW8Oyvq4SOWZrdoC022=sYThuiK7nDfyidngJNA@mail.gmail.com>
	<9FD19542-83DD-43E8-9939-6CB1CF79B674@kernel.crashing.org>
	<CAMKF1spmvx9r18fmKkpJ2xA35N-VPbgekKFzjeMCbu5HjZQLjg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1084)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: native gcc compiler error
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
X-List-Received-Date: Mon, 18 Jul 2011 20:04:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 18, 2011, at 2:27 PM, Khem Raj wrote:

> On Mon, Jul 18, 2011 at 12:22 PM, Kumar Gala =
<galak@kernel.crashing.org> wrote:
>>=20
>> On Jul 18, 2011, at 1:37 PM, Khem Raj wrote:
>>=20
>>> On Mon, Jul 18, 2011 at 11:24 AM, Kumar Gala =
<galak@kernel.crashing.org> wrote:
>>>>>>>>> You can try -fno-use-linker-plugin as a workaround. Does
>>>>>>>>> liblto_plugin.so exist on target rfs ?
>>>>>>>>> it might be then gcc driver bug if the library is not there =
then we
>>>>>>>>> forgot to package it.
>>>>>>>>=20
>>>>>>>> File appears to be there:
>>>>>>>> root@p2020-ds:/# file =
/usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so.0.0.0
>>>>>>>> =
./usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so.0.0.0: =
ELF 32-bit MSB shared object, PowerPC or cisco 4500, version 1 (SYSV), =
dynamically linked, with unknown capability 0x41000000 =3D 0xf676e75, =
with unknown capability 0x10000 =3D 0x70402, stripped
>>>>>>>>=20
>>>>>>>> root@p2020-ds:~# ls -lstr =
/usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/
>>>>>>>> total 31624
>>>>>>>>  9812 -rwxr-xr-x 1 root root 10046304 Jul 16 22:40 lto1
>>>>>>>>    28 -rwxr-xr-x 1 root root    26344 Jul 16 22:40 lto-wrapper
>>>>>>>>    60 -rwxr-xr-x 1 root root    60132 Jul 16 22:40 =
liblto_plugin.so.0.0.0
>>>>>>>>   124 -rwxr-xr-x 1 root root   124776 Jul 16 22:40 collect2
>>>>>>>> 11208 -rwxr-xr-x 1 root root 11476244 Jul 16 22:40 cc1plus
>>>>>>>> 10392 -rwxr-xr-x 1 root root 10640644 Jul 16 22:40 cc1
>>>>>>>>     0 lrwxrwxrwx 1 root root       22 Jul 17 15:07 =
liblto_plugin.so.0 ->  liblto_plugin.so.0.0.0
>>>>>>>>=20
>>>>>>>> So not clear why its not finding it.
>>>>>>>>=20
>>>>>>> This looks similar to Yocto Bug 1233 =
(http://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1233
>>>>>>>=20
>>>>>>> Can you confirm if you have the following commit in your branch?
>>>>>>> =
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D2429773613cb95=
b6a0541b5cce6ce1338d5cfc2b
>>>>>>>=20
>>>>>>> It's possible you might be missing this and it's not finding the =
file correctly.
>>>>>>>=20
>>>>>>> As Richard mentioned also, an strace output would be helpful if =
you do have the above commit.
>>>>>>>=20
>>>>>>> Thanks
>>>>>>>       Sau!
>>>>>>=20
>>>>>> =
access("/usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so"=
, R_OK) =3D -1 ENOENT (No such file or directory)
>>>>>> =
access("/usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so"=
, R_OK) =3D -1 ENOENT (No such file or directory)
>>>>>> =
access("/usr/libexec/gcc/powerpc-poky-linux-gnuspe/liblto_plugin.so", =
R_OK) =3D -1 ENOENT (No such file or directory)
>>>>>> =
access("/usr/lib/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so", =
R_OK) =3D -1 ENOENT (No such file or directory)
>>>>>> access("/usr/lib/gcc/powerpc-poky-linux-gnuspe/liblto_plugin.so", =
R_OK) =3D -1 ENOENT (No such file or directory)
>>>>>> =
access("/usr/lib/gcc/powerpc-poky-linux-gnuspe/4.6.1/../../../../powerpc-p=
oky-linux-gnuspe/bin/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so", =
R_OK) =3D -1 ENOENT (No such file or directory)
>>>>>> =
access("/usr/lib/gcc/powerpc-poky-linux-gnuspe/4.6.1/../../../../powerpc-p=
oky-linux-gnuspe/bin/liblto_plugin.so", R_OK) =3D -1 ENOENT (No such =
file or directory)
>>>>>>=20
>>>>>> So it appears we are missing in the package 'liblto_plugin.so' =
link.
>>>>>=20
>>>>> Does that symlink exist in your gcc install tree during build ? if =
not
>>>>> then gcc makefiles need to generate it. if its just a case we
>>>>> forgot to bundle it then we should add it to FILES var of gcc.
>>>>=20
>>>> How do I tell?  Which gcc dir should I be looking at under =
build/tmp/work/* ?
>>>>=20
>>>> For the MPC8315E-RDB build:
>>>>=20
>>>> http://pastebin.com/yYSww5nK
>>>>=20
>>>> [ the first three lines look interesting about =
packages-split/gcc-dev vs packages-split/gcc ]
>>>>=20
>>>> For the e500v2 (P2020-DS) build:
>>>>=20
>>>> http://pastebin.com/B1qyfbGE
>>>>=20
>>>> - k
>>>=20
>>> hmm the symlink goes into gcc-dev package since the package splitter
>>> sees a sumlink xyz.so
>>> but in this case this should be packages explicitly into gcc as we =
see
>>> gcc depends on it for normal
>>> execution or may be create a new package called liblto or somesuch
>>>=20
>>> Can you install gcc-dev package on your device and see if this helps =
?
>>=20
>> Yes if I install gcc-dev it works.
>=20
> OK thanks. So I think we just need to package this symlink along with =
gcc
> and all is good.

Agreed, do you mind working up such a patch.  I'm not an expert in this =
area so feel a little concerned about not knowing enough to try and do =
this cleanly (or generically).

- k


