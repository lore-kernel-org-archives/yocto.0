Return-Path: <daniel@fooishbar.org>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA260E01423
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 21:47:49 -0800 (PST)
Received: by mail-vc0-f176.google.com with SMTP id fo13so5428427vcb.35
	for <yocto@yoctoproject.org>; Wed, 05 Dec 2012 21:47:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type:x-gm-message-state;
	bh=GKyrJ3JX6AWcCEppv0AhQmJKXhMjKHaQccwNnPEDiUE=;
	b=cayNlBm0YTPsdrUSUq+5jz9qA1vSvrK7cdLmhserJ9m+aXPPYloPQqfWfytWIbVAJx
	qOLqVj3+DzeWszJkAbbLVgs53lHJ9iqJTQgVAZo4QvK/QemcGhhBHTY+HNIkskgpXf19
	oB4DWEVBSg74+J0RlLnY/TGaO4qwcgJiLGib2zqysjnr+3q5yrXN3AlT+qqfUadWVcNN
	UESawyrDdVKQfZFq1q1EneG+gBwuvFowKLl3P/cAnx6sWf6lZCMcAc/qENTgQwlyzTMT
	67Z8aBjZsmje+lEqtuavk/fnVaHqpjzzo8mTxREDXnhwya8OCPfxaOS2iZonDLy+Yy47
	w3Lw==
MIME-Version: 1.0
Received: by 10.52.31.197 with SMTP id c5mr205843vdi.65.1354772868778; Wed, 05
	Dec 2012 21:47:48 -0800 (PST)
Received: by 10.58.240.38 with HTTP; Wed, 5 Dec 2012 21:47:48 -0800 (PST)
X-Originating-IP: [203.173.40.32]
In-Reply-To: <CA+chaQcJUGYNt9qh6Nvyso21KJjTHdayrmtgS+XLZnMfXyEmeA@mail.gmail.com>
References: <cover.1354750505.git.nitin.a.kamble@intel.com>
	<CA+chaQcJUGYNt9qh6Nvyso21KJjTHdayrmtgS+XLZnMfXyEmeA@mail.gmail.com>
Date: Thu, 6 Dec 2012 16:47:48 +1100
Message-ID: <CAPj87rMUEj=9G3VR05UJRXXGdNtNA2u9Mouct9CbiU2UfReoCQ@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
To: Martin Jansa <martin.jansa@gmail.com>
X-Gm-Message-State: ALoCoQlT1AfNnaiLkrM4UutmNjRkw1qjSjMbn/zDk4eNef+L0qv0lAEN00ySfJ3cJ3ndA3ZP6oYu
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] Misc: detect trailing space in the patches
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
X-List-Received-Date: Thu, 06 Dec 2012 05:47:50 -0000
Content-Type: multipart/alternative; boundary=bcaec517c5489849f404d028a3f0

--bcaec517c5489849f404d028a3f0
Content-Type: text/plain; charset=UTF-8

Hi,

On 6 December 2012 15:23, Martin Jansa <martin.jansa@gmail.com> wrote:

> Can you add also detection of mixed whitespace? E.g. tab followed by space
> in multilinear indentation? Only as warning. Thanks
>

These checks can generate infuriating false positives when your patch
modifies upstream code which has trailing or mixed whitespace in either
context or removal lines; in this case, removing a line with trailing
whitespace and replacing it with one which doesn't would generate a
warning.  Mixed whitespace is also part of some coding styles, notably the
kernel's.

Cheers,
Daniel

--bcaec517c5489849f404d028a3f0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<div class=3D"gmail_extra"><br>On 6 December 2012 15:23, Martin Jansa <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_bl=
ank">martin.jansa@gmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_qu=
ote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">
<p dir=3D"ltr">Can you add also detection of mixed whitespace? E.g. tab fol=
lowed by space in multilinear indentation? Only as warning. Thanks</p></blo=
ckquote><div><br></div><div>These checks can generate infuriating false pos=
itives when your patch modifies upstream code which has trailing or mixed w=
hitespace in either context or removal lines; in this case, removing a line=
 with trailing whitespace and replacing it with one which doesn&#39;t would=
 generate a warning. =C2=A0Mixed whitespace is also part of some coding sty=
les, notably the kernel&#39;s.</div>
<div><br></div><div>Cheers,</div><div>Daniel=C2=A0</div></div></div>

--bcaec517c5489849f404d028a3f0--
