Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15333C00140
	for <webhook@archiver.kernel.org>; Tue,  2 Aug 2022 15:36:43 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web09.7675.1659454598651320779
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Aug 2022 08:36:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=JZ1bBXy8;
 spf=pass (domain: gmail.com, ip: 209.85.167.54,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id a9so9694676lfm.12
        for <yocto@lists.yoctoproject.org>;
 Tue, 02 Aug 2022 08:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=bWHZNWXpgDRPYszVMufRYoyjn/59BjMVjV+0JWmHA5M=;
        b=JZ1bBXy8i+plRjb2jV/j5hOJyIhvkvATioh3l9r9eeV/toEOsdBS44mrRzc/WMCpwG
         cT2bDaiFws7PHpr+c75zXBDLh0reSCigZ+o6+vlJLg1V5M3qpi+NsNu+9KU1RHvkrhQi
         mDlByu5oBlM5MQ8yu35jr1P+nOlyTEx50JKpgExDORTEpoFnq8Wk6ZSDWuIQI0W3yAv1
         upQUnnrqhxPxVgKBgiYbmsWuWxPnJjN3nqQAKiqz1gA2XA2+OebWcIZ9C4rf2gQc2RB2
         yt4KIFe7lgYKNV6F04w5/7AgT7hzjkPUBaj055tEXkLw5glhD0l2RFIQtkcMdkxutVXy
         XWFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=bWHZNWXpgDRPYszVMufRYoyjn/59BjMVjV+0JWmHA5M=;
        b=lpGSJ0KIiqXUDDG75GnCU0jfDkMbPNGvo4Tmr6rr6ncpj0H9+5x6GjtOTwqzUXpdO3
         ptDXqJSKje5p3Pj0jqgY8JgPPcbU0bAMLMEZ5XSOS1asMngfWgOOVR7Je3US7tyA5gJN
         jbfbSbbbdO41OjGJU63x7jtnzIIDsjCujrGhhY3mSTxK0a8lNlwTELw1/MbcRWVdYwkI
         czkATFviF90CWRom9LFGpCVvYfkenp7uzXXORG/Z+v8kPsRRJrT4Pbq4JvWVkuLp7Dlw
         K6GOdy5txIDoh9WNeO5wea5dTtSRtRkPlUG5RAPaabm4aRKpVDTuVgVXgKu6xYnuqZCE
         qaNg==
X-Gm-Message-State: ACgBeo3xstCxAakIbGJHmdZzUStUY1QiTMXYhg3HihbF1utn3O4rHoR4
	n0NXAl5NMCKYpNsWDmAlQXKGJ5A1Nh88kRW1qhw=
X-Google-Smtp-Source: 
 AGRyM1sqAZWCNXhF0LYc69h9KvP2pGihi0SZ2GPWNlOxi/rC7HV01I0HijnSmHubRzF6JXwtemcdv75temZSXYfHR/E=
X-Received: by 2002:a05:6512:1050:b0:48a:2319:59bc with SMTP id
 c16-20020a056512105000b0048a231959bcmr7289830lfb.665.1659454596682; Tue, 02
 Aug 2022 08:36:36 -0700 (PDT)
MIME-Version: 1.0
References: 
 <SA1PR05MB80485D6B6817919EDE566537CC9D9@SA1PR05MB8048.namprd05.prod.outlook.com>
 <CANNYZj_SBbKBEkkRh-KTUGRvq4d2joepEs6P2g11efzRfeBFoA@mail.gmail.com>
 <SA1PR05MB80484F6E4D71F5F6814478E9CC9D9@SA1PR05MB8048.namprd05.prod.outlook.com>
In-Reply-To: 
 <SA1PR05MB80484F6E4D71F5F6814478E9CC9D9@SA1PR05MB8048.namprd05.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 2 Aug 2022 17:36:24 +0200
Message-ID: 
 <CANNYZj9fc4E9g2BmQjcsdWr4e=V2nbTjaaQD84EnU--ex=iHRA@mail.gmail.com>
Subject: Re: [yocto] Conf for a single recipe only
To: =?UTF-8?Q?Sebastian_R=C3=BChl?= <sebastian@mapped.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Aug 2022 15:36:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57739

If you took go recipes from master, then try building mender from
master as well, by setting up a master build. If that works fine, then
you need to figure out how to backport mender as a whole, or just the
needed fix. Or make your application compatible with an older go. It's
not easy.

Alex

On Tue, 2 Aug 2022 at 16:33, Sebastian R=C3=BChl <sebastian@mapped.com> wro=
te:
>
> Thanks, that seems like a good hint.
>
> Regarding the fixing: As I said it seems as this is a bug in golang itsel=
f. Correct me if I'm wrong but here is the output from building mender-arti=
fact-native/3.8.0:
>
> NOTE: recipe mender-artifact-native-3.8.0-r0: task do_compile: Started
> ERROR: mender-artifact-native-3.8.0-r0 do_compile: oe_runmake failed
> ERROR: mender-artifact-native-3.8.0-r0 do_compile: Execution of '/builddi=
r/randomfirmware/build/tmp/work/x86_64-linux/mender-artifact-native/3.8.0-r=
0/temp/run.do_compile.1285' failed with exit code 1
> ERROR: Logfile of failure stored in: /builddir/randomfirmware/build/tmp/w=
ork/x86_64-linux/mender-artifact-native/3.8.0-r0/temp/log.do_compile.1285
> ERROR: Task (virtual:native:/builddir/randomfirmware/sources/meta-mender/=
meta-mender-core/recipes-mender/mender-artifact/mender-artifact_3.8.0.bb:do=
_compile) failed with exit code '1'
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | GO111MODULE=3D""
> | GOARCH=3D"amd64"
> | GOBIN=3D""
> | GOCACHE=3D"/builddir/randomfirmware/build/tmp/work/x86_64-linux/mender-=
artifact-native/3.8.0-r0/build/.cache"
> | GOENV=3D"/github/home/.config/go/env"
> | GOEXE=3D""
> | GOEXPERIMENT=3D""
> | GOFLAGS=3D""
> | GOHOSTARCH=3D"amd64"
> | GOHOSTOS=3D"linux"
> | GOINSECURE=3D""
> | GOMODCACHE=3D"/builddir/randomfirmware/build/tmp/work/x86_64-linux/mend=
er-artifact-native/3.8.0-r0/build/pkg/mod"
> | GONOPROXY=3D""
> | GONOSUMDB=3D""
> | GOOS=3D"linux"
> | GOPATH=3D"/builddir/randomfirmware/build/tmp/work/x86_64-linux/mender-a=
rtifact-native/3.8.0-r0/build:/builddir/randomfirmware/build/tmp/work/x86_6=
4-linux/mender-artifact-native/3.8.0-r0/recipe-sysroot-native/usr/lib/x86_6=
4-linux/go"
> | GOPRIVATE=3D""
> | GOPROXY=3D"https://proxy.golang.org,direct"
> | GOROOT=3D"/builddir/randomfirmware/build/tmp/work/x86_64-linux/mender-a=
rtifact-native/3.8.0-r0/recipe-sysroot-native/usr/lib/go"
> | GOSUMDB=3D"sum.golang.org"
> | GOTMPDIR=3D"/builddir/randomfirmware/build/tmp/work/x86_64-linux/mender=
-artifact-native/3.8.0-r0/go-tmp"
> | GOTOOLDIR=3D"/builddir/randomfirmware/build/tmp/work/x86_64-linux/mende=
r-artifact-native/3.8.0-r0/recipe-sysroot-native/usr/lib/go/pkg/tool/linux_=
amd64"
> | GOVCS=3D""
> | GOVERSION=3D"go1.18.4"
> | GCCGO=3D"gccgo"
> | GOAMD64=3D"v1"
> | AR=3D"ar"
> | CC=3D"gcc "
> | CXX=3D"g++ "
> | CGO_ENABLED=3D"1"
> | GOMOD=3D"/dev/null"
> | GOWORK=3D""
> | CGO_CFLAGS=3D"-isystem/builddir/randomfirmware/build/tmp/work/x86_64-li=
nux/mender-artifact-native/3.8.0-r0/recipe-sysroot-native/usr/include -O2 -=
pipe"
> | CGO_CPPFLAGS=3D"-isystem/builddir/randomfirmware/build/tmp/work/x86_64-=
linux/mender-artifact-native/3.8.0-r0/recipe-sysroot-native/usr/include"
> | CGO_CXXFLAGS=3D"-isystem/builddir/randomfirmware/build/tmp/work/x86_64-=
linux/mender-artifact-native/3.8.0-r0/recipe-sysroot-native/usr/include -O2=
 -pipe"
> | CGO_FFLAGS=3D"-g -O2"
> | CGO_LDFLAGS=3D"-L/builddir/randomfirmware/build/tmp/work/x86_64-linux/m=
ender-artifact-native/3.8.0-r0/recipe-sysroot-native/usr/lib -L/builddir/ra=
ndomfirmware/build/tmp/work/x86_64-linux/mender-artifact-native/3.8.0-r0/re=
cipe-sysroot-native/lib -Wl,--enable-new-dtags -Wl,-rpath-link,/builddir/ra=
ndomfirmware/build/tmp/work/x86_64-linux/mender-artifact-native/3.8.0-r0/re=
cipe-sysroot-native/usr/lib -Wl,-rpath-link,/builddir/randomfirmware/build/=
tmp/work/x86_64-linux/mender-artifact-native/3.8.0-r0/recipe-sysroot-native=
/lib -Wl,-rpath,/builddir/randomfirmware/build/tmp/work/x86_64-linux/mender=
-artifact-native/3.8.0-r0/recipe-sysroot-native/usr/lib -Wl,-rpath,/builddi=
r/randomfirmware/build/tmp/work/x86_64-linux/mender-artifact-native/3.8.0-r=
0/recipe-sysroot-native/lib -Wl,-O1 -Wl,--allow-shlib-undefined -Wl,--dynam=
ic-linker=3D/builddir/randomfirmware/build/tmp/sysroots-uninative/x86_64-li=
nux/lib/ld-linux-x86-64.so.2"
> | PKG_CONFIG=3D"pkg-config"
> | GOGCCFLAGS=3D"-fPIC -m64 -pthread -fmessage-length=3D0 -fdebug-prefix-m=
ap=3D/builddir/randomfirmware/build/tmp/work/x86_64-linux/mender-artifact-n=
ative/3.8.0-r0/go-tmp/go-build2701839308=3D/tmp/go-build -gno-record-gcc-sw=
itches"
> | NOTE: make -j 10 GOPATH=3D/builddir/randomfirmware/build/tmp/work/x86_6=
4-linux/mender-artifact-native/3.8.0-r0/build:/builddir/randomfirmware/buil=
d/tmp/work/x86_64-linux/mender-artifact-native/3.8.0-r0/recipe-sysroot-nati=
ve/usr/lib/x86_64-linux/go -C /builddir/randomfirmware/build/tmp/work/x86_6=
4-linux/mender-artifact-native/3.8.0-r0/build/src/github.com/mendersoftware=
/mender-artifact V=3D1 install
> | make: Entering directory '/builddir/randomfirmware/build/tmp/work/x86_6=
4-linux/mender-artifact-native/3.8.0-r0/git/src/github.com/mendersoftware/m=
ender-artifact'
> | google.golang.org/protobuf/internal/pragma
> | google.golang.org/grpc/internal/buffer
> | google.golang.org/grpc/encoding
> | google.golang.org/grpc/internal/grpcsync
> | github.com/ryanuber/go-glob
> | github.com/hashicorp/hcl/hcl/strconv
> | golang.org/x/text/transform
> | github.com/klauspost/compress/flate
> | github.com/klauspost/cpuid/v2
> | github.com/pkg/errors
> | panic: runtime error: index out of range [0] with length 0
> |
> | goroutine 2978 [running]:
> | cmd/go/internal/work.(*Builder).buildActionID(0xc000aeb900, 0xc000a1754=
0)
> |       /usr/lib/go/src/cmd/go/internal/work/exec.go:281 +0x23cf
> | cmd/go/internal/work.(*Builder).build(0xc000aeb900, {0xc000034200?, 0x0=
?}, 0xc000a17540)
> |       /usr/lib/go/src/cmd/go/internal/work/exec.go:476 +0x199
> | cmd/go/internal/work.(*Builder).Do.func2({0xadefb8, 0xc000034200}, 0xc0=
00a17540)
> |       /usr/lib/go/src/cmd/go/internal/work/exec.go:139 +0x5ec
> | cmd/go/internal/work.(*Builder).Do.func3()
> |       /usr/lib/go/src/cmd/go/internal/work/exec.go:201 +0xb9
> | created by cmd/go/internal/work.(*Builder).Do
> |       /usr/lib/go/src/cmd/go/internal/work/exec.go:187 +0x3da
> | Makefile:72: recipe for target 'install' failed
> | make: *** [install] Error 2
> | make: Leaving directory '/builddir/randomfirmware/build/tmp/work/x86_64=
-linux/mender-artifact-native/3.8.0-r0/git/src/github.com/mendersoftware/me=
nder-artifact'
> | ERROR: oe_runmake failed
> | WARNING: /builddir/randomfirmware/build/tmp/work/x86_64-linux/mender-ar=
tifact-native/3.8.0-r0/temp/run.do_compile.1285:1 exit 1 from 'exit 1'
> | ERROR: Execution of '/builddir/randomfirmware/build/tmp/work/x86_64-lin=
ux/mender-artifact-native/3.8.0-r0/temp/run.do_compile.1285' failed with ex=
it code 1
> NOTE: recipe mender-artifact-native-3.8.0-r0: task do_compile: Failed
>
> If you look closely it fails during compile with a index out of range in =
the middle of exec.go
>
> Sebastian
>
> -----Urspr=C3=BCngliche Nachricht-----
> Von: Alexander Kanavin <alex.kanavin@gmail.com>
> Gesendet: Dienstag, 2. August 2022 16:02
> An: Sebastian R=C3=BChl <sebastian@mapped.com>
> Cc: yocto@lists.yoctoproject.org
> Betreff: Re: [yocto] Conf for a single recipe only
>
> There's no way to build two versions of the same component, if the versio=
ns share the recipe name. You have to fix the application, or try to rename=
 one set of the go recipes so it is separate from the other set, to somethi=
ng like 'go-old'.
>
> Alex
>
> On Tue, 2 Aug 2022 at 15:15, Sebastian R=C3=BChl via lists.yoctoproject.o=
rg <sebastian=3Dmapped.com@lists.yoctoproject.org> wrote:
> >
> > Is there a way to set the GOVERSION for a single recipe only?
> >
> >
> >
> > At the moment I set the Golang version to 1.18 using the recipes from m=
aster (on a local dunfell branch) and set the go version in the layer conf:
> > GOVERSION =3D "1.18%"
> >
> > PREFERRED_VERSION_go-binary-native =3D "1.18%"
> >
> > PREFERRED_VERSION_go-cross-canadian =3D "1.18%"
> >
> > PREFERRED_VERSION_go-cross =3D "1.18%"
> >
> > PREFERRED_VERSION_go-crosssdk =3D "1.18%"
> >
> > PREFERRED_VERSION_go-native =3D "1.18%"
> >
> > PREFERRED_VERSION_go-runtime =3D "1.18%"
> >
> > PREFERRED_VERSION_go =3D "1.18%"
> >
> > however this messes with mender as it seems there is a bug in the
> > golang compiler=E2=80=A6
> >
> > So I want to use those settings only for my application recipe.
> >
> > Any ideas how to achieve that?
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#57727):
> > https://lists.yoctoproject.org/g/yocto/message/57727
> > Mute This Topic: https://lists.yoctoproject.org/mt/92769708/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> > [alex.kanavin@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

