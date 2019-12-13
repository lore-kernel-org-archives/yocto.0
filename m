Received: from mail-io1-f68.google.com (mail-io1-f68.google.com [209.85.166.68])
 by mx.groups.io with SMTP id smtpd.web10.615.1576264284166292030
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 11:11:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=spbXkjhV;
 spf=pass (domain: gmail.com, ip: 209.85.166.68, mailfrom: eripflo@gmail.com)
Received: by mail-io1-f68.google.com with SMTP id b10so696074iof.11
        for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2019 11:11:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AkdKiXDfgfqDI+U55SRf8snpo1neiETvv7yn51ZfGJg=;
        b=spbXkjhVAs2lyflV+wc4M4k3DZKWObC8KoSvZbyHqGD7foGYgPwWmDb4gm8JkTSBTI
         VNbBY0fujuXsdqeICtbemy8l5bBsSnSlSzVKRWb2qlcbdC9EqO8XtO+lso2dHWMkfMu5
         XbPrhjVCLCEX79+mqIsF3zcHklVRbLVwQr63TaRGnvl6B5+kP01pBgj9sS5I+bV3hi4Y
         FAJ2IZquTMKahLk2PbxdSQMT7mnjmj2T1tn6b81t2W/HIY0fDvTPzlYB0yPwUIJMOJaX
         o0H6PYvNvkM8z9f/1k98QlbWBKznuojY2NqEJuxjbOoJKvPb8Q7wXDtoEiz2Fds9kQH9
         plCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AkdKiXDfgfqDI+U55SRf8snpo1neiETvv7yn51ZfGJg=;
        b=jiMoLGmc7cYatnANu31YeaxyW4KfqbRdm0/mGwCEahyy9szToFlmq5jHOXFlUAw3X4
         XftIRayQuyGyxTYVBNa2P6FzU7xWLynMF1X1hhjcl3yFrOVsZ6yevOIT1KjbBfScmQH3
         4pUou8zCAo6iXTJdmBJ9te7DDR3WJ1Wub0SPJpqFQzTb9E+0c+CRw+bSqtfkPIVR1AWB
         QPKJ1BWsfMPXYLjMUZcstQjkt7Fz56JqLyXnieHdKGUTabKDrrt+IokNykdDbZPFE8Y4
         7AbMEerf2GQuhlC3vx3rDLTH6GKu7wSvM6Q8X1P7ZjbWx4PL3Z3sY9mY89bBQzVSvp5W
         PDeQ==
X-Gm-Message-State: APjAAAX4SqSUmOcqIk4ttXK8APBeEC8MMeywbm3Sw9N5habCdpBfq63T
	DCEdqYXAFKlV+HQvG2W/NHCRVK5zFm1EicN5K68=
X-Google-Smtp-Source: APXvYqwBRQQsTJnwO48Q0Q+wjlUMmPTWfbsa4600uVFSnvaulJjYlmyqexIZ1aZvD5vGvVT3M8MS4zO5TFcYxou2/p8=
X-Received: by 2002:a05:6638:102:: with SMTP id x2mr875804jao.71.1576264283344;
 Fri, 13 Dec 2019 11:11:23 -0800 (PST)
MIME-Version: 1.0
References: <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
 <YTBPR01MB235019E17369B5A7EDF93FB68A540@YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM>
 <CAGhBkzw6Pz6v8XkCiXDcB-LqZss2cP25TeU5H3eP5QUo7BeYHA@mail.gmail.com>
 <YTBPR01MB2350E5110CE2B02D255FB5E98A540@YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM>
 <CAGhBkzxv8LHjaAbMLbYBWMxmKAWTqqvHdoA=voo6UDDCswW+NQ@mail.gmail.com>
 <CAGhBkzzi4kzGER2QEYtAo=wManvHq+WAufC2zfAkmie2m+ZYbw@mail.gmail.com> <CAGhBkzxmLn=-YUk=cDqSR=L_Pp4hT=kaDuBqHtHLNfrdHYasAg@mail.gmail.com>
In-Reply-To: <CAGhBkzxmLn=-YUk=cDqSR=L_Pp4hT=kaDuBqHtHLNfrdHYasAg@mail.gmail.com>
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Fri, 13 Dec 2019 14:11:12 -0500
Message-ID: <CAGhBkzyJmRyj_YQ4m04x31838zbVt6X+KQYiwkzQtrGPF_xnxA@mail.gmail.com>
Subject: Re: [yocto] Yocto server is down
To: Kevyn-Alexandre Pare <Kevyn-Alexandre.Pare@opal-rt.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ae628205999aa041"

