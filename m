Received: from mail-io1-f67.google.com (mail-io1-f67.google.com [209.85.166.67])
 by mx.groups.io with SMTP id smtpd.web09.768.1576265033580881932
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 11:23:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dCIXGkRJ;
 spf=pass (domain: gmail.com, ip: 209.85.166.67, mailfrom: eripflo@gmail.com)
Received: by mail-io1-f67.google.com with SMTP id s2so738907iog.10
        for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2019 11:23:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/xSSpqnbAyXLa9rz767pdKzFNk4zgU5MaDGuguSyq/s=;
        b=dCIXGkRJ1psOAHNzaFpcUAOAKcV7Msf5FOQ9HC5p7gn02FKv29olcABb6gXRyGDkZe
         5gcAi2kRVoFw41CoUkCjw9MxF6EIjcDT2JBOam6LP+tqX8snEBK8nLmzHxhJcYyiHiTA
         Psg5zs4f15CFh3noOl8yveN/GcDY8wcS91g5orZr2g4e4+vErjviyNGMku3Cn9oFtjH6
         Ez5rfHFxHGlwkVXsFXpMe06DgiBn71C9XDsikh0sSq9YT5ZmR+yd4cX/Ct8+QGXot1aE
         nmzgNfE+ZOAEW5PMMwDC9lIMBYFCDG5b1PXhw63w9A7DxPz+5tgaZjt4yr6rq04yEPhX
         4LUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/xSSpqnbAyXLa9rz767pdKzFNk4zgU5MaDGuguSyq/s=;
        b=jVkQG0Bo8wC/jJs37epMx1ZbwyrJdeZT+F0qKGcSCQNEeuqyil6lGa/itpY0hEQNiM
         EfLOSUKNfij5mANMSHPjsHUoFWrj3YcbTkw4IVDdBizdAa0jkyoqZ0R1/+gfO6c6I2eX
         MchmIW6MQGR7W7uPx3creyHRAlcmjHj5DnDFntfGEfs2fYg3lzJx2Nva96iWUx+TPPq9
         VzEi7dzQVEsYi8HtJnz2cjfnKVR62mked9zNUwYVkIF3qp/vz3+ctsiGfbQT8KBZASN9
         fpzJailas4fVazGxjk1fw0keLQDSgnJKHZgYQpcakh2DdRVZaiXTyYlB0OWb3kXe5r2p
         pcHA==
X-Gm-Message-State: APjAAAVQ/1EuFCltfxjRUQn6A50UoPNbY4HHYpdMJqRnyacTupL5hVIi
	U46Ra8+OX8qOvVjAFLcnntsrn1EEiYJfnIQJqyU=
X-Google-Smtp-Source: APXvYqw70tF0FbFIxIRf4BP/IlWV9YG7y/1xu7zKmfdM1V9PzgnhqLfEI/9bgA+siOscvWRJds3yTduUGgP/uXnZ6Wo=
X-Received: by 2002:a6b:f404:: with SMTP id i4mr8679669iog.252.1576265032768;
 Fri, 13 Dec 2019 11:23:52 -0800 (PST)
MIME-Version: 1.0
References: <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
 <YTBPR01MB235019E17369B5A7EDF93FB68A540@YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM>
 <CAGhBkzw6Pz6v8XkCiXDcB-LqZss2cP25TeU5H3eP5QUo7BeYHA@mail.gmail.com>
 <YTBPR01MB2350E5110CE2B02D255FB5E98A540@YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM>
 <CAGhBkzxv8LHjaAbMLbYBWMxmKAWTqqvHdoA=voo6UDDCswW+NQ@mail.gmail.com>
 <CAGhBkzzi4kzGER2QEYtAo=wManvHq+WAufC2zfAkmie2m+ZYbw@mail.gmail.com>
 <CAGhBkzxmLn=-YUk=cDqSR=L_Pp4hT=kaDuBqHtHLNfrdHYasAg@mail.gmail.com> <CAGhBkzyJmRyj_YQ4m04x31838zbVt6X+KQYiwkzQtrGPF_xnxA@mail.gmail.com>
In-Reply-To: <CAGhBkzyJmRyj_YQ4m04x31838zbVt6X+KQYiwkzQtrGPF_xnxA@mail.gmail.com>
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Fri, 13 Dec 2019 14:23:41 -0500
Message-ID: <CAGhBkzyTs9W7ffHp=Pcz-BaKH8Xh8NN9Lyjth8dCGo3bYn9rjA@mail.gmail.com>
Subject: Re: [yocto] Yocto server is down
To: Kevyn-Alexandre Pare <Kevyn-Alexandre.Pare@opal-rt.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000059a1ed05999acd02"

