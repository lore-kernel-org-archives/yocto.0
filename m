Received: from mail-io1-f68.google.com (mail-io1-f68.google.com [209.85.166.68])
 by mx.groups.io with SMTP id smtpd.web09.489.1576263667799898890
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 11:01:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vIYHQ7UX;
 spf=pass (domain: gmail.com, ip: 209.85.166.68, mailfrom: eripflo@gmail.com)
Received: by mail-io1-f68.google.com with SMTP id f82so681450ioa.9
        for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2019 11:01:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KzpgUEk+WJY35DxWqXP0OGjnIQhiHyuNPSO5Ar5M1is=;
        b=vIYHQ7UXZaR4DIpuHBHuvs6lSvZOLCVTuG3wqZ9pAu3rbrmjLf2/ZtnYw9BNFGB2/F
         o5eJMgDSFOC9NWWRrU7urru5QI4fE71ROg3XphyGi5KSQ9Rh3ha/gVHnd767obDFy7H8
         bExV6JimuOlQhpCxg+MpoN+Tbvqe+lD2SPa3fEfjDINgHP1nXfyTFcCarpQASfzbFAa9
         M5+aqBkQg3zmqhNbHC96Vs+P7PnAz1DwTd0oO2ZBE/k0EBEVzTD112ypp4aSbcgm9un7
         /R3eeiDzuBC4MT76DrAQBb6q0IjxyOsaLxf7aKyfRow0rFVxCtGPoq8b5Bzldi/IkJiA
         hljQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KzpgUEk+WJY35DxWqXP0OGjnIQhiHyuNPSO5Ar5M1is=;
        b=JzL2j1LLF/FqtaAqgUnkNwGlBAxSTr+GfwG2FwQeTY6GtCku0E0jPN83LT83rwWJGJ
         9txx8VPqJ0UvE0kt1YXt35sldMHD1zJhhM0q0C3+AB9q7L/OgwPG3XCYh5p2oAwlNs05
         Ti51J2UmK6hTy/4xd2gwUVvPkt5CHpVrPVYgwBVuv8AtZBP4PTxIl7RYZUzZ/77K7YLD
         gjlCz5E9mgfL84Urz7Cy5un38N5Pcr1jj3rCqQZ3nlC1hUydEUYHqzZd/bxrdiqEXYiH
         kNI8H9g8JJWfm7AJyvee6ZSY5YyttKgl0wcbHe6OvGXxmzMhwza2slYQ6qnbJFx4zXug
         snTQ==
X-Gm-Message-State: APjAAAVILEhwh5KRp72cH2nrp+KqZot2S5of5+mMN7zU1diMsYBD69i8
	evMdBtO5S7lj0UCPXDNHGIyaby6aHHB2iuH80So=
X-Google-Smtp-Source: APXvYqzlfyJrVX0sICI4cs5HT23eiOM8lVOiEWMg3EJh3xuNIXAWbYCSU7OHdL2riVZDPGfa4OVXPJIeixct3QUb6YA=
X-Received: by 2002:a02:b38f:: with SMTP id p15mr880150jan.56.1576263666816;
 Fri, 13 Dec 2019 11:01:06 -0800 (PST)
MIME-Version: 1.0
References: <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
 <YTBPR01MB235019E17369B5A7EDF93FB68A540@YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM>
 <CAGhBkzw6Pz6v8XkCiXDcB-LqZss2cP25TeU5H3eP5QUo7BeYHA@mail.gmail.com>
 <YTBPR01MB2350E5110CE2B02D255FB5E98A540@YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM>
 <CAGhBkzxv8LHjaAbMLbYBWMxmKAWTqqvHdoA=voo6UDDCswW+NQ@mail.gmail.com> <CAGhBkzzi4kzGER2QEYtAo=wManvHq+WAufC2zfAkmie2m+ZYbw@mail.gmail.com>
In-Reply-To: <CAGhBkzzi4kzGER2QEYtAo=wManvHq+WAufC2zfAkmie2m+ZYbw@mail.gmail.com>
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Fri, 13 Dec 2019 14:00:54 -0500
Message-ID: <CAGhBkzxmLn=-YUk=cDqSR=L_Pp4hT=kaDuBqHtHLNfrdHYasAg@mail.gmail.com>
Subject: Re: [yocto] Yocto server is down
To: Kevyn-Alexandre Pare <Kevyn-Alexandre.Pare@opal-rt.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000eee08005999a7b18"