--000000000000ae628205999aa041
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I thought using the downloads folder from local should have been fine but I
keep running into one error after another:
NOTE: Executing RunQueue Tasks
ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: Network access disabled
through BB_NO_NETWORK (or set indirectly due to use of
BB_FETCH_PREMIRRORONLY) but access requested with command /usr/bin/env wget
-t 2 -T 30 --passive-ftp --no-check-certificate -P
/localdata/deborah_flatten_userpkg/broadband-build/downloads '
https://download.savannah.gnu.org/releases/quilt/quilt-0.65.tar.gz' (for
url https://download.savannah.gnu.org/releases/quilt/quilt-0.65.tar.gz)
ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch:
ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: Function failed:
base_do_fetch
ERROR: Logfile of failure stored in:
/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-li=
nux/quilt-native/0.65-r0/temp/log.do_fetch.162082
ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: Network access disabled
through BB_NO_NETWORK (or set indirectly due to use of
BB_FETCH_PREMIRRORONLY) but access requested with command /usr/bin/env wget
-t 2 -T 30 --passive-ftp --no-check-certificate -P
/localdata/deborah_flatten_userpkg/broadband-build/downloads '
https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz' (for url
https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz)
ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch:
ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: Function failed: base_do_fetc=
h
ERROR: Logfile of failure stored in:
/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-li=
nux/m4-native/1.4.18-r0/temp/log.do_fetch.162088
ERROR: Task
(multiconfig:arm64:/localdata/deborah_flatten_userpkg/broadband-build/sourc=
es/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch)
failed with exit code '1'
ERROR: Task
(multiconfig:arm64:/localdata/deborah_flatten_userpkg/broadband-build/sourc=
es/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch)
failed with exit code '1'
ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch: Network access disabled
through BB_NO_NETWORK (or set indirectly due to use of
BB_FETCH_PREMIRRORONLY) but access requested with command /usr/bin/env wget
-t 2 -T 30 --passive-ftp --no-check-certificate -P
/localdata/deborah_flatten_userpkg/broadband-build/downloads '
https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz' (for url
https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz)


On Fri, Dec 13, 2019 at 2:00 PM FLoraVLogs <eripflo@gmail.com> wrote:

