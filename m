Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D04D3E008E3; Mon, 29 Oct 2018 06:11:07 -0700 (PDT)
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
	*      [209.85.160.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36A21E00718
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 06:11:07 -0700 (PDT)
Received: by mail-qt1-f193.google.com with SMTP id a10-v6so9052235qtp.2
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 06:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=PqW7I3UV1pQQQaHDbIShbSA1rhO03POp9HtdPNV2mbA=;
	b=flsIaLkXS6o17PQS+bOrqvhtpSvhRERmV4Y8BjYtcguYRYIoCynJPob8ceU/Vxzrcm
	yNp8RXn97km/XR2ifo34wnKVZ2BF3RM5vjX8E44cCtYIRe58DoO89ncoXzXoQ/xFiNmJ
	w459JoIHWSOwCJ2SNMQYT41czuX82gAwY3ESbD0ed0362g5tCeX71Y1Hs7FXKan5HePS
	3x1w13gIJs+BqQlr7ivTt2n0CLX6L8s5NGVConD2lBGd0ZgokbXgX1ciidDfJPfXKM5R
	7Hf5YKFReR6fag5LrThKtckF0mn/uRJANF6zfbKdG13iawB1vAL5xspC2cKJjy5l/p90
	Haow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=PqW7I3UV1pQQQaHDbIShbSA1rhO03POp9HtdPNV2mbA=;
	b=uN8aC6Zz9Z4VYFislQMgRKlpW+A97iZhYIlrxKVZF6kKeeIEDtRei6i3CKpNp8rY9a
	8KAOq2dGx8BEC3EwiXfyN4lpoYypPKk1PZoegg3v8EinLOajHHm90EPqJJe/m9BqDVA9
	XauB5+ObqN8GAeqFvG1xiyKJDTAVz2/KnGlxenGHvkcXgJ90xF+5w+T35bLoNu73pRoc
	9Yox5gYGdsvGO42+R+3/hXgGCPX1QtCB+5J+wZ7AbVqFu7AyApaFbm/V9v7IlkBk4MOw
	YzhM2duEcNWLGqSTxhqeXzvQ4ew3pz7NAcNOIU+MzCKQYNkkYjmw5Ie7ydw+XbgQ8MTS
	MDzA==
X-Gm-Message-State: AGRZ1gLtjkVXSiFoBRgpPduV8TZcEm+gIEjpXPs2fouRadahxXyvVb7g
	StKXl+ulRQ9Ozp9JkJGDus0lSlvcEs9zSCjOUi0=
X-Google-Smtp-Source: AJdET5fcgSEbd+Na010fgKA/7GRz1IJX9xQAkVQsD8jOIHvWakDzyLS8FPW37ODC90aVEhiyfmY6mcst3C8svJAZmEk=
X-Received: by 2002:aed:3e94:: with SMTP id
	n20-v6mr12653618qtf.196.1540818666243; 
	Mon, 29 Oct 2018 06:11:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8nL7haOo+ogungBB_1hR0rRqNszFkgEHyr_SYE1dq477w@mail.gmail.com>
	<CAEhQi8=Ocn_uVL5a4ri=9T9YKbNb1gcN3Y=cqK1-dATB7qea1A@mail.gmail.com>
	<6f0c2b95-348c-6cb0-dbb0-8a43da878eaa@windriver.com>
In-Reply-To: <6f0c2b95-348c-6cb0-dbb0-8a43da878eaa@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 29 Oct 2018 06:10:40 -0700
Message-ID: <CAMKF1sq85puYF3C0T9sfNBVFOtHbwd9AkqVrXNYM9caFMN2nOg@mail.gmail.com>
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
X-List-Received-Date: Mon, 29 Oct 2018 13:11:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 26, 2018 at 6:54 AM Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
>
>
>
> On 10/26/2018 4:28 AM, M=C3=A5ns Zigher wrote:
> > So it looks like the number of /bin/awk have increased so the patch wil=
l
> > fix one problem but there is more to fix. I have a "workaround" even
> > though I am not so sure it is a workaround or not. The problem is fixed
> > adding to kernel-devsrc.bbappend
> >
> > do_install_append() {
> > # This fixes the rpm dependency failure on install of kernel-devsrc
> > depending on /bin/awk
> > cd ${D} || true
> > for i in $(grep -srI "!/bin/awk" | cut -d":" -f1); do
> > sed -i -e "s#!/bin/awk#!/usr/bin/env awk#g" $i
> > done
> > }
> >
> > The original solution can be found at
> >
> > https://gerrit.automotivelinux.org/gerrit/gitweb?p=3DAGL/meta-agl.git;a=
=3Dblobdiff;f=3Dmeta-agl-bsp/meta-ti/recipes-kernel/linux/linux-ti-staging_=
%25.bbappend;h=3D43fa494a26c132b875c177acf0389163d5e34c06;hp=3Db2e5431400ac=
ef0a5372e5490ac4f464482d4b3b;hb=3D4bfc821810cdee47611c6d3e94d771971f51fa75;=
hpb=3D1cf6b17fd15fde569374c85d4df722784f4e9c67
> >
> > The best solution might be to add kernel patches but since the number o=
f
> > /bin/awk have increased I think that this is fine in the kernel univers=
e
> > but a problem in poky universe. So by adding it to kernel-devsrc it wil=
l
> > make sure that when the kernel get's tainted in the future it will not
> > break the rpm build. This is a "bug" only when using rpm ipk will not
> > detect it as a problem.
>
> I'm ok with this type of solution as well, since this is similar
> to what we've had to do with perf in the past (sed and modify versus
> patching). I can always patch and fix things in linux-yocto, but then
> another other kernel still suffers the issue.


can we fix it in upstream kernel to use something like
#!/usr/bin/env awk
may be ?

>
> It would be better if folks with this problem also send patches upstream
> to allow us to vary the location of awk via a variable, since that would
> eventually fix all kernels without needing any modifications .. but that
> is a medium term time play, versus doing the sed operation.
>
> If you have a patch to kernel-devsrc in master, feel free to send it
> and cc' me, and I can pull it into my queue, test and then send it in
> my next pull request.
>
> Bruce
>
> >
> > BR
> > M=C3=A5ns Zigher
> >
> > Den tors 25 okt. 2018 kl 13:19 skrev M=C3=A5ns Zigher <mans.zigher@gmai=
l.com
> > <mailto:mans.zigher@gmail.com>>:
> >
> >     Hi,
> >
> >     I am trying to add the kernel devsrc to the SDK but I am getting th=
e
> >     following error
> >
> >     Problem: conflicting requests
> >        - nothing provides /bin/awk needed by kernel-devsrc-1.0-r0.imx8m=
qevk
> >
> >     I have applied the following patch to try and fix this problem.
> >
> >     http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto/commit/?id=3D=
8af11c1cdd8fa08217e702b57cf96e9030db52b2
> >
> >     I have verified that it was applied and run kernel-devsrc works. Th=
e
> >     error is from do_populate_sdk and I am suspecting that the problem
> >     is related to me using rpm. I believe rpm might be to smart in this
> >     case detecting the dependency and resulting dnf from failing when
> >     running the task do_populate_sdk. Any suggestion on how to get
> >     forward on this error. I would like to run dnf manually to check an=
y
> >     dependency of the kernel-devsrc rpm package but cannot figure out h=
ow.
> >
> >     BR
> >     M=C3=A5ns Zigher
> >
> >
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

