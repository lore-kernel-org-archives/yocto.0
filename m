Return-Path: <alex.kiernan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B005E00E65; Wed, 11 Sep 2019 22:20:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kiernan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C775E00E11
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2019 22:20:10 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id m11so51617128ioo.0
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2019 22:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=bqilxDzynaZAOAz/aglbF+4U+IOrvOmx8qaYM3b1Nc0=;
	b=uu4b3/QQAICY+ZSk7forh1CvUGUSaWlbZ5waw9VQeI5mOQq+bZsNEXczNABu6FlS89
	V6304WK4Hy6HNOtqSHA5zQV2o9Zj4LyYnft+5mzsnK1zsmUA1gtQTSAJmvK9ChQdSNHS
	jodhKiDFqQBA/fD4/rLF9oEi7IKB0BUg0L+JuXIj3QwB9yaXWwvkytgzg/0uhgosT9mi
	tpMitnGnq1B/qW+bVx6WubRZHSPIxKmvCvz++0C8r/5mquxUgcObWjnFdljk9RNGDO0c
	MU2cXowmgHr5ArlQ8yBPidcE1RoDBdt5j/G6Pxv+msf+F/KR964Ku54Wo0XIBoiUAWxG
	SkSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=bqilxDzynaZAOAz/aglbF+4U+IOrvOmx8qaYM3b1Nc0=;
	b=R7uv+NtvRIS4TLZHLkULhUJyTX46p9FL8gP0bJ6mpGqZi3dK4cmhxUxDo+roRqyx7C
	PfPzGGK6DlcI2v/h66FzXxAh8gGXE9cpEItDMF4HLKzE4ahaz6zaYXIZyWGkZYwUI3oC
	NEYFghVviu/B9LQqd3P3nvUv0u1p0e/mPkrc+cZjjIUNLbCZyX/1DLvhG7V3FxUG7Xww
	EjDPAV/aKcUYFRnjjR9HnoKoqL2trQwSoKwL3fXveloKOyfftTGBf5To+QfYnTrY8Bbt
	EdH997SJ8nz2mAAc879iQtT1yFlGD9JhD31pVVcxVRSg9onMbbvZZm/kjfBswhGBN5se
	CJvg==
X-Gm-Message-State: APjAAAVhD49QDAmTHN1eBxu3ZzPDmoUQPA6WBUoQdo5kcH/FiPQJmm5Q
	o54Y6mJ6DWDX+sjGWYu31nI5+Z6ZQlD7gEKKesE=
X-Google-Smtp-Source: APXvYqwkTkmTp9VFVQibpDsO87OyCVsPWoSh9465r6XD7yZM/QjgQcAs2gWaRscLTm8QeaLzZIip8oxFesZtDBS8tc8=
X-Received: by 2002:a02:c737:: with SMTP id h23mr8808508jao.42.1568265609770; 
	Wed, 11 Sep 2019 22:20:09 -0700 (PDT)
MIME-Version: 1.0
References: <27002ae78aef4a1e9feb3eea2d788ce3@sakuraus.com>
In-Reply-To: <27002ae78aef4a1e9feb3eea2d788ce3@sakuraus.com>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Thu, 12 Sep 2019 06:19:58 +0100
Message-ID: <CAO5Uq5QBu3kBVWRCU=XyQdfQE0fk5kf9KTf4uQeSvtoTJo3SFA@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][ostree] build errors
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
X-List-Received-Date: Thu, 12 Sep 2019 05:20:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 12, 2019 at 12:17 AM Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>
> I'm trying to include ostree into a raspberry pi boot2qt build based on t=
hud.
>
> I'm getting a warning:
> WARNING: linux-raspberrypi-1_4.14.112+gitAUTOINC+6b5c4a2508-r0 do_kernel_=
metadata: defconfig detected in WORKDIR. bcm2709_defconfig skipped
>
> Which I figure that I can probably ignore, but may find I have a problem =
with it if it is missing out on my config changes.
>
> More concerning is the following error:
>
> ERROR: ostree-v2018.9-r0 do_unpack: gitsm: submodule unpack failed: Unpac=
kError Unpack failure for URL: 'gitsm://gitlab.gnome.org/GNOME/libglnx.git;=
protocol=3Dhttps;name=3Dlibglnx;subpath=3Dlibglnx;bareclone=3D1;nobranch=3D=
1'. No up to date source found: clone directory not available or not up to =
date: /home/gwilson/Qt/Qt-5.13.1/Yocto-build-RPi3/build-raspberrypi3/../dow=
nloads/git2/gitlab.gnome.org.GNOME.libglnx.git; shallow clone not enabled
>
> The 'gitlab.gnome.org/GNOME/libglnx' subdirectory is there, so that would=
 imply that something is wrong with the initial protocol or other decorator=
s. I also did a clean on ostree just to make sure there wasn't any problem =
with git -> gitsm changes.
>
> Is there anyone with familiarity with the ostree system that could give m=
e a hand on this? It is possible that I'm missing some configuration, the d=
ocs are not the clearest.
>

My immediate thought was add:

PREMIRRORS =3D ""

to your ostree recipe - there's an old copy of the source sitting in
the yocto mirrors and the gitsm fetcher doesn't update the submodules
correctly, but looking at the error, I'm not sure if that's actually
your problem.

I'm a couple of upstream patches away from an ostree recipe that's I
think should be in a fit state to go into meta-oe:

https://github.com/akiernan/meta-ostree-core/blob/master/recipes-ostree/ost=
ree/ostree.inc

--=20
Alex Kiernan

