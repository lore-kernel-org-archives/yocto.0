Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FC5EE004D2
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2012 14:13:36 -0700 (PDT)
Received: from mail-yx0-f180.google.com ([209.85.213.180])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 15 Mar 2012 14:13:35 -0700
Received: by yenl4 with SMTP id l4so5178235yen.25
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2012 14:13:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=9H0qx9mJO+1SxVle7MUvVcDg+yzSxuorRpYHQb6DFkI=;
	b=UL8hba8tVHXp0ESQzXnwW326cGb5fHQAZUpt7app1NtbzMRm07COire0Dl9nIoe+7U
	v9iNHyu1pz6CrxIPHfnj1fkniOb4XlhMYMRPXvMr27AnvgDqKTMap4aI/Yv2m/5RyhX+
	HJE5c2CSZiofavZkEgca7/jTep3ROY+S1AynbWWNzm33+Xg60KRHAxiumOFBGcXKMZrz
	dnUTET8x3yURCQs5h2I5G0KE/Ulx8/WC28FrC7sCEjSz8m+JrdG1lm+A4hzKdo1V8ook
	u8QnhjfmpBdt97G5dAJjIAKACIZnXvxT38XMsr5Ss6tbXNq30OYMKKwS8UUKNgWNETEc
	ET+w==
MIME-Version: 1.0
Received: by 10.101.5.24 with SMTP id h24mr175462ani.45.1331846014781; Thu, 15
	Mar 2012 14:13:34 -0700 (PDT)
Received: by 10.147.155.3 with HTTP; Thu, 15 Mar 2012 14:13:34 -0700 (PDT)
In-Reply-To: <CADzUK1+qPc+Uo+SsnVC5Oz-8d1LJK-w5tgN0n9=7MBWSjK3ZnA@mail.gmail.com>
References: <CAPhnLPBAvAMwmuC1wNDS7E9mA5Y4VM_5SvA=4qo+UokPtiABQQ@mail.gmail.com>
	<CADzUK1+qPc+Uo+SsnVC5Oz-8d1LJK-w5tgN0n9=7MBWSjK3ZnA@mail.gmail.com>
