Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E303AE013AC
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2012 13:58:30 -0700 (PDT)
Received: from mail-lpp01m010-f52.google.com ([209.85.215.52])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 16 Mar 2012 13:58:29 -0700
Received: by lahi5 with SMTP id i5so3438567lah.25
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2012 13:58:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=qK5IY7KsLU16DtECAIbA2Ni3fvT+oBEyNSBqmg4XPb4=;
	b=ZXcnkUx0HOFSrFW6Lq5MEbNkm+GrSgYWQdlHGV4ZBl7yqAQD4q+iAHwWNCygTJ1mYW
	GFC/GR4cokw8ohiJwHaLcjnLdV7zaMkPYCGSU8WQTnyGKc3OfjTuru3k2MTZ+6J52H2S
	AE7mxqv1XquSgU1+4Dho+4v5o/Yp5ORNpb4YHNSxdt91UQXYBWDFHD9OEjyLuf2y+90s
	gsPE7aODgipmlsbPmoMlV9jUSi3cyjGaXLlFDVqFqxSofLcUpik1zMxz1fli2Qe6DwXb
	X+yZQSiJqwjVUCO+9HANb75lsE7Zp1wz2K1yZQb5jBguNyMxeucujjRN+qgREdAYbsuF
	kiaw==
MIME-Version: 1.0
Received: by 10.152.102.145 with SMTP id fo17mr3025932lab.2.1331931507344;
	Fri, 16 Mar 2012 13:58:27 -0700 (PDT)
Received: by 10.112.98.133 with HTTP; Fri, 16 Mar 2012 13:58:27 -0700 (PDT)
In-Reply-To: <4F637EEA.1060806@gmail.com>
References: <CAPhnLPBAvAMwmuC1wNDS7E9mA5Y4VM_5SvA=4qo+UokPtiABQQ@mail.gmail.com>
	<4F623AFC.1030707@gmail.com>
	<CAPhnLPB2-q7oySBwgj4eEeQ4_QtU-Zpus6F0w+GSVU+VcyUGMw@mail.gmail.com>
	<4F637EEA.1060806@gmail.com>
Date: Fri, 16 Mar 2012 13:58:27 -0700
Message-ID: <CAPhnLPDF7x8to7RewKr3MD1chB5Q7qXwccAbOLZFAHqGGN+2sA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: jfabernathy <jfabernathy@gmail.com>
X-Gm-Message-State: ALoCoQnpNLeUvKVGskyqjI87MMtATXj+d/RvtoIqRRG2a8auBm8cZP43fepsF0z6LTkIxIyMXyXB
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
X-List-Received-Date: Fri, 16 Mar 2012 20:58:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 16, 2012 at 10:56 AM, jfabernathy <jfabernathy@gmail.com> wrote=
:
> On 03/15/2012 05:20 PM, Flanagan, Elizabeth wrote:
>>
>> On Thu, Mar 15, 2012 at 11:54 AM, jfabernathy<jfabernathy@gmail.com>
>> =A0wrote:
>>>
>>> On 03/14/2012 06:05 PM, Flanagan, Elizabeth wrote:
>>>>
>>>> -----BEGIN PGP SIGNED MESSAGE-----
>>>> Hash: SHA1
>>>>
>>>> Hello,
>>>>
>>>> We are pleased to announce the third milestone of the coming release
>>>> of Yocto 1.2. This milestone release is available at:
>>>>
>>>>
>>>>
>>>> =A0http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1=
.2-m3/poky-edison-6.1.0-m3.tar.bz2
>>>> =A0 =A0or
>>>>
>>>>
>>>> =A0http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/poky-=
edison-6.1.0-m3.tar.bz2
>>>>
>>>> Additional tarballs for meta-qt3 and the eclipse plugin are available
>>>> at:
>>>>
>>>>
>>>>
>>>> =A0http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1=
.2-m3/meta-qt3-edison-6.1.0-m3.tar.bz2
>>>>
>>>>
>>>> =A0http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1=
.2-m3/eclipse-poky-edison-6.1.0-m3.tar.bz2
>>>>
>>>> with mirror locations at:
>>>>
>>>>
>>>>
>>>> =A0http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/meta-=
qt3-edison-6.1.0-m3.tar.bz2
>>>>
>>>>
>>>> =A0http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/eclip=
se-poky-edison-6.1.0-m3.tar.bz2
>>>>
>>>> For information on 1.2 M3 test results see:
>>>>
>>>> =A0 =A0http://wiki.yoctoproject.org/wiki/Yocto_1.2_Milestone_Test_Repo=
rt
>>>>
>>>> Thank you everyone for all the hard work.
>>>>
>>>> - ------------------
>>>> Elizabeth Flanagan
>>>> Yocto Project
>>>> Release Engineer
>>>
>>>
>>> Dumb question Alert!
>>>
>>> So if I want to test with 1.2_M3.final, what is the correct way using
>>> git?
>>> =A0I periodically 'git pull' in poky and meta-intel directories while
>>> master
>>> is checked out. =A0From doing that I see the recent changes relative to=
 M3.
