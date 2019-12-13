Received: from mail-io1-f66.google.com (mail-io1-f66.google.com [209.85.166.66])
 by mx.groups.io with SMTP id smtpd.web12.364.1576262901643833682
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 10:48:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=flmvoaer;
 spf=pass (domain: gmail.com, ip: 209.85.166.66, mailfrom: eripflo@gmail.com)
Received: by mail-io1-f66.google.com with SMTP id v18so448644iol.2
        for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2019 10:48:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=d2mJ9A58/2AQJV7KXwklDmCq0V18vdny+bt31nVKmTU=;
        b=flmvoaer4nRhlbbCeV1z8FuPTOMk+HVZB/i9Pp2Y5iDcoXAPwnlIVK0qJ/WUfOlIsW
         oToNcx4SwBSblI7Wa5hUqQqXySiI0vOMVmaW/Dg7J/xZZszG77pqTOD9Mqf0IA63NRZt
         dbYmYkic6n1n86t8c6bJa5s3ltDiepbD7gwyRWof5t6RfJxmz1SN0UxC0A7GSiP+wX86
         HLR/oYyUKgYqC/h1tfs2LVZiChGuUPM1U8Ua4KQRcGItSX55r24kW45bMSPjKpPcg+Yq
         097qWMyqlPcKG1ZAEP7TUR7nlj0oUjNnv6PuoyMNIMJ0qBujyVNmDHKK9tkpNtIl34Rx
         DO5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=d2mJ9A58/2AQJV7KXwklDmCq0V18vdny+bt31nVKmTU=;
        b=oHLnpZVhL3k4MuG2tNbuZFegbEZH5p0tpBIYlFykNnP12PFrshyjAy9Uk4FQzKvqGc
         SzbLci95Eof9oczhf1qJaUz1SZwaORXsN8fCBVJjvw0tKn2jn1kOgesvlXFzgWnYwLZJ
         F9WWNLVhdM+RYdTWF2y2eNjjWmOxRHfYgZp2fdcDWVhQnb4P8jeUIsFfqeUqzBnwWstg
         mOZ9MPM/04phSXiO54qHPrAxZGrpd5Rld7znMWwl4nI2ssUY7tC29AKVOI5+IuoB5WFU
         7BrpCDS3dgM/CDj+yg0+ZeBF0STu2h7H2l22fsLDOJz8Uy2Z6MCIJbIguEoJL8jlhtZa
         YJ5w==
X-Gm-Message-State: APjAAAVN0LA4qMQWiuOFd25UWDIUQ97ivcnfksIv68vmCOmLg6DB+yaw
	u02wwzBunYQ/uCc0jBYKo4NWujKiNhqnacQNxBU=
X-Google-Smtp-Source: APXvYqzvCy1mCtd/krLXlzUisMOm3d86hXkZjJ1PC46Rj3QNAJyOWGOBiHs1AQU3XMbsnj+C/0jD5g/tmQjj78nLQ6E=
X-Received: by 2002:a5d:8c89:: with SMTP id g9mr8357048ion.221.1576262900747;
 Fri, 13 Dec 2019 10:48:20 -0800 (PST)
MIME-Version: 1.0
References: <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
 <YTBPR01MB235019E17369B5A7EDF93FB68A540@YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM>
 <CAGhBkzw6Pz6v8XkCiXDcB-LqZss2cP25TeU5H3eP5QUo7BeYHA@mail.gmail.com>
 <YTBPR01MB2350E5110CE2B02D255FB5E98A540@YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM>
 <CAGhBkzxv8LHjaAbMLbYBWMxmKAWTqqvHdoA=voo6UDDCswW+NQ@mail.gmail.com>