Date: Thu, 15 Mar 2012 14:13:34 -0700
Message-ID: <CAPhnLPASKqrhRKbFdHm_FbVYhkM_+BL+8zuX+nxaZQxj1b=5SA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Autif Khan <autif.mlist@gmail.com>
X-Gm-Message-State: ALoCoQmqHRiERH6wyJdNh8VUGWpgxvVS5EzgIfyk4B9f1MjsBOAIUeoS/AZvX2WILEw5vJrG7P+/
Cc: yocto@yoctoproject.org
Subject: Re: [Announcement] 1.2 Milestone 3 Released
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
X-List-Received-Date: Thu, 15 Mar 2012 21:13:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 15, 2012 at 7:32 AM, Autif Khan <autif.mlist@gmail.com> wrote:
> In the announcement for M2
> (https://lists.yoctoproject.org/pipermail/yocto/2012-January/006735.html)=
,
> compatible M2 for meta-intel - in addition to qt and eclipse plugin -
> were also included. However, meta-intel does not seem to have an
> 1.2_M3.final tag. 1.2_M3.rc1 does exist.
>
> So, my question is - will 1.2_M3.final be released in the near future?
> Or will it be skipped in the M4 era?
>
> I am building 1.2_M3.final with meta-intel's HEAD as I write this
> email and things seem to be going well. But I wanted to make sure that
> I am not missing anything.

Autif,

We're in the process of detangling meta-intel releases from yocto
releases, which includes milestones. Because of this, some of the
release process around meta-intel is still under discussion, however,
building meta-intel HEAD with 1.2_M3.final should work fine. If for
some reason it doesn't, please, let the list know.

-b

>
> Thanks
>
> Autif
>
> On Wed, Mar 14, 2012 at 6:05 PM, Flanagan, Elizabeth
> <elizabeth.flanagan@intel.com> wrote:
>> -----BEGIN PGP SIGNED MESSAGE-----
>> Hash: SHA1
>>
>> Hello,
>>
>> We are pleased to announce the third milestone of the coming release
>> of Yocto 1.2. This milestone release is available at:
>>
>> =A0 http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.=
2-m3/poky-edison-6.1.0-m3.tar.bz2
>> =A0 or
>> =A0 http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/poky-e=
dison-6.1.0-m3.tar.bz2
>>
>> Additional tarballs for meta-qt3 and the eclipse plugin are available at=
:
>>
>> =A0 http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.=
2-m3/meta-qt3-edison-6.1.0-m3.tar.bz2
>> =A0 http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.=
2-m3/eclipse-poky-edison-6.1.0-m3.tar.bz2
>>
>> with mirror locations at:
>>
>> =A0 http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/meta-q=
t3-edison-6.1.0-m3.tar.bz2
>> =A0 http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/eclips=
e-poky-edison-6.1.0-m3.tar.bz2
>>
>> For information on 1.2 M3 test results see:
>>
>> =A0 http://wiki.yoctoproject.org/wiki/Yocto_1.2_Milestone_Test_Report
>>
>> Thank you everyone for all the hard work.
>>
>> - ------------------
>> Elizabeth Flanagan
>> Yocto Project
>> Release Engineer
>>
>> - --------------------
>> edison-6.1.0-m3 Errata
>> - --------------------
>> Release Name: poky-edison-6.1.0-m3
>> Branch: =A01.2_M3
>> Tag: =A01.2_M3.final
>> Hash: =A0320558f494c618f53e0c773db3ea0109476e8359
>> md5: =A024a90ec80d90c7f6757d9be50c2efe47 =A0poky-edison-6.1.0-m3.tar.bz2
>> Download Locations:
>> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3=
/poky-edison-6.1.0-m3.tar.bz2
>> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/poky-ediso=
n-6.1.0-m3.tar.bz2
>>
>> Release Name: eclipse-poky-edison-6.1.0-m3
>> Branch: =A01.2_M3
>> Tag: =A01.2_M3.final
>> Hash: =A006652a1b3f7a82481b4a7f1fee279ce1c616013b
>> md5: =A0eaa2d0e9a5554463b1d44b8b5f9d29e0 =A0eclipse-poky-edison-6.1.0-m3=
.tar.bz2
>> Download Locations:
>> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3=
/eclipse-poky-edison-6.1.0-m3.tar.bz2
>> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/eclipse-po=
ky-edison-6.1.0-m3.tar.bz2
>>
>> Release Name: meta-qt3-edison-6.1.0-m3
>> Branch: =A01.2_M3
>> Tag: =A01.2_M3.final
>> Hash: =A07e283e296d589256bef1a5652b72f264aba72e1a
>> md5: =A089d04eaf3aead8322c3b601190391f2d =A0meta-qt3-edison-6.1.0-m3.tar=
.bz2
>> Download Locations:
>> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3=
/meta-qt3-edison-6.1.0-m3.tar.bz2
>> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/meta-qt3-e=
dison-6.1.0-m3.tar.bz2
>>
>> - --------------------
>> Features
>> - --------------------
>> - - HOB2 with redesigned UI and workflow implementation
>> - - Build appliance features and stability.
>> - - Error handling improvement such as display a summary of warning
>> and error messages at the end of Bitbake command.
>> - - Oracle/Sun Hotspot JDK/JRE support.
>> - - POSIX support
>> - - Enhancement to the Eclipse plug-in for Bitbake commander
>>
>> - --------------------
>> Known Issues
>> - --------------------
>> - - Bug 2066 - Glxgears failed in qemuarm/qemuppc/qemumips.
>> - - Bug 1898-[beagleboard C4] X server cannot startup with 3.0 kernel.
>> - - Bug 1906 -[QEMU] loses focus in qemux86-64 terminal When I press
>> key [CTRL+L]
>> - - Bug 1912-[beagleboard C4] Segmentation fault when reboot the
>> system with 3.0 kernel
>> - - Bug 1917-[non-GPLv3] image fails to boot up with no root filesystem =
found
>> - - Bug 1918-[x32] insane.bbclass reports error for x32 kernel
>> - - Bug 1899-[multilib] do_rootfs failed for lib-connman-gnome with ipk
>> - - Bug 1903-[HOB] do_rootfs failed with dummy-image against a clean wor=
king dir
>> - - Bug 1910-[HOB] git recipes not shown in package view due to
>> inconsistent package name
>> - - Bug 1911-[HOB] non-GPLv3 build not work
>>
>>
>> -----BEGIN PGP SIGNATURE-----
>> Version: GnuPG v2.0.16 (GNU/Linux)
>>
>> iQEcBAEBAgAGBQJPYRW0AAoJEEyK+E/MEkQPd8MIALCvjFoOhM8yU7osB/YYqBWC
>> 6NfnzRmPLnySGoeN3oobKomLG9ZoGmrwwuSfYfAlf3w6TDTAOunSi6x/94L1P6pa
>> 5cOiSCkZGYP4OLBDfGynciCRLTjmqREq7I6uEHscvvG9n8f5uN99hVG8zc99JAzi
>> Cu2z4iyr/qV/WLzJj7Fg9QPAWLUp3xtrgiqaa+0W26qdea6go6hbdbhZ0tYhf/HE
>> duXPgjgwhGHUKNFli3UDchJRdGoIvm/TLkKfzqgFEDdE/5lbKPvWg6Q21Ec04ZM9
>> N8OqoAJJMOUtVztl3CIJ7bA2/zTNazIzLBVFiodtzpKJr9FMJsJKp+GpJybuCKg=3D
>> =3Dn5IG
>> -----END PGP SIGNATURE-----
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