> Found another mistake:
> SSTATE_MIRRORS ?=3D "file:///nfs/projects/blah/yocto_sstate/"
> should be
> SOURCE_MIRROR_URL ?=3D "PATH"
>
> On Fri, Dec 13, 2019 at 1:48 PM FLoraVLogs <eripflo@gmail.com> wrote:
>
>> Sorry I have BB_NO_NETWORK =3D "1" instead of BB_GENERATE_MIRROR_TARBALL=
S
>> =3D "1".
>>
>> I still get same error.
>> ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: The URL:
>> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
>> ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch:
>> ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: Function failed:
>> base_do_fetch
>> ERROR: Logfile of failure stored in:
>> /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64=
-linux/quilt-native/0.65-r0/temp/log.do_fetch.151490
>> ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: The URL:
>> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
>> ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch:
>> ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: Function failed:
>> base_do_fetch
>> ERROR: Logfile of failure stored in:
>> /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64=
-linux/m4-native/1.4.18-r0/temp/log.do_fetch.151496
>> ERROR: Task
>> (multiconfig:arm64:/localdata/deborah_flatten_userpkg/broadband-build/so=
urces/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch)
>> failed with exit code '1'
>> ERROR: Task
>> (multiconfig:arm64:/localdata/deborah_flatten_userpkg/broadband-build/so=
urces/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch)
>> failed with exit code '1'
>> ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch: The URL:
>> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
>> ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch:
>> ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch: Function failed:
>> base_do_fetch
>> ERROR: Logfile of failure stored in:
>> /localdata/deborah_flatten_userpkg/broadband-build/build/qemuarmtmp/work=
/x86_64-linux/quilt-native/0.65-r0/temp/log.do_fetch.151491
>> ERROR: Task
>> (multiconfig:qemuarm:/localdata/deborah_flatten_userpkg/broadband-build/=
sources/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch)
>> failed with exit code '1'
>> ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch: The URL:
>> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
>> ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch:
>> ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch: Function failed:
>> base_do_fetch
>> ERROR: Logfile of failure stored in:
>> /localdata/deborah_flatten_userpkg/broadband-build/build/qemuarmtmp/work=
/x86_64-linux/m4-native/1.4.18-r0/temp/log.do_fetch.151495
>> ERROR: Task
>> (multiconfig:qemuarm:/localdata/deborah_flatten_userpkg/broadband-build/=
sources/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch)
>> failed with exit code '1'
>> ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
>> do_fetch: The URL: '${SOURCE_MIRROR_URL}' is invalid and cannot be
>> interpreted
>> ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
>> do_fetch:
>> ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
>> do_fetch: Function failed: base_do_fetch
>> ERROR: Logfile of failure stored in:
>> /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64=
-linux/gnu-config-native/20181128+gitAUTOINC+058639be22-r0/temp/log.do_fetc=
h.151492
>> ERROR: Task
>> (multiconfig:arm64:virtual:native:/localdata/deborah_flatten_userpkg/bro=
adband-build/sources/poky/meta/recipes-devtools/gnu-config/gnu-config_git.b=
b:do_fetch)
>> failed with exit code '1'
>> ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
>> do_fetch: The URL: '${SOURCE_MIRROR_URL}' is invalid and cannot be
>> interpreted
>> ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
>> do_fetch:
>> ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
>> do_fetch: Function failed: base_do_fetch
>> ERROR: Logfile of failure stored in:
>> /localdata/deborah_flatten_userpkg/broadband-build/build/qemuarmtmp/work=
/x86_64-linux/gnu-config-native/20181128+gitAUTOINC+058639be22-r0/temp/log.=
do_fetch.151493
>> ERROR: Task
>> (multiconfig:qemuarm:virtual:native:/localdata/deborah_flatten_userpkg/b=
roadband-build/sources/poky/meta/recipes-devtools/gnu-config/gnu-config_git=
.bb:do_fetch)
>> failed with exit code '1'
>> ERROR: mc:arm64:autoconf-native-2.69-r11 do_fetch: The URL:
>> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
>> ERROR: mc:arm64:autoconf-native-2.69-r11 do_fetch:
>> ERROR: mc:arm64:autoconf-native-2.69-r11 do_fetch: Function failed:
>> base_do_fetch
>> ERROR: Logfile of failure stored in:
>> /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64=
-linux/autoconf-native/2.69-r11/temp/log.do_fetch.151497
>> ERROR: Task
>> (multiconfig:arm64:virtual:native:/localdata/deborah_flatten_userpkg/bro=
adband-build/sources/poky/meta/recipes-devtools/autoconf/autoconf_2.69.bb:d=
o_fetch)
>> failed with exit code '1'
>> ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch: The URL:
>> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
>> ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch:
>> ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch: Function failed:
>> base_do_fetch
>> ERROR: Logfile of failure stored in:
>> /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64=
-linux/quilt-native/0.65-r0/temp/log.do_fetch.151509
>> ERROR: Task
>> (multiconfig:arm32:/localdata/deborah_flatten_userpkg/broadband-build/so=
urces/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch)
>> failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 12 tasks of which 2 didn't need to be
>> rerun and 8 failed.
>>
>>
>> NOTE: Fetching uninative binary shim from
>> http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesd=
k-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9=
d1642dccf95accd0
>> WARNING: Disabling uninative as unable to fetch uninative tarball: The
>> URL: '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
>> WARNING: To build your own uninative loader, please bitbake
>> uninative-tarball and set UNINATIVE_TARBALL appropriately.
>>
>>
>>
>> On Fri, Dec 13, 2019 at 1:40 PM FLoraVLogs <eripflo@gmail.com> wrote:
>>
>>> Hi,
>>>
>>> I tried to follow the changes and I still get the following error:
>>> *NOTE: Fetching uninative binary shim
>>> from http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-na=
tivesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766=
dad5c9d1642dccf95accd0
>>> <http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-native=
sdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5=
c9d1642dccf95accd0>*
>>> *WARNING: Failed to fetch
>>> URL http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nat=
ivesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766d=
ad5c9d1642dccf95accd0
>>> <http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-native=
sdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5=
c9d1642dccf95accd0>,
>>> attempting MIRRORS if available*
>>> ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; expor=
t
>>> DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-cbPmLiVEFn,guid=
=3D6b9c2f1d40cf3c9a1ff878cc5dee8547";
>>> export SSH_AGENT_PID=3D"16924"; export
>>> SSH_AUTH_SOCK=3D"/run/user/18771/keyring/ssh"; export
>>> PATH=3D"/localdata/deborah_flatten_userpkg/broadband-build/sources/poky=
/scripts:/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/=
armv7at2hf-vfp-picoos-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-n=
ative/usr/bin/arm-picoos-linux-musleabi:/localdata/deborah_flatten_userpkg/=
broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-musleabi/default=
pkgname/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/localdata/deborah_flatt=
en_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-musle=
abi/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/sbin:/localdata/deborah=
_flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux=
-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/bin:/localdata/de=
borah_flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-=
linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/sbin:/localdata/=
deborah_flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoo=
s-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/bin:/localdata=
/deborah_flatten_userpkg/broadband-build/sources/poky/bitbake/bin:/localdat=
a/deborah_flatten_userpkg/broadband-build/build/tmp/hosttools";
>>> export HOME=3D"/home/rflora"; /usr/bin/env wget -t 2 -T 30 --passive-ft=
p
>>> --no-check-certificate -P
>>> /localdata/deborah_flatten_userpkg/broadband-build/downloads/uninative/=
06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0
>>> '
>>> http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-natives=
dk-libc.tar.bz2'
>>> --progress=3Ddot -v failed with exit code 4, output:
>>> --2019-12-13 13:33:47--
>>> http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-natives=
dk-libc.tar.bz2
>>> Resolving downloads.yoctoproject.org (downloads.yoctoproject.org)...
>>> 198.145.29.63
>>> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|1=
98.145.29.63|:80...
>>> failed: Connection timed out.
>>> Retrying.
>>>
>>> --2019-12-13 13:34:18--  (try: 2)
>>> http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-natives=
dk-libc.tar.bz2
>>> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|1=
98.145.29.63|:80...
>>> failed: Connection timed out.
>>> Giving up.
>>>
>>> Here are the changes in my local.conf file:
>>> SSTATE_MIRRORS ?=3D "file:///nfs/projects/blah/yocto_sstate/"
>>> INHERIT +=3D "own-mirrors"
>>> BB_GENERATE_MIRROR_TARBALLS =3D "1"
>>>
>>> Where /nfs/projects/blah/yocto_sstate/
>>> contains all the files
>>> eoc_wl5e.tar.gz
>>>  eoc_wl5e.tar.gz.done                                           uninati=
ve/
>>> eoc_wl5e.tar.gz_bad-checksum_6dfc6c3d2cac970e9fc123514d809087  git2/
>>>
>>> Did I do something wrong?
>>>
>>> Sorry for lot of questions, I am new to Yocto.
>>>
>>> Regards,
>>>
>>> Ripu
>>>
>>> On Fri, Dec 13, 2019 at 1:26 PM Kevyn-Alexandre Pare <
>>> Kevyn-Alexandre.Pare@opal-rt.com> wrote:
>>>
>>>> I'm setting
>>>>
>>>> TMPDIR=3D<PATH>/build/tmp
>>>> DL_DIR=3D<PATH>/build/downloads
>>>> SSTATE_DIR=3D<PATH>/build/sstate-cache
>>>>
>>>> Also ref:
>>>>
>>>>
>>>> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#=
replicating-a-build-offline
>>>>
>>>> -KA
>>>>
>>>>
>>>> From: FLoraVLogs <eripflo@gmail.com>
>>>>
>>>> Sent: Friday, December 13, 2019 13:20
>>>>
>>>> To: Kevyn-Alexandre Pare <Kevyn-Alexandre.Pare@opal-rt.com>
>>>>
>>>> Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
>>>>
>>>> Subject: Re: [yocto] Yocto server is down
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> I did those changes:
>>>>  SOURCE_MIRROR_URL ?=3D "file:///source_mirror/sources/"
>>>>  INHERIT +=3D "own-mirrors"
>>>>  BB_GENERATE_MIRROR_TARBALLS =3D "1"
>>>>
>>>>
>>>>
>>>>
>>>> But still I am running into bake issues.
>>>> where source_mirror_url path is my custom path
>>>> rest I left as same.
>>>>
>>>>
>>>>
>>>> Am I missing something?
>>>>
>>>>
>>>>
>>>> I see {source_mirror_url} is invalid and cannot be interpreted.
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> Regards,
>>>>
>>>>
>>>>
>>>> Ripu
>>>>
>>>>
>>>>
>>>>