In-Reply-To: <CAGhBkzxv8LHjaAbMLbYBWMxmKAWTqqvHdoA=voo6UDDCswW+NQ@mail.gmail.com>
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Fri, 13 Dec 2019 13:48:09 -0500
Message-ID: <CAGhBkzzi4kzGER2QEYtAo=wManvHq+WAufC2zfAkmie2m+ZYbw@mail.gmail.com>
Subject: Re: [yocto] Yocto server is down
To: Kevyn-Alexandre Pare <Kevyn-Alexandre.Pare@opal-rt.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004591f405999a4e43"

--0000000000004591f405999a4e43
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry I have BB_NO_NETWORK =3D "1" instead of BB_GENERATE_MIRROR_TARBALLS =
=3D
"1".

I still get same error.
ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: The URL:
'${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch:
ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: Function failed:
base_do_fetch
ERROR: Logfile of failure stored in:
/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-li=
nux/quilt-native/0.65-r0/temp/log.do_fetch.151490
ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: The URL:
'${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch:
ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: Function failed: base_do_fetc=
h
ERROR: Logfile of failure stored in:
/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-li=
nux/m4-native/1.4.18-r0/temp/log.do_fetch.151496
ERROR: Task
(multiconfig:arm64:/localdata/deborah_flatten_userpkg/broadband-build/sourc=
es/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch)
failed with exit code '1'
ERROR: Task
(multiconfig:arm64:/localdata/deborah_flatten_userpkg/broadband-build/sourc=
es/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch)
failed with exit code '1'
ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch: The URL:
'${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch:
ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch: Function failed:
base_do_fetch
ERROR: Logfile of failure stored in:
/localdata/deborah_flatten_userpkg/broadband-build/build/qemuarmtmp/work/x8=
6_64-linux/quilt-native/0.65-r0/temp/log.do_fetch.151491
ERROR: Task
(multiconfig:qemuarm:/localdata/deborah_flatten_userpkg/broadband-build/sou=
rces/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch)
failed with exit code '1'
ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch: The URL:
'${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch:
ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch: Function failed:
base_do_fetch
ERROR: Logfile of failure stored in:
/localdata/deborah_flatten_userpkg/broadband-build/build/qemuarmtmp/work/x8=
6_64-linux/m4-native/1.4.18-r0/temp/log.do_fetch.151495
ERROR: Task
(multiconfig:qemuarm:/localdata/deborah_flatten_userpkg/broadband-build/sou=
rces/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch)
failed with exit code '1'
ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
do_fetch: The URL: '${SOURCE_MIRROR_URL}' is invalid and cannot be
interpreted
ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
do_fetch:
ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
do_fetch: Function failed: base_do_fetch
ERROR: Logfile of failure stored in:
/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-li=
nux/gnu-config-native/20181128+gitAUTOINC+058639be22-r0/temp/log.do_fetch.1=
51492
ERROR: Task
(multiconfig:arm64:virtual:native:/localdata/deborah_flatten_userpkg/broadb=
and-build/sources/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:d=
o_fetch)
failed with exit code '1'
ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
do_fetch: The URL: '${SOURCE_MIRROR_URL}' is invalid and cannot be
interpreted
ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
do_fetch:
ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+058639be22-r0
do_fetch: Function failed: base_do_fetch
ERROR: Logfile of failure stored in:
/localdata/deborah_flatten_userpkg/broadband-build/build/qemuarmtmp/work/x8=
6_64-linux/gnu-config-native/20181128+gitAUTOINC+058639be22-r0/temp/log.do_=
fetch.151493
ERROR: Task
(multiconfig:qemuarm:virtual:native:/localdata/deborah_flatten_userpkg/broa=
dband-build/sources/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb=
:do_fetch)
failed with exit code '1'
ERROR: mc:arm64:autoconf-native-2.69-r11 do_fetch: The URL:
'${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
ERROR: mc:arm64:autoconf-native-2.69-r11 do_fetch:
ERROR: mc:arm64:autoconf-native-2.69-r11 do_fetch: Function failed:
base_do_fetch
ERROR: Logfile of failure stored in:
/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-li=
nux/autoconf-native/2.69-r11/temp/log.do_fetch.151497
ERROR: Task
(multiconfig:arm64:virtual:native:/localdata/deborah_flatten_userpkg/broadb=
and-build/sources/poky/meta/recipes-devtools/autoconf/autoconf_2.69.bb:do_f=
etch)
failed with exit code '1'
ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch: The URL:
'${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch:
ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch: Function failed:
base_do_fetch
ERROR: Logfile of failure stored in:
/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-li=
nux/quilt-native/0.65-r0/temp/log.do_fetch.151509
ERROR: Task
(multiconfig:arm32:/localdata/deborah_flatten_userpkg/broadband-build/sourc=
es/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 12 tasks of which 2 didn't need to be rerun
and 8 failed.


NOTE: Fetching uninative binary shim from
http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-l=
ibc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d16=
42dccf95accd0
WARNING: Disabling uninative as unable to fetch uninative tarball: The URL:
'${SOURCE_MIRROR_URL}' is invalid and cannot be interpreted
WARNING: To build your own uninative loader, please bitbake
uninative-tarball and set UNINATIVE_TARBALL appropriately.



On Fri, Dec 13, 2019 at 1:40 PM FLoraVLogs <eripflo@gmail.com> wrote:

> Hi,
>
> I tried to follow the changes and I still get the following error:
> *NOTE: Fetching uninative binary shim
> from http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nati=
vesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766da=
d5c9d1642dccf95accd0
> <http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesd=
k-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9=
d1642dccf95accd0>*
> *WARNING: Failed to fetch
> URL http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativ=
esdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad=
5c9d1642dccf95accd0
> <http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesd=
k-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9=
d1642dccf95accd0>,
> attempting MIRRORS if available*
> ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-cbPmLiVEFn,guid=3D6=
b9c2f1d40cf3c9a1ff878cc5dee8547";
> export SSH_AGENT_PID=3D"16924"; export
> SSH_AUTH_SOCK=3D"/run/user/18771/keyring/ssh"; export
> PATH=3D"/localdata/deborah_flatten_userpkg/broadband-build/sources/poky/s=
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
deborah_flatten_userpkg/broadband-build/build/tmp/hosttools";
> export HOME=3D"/home/rflora"; /usr/bin/env wget -t 2 -T 30 --passive-ftp
> --no-check-certificate -P
> /localdata/deborah_flatten_userpkg/broadband-build/downloads/uninative/06=
f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0
> '
> http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk=
-libc.tar.bz2'
> --progress=3Ddot -v failed with exit code 4, output:
> --2019-12-13 13:33:47--
> http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk=
-libc.tar.bz2
> Resolving downloads.yoctoproject.org (downloads.yoctoproject.org)...
> 198.145.29.63
> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|198=
.145.29.63|:80...
> failed: Connection timed out.
> Retrying.
>
> --2019-12-13 13:34:18--  (try: 2)
> http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk=
-libc.tar.bz2
> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|198=
.145.29.63|:80...
> failed: Connection timed out.
> Giving up.
>
> Here are the changes in my local.conf file:
> SSTATE_MIRRORS ?=3D "file:///nfs/projects/blah/yocto_sstate/"
> INHERIT +=3D "own-mirrors"
> BB_GENERATE_MIRROR_TARBALLS =3D "1"
>
> Where /nfs/projects/blah/yocto_sstate/
> contains all the files
> eoc_wl5e.tar.gz
>  eoc_wl5e.tar.gz.done                                           uninative=
/
> eoc_wl5e.tar.gz_bad-checksum_6dfc6c3d2cac970e9fc123514d809087  git2/
>
> Did I do something wrong?
>
> Sorry for lot of questions, I am new to Yocto.
>
> Regards,
>
> Ripu
>
> On Fri, Dec 13, 2019 at 1:26 PM Kevyn-Alexandre Pare <
> Kevyn-Alexandre.Pare@opal-rt.com> wrote:
>
>> I'm setting
>>
>> TMPDIR=3D<PATH>/build/tmp
>> DL_DIR=3D<PATH>/build/downloads
>> SSTATE_DIR=3D<PATH>/build/sstate-cache
>>
>> Also ref:
>>
>>
>> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#re=
plicating-a-build-offline
>>
>> -KA
>>
>>
>> From: FLoraVLogs <eripflo@gmail.com>
>>
>> Sent: Friday, December 13, 2019 13:20
>>
>> To: Kevyn-Alexandre Pare <Kevyn-Alexandre.Pare@opal-rt.com>
>>
>> Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
>>
>> Subject: Re: [yocto] Yocto server is down
>>
>>
>>
>>
>>
>>
>> I did those changes:
>>  SOURCE_MIRROR_URL ?=3D "file:///source_mirror/sources/"
>>  INHERIT +=3D "own-mirrors"
>>  BB_GENERATE_MIRROR_TARBALLS =3D "1"
>>
>>
>>
>>
>> But still I am running into bake issues.
>> where source_mirror_url path is my custom path
>> rest I left as same.
>>
>>
>>
>> Am I missing something?
>>
>>
>>
>> I see {source_mirror_url} is invalid and cannot be interpreted.
>>
>>
>>
>>
>>
>>
>> Regards,
>>
>>
>>
>> Ripu
>>
>>
>>
>>

--0000000000004591f405999a4e43
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry I have BB_NO_NETWORK =3D &quot;1&quot; instead of=C2=
=A0<span style=3D"color:rgb(80,0,80)">BB_GENERATE_MIRROR_TARBALLS =3D &quot=
;1&quot;.</span><div><span style=3D"color:rgb(80,0,80)"><br></span></div><d=
iv><span style=3D"color:rgb(80,0,80)">I still get same error.</span></div><=
div>ERROR: mc:arm64:quilt-native-0.65-r0 do_fetch: The URL: &#39;${SOURCE_M=
IRROR_URL}&#39; is invalid and cannot be interpreted<br>ERROR: mc:arm64:qui=
lt-native-0.65-r0 do_fetch: <br>ERROR: mc:arm64:quilt-native-0.65-r0 do_fet=
ch: Function failed: base_do_fetch<br>ERROR: Logfile of failure stored in: =
/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-li=
nux/quilt-native/0.65-r0/temp/log.do_fetch.151490<br>ERROR: mc:arm64:m4-nat=
ive-1.4.18-r0 do_fetch: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid =
and cannot be interpreted<br>ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: =
<br>ERROR: mc:arm64:m4-native-1.4.18-r0 do_fetch: Function failed: base_do_=
fetch<br>ERROR: Logfile of failure stored in: /localdata/deborah_flatten_us=
erpkg/broadband-build/build/tmp/work/x86_64-linux/m4-native/1.4.18-r0/temp/=
log.do_fetch.151496<br>ERROR: Task (multiconfig:arm64:/localdata/deborah_fl=
atten_userpkg/broadband-build/sources/poky/meta/recipes-devtools/quilt/quil=
t-native_0.65.bb:do_fetch) failed with exit code &#39;1&#39;<br>ERROR: Task=
 (multiconfig:arm64:/localdata/deborah_flatten_userpkg/broadband-build/sour=
ces/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch) failed with=
 exit code &#39;1&#39;<br>ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch: =