--00000000000059a1ed05999acd02
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry for a lot of emails, I took out BB_NO_NETWORK =3D "1"

It worked after that but I don't think it is using sstate_cache because
build is taking forever

On Fri, Dec 13, 2019 at 2:11 PM FLoraVLogs <eripflo@gmail.com> wrote:

> I thought using the downloads folder from local should have been fine but
> I keep running into one error after another:
> NOTE: Executing RunQueue Tasks
> ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: Network access disabled
> through BB_NO_NETWORK (or set indirectly due to use of
> BB_FETCH_PREMIRRORONLY) but access requested with command /usr/bin/env wg=
et
> -t 2 -T 30 --passive-ftp --no-check-certificate -P
> /localdata/deborah_flatten_userpkg/broadband-build/downloads '
> https://download.savannah.gnu.org/releases/quilt/quilt-0.65.tar.gz' (for
> url https://download.savannah.gnu.org/releases/quilt/quilt-0.65.tar.gz)
> ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch:
> ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: Function failed:
> base_do_fetch
> ERROR: Logfile of failure stored in:
> /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-=
linux/quilt-native/0.65-r0/temp/log.do_fetch.162082
> ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: Network access disabled
> through BB_NO_NETWORK (or set indirectly due to use of
> BB_FETCH_PREMIRRORONLY) but access requested with command /usr/bin/env wg=
et
> -t 2 -T 30 --passive-ftp --no-check-certificate -P
> /localdata/deborah_flatten_userpkg/broadband-build/downloads '
> https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz' (for url
> https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz)
> ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch:
> ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: Function failed:
> base_do_fetch
> ERROR: Logfile of failure stored in:
> /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-=
linux/m4-native/1.4.18-r0/temp/log.do_fetch.162088
> ERROR: Task
> (multiconfig:arm64:/localdata/deborah_flatten_userpkg/broadband-build/sou=
rces/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch)
> failed with exit code '1'
> ERROR: Task
> (multiconfig:arm64:/localdata/deborah_flatten_userpkg/broadband-build/sou=
rces/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch)
> failed with exit code '1'
> ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch: Network access disabled
> through BB_NO_NETWORK (or set indirectly due to use of
> BB_FETCH_PREMIRRORONLY) but access requested with command /usr/bin/env wg=
et
> -t 2 -T 30 --passive-ftp --no-check-certificate -P
> /localdata/deborah_flatten_userpkg/broadband-build/downloads '
> https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz' (for url
> https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz)
>
>
> On Fri, Dec 13, 2019 at 2:00 PM FLoraVLogs <eripflo@gmail.com> wrote:
>
>> Found another mistake:
>> SSTATE_MIRRORS ?=3D "file:///nfs/projects/blah/yocto_sstate/"
>> should be
>> SOURCE_MIRROR_URL ?=3D "PATH"
>>
>> On Fri, Dec 13, 2019 at 1:48 PM FLoraVLogs <eripflo@gmail.com> wrote:
>>
>>> Sorry I have BB_NO_NETWORK =3D "1" instead of BB_GENERATE_MIRROR_TARBAL=
LS
>>> =3D "1".
>>>
>>> I still get same error.
>>> ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: The URL:
>>> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
>>> ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch:
>>> ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: Function failed:
>>> base_do_fetch
>>> ERROR: Logfile of failure stored in:
>>> /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_6=
4-linux/quilt-native/0.65-r0/temp/log.do_fetch.151490
>>> ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: The URL:
>>> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
>>> ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch:
>>> ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: Function failed:
>>> base_do_fetch
>>> ERROR: Logfile of failure stored in:
>>> /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_6=
4-linux/m4-native/1.4.18-r0/temp/log.do_fetch.151496
>>> ERROR: Task
>>> (multiconfig:arm64:/localdata/deborah_flatten_userpkg/broadband-build/s=
ources/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch)
>>> failed with exit code '1'
>>> ERROR: Task
>>> (multiconfig:arm64:/localdata/deborah_flatten_userpkg/broadband-build/s=
ources/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch)
>>> failed with exit code '1'
>>> ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch: The URL:
>>> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
>>> ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch:
>>> ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch: Function failed:
>>> base_do_fetch
>>> ERROR: Logfile of failure stored in:
>>> /localdata/deborah_flatten_userpkg/broadband-build/build/qemuarmtmp/wor=
k/x86_64-linux/quilt-native/0.65-r0/temp/log.do_fetch.151491
>>> ERROR: Task
>>> (multiconfig:qemuarm:/localdata/deborah_flatten_userpkg/broadband-build=
/sources/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch)
>>> failed with exit code '1'
>>> ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch: The URL:
>>> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
>>> ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch:
>>> ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch: Function failed:
>>> base_do_fetch
>>> ERROR: Logfile of failure stored in:
>>> /localdata/deborah_flatten_userpkg/broadband-build/build/qemuarmtmp/wor=
k/x86_64-linux/m4-native/1.4.18-r0/temp/log.do_fetch.151495
>>> ERROR: Task
>>> (multiconfig:qemuarm:/localdata/deborah_flatten_userpkg/broadband-build=
/sources/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch)
>>> failed with exit code '1'
>>> ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
>>> do_fetch: The URL: '${SOURCE_MIRROR_URL}' is invalid and cannot be
>>> interpreted
>>> ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
>>> do_fetch:
>>> ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
>>> do_fetch: Function failed: base_do_fetch
>>> ERROR: Logfile of failure stored in:
>>> /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_6=
4-linux/gnu-config-native/20181128+gitAUTOINC+058639be22-r0/temp/log.do_fet=
ch.151492
>>> ERROR: Task
>>> (multiconfig:arm64:virtual:native:/localdata/deborah_flatten_userpkg/br=
oadband-build/sources/poky/meta/recipes-devtools/gnu-config/gnu-config_git.=
bb:do_fetch)
>>> failed with exit code '1'
>>> ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
>>> do_fetch: The URL: '${SOURCE_MIRROR_URL}' is invalid and cannot be
>>> interpreted
>>> ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
>>> do_fetch:
>>> ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
>>> do_fetch: Function failed: base_do_fetch
>>> ERROR: Logfile of failure stored in:
>>> /localdata/deborah_flatten_userpkg/broadband-build/build/qemuarmtmp/wor=
k/x86_64-linux/gnu-config-native/20181128+gitAUTOINC+058639be22-r0/temp/log=
.do_fetch.151493
>>> ERROR: Task
>>> (multiconfig:qemuarm:virtual:native:/localdata/deborah_flatten_userpkg/=
broadband-build/sources/poky/meta/recipes-devtools/gnu-config/gnu-config_gi=
t.bb:do_fetch)
>>> failed with exit code '1'
>>> ERROR: mc:arm64:autoconf-native-2.69-r11 do_fetch: The URL:
>>> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
>>> ERROR: mc:arm64:autoconf-native-2.69-r11 do_fetch:
>>> ERROR: mc:arm64:autoconf-native-2.69-r11 do_fetch: Function failed:
>>> base_do_fetch
>>> ERROR: Logfile of failure stored in:
>>> /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_6=
4-linux/autoconf-native/2.69-r11/temp/log.do_fetch.151497
>>> ERROR: Task
>>> (multiconfig:arm64:virtual:native:/localdata/deborah_flatten_userpkg/br=
oadband-build/sources/poky/meta/recipes-devtools/autoconf/autoconf_2.69.bb:=
do_fetch)
>>> failed with exit code '1'
>>> ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch: The URL:
>>> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
>>> ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch:
>>> ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch: Function failed:
>>> base_do_fetch
>>> ERROR: Logfile of failure stored in:
>>> /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_6=
4-linux/quilt-native/0.65-r0/temp/log.do_fetch.151509
>>> ERROR: Task
>>> (multiconfig:arm32:/localdata/deborah_flatten_userpkg/broadband-build/s=
ources/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch)
>>> failed with exit code '1'
>>> NOTE: Tasks Summary: Attempted 12 tasks of which 2 didn't need to be
>>> rerun and 8 failed.
>>>
>>>
>>> NOTE: Fetching uninative binary shim from
>>> http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-natives=
dk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c=
9d1642dccf95accd0
>>> WARNING: Disabling uninative as unable to fetch uninative tarball: The
>>> URL: '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
>>> WARNING: To build your own uninative loader, please bitbake
>>> uninative-tarball and set UNINATIVE_TARBALL appropriately.
>>>
>>>
>>>
>>> On Fri, Dec 13, 2019 at 1:40 PM FLoraVLogs <eripflo@gmail.com> wrote:
>>>
>>>> Hi,
>>>>
>>>> I tried to follow the changes and I still get the following error:
>>>> *NOTE: Fetching uninative binary shim
>>>> from http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-n=
ativesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f076=
6dad5c9d1642dccf95accd0
>>>> <http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativ=
esdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad=
5c9d1642dccf95accd0>*
>>>> *WARNING: Failed to fetch
>>>> URL http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-na=
tivesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766=
dad5c9d1642dccf95accd0
>>>> <http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativ=
esdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad=
5c9d1642dccf95accd0>,
>>>> attempting MIRRORS if available*
>>>> ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; expo=
rt
>>>> DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-cbPmLiVEFn,guid=
=3D6b9c2f1d40cf3c9a1ff878cc5dee8547";
>>>> export SSH_AGENT_PID=3D"16924"; export
>>>> SSH_AUTH_SOCK=3D"/run/user/18771/keyring/ssh"; export
>>>> PATH=3D"/localdata/deborah_flatten_userpkg/broadband-build/sources/pok=
y/scripts:/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work=
/armv7at2hf-vfp-picoos-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-=
native/usr/bin/arm-picoos-linux-musleabi:/localdata/deborah_flatten_userpkg=
/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-musleabi/defaul=
tpkgname/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/localdata/deborah_flat=
ten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-musl=
eabi/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/sbin:/localdata/debora=
h_flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linu=
x-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/bin:/localdata/d=
eborah_flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos=
-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/sbin:/localdata=
/deborah_flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-pico=
os-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/bin:/localdat=
a/deborah_flatten_userpkg/broadband-build/sources/poky/bitbake/bin:/localda=
ta/deborah_flatten_userpkg/broadband-build/build/tmp/hosttools";
>>>> export HOME=3D"/home/rflora"; /usr/bin/env wget -t 2 -T 30 --passive-f=
tp
>>>> --no-check-certificate -P
>>>> /localdata/deborah_flatten_userpkg/broadband-build/downloads/uninative=
/06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0
>>>> '
>>>> http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-native=
sdk-libc.tar.bz2'
>>>> --progress=3Ddot -v failed with exit code 4, output:
>>>> --2019-12-13 13:33:47--
>>>> http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-native=
sdk-libc.tar.bz2
>>>> Resolving downloads.yoctoproject.org (downloads.yoctoproject.org)...
>>>> 198.145.29.63
>>>> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|=
198.145.29.63|:80...
>>>> failed: Connection timed out.
>>>> Retrying.
>>>>
>>>> --2019-12-13 13:34:18--  (try: 2)
>>>> http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-native=
sdk-libc.tar.bz2
>>>> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|=
198.145.29.63|:80...
>>>> failed: Connection timed out.
>>>> Giving up.
>>>>
>>>> Here are the changes in my local.conf file:
>>>> SSTATE_MIRRORS ?=3D "file:///nfs/projects/blah/yocto_sstate/"
>>>> INHERIT +=3D "own-mirrors"
>>>> BB_GENERATE_MIRROR_TARBALLS =3D "1"
>>>>
>>>> Where /nfs/projects/blah/yocto_sstate/
>>>> contains all the files
>>>> eoc_wl5e.tar.gz
>>>>  eoc_wl5e.tar.gz.done                                           uninat=
ive/
>>>> eoc_wl5e.tar.gz_bad-checksum_6dfc6c3d2cac970e9fc123514d809087  git2/
>>>>
>>>> Did I do something wrong?
>>>>
>>>> Sorry for lot of questions, I am new to Yocto.
>>>>
>>>> Regards,
>>>>
>>>> Ripu
>>>>
>>>> On Fri, Dec 13, 2019 at 1:26 PM Kevyn-Alexandre Pare <
>>>> Kevyn-Alexandre.Pare@opal-rt.com> wrote:
>>>>
>>>>> I'm setting
>>>>>
>>>>> TMPDIR=3D<PATH>/build/tmp
>>>>> DL_DIR=3D<PATH>/build/downloads
>>>>> SSTATE_DIR=3D<PATH>/build/sstate-cache
>>>>>
>>>>> Also ref:
>>>>>
>>>>>
>>>>> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html=
#replicating-a-build-offline
>>>>>
>>>>> -KA
>>>>>
>>>>>
>>>>> From: FLoraVLogs <eripflo@gmail.com>
>>>>>
>>>>> Sent: Friday, December 13, 2019 13:20
>>>>>
>>>>> To: Kevyn-Alexandre Pare <Kevyn-Alexandre.Pare@opal-rt.com>
>>>>>
>>>>> Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
>>>>>
>>>>> Subject: Re: [yocto] Yocto server is down
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> I did those changes:
>>>>>  SOURCE_MIRROR_URL ?=3D "file:///source_mirror/sources/"
>>>>>  INHERIT +=3D "own-mirrors"
>>>>>  BB_GENERATE_MIRROR_TARBALLS =3D "1"
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> But still I am running into bake issues.
>>>>> where source_mirror_url path is my custom path
>>>>> rest I left as same.
>>>>>
>>>>>
>>>>>
>>>>> Am I missing something?
>>>>>
>>>>>
>>>>>
>>>>> I see {source_mirror_url} is invalid and cannot be interpreted.
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> Regards,
>>>>>
>>>>>
>>>>>
>>>>> Ripu
>>>>>
>>>>>
>>>>>
>>>>>