--000000000000ae628205999aa041
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I thought using the downloads folder from local should hav=
e been fine but I keep running into one error after another:<div>NOTE: Exec=
uting RunQueue Tasks<br><font color=3D"#ff0000">ERROR: mc:arm64:quilt-nativ=
e-0.65-r0 do_fetch: Network access disabled through BB_NO_NETWORK (or set i=
ndirectly due to use of BB_FETCH_PREMIRRORONLY) but access requested with c=
ommand /usr/bin/env wget -t 2 -T 30 --passive-ftp --no-check-certificate -P=
 /localdata/deborah_flatten_userpkg/broadband-build/downloads &#39;<a href=
=3D"https://download.savannah.gnu.org/releases/quilt/quilt-0.65.tar.gz">htt=
ps://download.savannah.gnu.org/releases/quilt/quilt-0.65.tar.gz</a>&#39; (f=
or url <a href=3D"https://download.savannah.gnu.org/releases/quilt/quilt-0.=
65.tar.gz">https://download.savannah.gnu.org/releases/quilt/quilt-0.65.tar.=
gz</a>)</font><br>ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: <br>ERROR:=
 mc:arm64:quilt-native-0.65-r0 do_fetch: Function failed: base_do_fetch<br>=
ERROR: Logfile of failure stored in: /localdata/deborah_flatten_userpkg/bro=
adband-build/build/tmp/work/x86_64-linux/quilt-native/0.65-r0/temp/log.do_f=
etch.162082<br>ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: Network access=
 disabled through BB_NO_NETWORK (or set indirectly due to use of BB_FETCH_P=
REMIRRORONLY) but access requested with command /usr/bin/env wget -t 2 -T 3=
0 --passive-ftp --no-check-certificate -P /localdata/deborah_flatten_userpk=
g/broadband-build/downloads &#39;<a href=3D"https://ftp.gnu.org/gnu/m4/m4-1=
.4.18.tar.gz">https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz</a>&#39; (for url=
 <a href=3D"https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz">https://ftp.gnu.or=