The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid and cannot be interprete=
d<br>ERROR: mc:qemuarm:quilt-native-0.65-r0 do_fetch: <br>ERROR: mc:qemuarm=
:quilt-native-0.65-r0 do_fetch: Function failed: base_do_fetch<br>ERROR: Lo=
gfile of failure stored in: /localdata/deborah_flatten_userpkg/broadband-bu=
ild/build/qemuarmtmp/work/x86_64-linux/quilt-native/0.65-r0/temp/log.do_fet=
ch.151491<br>ERROR: Task (multiconfig:qemuarm:/localdata/deborah_flatten_us=
erpkg/broadband-build/sources/poky/meta/recipes-devtools/quilt/quilt-native=
_0.65.bb:do_fetch) failed with exit code &#39;1&#39;<br>ERROR: mc:qemuarm:m=
4-native-1.4.18-r0 do_fetch: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is inv=
alid and cannot be interpreted<br>ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_=
fetch: <br>ERROR: mc:qemuarm:m4-native-1.4.18-r0 do_fetch: Function failed:=
 base_do_fetch<br>ERROR: Logfile of failure stored in: /localdata/deborah_f=
latten_userpkg/broadband-build/build/qemuarmtmp/work/x86_64-linux/m4-native=
/1.4.18-r0/temp/log.do_fetch.151495<br>ERROR: Task (multiconfig:qemuarm:/lo=
caldata/deborah_flatten_userpkg/broadband-build/sources/poky/meta/recipes-d=
evtools/m4/m4-native_1.4.18.bb:do_fetch) failed with exit code &#39;1&#39;<=
br>ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639be22-r0 do_f=
etch: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid and cannot be inte=
rpreted<br>ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058639be22=
-r0 do_fetch: <br>ERROR: mc:arm64:gnu-config-native-20181128+gitAUTOINC+058=
639be22-r0 do_fetch: Function failed: base_do_fetch<br>ERROR: Logfile of fa=
ilure stored in: /localdata/deborah_flatten_userpkg/broadband-build/build/t=
mp/work/x86_64-linux/gnu-config-native/20181128+gitAUTOINC+058639be22-r0/te=
mp/log.do_fetch.151492<br>ERROR: Task (multiconfig:arm64:virtual:native:/lo=
caldata/deborah_flatten_userpkg/broadband-build/sources/poky/meta/recipes-d=
evtools/gnu-config/gnu-config_git.bb:do_fetch) failed with exit code &#39;1=
&#39;<br>ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+058639be22=
-r0 do_fetch: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid and cannot=
 be interpreted<br>ERROR: mc:qemuarm:gnu-config-native-20181128+gitAUTOINC+=
