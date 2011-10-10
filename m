Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1F74E0127A
	for <yocto@yoctoproject.org>; Mon, 10 Oct 2011 07:14:43 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwn22 with SMTP id 22so3713684wwn.5
	for <yocto@yoctoproject.org>; Mon, 10 Oct 2011 07:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=TTcVsAxIUe/dwtuzR6zuKoIqqF7KywTp6KOzcc+xanU=;
	b=C6SJEaliyeIUqXwQ0RxBBykSgEpQLAtN3GFAQSX++01FgPNGXXpajS3vYSyLiI/mKd
	PUq5oFTEPleSJFbe5l3qnCJH6/LiSEVPG5CimoDAHjjrn2VzqXNK8DZnV48H99HVgeHk
	17sSIWkkfaxGYp6txPmJcytG2xRN6jubTs5s0=
MIME-Version: 1.0
Received: by 10.227.2.206 with SMTP id 14mr6053501wbk.94.1318256082287; Mon,
	10 Oct 2011 07:14:42 -0700 (PDT)
Received: by 10.180.96.169 with HTTP; Mon, 10 Oct 2011 07:14:42 -0700 (PDT)
In-Reply-To: <cover.1318217109.git.tom.zanussi@intel.com>
References: <cover.1318217109.git.tom.zanussi@intel.com>
Date: Mon, 10 Oct 2011 10:14:42 -0400
Message-ID: <CADkTA4Mgv9Wt16ShQzzzYMeDo2H-oCrfs7XxTG1t1pZ5AomAuA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: tom.zanussi@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/8][KERNEL] some meta-intel bsp cleanup, v4
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 10 Oct 2011 14:14:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 9, 2011 at 11:34 PM,  <tom.zanussi@intel.com> wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
>
> This patchset is another step in some cleanup I'm doing for
> the meta-intel bsps, basically removing unneeded or redundant
> options and abstracting out useful features, in this case a
> new vesafb feature used in this patchset by crownbay, emenlow,
> and jasperforest.
>
> This patchset doesn't change any of the previous patches - I'm
> just resending them all to avoid confusion since I accidentally
> named the v2 branch v3. =A0So this patchset keeps everything
> up-to-date and supersedes the previous "v2" patchset.

Perfect. I just tossed out the v2 I had staged and will push this out
later today once
the Canadian thanksgiving festivities subside!

Bruce

>
> v2: rebased on top of intervening changes
> v3: misnamed
> v4: added fishriver, sugarbay, fri2
>
> Please pull into linux-yocto-3.0.
>
> Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
> =A0Branch: tzanussi/bsp-cleanup-v4
> =A0Browse: http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-c=
ontrib/log/?h=3Dtzanussi/bsp-cleanup-v4
>
> Thanks,
>
> Tom
>
> Tom Zanussi (8):
> =A0features/drm-psb: add related config options
> =A0meta: add vesafb feature
> =A0crownbay: cleanup bsp config
> =A0emenlow: cleanup bsp config
> =A0jasperforest: cleanup bsp config
> =A0fishriver: cleanup bsp config
> =A0sugarbay: cleanup bsp config
> =A0fri2: cleanup bsp config
>
> =A0meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg =A0 =A0| =A0 34 ++++--=
------------
> =A0meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc =A0 =A0| =A0 =A05 ++-
> =A0meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg =A0 =A0 =A0| =A0 35 ++++=
+--------------
> =A0meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc =A0 =A0 =A0| =A0 =A02 +
> =A0meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg =A0| =A0 34 ++++----=
----------
> =A0meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc =A0| =A0 =A02 +
> =A0meta/cfg/kernel-cache/bsp/fri2/fri2.cfg =A0 =A0 =A0 =A0 =A0 =A0| =A0 3=
4 ++++--------------
> =A0meta/cfg/kernel-cache/bsp/fri2/fri2.scc =A0 =A0 =A0 =A0 =A0 =A0| =A0 =
=A02 +
> =A0.../kernel-cache/bsp/jasperforest/jasperforest.cfg | =A0 =A07 +---
> =A0.../kernel-cache/bsp/jasperforest/jasperforest.scc | =A0 =A02 +
> =A0meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg =A0 =A0| =A0 22 +-----=
------
> =A0meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc =A0 =A0| =A0 =A01 +
> =A0meta/cfg/kernel-cache/features/drm-psb/drm-psb.cfg | =A0 13 +++++++
> =A0.../kernel-cache/features/framebuffer/vesafb.cfg =A0 | =A0 =A08 ++++
> =A0.../kernel-cache/features/framebuffer/vesafb.scc =A0 | =A0 =A01 +
> =A015 files changed, 71 insertions(+), 131 deletions(-)
> =A0create mode 100644 meta/cfg/kernel-cache/features/framebuffer/vesafb.c=
fg
> =A0create mode 100644 meta/cfg/kernel-cache/features/framebuffer/vesafb.s=
cc
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

