Return-Path: <raj.khem@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id B2BA94C80A8A
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 13:05:23 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pve37 with SMTP id 37so5028547pve.35
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 11:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=ldQ4PhvUbGWdycR27BPaJ8mReh9Hjpzw6kxMQv/dWJ8=;
	b=wlW/rY8WJgnVuwkJYzerE4PQ/u/iYmdPvQH7ENsmh+BFd6E2Ks7fmSE74BdjXXtdju
	CblSHCqJihBk/j8/Zg51+3Ax3/wpRD6XBNCMtxUOQg5Bs3JJZvOuQ9kEZ3+WQKLq6XdC
	MqKgohg0XBjOS7hdyo/2NeYQX6fbH1A8+T2m8=
Received: by 10.68.46.38 with SMTP id s6mr227473pbm.10.1311012323287; Mon, 18
	Jul 2011 11:05:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.62.36 with HTTP; Mon, 18 Jul 2011 11:04:53 -0700 (PDT)
In-Reply-To: <3001BA68-6FDC-475C-B9EE-2F0BEDF73170@kernel.crashing.org>
References: <132F0612-EDF2-4086-80D3-F5E9737AD965@kernel.crashing.org>
	<CAMKF1so2OiMrHWhHi7i4gt0-2-EfFcZ2Paj84qw+6ZMTSMsaPw@mail.gmail.com>
	<2D727437-8D9C-44CA-8470-EAD5E6932976@kernel.crashing.org>
	<4E246BD2.1020903@linux.intel.com>
	<3001BA68-6FDC-475C-B9EE-2F0BEDF73170@kernel.crashing.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Jul 2011 11:04:53 -0700
Message-ID: <CAMKF1spa0bLVz6Z9qReWWbUwxU8cYirRJ7Jz5sh39+-U3Lx3zQ@mail.gmail.com>
To: Kumar Gala <galak@kernel.crashing.org>
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
X-List-Received-Date: Mon, 18 Jul 2011 18:05:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 18, 2011 at 11:01 AM, Kumar Gala <galak@kernel.crashing.org> wr=
ote:
>
> On Jul 18, 2011, at 12:22 PM, Saul Wold wrote:
>
>> On 07/18/2011 07:54 AM, Kumar Gala wrote:
>>>
>>> On Jul 18, 2011, at 9:45 AM, Khem Raj wrote:
>>>
>>>> On Mon, Jul 18, 2011 at 5:58 AM, Kumar Gala<galak@kernel.crashing.org>=
 =C2=A0wrote:
>>>>> I've been working on trying to get an e500v2 (linux-gnuspe) compiler =
working and seem to have build a native toolchain. =C2=A0However when I try=
 and compile a simple hello world style app I get:
>>>>>
>>>>> root@p2020-ds:~# gcc float.c
>>>>> gcc: fatal error: -fuse-linker-plugin, but liblto_plugin.so not found
>>>>> compilation terminated.
>>>>>
>>>>> Wondering if anyone's seen this before and had any ideas.
>>>>>
>>>>
>>>> You can try -fno-use-linker-plugin as a workaround. Does
>>>> liblto_plugin.so exist on target rfs ?
>>>> it might be then gcc driver bug if the library is not there then we
>>>> forgot to package it.
>>>
>>> File appears to be there:
>>> root@p2020-ds:/# file /usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/=
liblto_plugin.so.0.0.0
>>> ./usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so.0.0.=
0: ELF 32-bit MSB shared object, PowerPC or cisco 4500, version 1 (SYSV), d=
ynamically linked, with unknown capability 0x41000000 =3D 0xf676e75, with u=
nknown capability 0x10000 =3D 0x70402, stripped
>>>
>>> root@p2020-ds:~# ls -lstr /usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.=
6.1/
>>> total 31624
>>> =C2=A09812 -rwxr-xr-x 1 root root 10046304 Jul 16 22:40 lto1
>>> =C2=A0 =C2=A028 -rwxr-xr-x 1 root root =C2=A0 =C2=A026344 Jul 16 22:40 =
lto-wrapper
>>> =C2=A0 =C2=A060 -rwxr-xr-x 1 root root =C2=A0 =C2=A060132 Jul 16 22:40 =
liblto_plugin.so.0.0.0
>>> =C2=A0 124 -rwxr-xr-x 1 root root =C2=A0 124776 Jul 16 22:40 collect2
>>> 11208 -rwxr-xr-x 1 root root 11476244 Jul 16 22:40 cc1plus
>>> 10392 -rwxr-xr-x 1 root root 10640644 Jul 16 22:40 cc1
>>> =C2=A0 =C2=A0 0 lrwxrwxrwx 1 root root =C2=A0 =C2=A0 =C2=A0 22 Jul 17 1=
5:07 liblto_plugin.so.0 -> =C2=A0liblto_plugin.so.0.0.0
>>>
>>> So not clear why its not finding it.
>>>
>> This looks similar to Yocto Bug 1233 (http://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D1233
>>
>> Can you confirm if you have the following commit in your branch?
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D2429773613cb=
95b6a0541b5cce6ce1338d5cfc2b
>>
>> It's possible you might be missing this and it's not finding the file co=
rrectly.
>>
>> As Richard mentioned also, an strace output would be helpful if you do h=
ave the above commit.
>>
>> Thanks
>> =C2=A0 =C2=A0 =C2=A0 Sau!
>
> access("/usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so=
", R_OK) =3D -1 ENOENT (No such file or directory)
> access("/usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so=
", R_OK) =3D -1 ENOENT (No such file or directory)
> access("/usr/libexec/gcc/powerpc-poky-linux-gnuspe/liblto_plugin.so", R_O=
K) =3D -1 ENOENT (No such file or directory)
> access("/usr/lib/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so", R=
_OK) =3D -1 ENOENT (No such file or directory)
> access("/usr/lib/gcc/powerpc-poky-linux-gnuspe/liblto_plugin.so", R_OK) =
=3D -1 ENOENT (No such file or directory)
> access("/usr/lib/gcc/powerpc-poky-linux-gnuspe/4.6.1/../../../../powerpc-=
poky-linux-gnuspe/bin/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so", R_=
OK) =3D -1 ENOENT (No such file or directory)
> access("/usr/lib/gcc/powerpc-poky-linux-gnuspe/4.6.1/../../../../powerpc-=
poky-linux-gnuspe/bin/liblto_plugin.so", R_OK) =3D -1 ENOENT (No such file =
or directory)
>
> So it appears we are missing in the package 'liblto_plugin.so' link.

Does that symlink exist in your gcc install tree during build ? if not
then gcc makefiles need to generate it. if its just a case we
forgot to bundle it then we should add it to FILES var of gcc.
>
> - k
>

