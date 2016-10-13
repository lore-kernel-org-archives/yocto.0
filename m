Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66E2BE00DF0; Thu, 13 Oct 2016 03:38:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79A08E00C81
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 03:38:11 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id r30so80410852ioi.1
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 03:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rg0WcWU+jTX/t5de4/NpI1V71frSEViNvFpPDDKp4Uo=;
	b=KEZ6RbqytvB0ibhzvS+T1ASdzn6EWdA7h3UfSAj2FnKUZMnu4dGAapDcdWsHSaTBKH
	kpk4YkYZiI/gNbofaVitlFiBeoaz7+QKWt+xh8usr1jcTKU9xm+dZzqMcew3WrLhuqB3
	jhHCeXbwpJFd1ek6NnQP87gHYThkHDtvSuZG+KDJV54XfwB+WIdfPVpDfEkCHK2DXYEA
	rXOx+rnq2wCz7Ll6krT/0IuKs7A/SzLHU1XlsBXz2xzLS1CXY6YUwydWolIs3OEi04Zv
	JcBTbj3AT1EPDjLLee6geNSIEjTwAB7TkNLnl3MMcSt1LyX2FLbStt65iaIyPd+qW6wy
	WwBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rg0WcWU+jTX/t5de4/NpI1V71frSEViNvFpPDDKp4Uo=;
	b=S8W2BCt7Zw96Vq03yKnPWCHhtr4kqZCefeL57eFxLKEJuVnVpgZQjUbK3Vj8lq4kiu
	B3q6N1UzpiVLC1kAsSx8JErLUqoQK+57y4awDJRnOlAbGvhyRQ/+Xm59DCb0wD/9gu3L
	2MvrBz8dhP+EDLsTws2bOmgM3pGtF2ouQMKGdBECSO8JbD5DYFCZ8mBKP3sBx5pmgIeE
	0Zvuh9tcHwJVUU/RT12vVkN+GeMRXwrcA1S61lTt6cr4D4mekIEqmo2OYoJqHt1RK/nW
	lvqao0Filh92PleWiDIPn5HIwuZZuV1bmbId88Z6FFZ/dy9L379VWBW3+r44jERP0na8
	hsEg==
X-Gm-Message-State: AA6/9RnXJmBBvxLoSp4E3kZYEBI+BEP7m09qrrs57VUubg4eoyp2Dp4m1KpMEI+G9eEvVV+Eq+9COhj0Gf0uVWsG
X-Received: by 10.107.17.32 with SMTP id z32mr5867824ioi.1.1476355091170; Thu,
	13 Oct 2016 03:38:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.155.66 with HTTP; Thu, 13 Oct 2016 03:37:50 -0700 (PDT)
In-Reply-To: <CAEV+hqwr5pp_EaLd=7cU8=cfKPQcAgr0ghmgYPn-hH8zyCE-Qw@mail.gmail.com>
References: <CAEV+hqwr5pp_EaLd=7cU8=cfKPQcAgr0ghmgYPn-hH8zyCE-Qw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Oct 2016 11:37:50 +0100
Message-ID: <CAJTo0Lao9tQ+R01H7J-O5nUmC6=rjiysLK05U6VP1faRGRM9ew@mail.gmail.com>
To: Contrib Open Source <contrib.open.source@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto recipe license
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
X-List-Received-Date: Thu, 13 Oct 2016 10:38:13 -0000
Content-Type: multipart/alternative; boundary=001a113f2676c59c31053ebcb4bd

--001a113f2676c59c31053ebcb4bd
Content-Type: text/plain; charset=UTF-8

On 13 October 2016 at 09:49, Contrib Open Source <
contrib.open.source@gmail.com> wrote:

> it seems that license.manifest file describes application/lib/etc.
> source code license,
> but what about Yocto recipe license itself ?
> So what is the license of a Yocto recipe ?
> How to know it ?
> If a Yocto recipe is GPL2, and we extend (*.bbappend) this recipe,
> does contamination effect applies to the extented recipe ?
>

The oe-core metadata is licensed under MIT, as explained in the LICENSE
file.

Ross

--001a113f2676c59c31053ebcb4bd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 October 2016 at 09:49, Contrib Open Source <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:contrib.open.source@gmail.com" target=3D"_blank">contrib.open=
.source@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div dir=3D"ltr">it seems that license.manifest file describes application/l=
ib/etc.<br>source code license,<br>but what about Yocto recipe license itse=
lf ?<br>So what is the license of a Yocto recipe ?<br>How to know it ?<br>I=
f a Yocto recipe is GPL2, and we extend (*.bbappend) this recipe,<br>does c=
ontamination effect applies to the extented recipe ?</div></blockquote></di=
v><br>The oe-core metadata is licensed under MIT, as explained in the LICEN=
SE file.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extr=
a">Ross</div></div>

--001a113f2676c59c31053ebcb4bd--