g/gnu/m4/m4-1.4.18.tar.gz</a>)<br>ERROR: mc:arm64:m4-native-1.4.18-r0 do_fe=
tch: <br>ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: Function failed: bas=
e_do_fetch<br>ERROR: Logfile of failure stored in: /localdata/deborah_flatt=
en_userpkg/broadband-build/build/tmp/work/x86_64-linux/m4-native/1.4.18-r0/=
temp/log.do_fetch.162088<br>ERROR: Task (multiconfig:arm64:/localdata/debor=
ah_flatten_userpkg/broadband-build/sources/poky/meta/recipes-devtools/quilt=
/quilt-native_0.65.bb:do_fetch) failed with exit code &#39;1&#39;<br>ERROR:=
 Task (multiconfig:arm64:/localdata/deborah_flatten_userpkg/broadband-build=
/sources/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch) failed=
 with exit code &#39;1&#39;<br>ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fet=
ch: Network access disabled through BB_NO_NETWORK (or set indirectly due to=
 use of BB_FETCH_PREMIRRORONLY) but access requested with command /usr/bin/=
env wget -t 2 -T 30 --passive-ftp --no-check-certificate -P /localdata/debo=
rah_flatten_userpkg/broadband-build/downloads &#39;<a href=3D"https://ftp.g=
nu.org/gnu/m4/m4-1.4.18.tar.gz">https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz=
</a>&#39; (for url <a href=3D"https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz">=
https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz</a>)<br></div><div><br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Fri, Dec 13, 2019 at 2:00 PM FLoraVLogs &lt;<a href=3D"mailto:eripflo@gmai=
l.com">eripflo@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr">Found another mistake:<br>SSTATE_M=
IRRORS ?=3D &quot;file:///nfs/projects/blah/yocto_sstate/&quot;<br>should b=
e<div>SOURCE_MIRROR_URL ?=3D &quot;PATH&quot;</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 13, 2019 at =
1:48 PM FLoraVLogs &lt;<a href=3D"mailto:eripflo@gmail.com" target=3D"_blan=
k">eripflo@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr">Sorry I have BB_NO_NETWORK =3D &quot;1=
&quot; instead of=C2=A0<span style=3D"color:rgb(80,0,80)">BB_GENERATE_MIRRO=
R_TARBALLS =3D &quot;1&quot;.</span><div><span style=3D"color:rgb(80,0,80)"=
><br></span></div><div><span style=3D"color:rgb(80,0,80)">I still get same =
error.</span></div><div>ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: The =
URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid and cannot be interpreted<br=
>ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: <br>ERROR: mc:arm64:quilt-n=
ative-0.65-r0 do_fetch: Function failed: base_do_fetch<br>ERROR: Logfile of=
 failure stored in: /localdata/deborah_flatten_userpkg/broadband-build/buil=
