Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f46.google.com (mail-pz0-f46.google.com
	[209.85.210.46])
	by mx1.pokylinux.org (Postfix) with ESMTP id 70C194C800E5
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 15:21:28 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk3 with SMTP id 3so4379641pzk.33
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 13:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=usz6+lPErZDtsmzGZZMBUcpxxcI/Wht8xT6XZj+zXBY=;
	b=Y+fbuu0XyH+RHDlm2GpLjCe3B3rY79u17tKiUWUi0SuhJwlQzsw0+KuRJGSWxJmKD/
	N1TuYPCPtg3SzDSuMoyuYie2AXFi7bnLnX7RmmQqju8gkEutz6q4AygeV4qJpZB5nWIt
	NjE3WVNDHPE1hIej/T5LvrwKfW2dyAoOqMBHc=
Received: by 10.68.33.200 with SMTP id t8mr8095426pbi.144.1311020487036; Mon,
	18 Jul 2011 13:21:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.62.36 with HTTP; Mon, 18 Jul 2011 13:20:57 -0700 (PDT)
In-Reply-To: <55FA1316-DD0A-42BB-97D2-D60EBE267E97@kernel.crashing.org>
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
	<55FA1316-DD0A-42BB-97D2-D60EBE267E97@kernel.crashing.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Jul 2011 13:20:57 -0700
Message-ID: <CAMKF1soVm5DqRk0uP=UxE5SphwagR_jTuvg7sktM-9Xkba0iNQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 18 Jul 2011 20:21:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 18, 2011 at 1:04 PM, Kumar Gala <galak@kernel.crashing.org> wro=
te:
>
> On Jul 18, 2011, at 2:27 PM, Khem Raj wrote:
>
>> On Mon, Jul 18, 2011 at 12:22 PM, Kumar Gala <galak@kernel.crashing.org>=
 wrote:
>>>
>>> On Jul 18, 2011, at 1:37 PM, Khem Raj wrote:
>>>
>>>> On Mon, Jul 18, 2011 at 11:24 AM, Kumar Gala <galak@kernel.crashing.or=
g> wrote:
>>>>>>>>>> You can try -fno-use-linker-plugin as a workaround. Does
>>>>>>>>>> liblto_plugin.so exist on target rfs ?
>>>>>>>>>> it might be then gcc driver bug if the library is not there then=
 we
