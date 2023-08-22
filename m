Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CC0DEE4993
	for <webhook@archiver.kernel.org>; Tue, 22 Aug 2023 08:36:37 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.3916.1692693387840395833
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Aug 2023 01:36:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eiKulzJN;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-31ad9155414so3737076f8f.3
        for <yocto@lists.yoctoproject.org>; Tue, 22 Aug 2023 01:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1692693386; x=1693298186;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Cln/LmJb2pRJNHXPzKKdSW2I6b0Gzwp072IJyLSYV9w=;
        b=eiKulzJNNndr2bjPEk0XG7R+epvZHrH8FWY49m3Z/08d4it+5WG5WzwVrWPH7wrd1k
         htWGvhmPOaB1Kj5N5yibQX1WzgJ3aZ0gp2Awc27rsufOT73Ckvsr+3CPPYEemOi2kd+o
         66o1HZP7jFkkU4ZL0TmykI038RdcTabkdEWi8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692693386; x=1693298186;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cln/LmJb2pRJNHXPzKKdSW2I6b0Gzwp072IJyLSYV9w=;
        b=d8p/2xiE+ppxQhT47nK9FcdUDn00hfxVQN+wCudxyYdpBy7Ctc5I+43igyBiK2kPCP
         C7zJwVPQzVXbkd1BN/A/+fjHrtsIL0LJzdnBdzm2Zo5BY4wi+LejmV970sI/b0iqM7sw
         v7VBuTaV5zJkrSuDPTMW7MuON/TPwGgzlN1k+wPBVGeLObt9/0j0PJnRy8/xf0bSogA2
         QFcAXslk6oXWWZ4N0GiXOk6YLhe5CCzboI4gf2tJkj6srZzFiil/f+utyZbcgVMe5tlK
         AbKr7DMGEHRirubywWy2wacuOiWQGMv+eFdWdgENjPjp3XlQRHA7AU4jrR7eaclaA7w5
         3NfA==
X-Gm-Message-State: AOJu0YyB1BS/SdBfM9ZcmZTuqJJ4GFhlhInnzxUTxKdz4/KYdmczROuC
	M2LjUhXlBDQgWLlcp9MsEINLMQ==
X-Google-Smtp-Source: AGHT+IF+3ttLwHdWkEoMKrwlaMpsPifyQLD+lExP9SHYsP4tzBDsv7WX1mOO0rxA2i082eif9ER/oA==
X-Received: by 2002:a05:6000:1b09:b0:31a:d3fd:221b with SMTP id f9-20020a0560001b0900b0031ad3fd221bmr6039034wrz.20.1692693386006;
        Tue, 22 Aug 2023 01:36:26 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:eb4c:c27c:35e6:14a1? ([2001:8b0:aba:5f3c:eb4c:c27c:35e6:14a1])
        by smtp.gmail.com with ESMTPSA id g16-20020adff3d0000000b00318147fd2d3sm15017182wrp.41.2023.08.22.01.36.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Aug 2023 01:36:25 -0700 (PDT)
Message-ID: <549fb6c0193ceb968f32a66c37d81d9831ab76dd.camel@linuxfoundation.org>
Subject: Re: [yocto] SDK build generally broken?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: David Daniel <david.daniel@vrag.ch>
Cc: yocto@lists.yoctoproject.org
Date: Tue, 22 Aug 2023 09:36:24 +0100
In-Reply-To: <c2bd34af44f35a7bf0455c9e4bf89c2d2ddebd35.camel@vrag.ch>
References: <7d6af5897b3a409c3252dcce0286ff449952cff1.camel@vrag.ch>
	 <3251b838adc306a0cfab650c48ac0d26a0a2fde9.camel@linuxfoundation.org>
	 <c2bd34af44f35a7bf0455c9e4bf89c2d2ddebd35.camel@vrag.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Aug 2023 08:36:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60848