d/tmp/work/x86_64-linux/quilt-native/0.65-r0/temp/log.do_fetch.151490<br>ER=
ROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: The URL: &#39;${SOURCE_MIRROR_U=
RL}&#39; is invalid and cannot be interpreted<br>ERROR: mc:arm64:m4-native-=
1.4.18-r0 do_fetch: <br>ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: Funct=
ion failed: base_do_fetch<br>ERROR: Logfile of failure stored in: /localdat=
a/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-linux/m4-na=
tive/1.4.18-r0/temp/log.do_fetch.151496<br>ERROR: Task (multiconfig:arm64:/=
localdata/deborah_flatten_userpkg/broadband-build/sources/poky/meta/recipes=
-devtools/quilt/quilt-native_0.65.bb:do_fetch) failed with exit code &#39;1=
&#39;<br>ERROR: Task (multiconfig:arm64:/localdata/deborah_flatten_userpkg/=
broadband-build/sources/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:d=
o_fetch) failed with exit code &#39;1&#39;<br>ERROR: mc:qemuarm:quilt-nativ=
e-0.65-r0 do_fetch: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid and =
cannot be interpreted<br>ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch: <=
br>ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch: Function failed: base_d=
o_fetch<br>ERROR: Logfile of failure stored in: /localdata/deborah_flatten_=
userpkg/broadband-build/build/qemuarmtmp/work/x86_64-linux/quilt-native/0.6=
5-r0/temp/log.do_fetch.151491<br>ERROR: Task (multiconfig:qemuarm:/localdat=
a/deborah_flatten_userpkg/broadband-build/sources/poky/meta/recipes-devtool=
s/quilt/quilt-native_0.65.bb:do_fetch) failed with exit code &#39;1&#39;<br=
>ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch: The URL: &#39;${SOURCE_MIR=
ROR_URL}&#39; is invalid and cannot be interpreted<br>ERROR: mc:qemuarm:m4-=
native-1.4.18-r0 do_fetch: <br>ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fet=
ch: Function failed: base_do_fetch<br>ERROR: Logfile of failure stored in: =
/localdata/deborah_flatten_userpkg/broadband-build/build/qemuarmtmp/work/x8=
6_64-linux/m4-native/1.4.18-r0/temp/log.do_fetch.151495<br>ERROR: Task (mul=
ticonfig:qemuarm:/localdata/deborah_flatten_userpkg/broadband-build/sources=
/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch) failed with ex=
it code &#39;1&#39;<br>ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOIN=
C+058639be22-r0 do_fetch: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invali=
d and cannot be interpreted<br>ERROR: mc:arm64:gnu-config-native-20181128+g=
itAUTOINC+058639be22-r0 do_fetch: <br>ERROR: mc:arm64:gnu-config-native-201=
81128+gitAUTOINC+058639be22-r0 do_fetch: Function failed: base_do_fetch<br>=
ERROR: Logfile of failure stored in: /localdata/deborah_flatten_userpkg/bro=
adband-build/build/tmp/work/x86_64-linux/gnu-config-native/20181128+gitAUTO=
INC+058639be22-r0/temp/log.do_fetch.151492<br>ERROR: Task (multiconfig:arm6=
4:virtual:native:/localdata/deborah_flatten_userpkg/broadband-build/sources=
/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch) failed w=
ith exit code &#39;1&#39;<br>ERROR: mc:qemuarm:gnu-config-native-20181128+g=
itAUTOINC+058639be22-r0 do_fetch: The URL: &#39;${SOURCE_MIRROR_URL}&#39; i=
s invalid and cannot be interpreted<br>ERROR: mc:qemuarm:gnu-config-native-=
20181128+gitAUTOINC+058639be22-r0 do_fetch: <br>ERROR: mc:qemuarm:gnu-confi=
g-native-20181128+gitAUTOINC+058639be22-r0 do_fetch: Function failed: base_=
do_fetch<br>ERROR: Logfile of failure stored in: /localdata/deborah_flatten=
_userpkg/broadband-build/build/qemuarmtmp/work/x86_64-linux/gnu-config-nati=
ve/20181128+gitAUTOINC+058639be22-r0/temp/log.do_fetch.151493<br>ERROR: Tas=
k (multiconfig:qemuarm:virtual:native:/localdata/deborah_flatten_userpkg/br=
oadband-build/sources/poky/meta/recipes-devtools/gnu-config/gnu-config_git.=
bb:do_fetch) failed with exit code &#39;1&#39;<br>ERROR: mc:arm64:autoconf-=
native-2.69-r11 do_fetch: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invali=
d and cannot be interpreted<br>ERROR: mc:arm64:autoconf-native-2.69-r11 do_=
fetch: <br>ERROR: mc:arm64:autoconf-native-2.69-r11 do_fetch: Function fail=
ed: base_do_fetch<br>ERROR: Logfile of failure stored in: /localdata/debora=
h_flatten_userpkg/broadband-build/build/tmp/work/x86_64-linux/autoconf-nati=
ve/2.69-r11/temp/log.do_fetch.151497<br>ERROR: Task (multiconfig:arm64:virt=
ual:native:/localdata/deborah_flatten_userpkg/broadband-build/sources/poky/=
meta/recipes-devtools/autoconf/autoconf_2.69.bb:do_fetch) failed with exit =
code &#39;1&#39;<br>ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch: The URL:=
 &#39;${SOURCE_MIRROR_URL}&#39; is invalid and cannot be interpreted<br>ERR=