--00000000000059a1ed05999acd02
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry for a lot of emails, I took out=C2=A0<span style=3D"=
color:rgb(255,0,0)">BB_NO_NETWORK =3D &quot;1&quot;</span><div><span style=
=3D"color:rgb(255,0,0)"><br></span></div><div><font color=3D"#000000">It wo=
rked after that but I don&#39;t think it is using sstate_cache because buil=
d is taking forever</font></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 13, 2019 at 2:11 PM FLoraVLogs =
&lt;<a href=3D"mailto:eripflo@gmail.com" target=3D"_blank">eripflo@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">I thought using the downloads folder from local should ha=
ve been fine but I keep running into one error after another:<div>NOTE: Exe=
cuting RunQueue Tasks<br><font color=3D"#ff0000">ERROR: mc:arm64:quilt-nati=
ve-0.65-r0 do_fetch: Network access disabled through BB_NO_NETWORK (or set =
indirectly due to use of BB_FETCH_PREMIRRORONLY) but access requested with =
command /usr/bin/env wget -t 2 -T 30 --passive-ftp --no-check-certificate -=
P /localdata/deborah_flatten_userpkg/broadband-build/downloads &#39;<a href=
=3D"https://download.savannah.gnu.org/releases/quilt/quilt-0.65.tar.gz" tar=
get=3D"_blank">https://download.savannah.gnu.org/releases/quilt/quilt-0.65.=
tar.gz</a>&#39; (for url <a href=3D"https://download.savannah.gnu.org/relea=
ses/quilt/quilt-0.65.tar.gz" target=3D"_blank">https://download.savannah.gn=
u.org/releases/quilt/quilt-0.65.tar.gz</a>)</font><br>ERROR: mc:arm64:quilt=
-native-0.65-r0 do_fetch: <br>ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch=
: Function failed: base_do_fetch<br>ERROR: Logfile of failure stored in: /l=
ocaldata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-linu=
x/quilt-native/0.65-r0/temp/log.do_fetch.162082<br>ERROR: mc:arm64:m4-nativ=
e-1.4.18-r0 do_fetch: Network access disabled through BB_NO_NETWORK (or set=
 indirectly due to use of BB_FETCH_PREMIRRORONLY) but access requested with=
 command /usr/bin/env wget -t 2 -T 30 --passive-ftp --no-check-certificate =