>>>
>>> Do i just 'git checkout -b 1.2_M3.final' and start there? =A0Do I do th=
e
>>> same
>>> thing in both the poky and meta-intel directory?
>>
>> I do:
>> git checkout 1.2_M3
>> This will set up a tracking branch for 1.2_M3 branch
>> then I:
>> git checkout 1.2_M3.final
>> to grab the tag.
>>
>> This allows me to work in a tracking branch. My workflow may not be
>> typical, so YMMV
>
> I can see how 'git checkout 1.2_M3' can set you up on the branch 1.2_M3 a=
nd
> you will get all new changes applied to that branch each time you do 'git
> pull' right??

Correct

>
> However, does 'git checkout 1.2_M3.final' set you up to only see what was
> locked when 1.2_M3.final tag was established?

Quick note (as I forgot to mention) git checkout 1.2_M3.final will put
you into a detached HEAD state.

Git pull generally will not corrupt that unless you do something like:

git pull <repo> <refspec>

In that case it will fast forward to later commits.

> And future 'git pull' commands
> while on that tag/ branch will not change what code you have on your
> system???
>
> I hope I have this right. =A0I'm looking for the equivalent of working wi=
th
> the tarballs you pointed us to, but with git. =A0But I can checkout maste=
r
> again and be back to latest and greatest.

Ok, I see what you're trying to do here.

In that case I would look at either git checkout-index or git archive
and have a separate directory tree for M3 with local conf sharing a
common SSTATE_DIR and DL_DIR and TMP_DIR. I don't know of a good way
to do what you're trying to do under the same tree without running the
remote risk of accidentally git pulling to the branch HEAD.

-b