--000000000000eee08005999a7b18
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Found another mistake:
SSTATE_MIRRORS ?=3D "file:///nfs/projects/blah/yocto_sstate/"
should be
SOURCE_MIRROR_URL ?=3D "PATH"

On Fri, Dec 13, 2019 at 1:48 PM FLoraVLogs <eripflo@gmail.com> wrote:

> Sorry I have BB_NO_NETWORK =3D "1" instead of BB_GENERATE_MIRROR_TARBALLS=
 =3D
> "1".
>
> I still get same error.
> ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: The URL:
> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
> ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch:
> ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: Function failed:
> base_do_fetch
> ERROR: Logfile of failure stored in:
> /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-=
linux/quilt-native/0.65-r0/temp/log.do_fetch.151490
> ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: The URL:
> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
> ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch:
> ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: Function failed:
> base_do_fetch
> ERROR: Logfile of failure stored in:
> /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-=
linux/m4-native/1.4.18-r0/temp/log.do_fetch.151496
> ERROR: Task
> (multiconfig:arm64:/localdata/deborah_flatten_userpkg/broadband-build/sou=
rces/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch)
> failed with exit code '1'
> ERROR: Task
> (multiconfig:arm64:/localdata/deborah_flatten_userpkg/broadband-build/sou=
rces/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch)
> failed with exit code '1'
> ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch: The URL:
> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
> ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch:
> ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch: Function failed:
> base_do_fetch
> ERROR: Logfile of failure stored in:
> /localdata/deborah_flatten_userpkg/broadband-build/build/qemuarmtmp/work/=
x86_64-linux/quilt-native/0.65-r0/temp/log.do_fetch.151491
> ERROR: Task
> (multiconfig:qemuarm:/localdata/deborah_flatten_userpkg/broadband-build/s=
ources/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch)
> failed with exit code '1'
> ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch: The URL:
> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
> ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch:
> ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch: Function failed:
> base_do_fetch
> ERROR: Logfile of failure stored in:
> /localdata/deborah_flatten_userpkg/broadband-build/build/qemuarmtmp/work/=
x86_64-linux/m4-native/1.4.18-r0/temp/log.do_fetch.151495
> ERROR: Task
> (multiconfig:qemuarm:/localdata/deborah_flatten_userpkg/broadband-build/s=
ources/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch)
> failed with exit code '1'
> ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
> do_fetch: The URL: '${SOURCE_MIRROR_URL}' is invalid and cannot be
> interpreted
> ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
> do_fetch:
> ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
> do_fetch: Function failed: base_do_fetch
> ERROR: Logfile of failure stored in:
> /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-=
linux/gnu-config-native/20181128+gitAUTOINC+058639be22-r0/temp/log.do_fetch=
.151492
> ERROR: Task
> (multiconfig:arm64:virtual:native:/localdata/deborah_flatten_userpkg/broa=
dband-build/sources/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb=
:do_fetch)
> failed with exit code '1'
> ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
> do_fetch: The URL: '${SOURCE_MIRROR_URL}' is invalid and cannot be
> interpreted
> ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
> do_fetch:
> ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
> do_fetch: Function failed: base_do_fetch
> ERROR: Logfile of failure stored in:
> /localdata/deborah_flatten_userpkg/broadband-build/build/qemuarmtmp/work/=
x86_64-linux/gnu-config-native/20181128+gitAUTOINC+058639be22-r0/temp/log.d=
o_fetch.151493
> ERROR: Task
> (multiconfig:qemuarm:virtual:native:/localdata/deborah_flatten_userpkg/br=
oadband-build/sources/poky/meta/recipes-devtools/gnu-config/gnu-config_git.=
bb:do_fetch)
> failed with exit code '1'
> ERROR: mc:arm64:autoconf-native-2.69-r11 do_fetch: The URL:
> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
> ERROR: mc:arm64:autoconf-native-2.69-r11 do_fetch:
> ERROR: mc:arm64:autoconf-native-2.69-r11 do_fetch: Function failed:
> base_do_fetch
> ERROR: Logfile of failure stored in:
> /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-=
linux/autoconf-native/2.69-r11/temp/log.do_fetch.151497
> ERROR: Task
> (multiconfig:arm64:virtual:native:/localdata/deborah_flatten_userpkg/broa=
dband-build/sources/poky/meta/recipes-devtools/autoconf/autoconf_2.69.bb:do=
_fetch)
> failed with exit code '1'
> ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch: The URL:
> '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
> ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch:
> ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch: Function failed:
> base_do_fetch
> ERROR: Logfile of failure stored in:
> /localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-=
linux/quilt-native/0.65-r0/temp/log.do_fetch.151509
> ERROR: Task
> (multiconfig:arm32:/localdata/deborah_flatten_userpkg/broadband-build/sou=
rces/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 12 tasks of which 2 didn't need to be reru=
n
> and 8 failed.
>
>
> NOTE: Fetching uninative binary shim from
> http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk=
-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d=
1642dccf95accd0
> WARNING: Disabling uninative as unable to fetch uninative tarball: The
> URL: '${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
> WARNING: To build your own uninative loader, please bitbake
> uninative-tarball and set UNINATIVE_TARBALL appropriately.
>
>
>
> On Fri, Dec 13, 2019 at 1:40 PM FLoraVLogs <eripflo@gmail.com> wrote:
>
>> Hi,
>>
>> I tried to follow the changes and I still get the following error:
>> *NOTE: Fetching uninative binary shim
>> from http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nat=
ivesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766d=
ad5c9d1642dccf95accd0
>> <http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-natives=
dk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c=
9d1642dccf95accd0>*
>> *WARNING: Failed to fetch
>> URL http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nati=
vesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766da=
d5c9d1642dccf95accd0
>> <http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-natives=
dk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c=
9d1642dccf95accd0>,
>> attempting MIRRORS if available*
>> ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
>> DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-cbPmLiVEFn,guid=3D=
6b9c2f1d40cf3c9a1ff878cc5dee8547";
>> export SSH_AGENT_PID=3D"16924"; export
>> SSH_AUTH_SOCK=3D"/run/user/18771/keyring/ssh"; export
>> PATH=3D"/localdata/deborah_flatten_userpkg/broadband-build/sources/poky/=
scripts:/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/a=
rmv7at2hf-vfp-picoos-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-na=
tive/usr/bin/arm-picoos-linux-musleabi:/localdata/deborah_flatten_userpkg/b=
roadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-musleabi/defaultp=
kgname/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/localdata/deborah_flatte=
n_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-muslea=
bi/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/sbin:/localdata/deborah_=
flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-=
musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/bin:/localdata/deb=
orah_flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-l=
inux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/sbin:/localdata/d=
eborah_flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos=
-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/bin:/localdata/=
deborah_flatten_userpkg/broadband-build/sources/poky/bitbake/bin:/localdata=
/deborah_flatten_userpkg/broadband-build/build/tmp/hosttools";
>> export HOME=3D"/home/rflora"; /usr/bin/env wget -t 2 -T 30 --passive-ftp
>> --no-check-certificate -P
>> /localdata/deborah_flatten_userpkg/broadband-build/downloads/uninative/0=
6f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0
>> '
>> http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesd=
k-libc.tar.bz2'
>> --progress=3Ddot -v failed with exit code 4, output:
>> --2019-12-13 13:33:47--
>> http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesd=
k-libc.tar.bz2
>> Resolving downloads.yoctoproject.org (downloads.yoctoproject.org)...
>> 198.145.29.63
>> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|19=
8.145.29.63|:80...
>> failed: Connection timed out.
>> Retrying.
>>
>> --2019-12-13 13:34:18--  (try: 2)
>> http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesd=
k-libc.tar.bz2
>> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|19=
8.145.29.63|:80...
>> failed: Connection timed out.
>> Giving up.
>>
>> Here are the changes in my local.conf file:
>> SSTATE_MIRRORS ?=3D "file:///nfs/projects/blah/yocto_sstate/"
>> INHERIT +=3D "own-mirrors"
>> BB_GENERATE_MIRROR_TARBALLS =3D "1"
>>
>> Where /nfs/projects/blah/yocto_sstate/
>> contains all the files
>> eoc_wl5e.tar.gz
>>  eoc_wl5e.tar.gz.done                                           uninativ=
e/
>> eoc_wl5e.tar.gz_bad-checksum_6dfc6c3d2cac970e9fc123514d809087  git2/
>>
>> Did I do something wrong?
>>
>> Sorry for lot of questions, I am new to Yocto.
>>
>> Regards,
>>
>> Ripu
>>
>> On Fri, Dec 13, 2019 at 1:26 PM Kevyn-Alexandre Pare <
>> Kevyn-Alexandre.Pare@opal-rt.com> wrote:
>>
>>> I'm setting
>>>
>>> TMPDIR=3D<PATH>/build/tmp
>>> DL_DIR=3D<PATH>/build/downloads
>>> SSTATE_DIR=3D<PATH>/build/sstate-cache
>>>
>>> Also ref:
>>>
>>>
>>> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#r=
eplicating-a-build-offline
>>>
>>> -KA
>>>
>>>
>>> From: FLoraVLogs <eripflo@gmail.com>
>>>
>>> Sent: Friday, December 13, 2019 13:20
>>>
>>> To: Kevyn-Alexandre Pare <Kevyn-Alexandre.Pare@opal-rt.com>
>>>
>>> Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
>>>
>>> Subject: Re: [yocto] Yocto server is down
>>>
>>>
>>>
>>>
>>>
>>>
>>> I did those changes:
>>>  SOURCE_MIRROR_URL ?=3D "file:///source_mirror/sources/"
>>>  INHERIT +=3D "own-mirrors"
>>>  BB_GENERATE_MIRROR_TARBALLS =3D "1"
>>>
>>>
>>>
>>>
>>> But still I am running into bake issues.
>>> where source_mirror_url path is my custom path
>>> rest I left as same.
>>>
>>>
>>>
>>> Am I missing something?
>>>
>>>
>>>
>>> I see {source_mirror_url} is invalid and cannot be interpreted.
>>>
>>>
>>>
>>>
>>>
>>>
>>> Regards,
>>>
>>>
>>>
>>> Ripu
>>>
>>>
>>>
>>>

--000000000000eee08005999a7b18
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Found another mistake:<br>SSTATE_MIRRORS ?=3D &quot;file:/=
//nfs/projects/blah/yocto_sstate/&quot;<br>should be<div>SOURCE_MIRROR_URL =
?=3D &quot;PATH&quot;</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Fri, Dec 13, 2019 at 1:48 PM FLoraVLogs &lt;<=
a href=3D"mailto:eripflo@gmail.com">eripflo@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Sorry=
 I have BB_NO_NETWORK =3D &quot;1&quot; instead of=C2=A0<span style=3D"colo=
r:rgb(80,0,80)">BB_GENERATE_MIRROR_TARBALLS =3D &quot;1&quot;.</span><div><=
span style=3D"color:rgb(80,0,80)"><br></span></div><div><span style=3D"colo=
r:rgb(80,0,80)">I still get same error.</span></div><div>ERROR: mc:arm64:qu=
ilt-native-0.65-r0 do_fetch: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is inv=
alid and cannot be interpreted<br>ERROR: mc:arm64:quilt-native-0.65-r0 do_f=
etch: <br>ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: Function failed: b=
ase_do_fetch<br>ERROR: Logfile of failure stored in: /localdata/deborah_fla=
tten_userpkg/broadband-build/build/tmp/work/x86_64-linux/quilt-native/0.65-=
r0/temp/log.do_fetch.151490<br>ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch=
: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid and cannot be interpre=
ted<br>ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: <br>ERROR: mc:arm64:m4=
-native-1.4.18-r0 do_fetch: Function failed: base_do_fetch<br>ERROR: Logfil=
e of failure stored in: /localdata/deborah_flatten_userpkg/broadband-build/=
build/tmp/work/x86_64-linux/m4-native/1.4.18-r0/temp/log.do_fetch.151496<br=
>ERROR: Task (multiconfig:arm64:/localdata/deborah_flatten_userpkg/broadban=
d-build/sources/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fe=
tch) failed with exit code &#39;1&#39;<br>ERROR: Task (multiconfig:arm64:/l=
ocaldata/deborah_flatten_userpkg/broadband-build/sources/poky/meta/recipes-=
devtools/m4/m4-native_1.4.18.bb:do_fetch) failed with exit code &#39;1&#39;=
<br>ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch: The URL: &#39;${SOURCE=
_MIRROR_URL}&#39; is invalid and cannot be interpreted<br>ERROR: mc:qemuarm=
:quilt-native-0.65-r0 do_fetch: <br>ERROR: mc:qemuarm:quilt-native-0.65-r0 =
do_fetch: Function failed: base_do_fetch<br>ERROR: Logfile of failure store=
d in: /localdata/deborah_flatten_userpkg/broadband-build/build/qemuarmtmp/w=
ork/x86_64-linux/quilt-native/0.65-r0/temp/log.do_fetch.151491<br>ERROR: Ta=
sk (multiconfig:qemuarm:/localdata/deborah_flatten_userpkg/broadband-build/=
sources/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch) fai=
led with exit code &#39;1&#39;<br>ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_=
fetch: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid and cannot be int=
erpreted<br>ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch: <br>ERROR: mc:q=
emuarm:m4-native-1.4.18-r0 do_fetch: Function failed: base_do_fetch<br>ERRO=
R: Logfile of failure stored in: /localdata/deborah_flatten_userpkg/broadba=
nd-build/build/qemuarmtmp/work/x86_64-linux/m4-native/1.4.18-r0/temp/log.do=
_fetch.151495<br>ERROR: Task (multiconfig:qemuarm:/localdata/deborah_flatte=
n_userpkg/broadband-build/sources/poky/meta/recipes-devtools/m4/m4-native_1=
.4.18.bb:do_fetch) failed with exit code &#39;1&#39;<br>ERROR: mc:arm64:gnu=
-config-native-20181128+gitAUTOINC+058639be22-r0 do_fetch: The URL: &#39;${=
SOURCE_MIRROR_URL}&#39; is invalid and cannot be interpreted<br>ERROR: mc:a=
rm64:gnu-config-native-20181128+gitAUTOINC+058639be22-r0 do_fetch: <br>ERRO=
R: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639be22-r0 do_fetch: F=
unction failed: base_do_fetch<br>ERROR: Logfile of failure stored in: /loca=
ldata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-linux/g=
nu-config-native/20181128+gitAUTOINC+058639be22-r0/temp/log.do_fetch.151492=
<br>ERROR: Task (multiconfig:arm64:virtual:native:/localdata/deborah_flatte=
n_userpkg/broadband-build/sources/poky/meta/recipes-devtools/gnu-config/gnu=
-config_git.bb:do_fetch) failed with exit code &#39;1&#39;<br>ERROR: mc:qem=
uarm:gnu-config-native-20181128+gitAUTOINC+058639be22-r0 do_fetch: The URL:=
 &#39;${SOURCE_MIRROR_URL}&#39; is invalid and cannot be interpreted<br>ERR=
