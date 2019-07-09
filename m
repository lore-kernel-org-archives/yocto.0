Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 173A0E00C7D; Tue,  9 Jul 2019 00:59:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72748E00798
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2019 00:59:52 -0700 (PDT)
Received: by mail-qk1-f179.google.com with SMTP id d79so11054811qke.11
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2019 00:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=IMpo/u+DSIswiEq/2vXzzq1A4baTeunV7JQXAUnWXnI=;
	b=chuFo3no/RIvKH2rv+7yLxK9ua3iIcDN9lWMlRpx6NfgTRA6a6zMO/loq2tZ/E8hVD
	e9aYSrc24GumSv58IO6ljzzk8ysKE6uq3YsVDBYTxOZvfYhfgXl7J4BP1aixTjRIcY+5
	CsMgreLH85kgfEdXNJ2FEdgMkOlyYW88c5ew7DRJjOek9Y2FR39fe5IbZ+5UPPb/g6F/
	gDm4jap+XGlceYsu3kyLsbDqZEnX7uJ1wIicEhnqqlCK78xHZIGnhXWJWborsgcoDZcf
	gtzxdy507NWmagBk5FUueowyvm3Ccf596dP8t4rglycb87YgPC975NyyAKv5RZbYze8V
	fikw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=IMpo/u+DSIswiEq/2vXzzq1A4baTeunV7JQXAUnWXnI=;
	b=onx6ufHPdt8rxUEqFWdTWR6tSsvRBrcbNnBFUH3S5GPeZSQUL5FmTCITaszRwj2ekR
	qCZZz5aYoEHNliqJWjlRbkmVMxacct1YdWT69mY2NafMObX6TEjFVgNovFA77o/lR3De
	yGSVQ4V1OTkctYvQqYYubC9giVAS8oxp6fNmdcmm/3Pr5v3GU7j/V3xgRQvV6W64e2QP
	D77WBH4qd4+8OW5XOJeF63HHWgeeTKzcPaWEeO0YBUWsd9gwgvOON5VxDEoI3SFQEeqa
	m/ToOTZSkdasjYhCRvJBCA56nMi1Hiwmfr6afht47eHZoXTPfMqzMuzIgw2vHERur9Xv
	4+xw==
X-Gm-Message-State: APjAAAX6on4U8adMNnEp+FNP62miT0E1Zq7WVF7vkqNEp+gKXy4iEKJO
	tQX1fdT1fBBToX0RVQcL3CI8njdv40RREaVcngfv4i7zqL4=
X-Google-Smtp-Source: APXvYqw8z2pNF53P4f9+m9WIcTNglliuwEEW8HwI4LU7DTwED0UoxUuvjL4ifvf2xg4/XAOIPek4OKsd08+1LFIIHQw=
X-Received: by 2002:a37:a70c:: with SMTP id q12mr14368196qke.118.1562659191689;
	Tue, 09 Jul 2019 00:59:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8ZcYRYaFcyFopckNiTMR8ZTJW5vcM1cO+DZM7-0aR3+rA@mail.gmail.com>
In-Reply-To: <CAG+Ob8ZcYRYaFcyFopckNiTMR8ZTJW5vcM1cO+DZM7-0aR3+rA@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 9 Jul 2019 09:59:40 +0200
Message-ID: <CAGAf8LzyVbxJ--aDihMZyokOo+Sn18s=4vQvX91Y5jBpvbc_Bg@mail.gmail.com>
To: Onur Eser <onureser12@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Meta-Qt5] "Unknown Module: declarative" Error While Creating Toolchain
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 09 Jul 2019 07:59:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Maybe this:
https://www.technexion.com/support/knowledgebase/resolving-dependencies-iss=
ues-in-yocto/

Zoran
_______