-P /localdata/deborah_flatten_userpkg/broadband-build/downloads &#39;<a hre=
f=3D"https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz" target=3D"_blank">https:/=
/ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz</a>&#39; (for url <a href=3D"https://f=
tp.gnu.org/gnu/m4/m4-1.4.18.tar.gz" target=3D"_blank">https://ftp.gnu.org/g=
nu/m4/m4-1.4.18.tar.gz</a>)<br>ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch=
: <br>ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: Function failed: base_d=
o_fetch<br>ERROR: Logfile of failure stored in: /localdata/deborah_flatten_=
userpkg/broadband-build/build/tmp/work/x86_64-linux/m4-native/1.4.18-r0/tem=
p/log.do_fetch.162088<br>ERROR: Task (multiconfig:arm64:/localdata/deborah_=
flatten_userpkg/broadband-build/sources/poky/meta/recipes-devtools/quilt/qu=
ilt-native_0.65.bb:do_fetch) failed with exit code &#39;1&#39;<br>ERROR: Ta=
sk (multiconfig:arm64:/localdata/deborah_flatten_userpkg/broadband-build/so=
urces/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch) failed wi=
th exit code &#39;1&#39;<br>ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch:=
 Network access disabled through BB_NO_NETWORK (or set indirectly due to us=
e of BB_FETCH_PREMIRRORONLY) but access requested with command /usr/bin/env=
 wget -t 2 -T 30 --passive-ftp --no-check-certificate -P /localdata/deborah=