058639be22-r0 do_fetch: <br>ERROR: mc:qemuarm:gnu-config-native-20181128+gi=
tAUTOINC+058639be22-r0 do_fetch: Function failed: base_do_fetch<br>ERROR: L=
ogfile of failure stored in: /localdata/deborah_flatten_userpkg/broadband-b=
uild/build/qemuarmtmp/work/x86_64-linux/gnu-config-native/20181128+gitAUTOI=
NC+058639be22-r0/temp/log.do_fetch.151493<br>ERROR: Task (multiconfig:qemua=
rm:virtual:native:/localdata/deborah_flatten_userpkg/broadband-build/source=
s/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch) failed =
with exit code &#39;1&#39;<br>ERROR: mc:arm64:autoconf-native-2.69-r11 do_f=
etch: The URL: &#39;${SOURCE_MIRROR_URL}&#39; is invalid and cannot be inte=
rpreted<br>ERROR: mc:arm64:autoconf-native-2.69-r11 do_fetch: <br>ERROR: mc=
:arm64:autoconf-native-2.69-r11 do_fetch: Function failed: base_do_fetch<br=
>ERROR: Logfile of failure stored in: /localdata/deborah_flatten_userpkg/br=
oadband-build/build/tmp/work/x86_64-linux/autoconf-native/2.69-r11/temp/log=
.do_fetch.151497<br>ERROR: Task (multiconfig:arm64:virtual:native:/localdat=
a/deborah_flatten_userpkg/broadband-build/sources/poky/meta/recipes-devtool=
s/autoconf/autoconf_2.69.bb:do_fetch) failed with exit code &#39;1&#39;<br>=
ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch: The URL: &#39;${SOURCE_MIRRO=
R_URL}&#39; is invalid and cannot be interpreted<br>ERROR: mc:arm32:quilt-n=
ative-0.65-r0 do_fetch: <br>ERROR: mc:arm32:quilt-native-0.65-r0 do_fetch: =
Function failed: base_do_fetch<br>ERROR: Logfile of failure stored in: /loc=
aldata/deborah_flatten_userpkg/broadband-build/build/tmp/work/x86_64-linux/=
quilt-native/0.65-r0/temp/log.do_fetch.151509<br>ERROR: Task (multiconfig:a=
rm32:/localdata/deborah_flatten_userpkg/broadband-build/sources/poky/meta/r=
ecipes-devtools/quilt/quilt-native_0.65.bb:do_fetch) failed with exit code =
&#39;1&#39;<br>NOTE: Tasks Summary: Attempted 12 tasks of which 2 didn&#39;=
t need to be rerun and 8 failed.<br><br></div><div><br>NOTE: Fetching unina=
tive binary shim from <a href=3D"http://downloads.yoctoproject.org/releases=
/uninative/2.4/x86_64-nativesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfe=
df3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0">http://downloads.yoctoproje=
ct.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2;sha256sum=3D06f=
91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0</a><br>WARNIN=
G: Disabling uninative as unable to fetch uninative tarball: The URL: &#39;=
${SOURCE_MIRROR_URL}&#39; is invalid and cannot be interpreted<br>WARNING: =
To build your own uninative loader, please bitbake uninative-tarball and se=
t UNINATIVE_TARBALL appropriately.<br></div><div><br></div><div><br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Fri, Dec 13, 2019 at 1:40 PM FLoraVLogs &lt;<a href=3D"mailto:eripflo@gma=
il.com">eripflo@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I tried to=
 follow the changes and I still get the following error:</div><div><b><font=
 color=3D"#ff0000">NOTE: Fetching uninative binary shim from=C2=A0<a href=
