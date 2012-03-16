Return-Path: <jfabernathy@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90665E013AB
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2012 10:57:02 -0700 (PDT)
Received: by ggcs6 with SMTP id s6so5761676ggc.35
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2012 10:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=Qw94OaAAsTXkwIOhpek3EYFeNeM4DBvrti8pR/+fzOg=;
	b=Ix2rxgWY5/LY9EHqqIoLjDNNO6Hp66UOeOleuSTNlrl3lFvYIwKg9N8EwtkeEu/unJ
	Hrt0aGTsYJ2hTqwEoFIXdxb+RpJEyJanpa3hDx3EFtx9W7A2AlPFWU9p33shIKi6pGwz
	8QfCzskxadE8TAl8slyzO8n+1F6H7PSItu0cx10A/fZS+rCarUyClwSNsJQ5fLvdq8K2
	odQlTRzZPDRV/byIQoSPh92cZ1rxqgovXlsRXI4z2N3PhxejB+5AxlCVDUk1j+2m8Bb3
	G/0YMXpOcdevFdBYgU2cgo4XfHbQiN5YGB45qq74cIk+JvVaBWN9aWo5dGSauKU96FKA
	LjqA==
Received: by 10.224.8.208 with SMTP id i16mr2976671qai.51.1331920621654;
	Fri, 16 Mar 2012 10:57:01 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-105.dhcp.embarqhsd.net. [184.4.33.105])
	by mx.google.com with ESMTPS id m6sm7694061qah.2.2012.03.16.10.56.57
	(version=SSLv3 cipher=OTHER); Fri, 16 Mar 2012 10:56:59 -0700 (PDT)
Message-ID: <4F637EEA.1060806@gmail.com>
Date: Fri, 16 Mar 2012 13:56:58 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <CAPhnLPBAvAMwmuC1wNDS7E9mA5Y4VM_5SvA=4qo+UokPtiABQQ@mail.gmail.com>
	<4F623AFC.1030707@gmail.com>
	<CAPhnLPB2-q7oySBwgj4eEeQ4_QtU-Zpus6F0w+GSVU+VcyUGMw@mail.gmail.com>
In-Reply-To: <CAPhnLPB2-q7oySBwgj4eEeQ4_QtU-Zpus6F0w+GSVU+VcyUGMw@mail.gmail.com>
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
X-List-Received-Date: Fri, 16 Mar 2012 17:57:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/15/2012 05:20 PM, Flanagan, Elizabeth wrote:
> On Thu, Mar 15, 2012 at 11:54 AM, jfabernathy<jfabernathy@gmail.com>  wrote:
>> On 03/14/2012 06:05 PM, Flanagan, Elizabeth wrote:
>>> -----BEGIN PGP SIGNED MESSAGE-----
>>> Hash: SHA1
>>>
>>> Hello,
>>>
>>> We are pleased to announce the third milestone of the coming release
>>> of Yocto 1.2. This milestone release is available at:
>>>
>>>
>>>   http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/poky-edison-6.1.0-m3.tar.bz2
>>>     or
>>>
>>>   http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/poky-edison-6.1.0-m3.tar.bz2
>>>
>>> Additional tarballs for meta-qt3 and the eclipse plugin are available at:
>>>
>>>
>>>   http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/meta-qt3-edison-6.1.0-m3.tar.bz2
>>>
>>>   http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/eclipse-poky-edison-6.1.0-m3.tar.bz2
>>>
>>> with mirror locations at:
>>>
>>>
>>>   http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/meta-qt3-edison-6.1.0-m3.tar.bz2
>>>
>>>   http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/eclipse-poky-edison-6.1.0-m3.tar.bz2
>>>
>>> For information on 1.2 M3 test results see:
>>>
>>>     http://wiki.yoctoproject.org/wiki/Yocto_1.2_Milestone_Test_Report
>>>
>>> Thank you everyone for all the hard work.
>>>
>>> - ------------------
>>> Elizabeth Flanagan
>>> Yocto Project
>>> Release Engineer
>>
>> Dumb question Alert!
>>
>> So if I want to test with 1.2_M3.final, what is the correct way using git?
>>   I periodically 'git pull' in poky and meta-intel directories while master
>> is checked out.  From doing that I see the recent changes relative to M3.
>>
>> Do i just 'git checkout -b 1.2_M3.final' and start there?  Do I do the same
>> thing in both the poky and meta-intel directory?
> I do:
> git checkout 1.2_M3
> This will set up a tracking branch for 1.2_M3 branch
> then I:
> git checkout 1.2_M3.final
> to grab the tag.
>
> This allows me to work in a tracking branch. My workflow may not be
> typical, so YMMV
I can see how 'git checkout 1.2_M3' can set you up on the branch 1.2_M3 
and you will get all new changes applied to that branch each time you do 
'git pull' right??

However, does 'git checkout 1.2_M3.final' set you up to only see what 
was locked when 1.2_M3.final tag was established? And future 'git pull' 
commands while on that tag/ branch will not change what code you have on 
your system???