_flatten_userpkg/broadband-build/downloads &#39;<a href=3D"https://ftp.gnu.=
org/gnu/m4/m4-1.4.18.tar.gz" target=3D"_blank">https://ftp.gnu.org/gnu/m4/m=
4-1.4.18.tar.gz</a>&#39; (for url <a href=3D"https://ftp.gnu.org/gnu/m4/m4-=
1.4.18.tar.gz" target=3D"_blank">https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.g=
z</a>)<br></div><div><br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, Dec 13, 2019 at 2:00 PM FLoraVLogs &=
lt;<a href=3D"mailto:eripflo@gmail.com" target=3D"_blank">eripflo@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr">Found another mistake:<br>SSTATE_MIRRORS ?=3D &quot;file:/=
//nfs/projects/blah/yocto_sstate/&quot;<br>should be<div>SOURCE_MIRROR_URL =
?=3D &quot;PATH&quot;</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Fri, Dec 13, 2019 at 1:48 PM FLoraVLogs &lt;<=
a href=3D"mailto:eripflo@gmail.com" target=3D"_blank">eripflo@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr">Sorry I have BB_NO_NETWORK =3D &quot;1&quot; instead of=C2=A0<=
span style=3D"color:rgb(80,0,80)">BB_GENERATE_MIRROR_TARBALLS =3D &quot;1&q=
uot;.</span><div><span style=3D"color:rgb(80,0,80)"><br></span></div><div><=
span style=3D"color:rgb(80,0,80)">I still get same error.</span></div><div>=
ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: The URL: &#39;${SOURCE_MIRRO=
R_URL}&#39; is invalid and cannot be interpreted<br>ERROR: mc:arm64:quilt-n=
ative-0.65-r0 do_fetch: <br>ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: =
Function failed: base_do_fetch<br>ERROR: Logfile of failure stored in: /loc=
aldata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-linux/=
quilt-native/0.65-r0/temp/log.do_fetch.151490<br>ERROR: mc:arm64:m4-native-=
1.4.18-r0 do_fetch: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid and =
cannot be interpreted<br>ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: <br>=
ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: Function failed: base_do_fetc=
h<br>ERROR: Logfile of failure stored in: /localdata/deborah_flatten_userpk=
g/broadband-build/build/tmp/work/x86_64-linux/m4-native/1.4.18-r0/temp/log.=
do_fetch.151496<br>ERROR: Task (multiconfig:arm64:/localdata/deborah_flatte=
n_userpkg/broadband-build/sources/poky/meta/recipes-devtools/quilt/quilt-na=
tive_0.65.bb:do_fetch) failed with exit code &#39;1&#39;<br>ERROR: Task (mu=
lticonfig:arm64:/localdata/deborah_flatten_userpkg/broadband-build/sources/=
poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch) failed with exi=
t code &#39;1&#39;<br>ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch: The =
URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid and cannot be interpreted<br=
>ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch: <br>ERROR: mc:qemuarm:qui=
lt-native-0.65-r0 do_fetch: Function failed: base_do_fetch<br>ERROR: Logfil=
e of failure stored in: /localdata/deborah_flatten_userpkg/broadband-build/=
build/qemuarmtmp/work/x86_64-linux/quilt-native/0.65-r0/temp/log.do_fetch.1=
51491<br>ERROR: Task (multiconfig:qemuarm:/localdata/deborah_flatten_userpk=
g/broadband-build/sources/poky/meta/recipes-devtools/quilt/quilt-native_0.6=
5.bb:do_fetch) failed with exit code &#39;1&#39;<br>ERROR: mc:qemuarm:m4-na=
tive-1.4.18-r0 do_fetch: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid=
 and cannot be interpreted<br>ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetc=