On Tue, 2023-08-22 at 06:58 +0000, David Daniel wrote:
> Thanks for your reply! I cannot think of how I could mix the two but I
> checked out 4.2.2, added my machine, sourced oe-init-build-env and
> started the build. So the bitbake I use comes from the poky repository
> and the checkout I use.
>=20
> Is there a good guideline what a machine must define and do in order to
> be fully compliant and compatible? I have gone through the BSP
> Developer Guide and provided all listed necessary items. Still it seems
> that I am missing something or that I am doing wrong. Since I can
> successfully build the image though, even when I include my own distro
> layer and use it all that SDK build problems seem awkward to me.
>=20
> Or is there any particular thing an SDK build needs from a BSP layer
> that is not listed explicitely in the BSP Developer Guide?
>=20
> Thanks for any help!
> Greets
>=20
> Am Montag, dem 21.08.2023 um 23:53 +0100 schrieb Richard Purdie:
> > On Mon, 2023-08-21 at 12:49 +0000, David Daniel wrote:
> > > Hello everybody
> > >=20
> > > Has anyone successfully built an SDK lately? I cannot build any
> > > SDK,
> > > neither for my image nor for core-image-minimal.
> > >=20
> > > If I define my own image I get the error (I already wrote - nobody
> > > any
> > > idea?) that the dummy-sdk package is to be built for a different
> > > architecture:
> > >=20
> > >=20
> > > x86_64_nativesdk=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 3.1.2-r0=C2=A0=C2=A0=C2=A0 oe-repo=C2=A0 330 k
> > > =C2=A0nativesdk-openssl-conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64_nativesdk=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
> > > 3.1.2-r0=C2=A0=C2=A0=C2=A0 oe-repo=C2=A0=C2=A0 12 k
> > > =C2=A0target-sdk-provides-dummy=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sdk_provides_dummy_target=C2=A0
> > > 1.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 oe-repo=C2=A0 9.0 k
> > >=20
> > > THIS ERROR ONLY APPEARS IF I DEFINE MY OWN IMAGE (though the image
> > > can be built and works).
> > >=20
> > > I guess this is due to the following code in the sdk-dummy recipe:
> > >=20
> > > python() {
> > > =C2=A0=C2=A0=C2=A0 # Put the package somewhere separate to ensure it'=
s never used
> > > except
> > > =C2=A0=C2=A0=C2=A0 # when we want it
> > > =C2=A0=C2=A0=C2=A0 # (note that we have to do this in anonymous pytho=
n here to
> > > avoid
> > > =C2=A0=C2=A0=C2=A0 # allarch.bbclass disabling itself)
> > > =C2=A0=C2=A0=C2=A0 d.setVar('PACKAGE_ARCH', '${DUMMYARCH}')
> > > }
> > >=20
> > > But furthermore, I am completely unable to build the SDK with my
> > > machine - I took the machine from the working image sources I am
> > > working with and took a plain master poky checkout (bleeding
> > > master).
> > > When I want to build the SDK for the core-image-minimal I get the
> > > following error:
> > >=20
> > > ERROR: m4-native-1.4.19-r0 do_collect_spdx_deps: Error executing a
> > > python function in exec_func_python() autogenerated:
> > >=20
> > > The stack trace of python calls that resulted in this
> > > exception/failure was:
> > > File: 'exec_func_python() autogenerated', lineno: 2, function:
> > > <module>
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0001:
> > > =C2=A0*** 0002:do_collect_spdx_deps(d)
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0003:
> > > File: '/home/david/yocto/bf133/poky/meta/classes/create-spdx-
> > > 2.2.bbclass', lineno: 494, function: do_collect_spdx_deps
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0490:=C2=A0=C2=A0=C2=A0 from pathlib import =
Path
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0491:
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0492:=C2=A0=C2=A0=C2=A0 spdx_deps_file =3D P=
ath(d.getVar("SPDXDEPS"))
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0493:
> > > =C2=A0*** 0494:=C2=A0=C2=A0=C2=A0 deps =3D collect_direct_deps(d, "do=
_create_spdx")
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0495:
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0496:=C2=A0=C2=A0=C2=A0 with spdx_deps_file.=
open("w") as f:
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0497:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 json.dump(deps, f)
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0498:}
> > > File: '/home/david/yocto/bf133/poky/meta/classes/create-spdx-
> > > 2.2.bbclass', lineno: 475, function: collect_direct_deps
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0471:=C2=A0=C2=A0=C2=A0 deps =3D set()
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0472:=C2=A0=C2=A0=C2=A0 for dep_name in this=
_dep[3]:
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0473:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 dep_data =3D taskdepdata[dep_name]
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0474:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 if dep_data[1] =3D=3D dep_task and dep_data[0] !=3D pn:
> > > =C2=A0*** 0475:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 deps.add((dep_data[0], dep_data[7]))
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0476:
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0477:=C2=A0=C2=A0=C2=A0 return sorted(deps)
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0478:
> > > =C2=A0=C2=A0=C2=A0=C2=A0 0479:collect_direct_deps[vardepsexclude] +=
=3D "BB_TASKDEPDATA"
> > > Exception: IndexError: list index out of range
> > >=20
> > > ERROR: Logfile of failure stored in:
> > > /mnt/data/yocto/bf133/sdk/build/tmp/work/x86_64-linux/m4-
> > > native/1.4.19/temp/log.do_collect_spdx_deps.731506
> > > ERROR: Task (/home/david/yocto/bf133/poky/meta/recipes-
> > > devtools/m4/m4-native_1.4.19.bb:do_collect_spdx_deps) failed with
> > > exit code '1'
> > >=20
> > > Is the generation of an SDK outdated, not recommended, not
> > > maintained
> > > anymore? Or do you have any recommendations to troubleshoot these
> > > issues?
> >=20
> > SDK builds are tested on the autobuilder so it does work, at least
> > there.
> >=20
> > Are you using the right version of bitbake with that metadata? That
> > index issue looks a bit to me like it is the wrong version of
> > bitbake.

Firstly, please keep replies on the mailing list.

It looks like you have SPDX enabled. That wasn't enabled by default
until after mickledore was released so we hadn't tested with that
element of the configuration on the autobuilder.

Are you using 4.2.2 or master? You said 4.2.2 above but also that you
tested with master. The code fragment above includes:

https://git.yoctoproject.org/poky/commit/meta/classes/create-spdx-2.2.bbcla=
ss?id=3D15acbd10906568a1ed9c548b465f1cb6b5205202

which means it is master or there is backported code so it isn't 4.2.2
either.

That code depends on a change from bitbake master:

https://git.yoctoproject.org/poky/commit/bitbake?id=3Dc6763d27efd11e2bc2a62=
147890ad1067c4af2ec

which if it was missing, would result in the error above.

Please be specific about what you're trying to run as I stand by what I
said, you're using master of oe-core with an older bitbake to get that
specific error. Or you've backported bits of master's spdx changes.

Cheers,

Richard


