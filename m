Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23338E00C1E; Wed,  6 Feb 2019 14:53:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.166.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f174.google.com (mail-it1-f174.google.com
	[209.85.166.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94DCBE00BFB
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2019 14:53:41 -0800 (PST)
Received: by mail-it1-f174.google.com with SMTP id x124so3721902itd.1
	for <yocto@yoctoproject.org>; Wed, 06 Feb 2019 14:53:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=zBwVBL2vybPX7Fg9d7w9jV1YaY+HTRAORIS1caNhH6k=;
	b=VRy3qDaQqblWB9SEtb+cbVGMpSVPawmc9dVUPDhO1Nw44NJ6QN0aKKf7s1HDEkyR4h
	TXModFLIWEGZ4wJATUrtazyGpzu1MRz1FsIyFPmJ9u5vuKGodBsQORUgIuvGGEq50EK4
	dpE4Hm68D2F/uKmCQF+Nlo2jryTk8H/KPOCy4OMlQxcfv5wAhd0bnchXuTOv0q2e58tR
	Yhv8f9N32xH3qE9Pn4j8xO2zsOI640jbG8Q0i27i4yQvJhQqF4VNovcNTYdvjYot5JGg
	5agE9NCZMjU5sTpyd5IpE3VYiD2WCOzXPzUy/+WQMM2+9MjMyehb4SfaGMRxKrvzs8/A
	k6kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=zBwVBL2vybPX7Fg9d7w9jV1YaY+HTRAORIS1caNhH6k=;
	b=jC3Sp4pH937vnsaPx4iSXNiKWA66x8Z6A7cypBQb6xxBdR5EdzbOu6WZLE1jUiEh+a
	WDtM8az7C5Bn++eqY2Q3h80NBb2Pf7FOlMcqVqIe9iK6dgVABxlydpIIhYcgH2Drm1hm
	sdXyNkmYyH+8HkKOfXhjJukQ14HgRnRzPO+odakHWYjCOTQIBhJ6RmVuMV5vz9+D06/C
	zNRO4EzIdazoOPhcrAGbHIiCyF7Ec3R0N9vdHtDjDAbfkZ0A44THs3r+2eAJbNV35b9O
	EVropYckYnRzjVFOVmPAr0Nofv/jILiu0cmE74LUi67JWoTs75jaVe8piTvVrHLmWuAG
	j20w==
X-Gm-Message-State: AHQUAuYDUIpmRriG8TR/PbP1kcQ9PGF/cpAi+FQMVguNI6HFumrT8YJT
	GKq/x+l1yr2tVfcDLY5QnbbmlMMoklqvhqvgZpM=
X-Google-Smtp-Source: AHgI3IZtO6b4qUBaRlAFfQ4co34RW1dYCV5Hyt+LBw27g9LGSYWlJPZvHiGRPbEQGwXTM8mnHc9HhDKcUYhFnasVkr8=
X-Received: by 2002:a6b:fa01:: with SMTP id p1mr6345449ioh.271.1549493620942; 
	Wed, 06 Feb 2019 14:53:40 -0800 (PST)
MIME-Version: 1.0
References: <1549477388545.2721@planar.com>
	<CALbNGRQrxMp2MuLPy1newCaHRLf2BAL9uohqc_A8bPoSodtMHA@mail.gmail.com>
	<1549490698733.2960@planar.com>
	<CALbNGRQFycyLQALGNqRc43evigPgH8m6KatgbHSfmbfpHmfUcA@mail.gmail.com>
In-Reply-To: <CALbNGRQFycyLQALGNqRc43evigPgH8m6KatgbHSfmbfpHmfUcA@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Wed, 6 Feb 2019 23:53:28 +0100
Message-ID: <CALbNGRSf+rO6jCgZMWA5DPb6ZOdz4Xw=U+7jesYn24vN6afFOw@mail.gmail.com>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: CMake based recipes and defining CMAKE_BUILD_TYPE
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
X-List-Received-Date: Wed, 06 Feb 2019 22:53:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 6, 2019 at 11:24 PM Andreas M=C3=BCller <schnitzeltony@gmail.co=
m> wrote:
>
> On Wed, Feb 6, 2019 at 11:05 PM Matt Schuckmann
> <Matt.Schuckmann@planar.com> wrote:
> >
> > Hi Andreas,
> >
> > Thanks for the response, do you set build type in each recipe individua=
lly or is there some central .conf file or other other location that you se=
t it?
> >
> > Matt S.
> Honestly: I do not set them yet because I thought RelWithDebInfo is
> default. That assumption was based on some projects but I checked now:
> it does not seem to be something to rely on...
>
Will build-/run-test this with my 'world':

diff --git a/meta/classes/cmake.bbclass b/meta/classes/cmake.bbclass
index fd40a9863e..a8e08e6d6f 100644
--- a/meta/classes/cmake.bbclass
+++ b/meta/classes/cmake.bbclass
@@ -153,6 +153,7 @@ cmake_do_configure() {
          -DCMAKE_TOOLCHAIN_FILE=3D${WORKDIR}/toolchain.cmake \
          -DCMAKE_VERBOSE_MAKEFILE=3D1 \
          -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 \
+         -DCMAKE_BUILD_TYPE=3D${@d.getVar(oe.utils.vartrue('DEBUG_BUILD',
'Debug', 'RelWithDebInfo', d))} \
          ${EXTRA_OECMAKE} \
          -Wno-dev
 }

Takes a while...

Andreas

