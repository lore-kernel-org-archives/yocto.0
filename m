Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D537E00BC8; Mon, 29 Oct 2018 08:12:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
	[209.85.222.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 340A2E00BBF
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 08:12:45 -0700 (PDT)
Received: by mail-qk1-f196.google.com with SMTP id o89so5137862qko.0
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 08:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=qxp0625vhXa8cFFZzWii0OHzEYV1+qkOtfTNNQdb/kA=;
	b=T2Dk8Vq3+4SG7Y5uSviCd6+o3REEQo+qtzmIsZhRiRCdm+Xk6IlbiSGJg+ER58FBtS
	lqX7sy25o6F83ouHJ+QZpkRjwE/pUnR4vT2dVMSqqfJjmh9zJ1ltG4NhVp8NEDvFRpRy
	qxp8LjRMK0WZPvrz3mVu0vdznuagoP+Fb0LvyYVd1rU+nUeIrFSkzi5CsPeuDi73TYac
	ky14caziY1ZQ0uFOKUPqm2jc+BRIZWOWQN/LusmEY7neNjbf4H1fhYLJVDtEvzf4vnCb
	2ae7lcyHWxtyKN2xDbsNEER6QWCP+upEU3Wal0nytuq5kuuDqJlGdOQVR+0/ESkq9ZV9
	XVbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=qxp0625vhXa8cFFZzWii0OHzEYV1+qkOtfTNNQdb/kA=;
	b=ssRd7N8rOEHSWR6hVSuMaSB73Xxjs5FPkuPgwFj+G1wIhIJBAVOrqJBzBSveVe1CWm
	pdZz9YKrim3Me9vE/ZLdTqLYysCTFmUjeuPc++pnS6bMsuFr+2MAbYmeyHIbrSZ8Gxwv
	JG+i98pjb43cmpvgL+aYuuWPSaWqKFmVdZX8TUBRCeerY0e8zXm2tDtJZIgXMDgIqonH
	TR3NGdZrAJ1hdDaa9LXqRKhDSOSz5N0yI1yWsDIougoCrLRRNAEbA3Q1LP37mfWJzNpr
	xAn8Tc8tlALWnMV6PcGElZs9QB2yo1VtqJ48UGZ/n8TPTE3qPm8j3mD5paLWw5EszuTd
	zoGQ==
X-Gm-Message-State: AGRZ1gKQhBaQGdH+EA2hhz0TSiBArX+Kq1KVKmiUYHs6FyHDc5Nc9HAH
	/fQGJoJE6n6j07ypGtApxoQA8jedV/b55iu1Vlj/F/NDODM=
X-Google-Smtp-Source: AJdET5cX/aw/T51eSZViJDp5IOaljXLas8raIwmf0inxhzd9tQ23qwR4NUq0/uvYlgbbOdwZupHh/V8Pso8IOWuXESo=
X-Received: by 2002:a37:d408:: with SMTP id l8mr7408034qki.315.1540825964177; 
	Mon, 29 Oct 2018 08:12:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8nL7haOo+ogungBB_1hR0rRqNszFkgEHyr_SYE1dq477w@mail.gmail.com>
	<CAEhQi8=Ocn_uVL5a4ri=9T9YKbNb1gcN3Y=cqK1-dATB7qea1A@mail.gmail.com>
	<6f0c2b95-348c-6cb0-dbb0-8a43da878eaa@windriver.com>
	<CAMKF1sq85puYF3C0T9sfNBVFOtHbwd9AkqVrXNYM9caFMN2nOg@mail.gmail.com>
	<7568962f-b428-6eee-2cb5-dc471610c1fe@windriver.com>
In-Reply-To: <7568962f-b428-6eee-2cb5-dc471610c1fe@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 29 Oct 2018 08:12:17 -0700
Message-ID: <CAMKF1sq1Lyk_ymMw8Lj9o8+0o_s57kN6EqhpXdHbmyaB_Yys2A@mail.gmail.com>
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
X-List-Received-Date: Mon, 29 Oct 2018 15:12:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 29, 2018 at 6:46 AM Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
>
>
>
> On 10/29/2018 9:10 AM, Khem Raj wrote:
> > On Fri, Oct 26, 2018 at 6:54 AM Bruce Ashfield
> > <bruce.ashfield@windriver.com> wrote:
> >>
> >>
> >>
> >> On 10/26/2018 4:28 AM, M=C3=A5ns Zigher wrote:
> >>> So it looks like the number of /bin/awk have increased so the patch w=
ill
> >>> fix one problem but there is more to fix. I have a "workaround" evenY=
up. That works too (as would a variable from the env), but we'll still
need a sed based patch in the short term.
> >>> though I am not so sure it is a workaround or not. The problem is fix=
ed
> >>> adding to kernel-devsrc.bbappend
> >>>
> >>> do_install_append() {
> >>> # This fixes the rpm dependency failure on install of kernel-devsrc
> >>> depending on /bin/awk
> >>> cd ${D} || true
> >>> for i in $(grep -srI "!/bin/awk" | cut -d":" -f1); do
> >>> sed -i -e "s#!/bin/awk#!/usr/bin/env awk#g" $i
> >>> done
> >>> }
> >>>
> >>> The original solution can be found at
> >>>
> >>> https://gerrit.automotivelinux.org/gerrit/gitweb?p=3DAGL/meta-agl.git=
;a=3Dblobdiff;f=3Dmeta-agl-bsp/meta-ti/recipes-kernel/linux/linux-ti-stagin=
g_%25.bbappend;h=3D43fa494a26c132b875c177acf0389163d5e34c06;hp=3Db2e5431400=
acef0a5372e5490ac4f464482d4b3b;hb=3D4bfc821810cdee47611c6d3e94d771971f51fa7=
5;hpb=3D1cf6b17fd15fde569374c85d4df722784f4e9c67
> >>>
> >>> The best solution might be to add kernel patches but since the number=
 of
> >>> /bin/awk have increased I think that this is fine in the kernel unive=
rse
> >>> but a problem in poky universe. So by adding it to kernel-devsrc it w=
ill
> >>> make sure that when the kernel get's tainted in the future it will no=
t
> >>> break the rpm build. This is a "bug" only when using rpm ipk will not
> >>> detect it as a problem.
> >>
> >> I'm ok with this type of solution as well, since this is similar
> >> to what we've had to do with perf in the past (sed and modify versus
> >> patching). I can always patch and fix things in linux-yocto, but then
> >> another other kernel still suffers the issue.
> >
> >
> > can we fix it in upstream kernel to use something like
> > #!/usr/bin/env awk
> > may be ?
>
>
> Yup. That works too (as would a variable from the env), but we'll still
> need a sed based patch in the short term.
>