=3D"http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-natives=
dk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c=
9d1642dccf95accd0" target=3D"_blank">http://downloads.yoctoproject.org/rele=
ases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2=
ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0</a></font></b><br><b><fo=
nt color=3D"#ff0000">WARNING: Failed to fetch URL=C2=A0<a href=3D"http://do=
wnloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.b=
z2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95a=
ccd0" target=3D"_blank">http://downloads.yoctoproject.org/releases/uninativ=
e/2.4/x86_64-nativesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3b=
a0fe4a5ba2f0766dad5c9d1642dccf95accd0</a>, attempting MIRRORS if available<=
/font></b><br>ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=
=3D1; export DBUS_SESSION_BUS_ADDRESS=3D&quot;unix:abstract=3D/tmp/dbus-cbP=
mLiVEFn,guid=3D6b9c2f1d40cf3c9a1ff878cc5dee8547&quot;; export SSH_AGENT_PID=
=3D&quot;16924&quot;; export SSH_AUTH_SOCK=3D&quot;/run/user/18771/keyring/=
ssh&quot;; export PATH=3D&quot;/localdata/deborah_flatten_userpkg/broadband=
-build/sources/poky/scripts:/localdata/deborah_flatten_userpkg/broadband-bu=
ild/build/tmp/work/armv7at2hf-vfp-picoos-linux-musleabi/defaultpkgname/1.0-=
r0/recipe-sysroot-native/usr/bin/arm-picoos-linux-musleabi:/localdata/debor=
ah_flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-lin=
ux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/loca=
ldata/deborah_flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp=
-picoos-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/sbin=
:/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/armv7at2=
hf-vfp-picoos-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/us=
r/bin:/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/arm=
v7at2hf-vfp-picoos-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-nati=
ve/sbin:/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/a=
rmv7at2hf-vfp-picoos-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-na=
tive/bin:/localdata/deborah_flatten_userpkg/broadband-build/sources/poky/bi=
tbake/bin:/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/host=
tools&quot;; export HOME=3D&quot;/home/rflora&quot;; /usr/bin/env wget -t 2=
 -T 30 --passive-ftp --no-check-certificate -P /localdata/deborah_flatten_u=