On Tue, Jul 9, 2019 at 7:59 AM Onur Eser <onureser12@gmail.com> wrote:
>
> Hello All,
>
> I have talked to my BSP provider and they have solved the conflict files =
issue with an update. Now I am able to create and boot a Yocto Image with M=
eta-Qt5 recipes and 'dev_pkgs' in it. But still cannot create a toolchain. =
Nor with I guess it is trying to compile something before qtdeclarative, bu=
t these 'something' depends on qtdeclarative.
>
> My image is core image is Weston. I added the line 'inherit populate_sdk_=
qt5' to my core-image-weston.bb file. And tried both commands 'bitbake meta=
-toolchain-qt5' and 'bitbake -c populate_sdk core-image-weston'. The result=
 is the same.
>
> I cut just the error part of my output:
>
> | cd qdeclarativefolderlistmodel/ && ( test -e Makefile || /home/closx/po=
ky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUT=
OINC+b2476dcd53-r0/recipe-sysroot-native/usr/bin/qt5/qmake -o Makefile /hom=
e/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.1=
0.1+gitAUTOINC+b2476dcd53-r0/git/tests/auto/declarative/qdeclarativefolderl=
istmodel/qdeclarativefolderlistmodel.pro ) && make -f Makefile
> | Project ERROR: Unknown module(s) in QT: declarative widgets
> | Makefile:88: recipe for target 'sub-qdeclarativecomponent-make_first' f=
ailed
> | make[2]: *** [sub-qdeclarativecomponent-make_first] Error 3
> | make[2]: *** Waiting for unfinished jobs....
> | Project ERROR: Unknown module(s) in QT: declarative
> | Project ERROR: Unknown module(s) in QT: declarative
> | Makefile:113: recipe for target 'sub-qdeclarativecontext-make_first' fa=
iled
> | make[2]: *** [sub-qdeclarativecontext-make_first] Error 3
> | Project ERROR: Unknown module(s) in QT: declarative
> | Makefile:138: recipe for target 'sub-qdeclarativeengine-make_first' fai=
led
> | make[2]: *** [sub-qdeclarativeengine-make_first] Error 3
> | Makefile:63: recipe for target 'sub-parserstress-make_first' failed
> | make[2]: *** [sub-parserstress-make_first] Error 3
> | make[2]: Entering directory '/home/closx/poky/build/tmp/work/cortexa9hf=
-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tes=
ts/manual/declarative'
> | make[2]: Nothing to be done for 'first'.
> | make[2]: Leaving directory '/home/closx/poky/build/tmp/work/cortexa9hf-=
neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/test=
s/manual/declarative'
> | make[1]: Leaving directory '/home/closx/poky/build/tmp/work/cortexa9hf-=
neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/test=
s/manual'
> | Project ERROR: Unknown module(s) in QT: declarative
> | Makefile:163: recipe for target 'sub-qdeclarativeerror-make_first' fail=
ed
> | make[2]: *** [sub-qdeclarativeerror-make_first] Error 3
> | Project ERROR: Unknown module(s) in QT: declarative
> | Makefile:188: recipe for target 'sub-qdeclarativefolderlistmodel-make_f=
irst' failed
> | make[2]: *** [sub-qdeclarativefolderlistmodel-make_first] Error 3
> | make[2]: Leaving directory '/home/closx/poky/build/tmp/work/cortexa9hf-=
neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/test=
s/auto/declarative'
> | Makefile:45: recipe for target 'sub-declarative-make_first' failed
> | make[1]: *** [sub-declarative-make_first] Error 2
> | make[1]: Leaving directory '/home/closx/poky/build/tmp/work/cortexa9hf-=
neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/test=
s/auto'
> | Makefile:45: recipe for target 'sub-auto-make_first' failed
> | make: *** [sub-auto-make_first] Error 2
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile_ptest_base (log file is located at /=
home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/=
5.10.1+gitAUTOINC+b2476dcd53-r0/temp/log.do_compile_ptest_base.29566)
> ERROR: Task (/home/closx/poky/meta-qt5/recipes-qt/qt5/qtquick1_git.bb:do_=
compile_ptest_base) failed with exit code '1'
>
> What do you guys think the reason of this issue may be? Any solution offe=
rs?
>
> My full output:
> https://paste.ee/p/PupWr#Epvqnw9FoasgQEBhIXqQ8hH7veMcRybX
>
> Another source issue again?
> Have a lovely day!
> Onur
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