h: <br>ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch: Function failed: bas=
e_do_fetch<br>ERROR: Logfile of failure stored in: /localdata/deborah_flatt=
en_userpkg/broadband-build/build/qemuarmtmp/work/x86_64-linux/m4-native/1.4=
.18-r0/temp/log.do_fetch.151495<br>ERROR: Task (multiconfig:qemuarm:/locald=
ata/deborah_flatten_userpkg/broadband-build/sources/poky/meta/recipes-devto=
ols/m4/m4-native_1.4.18.bb:do_fetch) failed with exit code &#39;1&#39;<br>E=
RROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639be22-r0 do_fetch=
: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid and cannot be interpre=
ted<br>ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639be22-r0 =
do_fetch: <br>ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639b=
e22-r0 do_fetch: Function failed: base_do_fetch<br>ERROR: Logfile of failur=
e stored in: /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/w=
ork/x86_64-linux/gnu-config-native/20181128+gitAUTOINC+058639be22-r0/temp/l=
og.do_fetch.151492<br>ERROR: Task (multiconfig:arm64:virtual:native:/locald=
ata/deborah_flatten_userpkg/broadband-build/sources/poky/meta/recipes-devto=
ols/gnu-config/gnu-config_git.bb:do_fetch) failed with exit code &#39;1&#39=
;<br>ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+058639be22-r0 =
do_fetch: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid and cannot be =
interpreted<br>ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+0586=
39be22-r0 do_fetch: <br>ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUT=
OINC+058639be22-r0 do_fetch: Function failed: base_do_fetch<br>ERROR: Logfi=
le of failure stored in: /localdata/deborah_flatten_userpkg/broadband-build=
/build/qemuarmtmp/work/x86_64-linux/gnu-config-native/20181128+gitAUTOINC+0=
58639be22-r0/temp/log.do_fetch.151493<br>ERROR: Task (multiconfig:qemuarm:v=
irtual:native:/localdata/deborah_flatten_userpkg/broadband-build/sources/po=
ky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch) failed with=
 exit code &#39;1&#39;<br>ERROR: mc:arm64:autoconf-native-2.69-r11 do_fetch=