serpkg/broadband-build/downloads/uninative/06f91685b782f2ccfedf3070b3ba0fe4=
a5ba2f0766dad5c9d1642dccf95accd0 &#39;<a href=3D"http://downloads.yoctoproj=
ect.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2" target=3D"_bl=
ank">http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-native=
sdk-libc.tar.bz2</a>&#39; --progress=3Ddot -v failed with exit code 4, outp=
ut:<br>--2019-12-13 13:33:47-- =C2=A0<a href=3D"http://downloads.yoctoproje=
ct.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2" target=3D"_bla=
nk">http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-natives=
dk-libc.tar.bz2</a><span style=3D"color:rgb(80,0,80)"><br>Resolving=C2=A0<a=
 href=3D"http://downloads.yoctoproject.org/" target=3D"_blank">downloads.yo=
ctoproject.org</a>=C2=A0(<a href=3D"http://downloads.yoctoproject.org/" tar=
get=3D"_blank">downloads.yoctoproject.org</a>)... 198.145.29.63<br>Connecti=
ng to=C2=A0<a href=3D"http://downloads.yoctoproject.org/" target=3D"_blank"=
>downloads.yoctoproject.org</a>=C2=A0(<a href=3D"http://downloads.yoctoproj=
ect.org/" target=3D"_blank">downloads.yoctoproject.org</a>)|198.145.29.63|:=
80... failed: Connection timed out.<br>Retrying.<br><br></span>--2019-12-13=
 13:34:18-- =C2=A0(try: 2) =C2=A0<a href=3D"http://downloads.yoctoproject.o=
rg/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2" target=3D"_blank">=
http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-l=
ibc.tar.bz2</a><span style=3D"color:rgb(80,0,80)"><br>Connecting to=C2=A0<a=
 href=3D"http://downloads.yoctoproject.org/" target=3D"_blank">downloads.yo=
ctoproject.org</a>=C2=A0(<a href=3D"http://downloads.yoctoproject.org/" tar=
get=3D"_blank">downloads.yoctoproject.org</a>)|198.145.29.63|:80... failed:=
 Connection timed out.<br>Giving up.<br><br></span></div><div>Here are the =
changes in my local.conf file:</div><div>SSTATE_MIRRORS ?=3D &quot;file:///=
nfs/projects/blah/yocto_sstate/&quot;<span style=3D"color:rgb(80,0,80)"><br=
>INHERIT +=3D &quot;own-mirrors&quot;<br>BB_GENERATE_MIRROR_TARBALLS =3D &q=
uot;1&quot;<br></span></div><div><br></div><div>Where=C2=A0/nfs/projects/bl=
ah/yocto_sstate/<br>contains all the files</div><div>eoc_wl5e.tar.gz =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0eoc_wl5e.tar.gz.done =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uninative/<br>eoc_wl5e.tar.gz_bad-checksum_=
6dfc6c3d2cac970e9fc123514d809087 =C2=A0git2/=C2=A0=C2=A0<br></div><div><br>=
</div><div>Did I do something wrong?<br><br>Sorry for lot of questions, I a=
m new to Yocto.</div><div><br></div><div>Regards,</div><div><br></div><div>=
Ripu</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Fri, Dec 13, 2019 at 1:26 PM Kevyn-Alexandre Pare &lt;<a href=
=3D"mailto:Kevyn-Alexandre.Pare@opal-rt.com" target=3D"_blank">Kevyn-Alexan=
dre.Pare@opal-rt.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">I&#39;m setting<br>
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

--0000000000004591f405999a4e43--