OR: mc:arm32:quilt-native-0.65-r0 do_fetch: <br>ERROR: mc:arm32:quilt-nativ=
e-0.65-r0 do_fetch: Function failed: base_do_fetch<br>ERROR: Logfile of fai=
lure stored in: /localdata/deborah_flatten_userpkg/broadband-build/build/tm=
p/work/x86_64-linux/quilt-native/0.65-r0/temp/log.do_fetch.151509<br>ERROR:=
 Task (multiconfig:arm32:/localdata/deborah_flatten_userpkg/broadband-build=
/sources/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch) fa=
iled with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 12 tasks =
of which 2 didn&#39;t need to be rerun and 8 failed.<br><br></div><div><br>=
NOTE: Fetching uninative binary shim from <a href=3D"http://downloads.yocto=
project.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2;sha256sum=
=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0" target=
=3D"_blank">http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64=
-nativesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0=
766dad5c9d1642dccf95accd0</a><br>WARNING: Disabling uninative as unable to =
fetch uninative tarball: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid=
 and cannot be interpreted<br>WARNING: To build your own uninative loader, =
please bitbake uninative-tarball and set UNINATIVE_TARBALL appropriately.<b=
r></div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 13, 2019 at 1:40 PM FLora=
VLogs &lt;<a href=3D"mailto:eripflo@gmail.com" target=3D"_blank">eripflo@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I tried to follow the change=
s and I still get the following error:</div><div><b><font color=3D"#ff0000"=
>NOTE: Fetching uninative binary shim from=C2=A0<a href=3D"http://downloads=
.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2;sha2=
56sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0" t=
arget=3D"_blank">http://downloads.yoctoproject.org/releases/uninative/2.4/x=
86_64-nativesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5=
ba2f0766dad5c9d1642dccf95accd0</a></font></b><br><b><font color=3D"#ff0000"=
>WARNING: Failed to fetch URL=C2=A0<a href=3D"http://downloads.yoctoproject=
.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2;sha256sum=3D06f91=
685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0" target=3D"_bla=
nk">http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-natives=
dk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c=
9d1642dccf95accd0</a>, attempting MIRRORS if available</font></b><br>ERROR:=
 Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export DBUS_SES=
SION_BUS_ADDRESS=3D&quot;unix:abstract=3D/tmp/dbus-cbPmLiVEFn,guid=3D6b9c2f=
1d40cf3c9a1ff878cc5dee8547&quot;; export SSH_AGENT_PID=3D&quot;16924&quot;;=
 export SSH_AUTH_SOCK=3D&quot;/run/user/18771/keyring/ssh&quot;; export PAT=