short term is fine, but I think this should be fixed in upstream kernel.

> Bruce
>
> >
> >>
> >> It would be better if folks with this problem also send patches upstre=
am
> >> to allow us to vary the location of awk via a variable, since that wou=
ld
> >> eventually fix all kernels without needing any modifications .. but th=
at
> >> is a medium term time play, versus doing the sed operation.
> >>
> >> If you have a patch to kernel-devsrc in master, feel free to send it
> >> and cc' me, and I can pull it into my queue, test and then send it in
> >> my next pull request.
> >>
> >> Bruce
> >>
> >>>
> >>> BR
> >>> M=C3=A5ns Zigher
> >>>
> >>> Den tors 25 okt. 2018 kl 13:19 skrev M=C3=A5ns Zigher <mans.zigher@gm=
ail.com
> >>> <mailto:mans.zigher@gmail.com>>:
> >>>
> >>>      Hi,
> >>>
> >>>      I am trying to add the kernel devsrc to the SDK but I am getting=
 the
> >>>      following error
> >>>
> >>>      Problem: conflicting requests
> >>>         - nothing provides /bin/awk needed by kernel-devsrc-1.0-r0.im=
x8mqevk
> >>>
> >>>      I have applied the following patch to try and fix this problem.
> >>>
> >>>      http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto/commit/?id=
=3D8af11c1cdd8fa08217e702b57cf96e9030db52b2
> >>>
> >>>      I have verified that it was applied and run kernel-devsrc works.=
 The
> >>>      error is from do_populate_sdk and I am suspecting that the probl=
em
> >>>      is related to me using rpm. I believe rpm might be to smart in t=
his
> >>>      case detecting the dependency and resulting dnf from failing whe=
n
> >>>      running the task do_populate_sdk. Any suggestion on how to get
> >>>      forward on this error. I would like to run dnf manually to check=
 any
> >>>      dependency of the kernel-devsrc rpm package but cannot figure ou=
t how.
> >>>
> >>>      BR
> >>>      M=C3=A5ns Zigher
> >>>
> >>>
> >>>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto

