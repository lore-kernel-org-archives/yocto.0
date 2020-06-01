Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com [209.85.222.195])
 by mx.groups.io with SMTP id smtpd.web12.31600.1590994996249488868
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Jun 2020 00:03:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DlJFIqtH;
 spf=pass (domain: gmail.com, ip: 209.85.222.195, mailfrom: jeanmarie.lemetayer@gmail.com)
Received: by mail-qk1-f195.google.com with SMTP id c14so7110862qka.11
        for <yocto@lists.yoctoproject.org>; Mon, 01 Jun 2020 00:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=zgsUK8jK1+Hc0kyMBjbSDiWi+KJpxR2KH2U+GzUN8cM=;
        b=DlJFIqtHDLLqag/9r7RUhNuKdn2gIaZilX07ovq6n2T43z16D77/jWQPCkiesDnAkd
         pOpiWlZNyN6LBMkgO7nBC/vcbn3nyTBcAyhh8Dfeadeh1KOz10xq+v0acA85n7K3GLpR
         Hy4gEPUvLk4lfigqFFO+poyPDaP1x0NkLZNE5hlmtC6UWmO5JEH0LgteCYvZooiFzV61
         ZYJFg/H3p2+qKblM32lxQ4PqN3L3oCQeBczxx5rfFRWO3hCiWYuIKVCrChtzy9RxzolV
         Yf7Grb3IFFh56tSsAYDttByCY7j8HWsMsQ3P9o+KZR+WK33eQHgPA88zH2kWpzXMbanx
         6XcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=zgsUK8jK1+Hc0kyMBjbSDiWi+KJpxR2KH2U+GzUN8cM=;
        b=czRkpVq/u+3TioXQiIjP7TZDSNUrOD6hkR132wyeBY59x5vBAkVoHAbV7hdKFC4l+V
         59BD5F+T2J0vzXC4aKDakGneaqB+1kg51Iyu5ctGRMjebaock7r+dx7ulPscW+XXFD+z
         Z5o4dt3e1SdhNqaaeV26++yeHkLe3lQG4+btPFXRWmnHF8EDte079ASiV8YiJudG52l3
         RkPxn330/qz9LrTpM/eKX0/FfydWYpXiuPl6BbLO8/r2Y7OLqMgah4t/J8k/J0j2VR2q
         Zq7ghnMHLQzQ4u9FenuKhATe2ky0BWSO4bWUsSXQM4CNxyoZ+sKawyAUSBMzVK214Hob
         slmQ==
X-Gm-Message-State: AOAM530yH5CtRzLljTLWCqal20x2IadyL4308vszfZbiIuGCG1YeHHCX
	cjlxaO2IifLaiCNJdxnDv/ZWvzrACllfGEsiUQM=
X-Google-Smtp-Source: ABdhPJwfPXiUV8Qv49yvEI8m2ygYMxCwUP7Kk7ij1UW2hUllXbFNeh4EwHLWY+EpEcXlymeUGo9p7qN3cdmvGsn1Cd4=
X-Received: by 2002:a05:620a:21c4:: with SMTP id h4mr18533211qka.478.1590994995286;
 Mon, 01 Jun 2020 00:03:15 -0700 (PDT)
MIME-Version: 1.0
References: <MWHPR19MB12328A734CB8167F571A5CE4F78C0@MWHPR19MB1232.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB12328A734CB8167F571A5CE4F78C0@MWHPR19MB1232.namprd19.prod.outlook.com>
From: "Jean-Marie Lemetayer" <jeanmarie.lemetayer@gmail.com>
Date: Mon, 1 Jun 2020 09:03:04 +0200
Message-ID: <CAAdc0hxC2AFztEV_1oHvPExB8CykYQ8DnFgdyMS0xW1cWMrxsQ@mail.gmail.com>
Subject: Re: [yocto] Yocto dunfell - strange error when building npm package without dependence
To: Edson Seabra <edson.seabra@zpesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Edson,

You're right. I have seen seen this too. I have already created a bug
to track this issue:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13901

For now, as a workaround,  you can just delete the npmsw:// line in
the generated recipe (and the shrinkwrap file).

Best Regards,
Jean-Marie


On Sat, May 30, 2020 at 4:07 PM Edson Seabra
<edson.seabra@zpesystems.com> wrote:
>
> Hi, all
>
> I used recipetool to create the recipe for NPM packages
>
> If the npm package has dependence(s) it works great.
>
> But if not, the error below happens.
>
> I just add a fake dependence in npm-shrinkwrap.json  then it works
>
> # cat google-protobuf/npm-shrinkwrap.json
> {
>   "name": "google-protobuf",
>   "version": "3.3.0",
>   "lockfileVersion": 1,
>   "requires": true,
>   "dependencies": {
>     "nan": {
>       "version": "2.14.1",
>       "resolved": "https://registry.npmjs.org/nan/-/nan-2.14.1.tgz",
>       "integrity": "sha512-isWHgVjnFjh2x2yuJ/tj3JbwoHu3UC2dX5G/88Cm24yB6=
YopVgxvBObDY7n5xW6ExmFhJpSEQqFPvq9zaXc8Jw=3D=3D"
>     }
>   }
> }
>
> Another way to make it work is to replace the npmsw with file in SRC_URI
>
> =3D=3D=3D=3D=3D=3D=3D=3D nan.bb =3D=3D=3D=3D=3D=3D=3D
> SRC_URI =3D " \
>     npm://registry.npmjs.org;package=3Dnan;version=3D${PV} \
>     file://npm-shrinkwrap.json;subdir=3Dnpm \
>     "
> S =3D "${WORKDIR}/npm"
>
> inherit npm
>
> =3D=3D=3D=3D=3D=3D=3D google-protobuf.bb =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>  SRC_URI =3D " \
>     npm://registry.npmjs.org/;package=3Dgoogle-protobuf;version=3D${PV} =
\
>     npmsw://${THISDIR}/${BPN}/npm-shrinkwrap.json \
>     "
>
> S =3D "${WORKDIR}/npm"
>
> inherit npm
>
> =3D=3D=3D=3D=3D=3D error =3D=3D=3D=3D=3D=3D
>
> ERROR: google-protobuf-3.3.0-r0 do_fetch: Failure expanding variable TUN=
E_FEATURES_tune-core2-64, expression was ${TUNE_FEATURES_tune-x86-64} core2=
 which triggered exception RecursionError: maximum recursion depth exceeded=
 while calling a Python object