H=3D&quot;/localdata/deborah_flatten_userpkg/broadband-build/sources/poky/s=
cripts:/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/ar=
mv7at2hf-vfp-picoos-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-nat=
ive/usr/bin/arm-picoos-linux-musleabi:/localdata/deborah_flatten_userpkg/br=
oadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-musleabi/defaultpk=
gname/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/localdata/deborah_flatten=
_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-musleab=
i/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/sbin:/localdata/deborah_f=
latten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-m=
usleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/bin:/localdata/debo=
rah_flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-li=
nux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/sbin:/localdata/de=
borah_flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-=
linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/bin:/localdata/d=
eborah_flatten_userpkg/broadband-build/sources/poky/bitbake/bin:/localdata/=
deborah_flatten_userpkg/broadband-build/build/tmp/hosttools&quot;; export H=
OME=3D&quot;/home/rflora&quot;; /usr/bin/env wget -t 2 -T 30 --passive-ftp =
--no-check-certificate -P /localdata/deborah_flatten_userpkg/broadband-buil=
d/downloads/uninative/06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642=
dccf95accd0 &#39;<a href=3D"http://downloads.yoctoproject.org/releases/unin=
ative/2.4/x86_64-nativesdk-libc.tar.bz2" target=3D"_blank">http://downloads=
.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2</a>&=
#39; --progress=3Ddot -v failed with exit code 4, output:<br>--2019-12-13 1=
3:33:47-- =C2=A0<a href=3D"http://downloads.yoctoproject.org/releases/unina=
tive/2.4/x86_64-nativesdk-libc.tar.bz2" target=3D"_blank">http://downloads.=
yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2</a><s=
pan style=3D"color:rgb(80,0,80)"><br>Resolving=C2=A0<a href=3D"http://downl=
oads.yoctoproject.org/" target=3D"_blank">downloads.yoctoproject.org</a>=C2=
=A0(<a href=3D"http://downloads.yoctoproject.org/" target=3D"_blank">downlo=
ads.yoctoproject.org</a>)... 198.145.29.63<br>Connecting to=C2=A0<a href=3D=
"http://downloads.yoctoproject.org/" target=3D"_blank">downloads.yoctoproje=
ct.org</a>=C2=A0(<a href=3D"http://downloads.yoctoproject.org/" target=3D"_=
blank">downloads.yoctoproject.org</a>)|198.145.29.63|:80... failed: Connect=
ion timed out.<br>Retrying.<br><br></span>--2019-12-13 13:34:18-- =C2=A0(tr=
y: 2) =C2=A0<a href=3D"http://downloads.yoctoproject.org/releases/uninative=
/2.4/x86_64-nativesdk-libc.tar.bz2" target=3D"_blank">http://downloads.yoct=
oproject.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2</a><span =
style=3D"color:rgb(80,0,80)"><br>Connecting to=C2=A0<a href=3D"http://downl=
oads.yoctoproject.org/" target=3D"_blank">downloads.yoctoproject.org</a>=C2=
=A0(<a href=3D"http://downloads.yoctoproject.org/" target=3D"_blank">downlo=
ads.yoctoproject.org</a>)|198.145.29.63|:80... failed: Connection timed out=
.<br>Giving up.<br><br></span></div><div>Here are the changes in my local.c=
onf file:</div><div>SSTATE_MIRRORS ?=3D &quot;file:///nfs/projects/blah/yoc=
to_sstate/&quot;<span style=3D"color:rgb(80,0,80)"><br>INHERIT +=3D &quot;o=
wn-mirrors&quot;<br>BB_GENERATE_MIRROR_TARBALLS =3D &quot;1&quot;<br></span=
></div><div><br></div><div>Where=C2=A0/nfs/projects/blah/yocto_sstate/<br>c=
ontains all the files</div><div>eoc_wl5e.tar.gz =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0eoc_wl5e.=
tar.gz.done =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 uninative/<br>eoc_wl5e.tar.gz_bad-checksum_6dfc6c3d2cac970e9fc12=
3514d809087 =C2=A0git2/=C2=A0=C2=A0<br></div><div><br></div><div>Did I do s=
omething wrong?<br><br>Sorry for lot of questions, I am new to Yocto.</div>=
<div><br></div><div>Regards,</div><div><br></div><div>Ripu</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec=
 13, 2019 at 1:26 PM Kevyn-Alexandre Pare &lt;<a href=3D"mailto:Kevyn-Alexa=
ndre.Pare@opal-rt.com" target=3D"_blank">Kevyn-Alexandre.Pare@opal-rt.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I&=
#39;m setting<br>
<br>
TMPDIR=3D&lt;PATH&gt;/build/tmp<br>
DL_DIR=3D&lt;PATH&gt;/build/downloads<br>
SSTATE_DIR=3D&lt;PATH&gt;/build/sstate-cache<br>
<br>
Also ref:<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual=
.html#replicating-a-build-offline" rel=3D"noreferrer" target=3D"_blank">htt=
ps://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#replicat=
ing-a-build-offline</a><br>
<br>
-KA<br>
<br>
<br>
From: FLoraVLogs &lt;<a href=3D"mailto:eripflo@gmail.com" target=3D"_blank"=
>eripflo@gmail.com</a>&gt;<br>
<br>
Sent: Friday, December 13, 2019 13:20<br>
<br>
To: Kevyn-Alexandre Pare &lt;<a href=3D"mailto:Kevyn-Alexandre.Pare@opal-rt=
.com" target=3D"_blank">Kevyn-Alexandre.Pare@opal-rt.com</a>&gt;<br>
<br>
Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto=
@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.=
org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
<br>
Subject: Re: [yocto] Yocto server is down<br>
<br>
=C2=A0<br>
<br>
<br>
<br>
<br>
I did those changes:<br>
=C2=A0SOURCE_MIRROR_URL=C2=A0?=3D &quot;file:///source_mirror/sources/&quot=
;<br>
=C2=A0INHERIT +=3D &quot;own-mirrors&quot; <br>
=C2=A0BB_GENERATE_MIRROR_TARBALLS =3D &quot;1&quot;<br>
<br>
<br>
<br>
<br>
But still I am running into bake issues.=C2=A0<br>
where source_mirror_url path is my custom path<br>
rest I left as same.<br>
<br>
<br>
<br>
Am I missing something?<br>
<br>
<br>
<br>
I see {source_mirror_url} is invalid and cannot be interpreted.<br>
<br>
<br>
<br>
<br>
<br>
<br>
Regards,<br>
<br>
<br>
<br>
Ripu<br>
<br>
<br>
<br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000ae628205999aa041--