OR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+058639be22-r0 do_fetch=
: <br>ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+058639be22-r0=
 do_fetch: Function failed: base_do_fetch<br>ERROR: Logfile of failure stor=
ed in: /localdata/deborah_flatten_userpkg/broadband-build/build/qemuarmtmp/=
work/x86_64-linux/gnu-config-native/20181128+gitAUTOINC+058639be22-r0/temp/=
log.do_fetch.151493<br>ERROR: Task (multiconfig:qemuarm:virtual:native:/loc=
aldata/deborah_flatten_userpkg/broadband-build/sources/poky/meta/recipes-de=
vtools/gnu-config/gnu-config_git.bb:do_fetch) failed with exit code &#39;1&=
#39;<br>ERROR: mc:arm64:autoconf-native-2.69-r11 do_fetch: The URL: &#39;${=
SOURCE_MIRROR_URL}&#39; is invalid and cannot be interpreted<br>ERROR: mc:a=
rm64:autoconf-native-2.69-r11 do_fetch: <br>ERROR: mc:arm64:autoconf-native=
-2.69-r11 do_fetch: Function failed: base_do_fetch<br>ERROR: Logfile of fai=
lure stored in: /localdata/deborah_flatten_userpkg/broadband-build/build/tm=
p/work/x86_64-linux/autoconf-native/2.69-r11/temp/log.do_fetch.151497<br>ER=
ROR: Task (multiconfig:arm64:virtual:native:/localdata/deborah_flatten_user=
pkg/broadband-build/sources/poky/meta/recipes-devtools/autoconf/autoconf_2.=
69.bb:do_fetch) failed with exit code &#39;1&#39;<br>ERROR: mc:arm32:quilt-=
native-0.65-r0 do_fetch: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid=
 and cannot be interpreted<br>ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch=