I hope I have this right.  I'm looking for the equivalent of working 
with the tarballs you pointed us to, but with git.  But I can checkout 
master again and be back to latest and greatest.

Jim A


> For meta-intel, though, you should be able to work from master.
>
> -b
> -b
>
>> Jim A
>>
>>> - --------------------
>>> edison-6.1.0-m3 Errata
>>> - --------------------
>>> Release Name: poky-edison-6.1.0-m3
>>> Branch:  1.2_M3
>>> Tag:  1.2_M3.final
>>> Hash:  320558f494c618f53e0c773db3ea0109476e8359
>>> md5:  24a90ec80d90c7f6757d9be50c2efe47  poky-edison-6.1.0-m3.tar.bz2
>>> Download Locations:
>>>
>>> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/poky-edison-6.1.0-m3.tar.bz2
>>>
>>> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/poky-edison-6.1.0-m3.tar.bz2
>>>
>>> Release Name: eclipse-poky-edison-6.1.0-m3
>>> Branch:  1.2_M3
>>> Tag:  1.2_M3.final
>>> Hash:  06652a1b3f7a82481b4a7f1fee279ce1c616013b
>>> md5:  eaa2d0e9a5554463b1d44b8b5f9d29e0
>>>   eclipse-poky-edison-6.1.0-m3.tar.bz2
>>> Download Locations:
>>>
>>> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/eclipse-poky-edison-6.1.0-m3.tar.bz2
>>>
>>> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/eclipse-poky-edison-6.1.0-m3.tar.bz2
>>>
>>> Release Name: meta-qt3-edison-6.1.0-m3
>>> Branch:  1.2_M3
>>> Tag:  1.2_M3.final
>>> Hash:  7e283e296d589256bef1a5652b72f264aba72e1a
>>> md5:  89d04eaf3aead8322c3b601190391f2d  meta-qt3-edison-6.1.0-m3.tar.bz2
>>> Download Locations:
>>>
>>> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/meta-qt3-edison-6.1.0-m3.tar.bz2
>>>
>>> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/meta-qt3-edison-6.1.0-m3.tar.bz2
>>>
>>> - --------------------
>>> Features
>>> - --------------------
>>> - - HOB2 with redesigned UI and workflow implementation
>>> - - Build appliance features and stability.
>>> - - Error handling improvement such as display a summary of warning
>>> and error messages at the end of Bitbake command.
>>> - - Oracle/Sun Hotspot JDK/JRE support.
>>> - - POSIX support
>>> - - Enhancement to the Eclipse plug-in for Bitbake commander
>>>
>>> - --------------------
>>> Known Issues
>>> - --------------------
>>> - - Bug 2066 - Glxgears failed in qemuarm/qemuppc/qemumips.
>>> - - Bug 1898-[beagleboard C4] X server cannot startup with 3.0 kernel.
>>> - - Bug 1906 -[QEMU] loses focus in qemux86-64 terminal When I press
>>> key [CTRL+L]
>>> - - Bug 1912-[beagleboard C4] Segmentation fault when reboot the
>>> system with 3.0 kernel
>>> - - Bug 1917-[non-GPLv3] image fails to boot up with no root filesystem
>>> found
>>> - - Bug 1918-[x32] insane.bbclass reports error for x32 kernel
>>> - - Bug 1899-[multilib] do_rootfs failed for lib-connman-gnome with ipk
>>> - - Bug 1903-[HOB] do_rootfs failed with dummy-image against a clean
>>> working dir
>>> - - Bug 1910-[HOB] git recipes not shown in package view due to
>>> inconsistent package name
>>> - - Bug 1911-[HOB] non-GPLv3 build not work
>>>
>>>
>>> -----BEGIN PGP SIGNATURE-----
>>> Version: GnuPG v2.0.16 (GNU/Linux)
>>>
>>> iQEcBAEBAgAGBQJPYRW0AAoJEEyK+E/MEkQPd8MIALCvjFoOhM8yU7osB/YYqBWC
>>> 6NfnzRmPLnySGoeN3oobKomLG9ZoGmrwwuSfYfAlf3w6TDTAOunSi6x/94L1P6pa
>>> 5cOiSCkZGYP4OLBDfGynciCRLTjmqREq7I6uEHscvvG9n8f5uN99hVG8zc99JAzi
>>> Cu2z4iyr/qV/WLzJj7Fg9QPAWLUp3xtrgiqaa+0W26qdea6go6hbdbhZ0tYhf/HE
>>> duXPgjgwhGHUKNFli3UDchJRdGoIvm/TLkKfzqgFEDdE/5lbKPvWg6Q21Ec04ZM9
>>> N8OqoAJJMOUtVztl3CIJ7bA2/zTNazIzLBVFiodtzpKJr9FMJsJKp+GpJybuCKg=
>>> =n5IG
>>> -----END PGP SIGNATURE-----
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>