: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid and cannot be interpre=
ted<br>ERROR: mc:arm64:autoconf-native-2.69-r11 do_fetch: <br>ERROR: mc:arm=
64:autoconf-native-2.69-r11 do_fetch: Function failed: base_do_fetch<br>ERR=
OR: Logfile of failure stored in: /localdata/deborah_flatten_userpkg/broadb=
and-build/build/tmp/work/x86_64-linux/autoconf-native/2.69-r11/temp/log.do_=
fetch.151497<br>ERROR: Task (multiconfig:arm64:virtual:native:/localdata/de=
borah_flatten_userpkg/broadband-build/sources/poky/meta/recipes-devtools/au=
toconf/autoconf_2.69.bb:do_fetch) failed with exit code &#39;1&#39;<br>ERRO=
R: mc:arm32:quilt-native-0.65-r0 do_fetch: The URL: &#39;${SOURCE_MIRROR_UR=
L}&#39; is invalid and cannot be interpreted<br>ERROR: mc:arm32:quilt-nativ=
e-0.65-r0 do_fetch: <br>ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch: Func=
tion failed: base_do_fetch<br>ERROR: Logfile of failure stored in: /localda=
ta/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-linux/quil=
t-native/0.65-r0/temp/log.do_fetch.151509<br>ERROR: Task (multiconfig:arm32=
:/localdata/deborah_flatten_userpkg/broadband-build/sources/poky/meta/recip=
es-devtools/quilt/quilt-native_0.65.bb:do_fetch) failed with exit code &#39=
;1&#39;<br>NOTE: Tasks Summary: Attempted 12 tasks of which 2 didn&#39;t ne=
ed to be rerun and 8 failed.<br><br></div><div><br>NOTE: Fetching uninative=
 binary shim from <a href=3D"http://downloads.yoctoproject.org/releases/uni=
native/2.4/x86_64-nativesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf30=
70b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0" target=3D"_blank">http://downlo=
ads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2;s=
ha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0=
</a><br>WARNING: Disabling uninative as unable to fetch uninative tarball: =
The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid and cannot be interprete=
d<br>WARNING: To build your own uninative loader, please bitbake uninative-=
tarball and set UNINATIVE_TARBALL appropriately.<br></div><div><br></div><d=
iv><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, Dec 13, 2019 at 1:40 PM FLoraVLogs &lt;<a href=3D"mail=
to:eripflo@gmail.com" target=3D"_blank">eripflo@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">H=
i,<div><br></div><div>I tried to follow the changes and I still get the fol=
lowing error:</div><div><b><font color=3D"#ff0000">NOTE: Fetching uninative=
 binary shim from=C2=A0<a href=3D"http://downloads.yoctoproject.org/release=
s/uninative/2.4/x86_64-nativesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccf=
edf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0" target=3D"_blank">http://d=
ownloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.=
bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95=
accd0</a></font></b><br><b><font color=3D"#ff0000">WARNING: Failed to fetch=
 URL=C2=A0<a href=3D"http://downloads.yoctoproject.org/releases/uninative/2=
.4/x86_64-nativesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0f=
e4a5ba2f0766dad5c9d1642dccf95accd0" target=3D"_blank">http://downloads.yoct=
oproject.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2;sha256sum=
=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0</a>, at=
tempting MIRRORS if available</font></b><br>ERROR: Fetcher failure: Fetch c=
ommand export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D&quot;=
unix:abstract=3D/tmp/dbus-cbPmLiVEFn,guid=3D6b9c2f1d40cf3c9a1ff878cc5dee854=
7&quot;; export SSH_AGENT_PID=3D&quot;16924&quot;; export SSH_AUTH_SOCK=3D&=
quot;/run/user/18771/keyring/ssh&quot;; export PATH=3D&quot;/localdata/debo=
rah_flatten_userpkg/broadband-build/sources/poky/scripts:/localdata/deborah=
_flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux=
-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/bin/arm-picoos-li=
nux-musleabi:/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/w=
ork/armv7at2hf-vfp-picoos-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysro=
ot/usr/bin/crossscripts:/localdata/deborah_flatten_userpkg/broadband-build/=
build/tmp/work/armv7at2hf-vfp-picoos-linux-musleabi/defaultpkgname/1.0-r0/r=
ecipe-sysroot-native/usr/sbin:/localdata/deborah_flatten_userpkg/broadband-=
build/build/tmp/work/armv7at2hf-vfp-picoos-linux-musleabi/defaultpkgname/1.=
0-r0/recipe-sysroot-native/usr/bin:/localdata/deborah_flatten_userpkg/broad=
band-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-musleabi/defaultpkgna=
me/1.0-r0/recipe-sysroot-native/sbin:/localdata/deborah_flatten_userpkg/bro=
adband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-musleabi/defaultpkg=
name/1.0-r0/recipe-sysroot-native/bin:/localdata/deborah_flatten_userpkg/br=
oadband-build/sources/poky/bitbake/bin:/localdata/deborah_flatten_userpkg/b=
roadband-build/build/tmp/hosttools&quot;; export HOME=3D&quot;/home/rflora&=
quot;; /usr/bin/env wget -t 2 -T 30 --passive-ftp --no-check-certificate -P=
 /localdata/deborah_flatten_userpkg/broadband-build/downloads/uninative/06f=