: <br>ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch: Function failed: base_=
do_fetch<br>ERROR: Logfile of failure stored in: /localdata/deborah_flatten=
_userpkg/broadband-build/build/tmp/work/x86_64-linux/quilt-native/0.65-r0/t=
emp/log.do_fetch.151509<br>ERROR: Task (multiconfig:arm32:/localdata/debora=
h_flatten_userpkg/broadband-build/sources/poky/meta/recipes-devtools/quilt/=
quilt-native_0.65.bb:do_fetch) failed with exit code &#39;1&#39;<br>NOTE: T=
asks Summary: Attempted 12 tasks of which 2 didn&#39;t need to be rerun and=
 8 failed.<br><br></div><div><br>NOTE: Fetching uninative binary shim from =
<a href=3D"http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-=
nativesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f07=
66dad5c9d1642dccf95accd0" target=3D"_blank">http://downloads.yoctoproject.o=
rg/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2;sha256sum=3D06f9168=
5b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0</a><br>WARNING: D=
isabling uninative as unable to fetch uninative tarball: The URL: &#39;${SO=
URCE_MIRROR_URL}&#39; is invalid and cannot be interpreted<br>WARNING: To b=
uild your own uninative loader, please bitbake uninative-tarball and set UN=
INATIVE_TARBALL appropriately.<br></div><div><br></div><div><br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fr=
i, Dec 13, 2019 at 1:40 PM FLoraVLogs &lt;<a href=3D"mailto:eripflo@gmail.c=
om" target=3D"_blank">eripflo@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><=
div>I tried to follow the changes and I still get the following error:</div=
><div><b><font color=3D"#ff0000">NOTE: Fetching uninative binary shim from=
=C2=A0<a href=3D"http://downloads.yoctoproject.org/releases/uninative/2.4/x=
86_64-nativesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5=
ba2f0766dad5c9d1642dccf95accd0" target=3D"_blank">http://downloads.yoctopro=
ject.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2;sha256sum=3D0=
6f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0</a></font><=
/b><br><b><font color=3D"#ff0000">WARNING: Failed to fetch URL=C2=A0<a href=
=3D"http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-natives=
dk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c=
9d1642dccf95accd0" target=3D"_blank">http://downloads.yoctoproject.org/rele=
ases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2=
ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0</a>, attempting MIRRORS =
if available</font></b><br>ERROR: Fetcher failure: Fetch command export PSE=
UDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D&quot;unix:abstract=3D/=
tmp/dbus-cbPmLiVEFn,guid=3D6b9c2f1d40cf3c9a1ff878cc5dee8547&quot;; export S=
SH_AGENT_PID=3D&quot;16924&quot;; export SSH_AUTH_SOCK=3D&quot;/run/user/18=
771/keyring/ssh&quot;; export PATH=3D&quot;/localdata/deborah_flatten_userp=
kg/broadband-build/sources/poky/scripts:/localdata/deborah_flatten_userpkg/=
broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-musleabi/default=
pkgname/1.0-r0/recipe-sysroot-native/usr/bin/arm-picoos-linux-musleabi:/loc=
aldata/deborah_flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vf=
p-picoos-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot/usr/bin/crosss=
cripts:/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/ar=
mv7at2hf-vfp-picoos-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-nat=
ive/usr/sbin:/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/w=
ork/armv7at2hf-vfp-picoos-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysro=
ot-native/usr/bin:/localdata/deborah_flatten_userpkg/broadband-build/build/=
tmp/work/armv7at2hf-vfp-picoos-linux-musleabi/defaultpkgname/1.0-r0/recipe-=
sysroot-native/sbin:/localdata/deborah_flatten_userpkg/broadband-build/buil=
d/tmp/work/armv7at2hf-vfp-picoos-linux-musleabi/defaultpkgname/1.0-r0/recip=
e-sysroot-native/bin:/localdata/deborah_flatten_userpkg/broadband-build/sou=
rces/poky/bitbake/bin:/localdata/deborah_flatten_userpkg/broadband-build/bu=
ild/tmp/hosttools&quot;; export HOME=3D&quot;/home/rflora&quot;; /usr/bin/e=
nv wget -t 2 -T 30 --passive-ftp --no-check-certificate -P /localdata/debor=
ah_flatten_userpkg/broadband-build/downloads/uninative/06f91685b782f2ccfedf=
3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0 &#39;<a href=3D"http://downloa=
ds.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2" t=
arget=3D"_blank">http://downloads.yoctoproject.org/releases/uninative/2.4/x=
86_64-nativesdk-libc.tar.bz2</a>&#39; --progress=3Ddot -v failed with exit =
code 4, output:<br>--2019-12-13 13:33:47-- =C2=A0<a href=3D"http://download=
s.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2" ta=
rget=3D"_blank">http://downloads.yoctoproject.org/releases/uninative/2.4/x8=
6_64-nativesdk-libc.tar.bz2</a><span style=3D"color:rgb(80,0,80)"><br>Resol=
ving=C2=A0<a href=3D"http://downloads.yoctoproject.org/" target=3D"_blank">=
downloads.yoctoproject.org</a>=C2=A0(<a href=3D"http://downloads.yoctoproje=
ct.org/" target=3D"_blank">downloads.yoctoproject.org</a>)... 198.145.29.63=
<br>Connecting to=C2=A0<a href=3D"http://downloads.yoctoproject.org/" targe=
t=3D"_blank">downloads.yoctoproject.org</a>=C2=A0(<a href=3D"http://downloa=
ds.yoctoproject.org/" target=3D"_blank">downloads.yoctoproject.org</a>)|198=
.145.29.63|:80... failed: Connection timed out.<br>Retrying.<br><br></span>=
--2019-12-13 13:34:18-- =C2=A0(try: 2) =C2=A0<a href=3D"http://downloads.yo=
ctoproject.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2" target=
=3D"_blank">http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64=
-nativesdk-libc.tar.bz2</a><span style=3D"color:rgb(80,0,80)"><br>Connectin=
g to=C2=A0<a href=3D"http://downloads.yoctoproject.org/" target=3D"_blank">=
downloads.yoctoproject.org</a>=C2=A0(<a href=3D"http://downloads.yoctoproje=
ct.org/" target=3D"_blank">downloads.yoctoproject.org</a>)|198.145.29.63|:8=
0... failed: Connection timed out.<br>Giving up.<br><br></span></div><div>H=
ere are the changes in my local.conf file:</div><div>SSTATE_MIRRORS ?=3D &q=
uot;file:///nfs/projects/blah/yocto_sstate/&quot;<span style=3D"color:rgb(8=
0,0,80)"><br>INHERIT +=3D &quot;own-mirrors&quot;<br>BB_GENERATE_MIRROR_TAR=
BALLS =3D &quot;1&quot;<br></span></div><div><br></div><div>Where=C2=A0/nfs=
/projects/blah/yocto_sstate/<br>contains all the files</div><div>eoc_wl5e.t=
ar.gz =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0eoc_wl5e.tar.gz.done =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uninative/<br>eoc_wl5e.tar.gz=
_bad-checksum_6dfc6c3d2cac970e9fc123514d809087 =C2=A0git2/=C2=A0=C2=A0<br><=
/div><div><br></div><div>Did I do something wrong?<br><br>Sorry for lot of =
questions, I am new to Yocto.</div><div><br></div><div>Regards,</div><div><=
br></div><div>Ripu</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Fri, Dec 13, 2019 at 1:26 PM Kevyn-Alexandre Par=
e &lt;<a href=3D"mailto:Kevyn-Alexandre.Pare@opal-rt.com" target=3D"_blank"=
>Kevyn-Alexandre.Pare@opal-rt.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">I&#39;m setting<br>
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

--000000000000eee08005999a7b18--