>
> Jim A
>
>
>
>> For meta-intel, though, you should be able to work from master.
>>
>> -b
>> -b
>>
>>> Jim A
>>>
>>>> - --------------------
>>>> edison-6.1.0-m3 Errata
>>>> - --------------------
>>>> Release Name: poky-edison-6.1.0-m3
>>>> Branch: =A01.2_M3
>>>> Tag: =A01.2_M3.final
>>>> Hash: =A0320558f494c618f53e0c773db3ea0109476e8359
>>>> md5: =A024a90ec80d90c7f6757d9be50c2efe47 =A0poky-edison-6.1.0-m3.tar.b=
z2
>>>> Download Locations:
>>>>
>>>>
>>>> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-=
m3/poky-edison-6.1.0-m3.tar.bz2
>>>>
>>>>
>>>> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/poky-edi=
son-6.1.0-m3.tar.bz2
>>>>
>>>> Release Name: eclipse-poky-edison-6.1.0-m3
>>>> Branch: =A01.2_M3
>>>> Tag: =A01.2_M3.final
>>>> Hash: =A006652a1b3f7a82481b4a7f1fee279ce1c616013b
>>>> md5: =A0eaa2d0e9a5554463b1d44b8b5f9d29e0
>>>> =A0eclipse-poky-edison-6.1.0-m3.tar.bz2
>>>> Download Locations:
>>>>
>>>>
>>>> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-=
m3/eclipse-poky-edison-6.1.0-m3.tar.bz2
>>>>
>>>>
>>>> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/eclipse-=
poky-edison-6.1.0-m3.tar.bz2
>>>>
>>>> Release Name: meta-qt3-edison-6.1.0-m3
>>>> Branch: =A01.2_M3
>>>> Tag: =A01.2_M3.final
>>>> Hash: =A07e283e296d589256bef1a5652b72f264aba72e1a
>>>> md5: =A089d04eaf3aead8322c3b601190391f2d =A0meta-qt3-edison-6.1.0-m3.t=
ar.bz2
>>>> Download Locations:
>>>>
>>>>
>>>> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-=
m3/meta-qt3-edison-6.1.0-m3.tar.bz2
>>>>
>>>>
>>>> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/meta-qt3=
-edison-6.1.0-m3.tar.bz2
>>>>
>>>> - --------------------
>>>> Features
>>>> - --------------------
>>>> - - HOB2 with redesigned UI and workflow implementation
>>>> - - Build appliance features and stability.
>>>> - - Error handling improvement such as display a summary of warning
>>>> and error messages at the end of Bitbake command.
>>>> - - Oracle/Sun Hotspot JDK/JRE support.
>>>> - - POSIX support
>>>> - - Enhancement to the Eclipse plug-in for Bitbake commander
>>>>
>>>> - --------------------
>>>> Known Issues
>>>> - --------------------
>>>> - - Bug 2066 - Glxgears failed in qemuarm/qemuppc/qemumips.
>>>> - - Bug 1898-[beagleboard C4] X server cannot startup with 3.0 kernel.
>>>> - - Bug 1906 -[QEMU] loses focus in qemux86-64 terminal When I press
>>>> key [CTRL+L]
>>>> - - Bug 1912-[beagleboard C4] Segmentation fault when reboot the
>>>> system with 3.0 kernel
>>>> - - Bug 1917-[non-GPLv3] image fails to boot up with no root filesyste=
m
>>>> found
>>>> - - Bug 1918-[x32] insane.bbclass reports error for x32 kernel
>>>> - - Bug 1899-[multilib] do_rootfs failed for lib-connman-gnome with ip=
k
>>>> - - Bug 1903-[HOB] do_rootfs failed with dummy-image against a clean
>>>> working dir
>>>> - - Bug 1910-[HOB] git recipes not shown in package view due to
>>>> inconsistent package name
>>>> - - Bug 1911-[HOB] non-GPLv3 build not work
>>>>
>>>>
>>>> -----BEGIN PGP SIGNATURE-----
>>>> Version: GnuPG v2.0.16 (GNU/Linux)
>>>>
>>>> iQEcBAEBAgAGBQJPYRW0AAoJEEyK+E/MEkQPd8MIALCvjFoOhM8yU7osB/YYqBWC
>>>> 6NfnzRmPLnySGoeN3oobKomLG9ZoGmrwwuSfYfAlf3w6TDTAOunSi6x/94L1P6pa
>>>> 5cOiSCkZGYP4OLBDfGynciCRLTjmqREq7I6uEHscvvG9n8f5uN99hVG8zc99JAzi
>>>> Cu2z4iyr/qV/WLzJj7Fg9QPAWLUp3xtrgiqaa+0W26qdea6go6hbdbhZ0tYhf/HE
>>>> duXPgjgwhGHUKNFli3UDchJRdGoIvm/TLkKfzqgFEDdE/5lbKPvWg6Q21Ec04ZM9
>>>> N8OqoAJJMOUtVztl3CIJ7bA2/zTNazIzLBVFiodtzpKJr9FMJsJKp+GpJybuCKg=3D
>>>> =3Dn5IG
>>>> -----END PGP SIGNATURE-----
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

