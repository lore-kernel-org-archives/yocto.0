Return-Path: <raj.khem@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id F12824C80A8A
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 13:37:58 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pve37 with SMTP id 37so5071847pve.35
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 11:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=D16V1wD3Hf5b7LGlNgria8gH7OnWNPP3O4e6bM9dr38=;
	b=cRrGFDasfEs4cmKXo8Dn8cOBhspt2YdhJochTxuzf7sMaN82ygM2R46nldXHWsNQo4
	s7d/sB8U/1DAb/yyyRtG9UbsSd83hptsHvTxTG0ykPFEd8K5gH1ZYrvdhR5rSaRSoond
	MW3aD2Jndy1lBPdqHHVpGQa+gwy/Qc6dYlon4=
Received: by 10.68.10.103 with SMTP id h7mr8247953pbb.211.1311014278380; Mon,
	18 Jul 2011 11:37:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.62.36 with HTTP; Mon, 18 Jul 2011 11:37:28 -0700 (PDT)
In-Reply-To: <C182B12B-1903-4C44-A929-0CD36B900DB2@kernel.crashing.org>
References: <132F0612-EDF2-4086-80D3-F5E9737AD965@kernel.crashing.org>
	<CAMKF1so2OiMrHWhHi7i4gt0-2-EfFcZ2Paj84qw+6ZMTSMsaPw@mail.gmail.com>
	<2D727437-8D9C-44CA-8470-EAD5E6932976@kernel.crashing.org>
	<4E246BD2.1020903@linux.intel.com>
	<3001BA68-6FDC-475C-B9EE-2F0BEDF73170@kernel.crashing.org>
	<CAMKF1spa0bLVz6Z9qReWWbUwxU8cYirRJ7Jz5sh39+-U3Lx3zQ@mail.gmail.com>
	<C182B12B-1903-4C44-A929-0CD36B900DB2@kernel.crashing.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Jul 2011 11:37:28 -0700
Message-ID: <CAMKF1srwt=SbW8Oyvq4SOWZrdoC022=sYThuiK7nDfyidngJNA@mail.gmail.com>
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
X-List-Received-Date: Mon, 18 Jul 2011 18:37:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 18, 2011 at 11:24 AM, Kumar Gala <galak@kernel.crashing.org> wr=
ote:
>>>>>> You can try -fno-use-linker-plugin as a workaround. Does
>>>>>> liblto_plugin.so exist on target rfs ?
>>>>>> it might be then gcc driver bug if the library is not there then we
>>>>>> forgot to package it.
>>>>>
>>>>> File appears to be there:
>>>>> root@p2020-ds:/# file /usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.=
1/liblto_plugin.so.0.0.0
>>>>> ./usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so.0.=
0.0: ELF 32-bit MSB shared object, PowerPC or cisco 4500, version 1 (SYSV),=
 dynamically linked, with unknown capability 0x41000000 =3D 0xf676e75, with=
 unknown capability 0x10000 =3D 0x70402, stripped
>>>>>
>>>>> root@p2020-ds:~# ls -lstr /usr/libexec/gcc/powerpc-poky-linux-gnuspe/=
4.6.1/
>>>>> total 31624
>>>>> =C2=A09812 -rwxr-xr-x 1 root root 10046304 Jul 16 22:40 lto1
>>>>> =C2=A0 =C2=A028 -rwxr-xr-x 1 root root =C2=A0 =C2=A026344 Jul 16 22:4=
0 lto-wrapper
>>>>> =C2=A0 =C2=A060 -rwxr-xr-x 1 root root =C2=A0 =C2=A060132 Jul 16 22:4=
0 liblto_plugin.so.0.0.0
>>>>> =C2=A0 124 -rwxr-xr-x 1 root root =C2=A0 124776 Jul 16 22:40 collect2
>>>>> 11208 -rwxr-xr-x 1 root root 11476244 Jul 16 22:40 cc1plus
>>>>> 10392 -rwxr-xr-x 1 root root 10640644 Jul 16 22:40 cc1
>>>>> =C2=A0 =C2=A0 0 lrwxrwxrwx 1 root root =C2=A0 =C2=A0 =C2=A0 22 Jul 17=
 15:07 liblto_plugin.so.0 -> =C2=A0liblto_plugin.so.0.0.0
>>>>>
>>>>> So not clear why its not finding it.
>>>>>
>>>> This looks similar to Yocto Bug 1233 (http://bugzilla.yoctoproject.org=
/show_bug.cgi?id=3D1233
>>>>
>>>> Can you confirm if you have the following commit in your branch?
>>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D2429773613=
cb95b6a0541b5cce6ce1338d5cfc2b
>>>>
>>>> It's possible you might be missing this and it's not finding the file =
correctly.
>>>>
>>>> As Richard mentioned also, an strace output would be helpful if you do=
 have the above commit.
>>>>
>>>> Thanks
>>>> =C2=A0 =C2=A0 =C2=A0 Sau!
>>>
>>> access("/usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.=
so", R_OK) =3D -1 ENOENT (No such file or directory)
>>> access("/usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.=
so", R_OK) =3D -1 ENOENT (No such file or directory)
>>> access("/usr/libexec/gcc/powerpc-poky-linux-gnuspe/liblto_plugin.so", R=
_OK) =3D -1 ENOENT (No such file or directory)
>>> access("/usr/lib/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so",=
 R_OK) =3D -1 ENOENT (No such file or directory)
>>> access("/usr/lib/gcc/powerpc-poky-linux-gnuspe/liblto_plugin.so", R_OK)=
 =3D -1 ENOENT (No such file or directory)
>>> access("/usr/lib/gcc/powerpc-poky-linux-gnuspe/4.6.1/../../../../powerp=
c-poky-linux-gnuspe/bin/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so", =
R_OK) =3D -1 ENOENT (No such file or directory)
>>> access("/usr/lib/gcc/powerpc-poky-linux-gnuspe/4.6.1/../../../../powerp=
c-poky-linux-gnuspe/bin/liblto_plugin.so", R_OK) =3D -1 ENOENT (No such fil=
e or directory)
>>>
>>> So it appears we are missing in the package 'liblto_plugin.so' link.
>>
>> Does that symlink exist in your gcc install tree during build ? if not
>> then gcc makefiles need to generate it. if its just a case we
>> forgot to bundle it then we should add it to FILES var of gcc.
>
> How do I tell? =C2=A0Which gcc dir should I be looking at under build/tmp=
/work/* ?
>
> For the MPC8315E-RDB build:
>
> http://pastebin.com/yYSww5nK
>
> [ the first three lines look interesting about packages-split/gcc-dev vs =
packages-split/gcc ]
>
> For the e500v2 (P2020-DS) build:
>
> http://pastebin.com/B1qyfbGE
>
> - k

hmm the symlink goes into gcc-dev package since the package splitter
sees a sumlink xyz.so
but in this case this should be packages explicitly into gcc as we see
gcc depends on it for normal
execution or may be create a new package called liblto or somesuch

Can you install gcc-dev package on your device and see if this helps ?