> ERROR: Logfile of failure stored in: /home/edson/ng-trunk/nodegrid/tmp/w=
ork/core2-64-poky-linux/google-protobuf/3.3.0-r0/temp/log.do_fetch.33980
> Log data follows:
> | DEBUG: Executing python function extend_recipe_sysroot
> | NOTE: Direct dependencies are ['virtual:native:/home/edson/ng-trunk/me=
ta-extended/meta-oe/recipes-oe/node/nodejs_12.14.1.bb:do_populate_sysroot']
> | NOTE: Installed into sysroot: ['nodejs-native', 'pkgconfig-native', 'z=
lib-native', 'brotli-native', 'openssl-native', 'xz-native', 'quilt-native'=
, 'python3-native', 'icu-native', 'c-ares-native', 'libuv-native', 'gnu-con=
fig-native', 'libtool-native', 'automake-native', 'autoconf-native', 'ninja=
-native', 'cmake-native', 'gettext-minimal-native', 'readline-native', 'lib=
ffi-native', 'bzip2-native', 'sqlite3-native', 'libtirpc-native', 'util-lin=
ux-native', 'gdbm-native', 'libnsl2-native', 'unzip-native', 'texinfo-dummy=
-native', 'm4-native', 're2c-native', 'expat-native', 'ncurses-native', 'cu=
rl-native', 'libpcre2-native', 'libcap-ng-native']
> | NOTE: Skipping as already exists in sysroot: []
> | DEBUG: sed -e 's:^[^/]*/:/home/edson/ng-trunk/nodegrid/tmp/work/core2-=
64-poky-linux/google-protobuf/3.3.0-r0/recipe-sysroot-native/:g' /home/edso=
n/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/nodejs-native/fixmepath =
/home/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/pkgconfig-nati=
ve/fixmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/o=
penssl-native/fixmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots-componen=
ts/x86_64/quilt-native/fixmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots=
-components/x86_64/python3-native/fixmepath /home/edson/ng-trunk/nodegrid/t=
mp/sysroots-components/x86_64/icu-native/fixmepath /home/edson/ng-trunk/nod=
egrid/tmp/sysroots-components/x86_64/gnu-config-native/fixmepath /home/edso=
n/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/libtool-native/fixmepath=
 /home/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/automake-nati=
ve/fixmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/a=
utoconf-native/fixmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots-compone=
nts/x86_64/ncurses-native/fixmepath /home/edson/ng-trunk/nodegrid/tmp/sysro=
ots-components/x86_64/curl-native/fixmepath /home/edson/ng-trunk/nodegrid/t=
mp/sysroots-components/x86_64/libpcre2-native/fixmepath | xargs sed -i -e '=
s:FIXMESTAGINGDIRTARGET:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-pok=
y-linux/google-protobuf/3.3.0-r0/recipe-sysroot:g; s:FIXMESTAGINGDIRHOST:/h=
ome/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/google-protobuf/3.=
3.0-r0/recipe-sysroot-native:g' -e 's:FIXME_PSEUDO_SYSROOT:/home/edson/ng-t=
runk/nodegrid/tmp/sysroots-components/x86_64/pseudo-native:g' -e 's:FIXME_H=
OSTTOOLS_DIR:/home/edson/ng-trunk/nodegrid/tmp/hosttools:g' -e 's:FIXME_PKG=
DATA_DIR:/home/edson/ng-trunk/nodegrid/tmp/pkgdata/genericx86-64:g' -e 's:F=
IXME_PSEUDO_LOCALSTATEDIR:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-p=
oky-linux/google-protobuf/3.3.0-r0/pseudo/:g' -e 's:FIXME_LOGFIFO:/home/eds=
on/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/google-protobuf/3.3.0-r0/=
temp/fifo.33980:g'
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing python function do_fetch
> | DEBUG: Executing python function base_do_fetch
> | DEBUG: Python function base_do_fetch finished
> | DEBUG: Python function do_fetch finished
> | ERROR: Failure expanding variable TUNE_FEATURES_tune-core2-64, express=
ion was ${TUNE_FEATURES_tune-x86-64} core2 which triggered exception Recurs=
ionError: maximum recursion depth exceeded while calling a Python object
> ERROR: Task (/home/edson/ng-trunk/meta-extended/meta-oe/recipes-npm/goog=
le-protobuf/google-protobuf_3.3.0.bb:do_fetch) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3501 tasks of which 3500 didn't need to b=
e rerun and 1 failed.
>
> Summary: 1 task failed:
>   /home/edson/ng-trunk/meta-extended/meta-oe/recipes-npm/google-protobuf=
/google-protobuf_3.3.0.bb:do_fetch
> Summary: There were 2 WARNING messages shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code=
.
>
> Thanks in advance.
>
> Edson Seabra
>
> Principal Engineer
>
> M +1 510 579 0843
>
> E   edson.seabra@zpesystems.com
>
>
> 46757 Fremont Blvd., Fremont, CA 94538
> zpesystems.com | Request a Nodegrid Demo
>
>=20