>>>>>>>>>> forgot to package it.
>>>>>>>>>
>>>>>>>>> File appears to be there:
>>>>>>>>> root@p2020-ds:/# file /usr/libexec/gcc/powerpc-poky-linux-gnuspe/=
4.6.1/liblto_plugin.so.0.0.0
>>>>>>>>> ./usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.s=
o.0.0.0: ELF 32-bit MSB shared object, PowerPC or cisco 4500, version 1 (SY=
SV), dynamically linked, with unknown capability 0x41000000 =3D 0xf676e75, =
with unknown capability 0x10000 =3D 0x70402, stripped
>>>>>>>>>
>>>>>>>>> root@p2020-ds:~# ls -lstr /usr/libexec/gcc/powerpc-poky-linux-gnu=
spe/4.6.1/
>>>>>>>>> total 31624
>>>>>>>>> =C2=A09812 -rwxr-xr-x 1 root root 10046304 Jul 16 22:40 lto1
>>>>>>>>> =C2=A0 =C2=A028 -rwxr-xr-x 1 root root =C2=A0 =C2=A026344 Jul 16 =
22:40 lto-wrapper
>>>>>>>>> =C2=A0 =C2=A060 -rwxr-xr-x 1 root root =C2=A0 =C2=A060132 Jul 16 =
22:40 liblto_plugin.so.0.0.0
>>>>>>>>> =C2=A0 124 -rwxr-xr-x 1 root root =C2=A0 124776 Jul 16 22:40 coll=
ect2
>>>>>>>>> 11208 -rwxr-xr-x 1 root root 11476244 Jul 16 22:40 cc1plus
>>>>>>>>> 10392 -rwxr-xr-x 1 root root 10640644 Jul 16 22:40 cc1
>>>>>>>>> =C2=A0 =C2=A0 0 lrwxrwxrwx 1 root root =C2=A0 =C2=A0 =C2=A0 22 Ju=
l 17 15:07 liblto_plugin.so.0 -> =C2=A0liblto_plugin.so.0.0.0
>>>>>>>>>
>>>>>>>>> So not clear why its not finding it.
>>>>>>>>>
>>>>>>>> This looks similar to Yocto Bug 1233 (http://bugzilla.yoctoproject=
.org/show_bug.cgi?id=3D1233
>>>>>>>>
>>>>>>>> Can you confirm if you have the following commit in your branch?
>>>>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D242977=
3613cb95b6a0541b5cce6ce1338d5cfc2b
>>>>>>>>
>>>>>>>> It's possible you might be missing this and it's not finding the f=
ile correctly.
>>>>>>>>
>>>>>>>> As Richard mentioned also, an strace output would be helpful if yo=
u do have the above commit.
>>>>>>>>
>>>>>>>> Thanks
>>>>>>>> =C2=A0 =C2=A0 =C2=A0 Sau!
>>>>>>>
>>>>>>> access("/usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plu=
gin.so", R_OK) =3D -1 ENOENT (No such file or directory)
>>>>>>> access("/usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plu=
gin.so", R_OK) =3D -1 ENOENT (No such file or directory)
>>>>>>> access("/usr/libexec/gcc/powerpc-poky-linux-gnuspe/liblto_plugin.so=
", R_OK) =3D -1 ENOENT (No such file or directory)
>>>>>>> access("/usr/lib/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.=
so", R_OK) =3D -1 ENOENT (No such file or directory)
>>>>>>> access("/usr/lib/gcc/powerpc-poky-linux-gnuspe/liblto_plugin.so", R=
_OK) =3D -1 ENOENT (No such file or directory)
>>>>>>> access("/usr/lib/gcc/powerpc-poky-linux-gnuspe/4.6.1/../../../../po=
werpc-poky-linux-gnuspe/bin/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.s=
o", R_OK) =3D -1 ENOENT (No such file or directory)
>>>>>>> access("/usr/lib/gcc/powerpc-poky-linux-gnuspe/4.6.1/../../../../po=
werpc-poky-linux-gnuspe/bin/liblto_plugin.so", R_OK) =3D -1 ENOENT (No such=
 file or directory)
>>>>>>>
>>>>>>> So it appears we are missing in the package 'liblto_plugin.so' link=
.
>>>>>>
>>>>>> Does that symlink exist in your gcc install tree during build ? if n=
ot
>>>>>> then gcc makefiles need to generate it. if its just a case we
>>>>>> forgot to bundle it then we should add it to FILES var of gcc.
>>>>>
>>>>> How do I tell? =C2=A0Which gcc dir should I be looking at under build=
/tmp/work/* ?
>>>>>
>>>>> For the MPC8315E-RDB build:
>>>>>
>>>>> http://pastebin.com/yYSww5nK
>>>>>
>>>>> [ the first three lines look interesting about packages-split/gcc-dev=
 vs packages-split/gcc ]
>>>>>
>>>>> For the e500v2 (P2020-DS) build:
>>>>>
>>>>> http://pastebin.com/B1qyfbGE
>>>>>
>>>>> - k
>>>>
>>>> hmm the symlink goes into gcc-dev package since the package splitter
>>>> sees a sumlink xyz.so
>>>> but in this case this should be packages explicitly into gcc as we see
>>>> gcc depends on it for normal
>>>> execution or may be create a new package called liblto or somesuch
>>>>
>>>> Can you install gcc-dev package on your device and see if this helps ?
>>>
>>> Yes if I install gcc-dev it works.
>>
>> OK thanks. So I think we just need to package this symlink along with gc=
c
>> and all is good.
>
> Agreed, do you mind working up such a patch. =C2=A0I'm not an expert in t=
his area so feel a little concerned about not knowing enough to try and do =
this cleanly (or generically).

yes I will but may be a day or two
>
> - k
>
>