91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0 &#39;<a href=
=3D"http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-natives=
dk-libc.tar.bz2" target=3D"_blank">http://downloads.yoctoproject.org/releas=
es/uninative/2.4/x86_64-nativesdk-libc.tar.bz2</a>&#39; --progress=3Ddot -v=
 failed with exit code 4, output:<br>--2019-12-13 13:33:47-- =C2=A0<a href=
=3D"http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-natives=
dk-libc.tar.bz2" target=3D"_blank">http://downloads.yoctoproject.org/releas=
es/uninative/2.4/x86_64-nativesdk-libc.tar.bz2</a><span style=3D"color:rgb(=
80,0,80)"><br>Resolving=C2=A0<a href=3D"http://downloads.yoctoproject.org/"=
 target=3D"_blank">downloads.yoctoproject.org</a>=C2=A0(<a href=3D"http://d=
ownloads.yoctoproject.org/" target=3D"_blank">downloads.yoctoproject.org</a=
>)... 198.145.29.63<br>Connecting to=C2=A0<a href=3D"http://downloads.yocto=
project.org/" target=3D"_blank">downloads.yoctoproject.org</a>=C2=A0(<a hre=
f=3D"http://downloads.yoctoproject.org/" target=3D"_blank">downloads.yoctop=
roject.org</a>)|198.145.29.63|:80... failed: Connection timed out.<br>Retry=
ing.<br><br></span>--2019-12-13 13:34:18-- =C2=A0(try: 2) =C2=A0<a href=3D"=
http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-l=
ibc.tar.bz2" target=3D"_blank">http://downloads.yoctoproject.org/releases/u=
ninative/2.4/x86_64-nativesdk-libc.tar.bz2</a><span style=3D"color:rgb(80,0=
,80)"><br>Connecting to=C2=A0<a href=3D"http://downloads.yoctoproject.org/"=
 target=3D"_blank">downloads.yoctoproject.org</a>=C2=A0(<a href=3D"http://d=
ownloads.yoctoproject.org/" target=3D"_blank">downloads.yoctoproject.org</a=
>)|198.145.29.63|:80... failed: Connection timed out.<br>Giving up.<br><br>=
</span></div><div>Here are the changes in my local.conf file:</div><div>SST=
ATE_MIRRORS ?=3D &quot;file:///nfs/projects/blah/yocto_sstate/&quot;<span s=
tyle=3D"color:rgb(80,0,80)"><br>INHERIT +=3D &quot;own-mirrors&quot;<br>BB_=
GENERATE_MIRROR_TARBALLS =3D &quot;1&quot;<br></span></div><div><br></div><=
div>Where=C2=A0/nfs/projects/blah/yocto_sstate/<br>contains all the files</=
div><div>eoc_wl5e.tar.gz =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0eoc_wl5e.tar.gz.done =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uninativ=
e/<br>eoc_wl5e.tar.gz_bad-checksum_6dfc6c3d2cac970e9fc123514d809087 =C2=A0g=
it2/=C2=A0=C2=A0<br></div><div><br></div><div>Did I do something wrong?<br>=
<br>Sorry for lot of questions, I am new to Yocto.</div><div><br></div><div=
>Regards,</div><div><br></div><div>Ripu</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 13, 2019 at 1:26 P=
M Kevyn-Alexandre Pare &lt;<a href=3D"mailto:Kevyn-Alexandre.Pare@opal-rt.c=
om" target=3D"_blank">Kevyn-Alexandre.Pare@opal-rt.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">I&#39;m setting<br>
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
</blockquote></div>

--00000000000059a1ed05999acd02--
