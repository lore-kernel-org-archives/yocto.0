Received: from relay12.mail.gandi.net (relay12.mail.gandi.net [217.70.178.232])
 by mx.groups.io with SMTP id smtpd.web09.31265.1606561712275948571
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Nov 2020 03:08:33 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.178.232, mailfrom: foss@0leil.net)
Received: from [192.168.13.190] (80-110-109-234.cgn.dynamic.surfer.at [80.110.109.234])
	(Authenticated sender: foss@0leil.net)
	by relay12.mail.gandi.net (Postfix) with ESMTPSA id 56D7D20000A;
	Sat, 28 Nov 2020 11:08:28 +0000 (UTC)
Date: Sat, 28 Nov 2020 12:07:03 +0100
In-Reply-To: <CAJw=dJ9L=mfmQMFD7nf9xMEfgG60bdaSV-AuiAOgJqy=zuYDzw@mail.gmail.com>
References: <164B71905D05BC3E.30338@lists.yoctoproject.org> <164B97FD21357EC7.21390@lists.yoctoproject.org> <CAJw=dJ9L=mfmQMFD7nf9xMEfgG60bdaSV-AuiAOgJqy=zuYDzw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [yocto] patch apply for .bb file
To: yocto@lists.yoctoproject.org,NIKHIL PATIL <nikhilvp29@gmail.com>,Nikhil Patil <nikhilvp29@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>,yocto+help@lists.yoctoproject.org
From: "Quentin Schulz" <foss@0leil.net>
Message-ID: <ED84F24C-1CCA-4B0F-B90D-A93836280843@0leil.net>
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

Please stop spamming=2E It encourages people not to answer you=2E

You're looking for bbappends=2E

Quentin

On November 28, 2020 9:50:29 AM GMT+01:00, NIKHIL PATIL <nikhilvp29@gmail=
=2Ecom> wrote:
>hi ,
>  Is there any way to apply patches from one meta layer to another meta
>layer ?
>
>On Sat, Nov 28, 2020 at 11:56 AM NIKHIL PATIL via
>lists=2Eyoctoproject=2Eorg
><nikhilvp29=3Dgmail=2Ecom@lists=2Eyoctoproject=2Eorg> wrote:
>
>> Hi ,
>>     If anyone know please help=2E
>>
>> On Sat, Nov 28, 2020 at 12:12 AM NIKHIL PATIL via
>lists=2Eyoctoproject=2Eorg
>> <nikhilvp29=3Dgmail=2Ecom@lists=2Eyoctoproject=2Eorg> wrote:
>>
>>> Hi team ,
>>>        We are tring to apply to patch to default =2Ebb file=2E means i=
n
>>> gpsd_3=2E17=2Ebb file we did some changes but after taking patch we ar=
e
>not
>>> able to apply it =2E
>>>
>>>     *  steps followd :-*
>>>         1) git status
>>>         2) git
>>> diff yocto_build/meta-openembedded/meta-oe/recipes-navigation/gpsd/
>>> gpsd_3=2E17=2Ebb >  0001_add_line_in_gpsd=2Epatch
>>>         3) git
>>> checkout
>yocto_build/meta-openembedded/meta-oe/recipes-navigation/gpsd/
>>> gpsd_3=2E17=2Ebb
>>>
>>>            after these i applied gpsd patch
>>> in
>/yocto_build/meta-intel-leafhill/recipes-kernel/linux/linux-intel/leafhil=
l=2Escc
>>>   file  but after appling getting following errors =2E
>>>
>>>       * ERRORS :-*
>>>       [INFO]: Context reduced git-am of
>>> =2Ekernel-meta//patches//patches/0001_add_line_in_gpsd=2Epatch with "g=
it
>am"
>>> did not work, trying "apply"=2E
>>> | error:
>yocto_build/meta-openembedded/meta-oe/recipes-navigation/gpsd/
>>> gpsd_3=2E17=2Ebb: does not exist in index
>>> | [ERROR]: Application of
>>> =2Ekernel-meta//patches//patches/0001_add_line_in_gpsd=2Epatch failed=
=2E
>>> |          Patch needs to be refreshed=2E Sample resolution script:
>>> |              =2Egit/rebase-apply/resolve_rejects
>>> | ERROR: Could not apply patches for intel-corei7-64=2E
>>> | ERROR: Patch failures can be resolved in the linux source
>directory
>>>
>/data/nikhil/inti_dmsv/yocto_build/build/tmp/work-shared/intel-corei7-64/=
kernel-source)
>>>
>>>      * douts :-*
>>>         1) Can we apply a patch to default code means (files in meta
> or
>>> files( =2Ebb ) in meta-intel  folder, etc) ? because we are able to
>apply a
>>> patch for kernel code (driver file ) , but for =2Ebb file patch
>appling we
>>> are facing issue =2E
>>>
>>>         2) how to apply a patch to  default =2Ebb file in meta layers
>?
>>> can u please tell procedure =2E
>>>
>>>      thanks in advance =2E
>>>
>>>
>>>
>>>
>>>
>>=20
>>
>>

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
