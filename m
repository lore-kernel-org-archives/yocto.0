Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3EE8E00BC8; Mon, 29 Oct 2018 08:16:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18F82E00BBF
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 08:15:59 -0700 (PDT)
Received: by mail-qt1-f195.google.com with SMTP id i15-v6so9644320qtr.0
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 08:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=qrtcLeUY7nmU0R28iqG0yUuvdNV0IUjPglfb++yHMX0=;
	b=GM6ZjIejlIBxNmqmrtEPsvxmoYI0GEVzD9seYOchc17TZ8wTxJwUOcPD7p7RoqJSst
	KrkhMllEe3yJeapnQLtddzj7DhsMA6GeuFqSoda4A4UyHngfZPdajm0g9s9Gf0tdeZNn
	CjPfOrPq9mY/0gouByBgCe567cJnE3hpqXOxLan95xcsQXJCbqjnfYfLoIu78UK27PMq
	i5v+ePrXZeyOY4DjILOlJdOp3y0tyMf3DzNNZmS54UyebXETOm5H6tFbgoT8UgrWGd4T
	qrYHBza+brQzyLC7pQj5qXMxhVd+18TUe38gO1Us4LFrmJkmE9ARzf4Vg8ZregxK00nz
	r6gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=qrtcLeUY7nmU0R28iqG0yUuvdNV0IUjPglfb++yHMX0=;
	b=ulyoO7SAtLycGm3HqHVOQKaSjrKm1aYhdJgwo5DhJCQSrkK9f1+MawzMmca7UNipH7
	T0Y0wyO5wBVpxhByzecFVRpubqTTIuUIMTQRBi/p5kOem1LRDcWl/hoXTHEc4tUSSqHG
	qBLID9wxAW4/ZeTpvbCjoYgRQ8A5mjfn7PqpqmkG+wQtIoWn5+nB9i398QnYNEn/qeym
	e2c30LtYwsMRGutrAjn8pbWHcnq0+hpANBh7VhLdQU7sasUixjCChy+Jq3YoNXmB6h15
	sAaQwvBMXdWDgXU3Nt8LMop4EHj/r1W5E1tdzSfgs8UOoFEo86dV+VYpFrwDpyH7nrqW
	mTHA==
X-Gm-Message-State: AGRZ1gLTUEvFtC7Fns1cn5yx6xGpUSPNO2+HVK1yyK1XTSrg3SkEZ1ZQ
	nUptQK1Yf4HaScDF/z2Al1AItzFQjwGcUdRoeI4=
X-Google-Smtp-Source: AJdET5ew/jXyWRZ/MlsySkXaxTrQnZPDrSFhgjzA3z1PPGKk3NI+d0ZzO2juyCcHNZQpEJkKc2X5MEItkOYwhnM71ng=
X-Received: by 2002:a0c:ad47:: with SMTP id v7mr13492314qvc.228.1540826159247; 
	Mon, 29 Oct 2018 08:15:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8nL7haOo+ogungBB_1hR0rRqNszFkgEHyr_SYE1dq477w@mail.gmail.com>
	<CAEhQi8=Ocn_uVL5a4ri=9T9YKbNb1gcN3Y=cqK1-dATB7qea1A@mail.gmail.com>
	<6f0c2b95-348c-6cb0-dbb0-8a43da878eaa@windriver.com>
	<CAMKF1sq85puYF3C0T9sfNBVFOtHbwd9AkqVrXNYM9caFMN2nOg@mail.gmail.com>
	<7568962f-b428-6eee-2cb5-dc471610c1fe@windriver.com>
	<CAMKF1sq1Lyk_ymMw8Lj9o8+0o_s57kN6EqhpXdHbmyaB_Yys2A@mail.gmail.com>
	<31158489-66b5-4afd-4c27-75dd489beadd@windriver.com>
In-Reply-To: <31158489-66b5-4afd-4c27-75dd489beadd@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 29 Oct 2018 08:15:32 -0700
Message-ID: <CAMKF1spJdrgZSFZfgKNEar3LXTmAPLz160_Pi3vU8N3NUw79eA@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [SDK] including kernel devsrc to the SDK failes
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
X-List-Received-Date: Mon, 29 Oct 2018 15:16:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 29, 2018 at 8:14 AM Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
>
> On 2018-10-29 11:12 AM, Khem Raj wrote:
> > On Mon, Oct 29, 2018 at 6:46 AM Bruce Ashfield
> > <bruce.ashfield@windriver.com> wrote:
> >>
> >>
> >>
> >> On 10/29/2018 9:10 AM, Khem Raj wrote:
> >>> On Fri, Oct 26, 2018 at 6:54 AM Bruce Ashfield
> >>> <bruce.ashfield@windriver.com> wrote:
> >>>>
> >>>>
> >>>>
> >>>> On 10/26/2018 4:28 AM, M=C3=A5ns Zigher wrote:
> >>>>> So it looks like the number of /bin/awk have increased so the patch=
 will
> >>>>> fix one problem but there is more to fix. I have a "workaround" eve=
nYup. That works too (as would a variable from the env), but we'll still
> > need a sed based patch in the short term.
> >>>>> though I am not so sure it is a workaround or not. The problem is f=
ixed
> >>>>> adding to kernel-devsrc.bbappend
> >>>>>
> >>>>> do_install_append() {
> >>>>> # This fixes the rpm dependency failure on install of kernel-devsrc
> >>>>> depending on /bin/awk
> >>>>> cd ${D} || true
> >>>>> for i in $(grep -srI "!/bin/awk" | cut -d":" -f1); do
> >>>>> sed -i -e "s#!/bin/awk#!/usr/bin/env awk#g" $i
> >>>>> done
> >>>>> }
> >>>>>
> >>>>> The original solution can be found at
> >>>>>
> >>>>> https://gerrit.automotivelinux.org/gerrit/gitweb?p=3DAGL/meta-agl.g=
it;a=3Dblobdiff;f=3Dmeta-agl-bsp/meta-ti/recipes-kernel/linux/linux-ti-stag=
ing_%25.bbappend;h=3D43fa494a26c132b875c177acf0389163d5e34c06;hp=3Db2e54314=
00acef0a5372e5490ac4f464482d4b3b;hb=3D4bfc821810cdee47611c6d3e94d771971f51f=
a75;hpb=3D1cf6b17fd15fde569374c85d4df722784f4e9c67
> >>>>>
> >>>>> The best solution might be to add kernel patches but since the numb=
er of
> >>>>> /bin/awk have increased I think that this is fine in the kernel uni=
verse
> >>>>> but a problem in poky universe. So by adding it to kernel-devsrc it=
 will
> >>>>> make sure that when the kernel get's tainted in the future it will =
not
> >>>>> break the rpm build. This is a "bug" only when using rpm ipk will n=
ot
> >>>>> detect it as a problem.
> >>>>
> >>>> I'm ok with this type of solution as well, since this is similar
> >>>> to what we've had to do with perf in the past (sed and modify versus
> >>>> patching). I can always patch and fix things in linux-yocto, but the=
n
> >>>> another other kernel still suffers the issue.
> >>>
> >>>
> >>> can we fix it in upstream kernel to use something like
> >>> #!/usr/bin/env awk
> >>> may be ?
> >>
> >>
> >> Yup. That works too (as would a variable from the env), but we'll stil=
l
> >> need a sed based patch in the short term.
> >>
> >
> > short term is fine, but I think this should be fixed in upstream kernel=
.
>
> Also agreed. That was my primary suggestion as well, since even with
> that slow pace, we'd have it in all the kernel trees by the next
> Yocto release window.

thats reasonable

