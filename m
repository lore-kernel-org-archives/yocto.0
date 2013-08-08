Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FDB3E01493
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2013 07:03:42 -0700 (PDT)
Received: by mail-la0-f50.google.com with SMTP id fn20so2092290lab.23
	for <yocto@yoctoproject.org>; Thu, 08 Aug 2013 07:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=UGx6+Pv7OrLlMSUjD+hw+lIadHsCF7EnMYtvAZmfJRA=;
	b=hBig+ILEkJuD/HAfXisTv/MjI4ve7VFMnbmryzfxnXfpEWYcM5aMcPFBUB3cqzEjuZ
	MiEr4RAYeYJIxSsu+fqx//gsLX/k+nUJQxTUK3tgd8pjQHJkRqaaDWmeiEzMuVM5vfCN
	bwSySpOzzaQJVrg0NCKWD+rg6mmQ8P+3ezkUTfGLdzfGOIh2wnF63Ia0+poobXV1O1xo
	N/nWer1KLWtGqk8DDv7zqVDhLw5x0Wf/EkHi3UGUbsekM/jX3bEiZ1bsVqDoId9Tvnt/
	LhFzVUZsYR+JiNN316HWRP4lQNZ6oAs8aq871PwgE9KAvKNSFUqaOPHiefBghxTjGr7L
	uQiA==
X-Received: by 10.112.11.20 with SMTP id m20mr2415263lbb.56.1375970620641;
	Thu, 08 Aug 2013 07:03:40 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.17.67 with HTTP; Thu, 8 Aug 2013 07:03:20 -0700 (PDT)
In-Reply-To: <ku083q$oa8$1@ger.gmane.org>
References: <ku083q$oa8$1@ger.gmane.org>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 8 Aug 2013 07:03:20 -0700
X-Google-Sender-Auth: __Jr4-A5G0vV3a0hXB5GzIewyO4
Message-ID: <CABcZAN=mQ-LOVPeEoi5CUDndj2Xyi1BVq8J7deby+fZQxMFKSw@mail.gmail.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: can not build yocto on NFS mounted NAS
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
X-List-Received-Date: Thu, 08 Aug 2013 14:03:43 -0000
Content-Type: multipart/alternative; boundary=001a1133eb74109e6704e3702049

--001a1133eb74109e6704e3702049
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 8, 2013 at 6:57 AM, Robert Berger <
gmane@reliableembeddedsystems.com> wrote:

> Is it like this by design, or should I file a bug in bugzilla?
>
> Previous experiments (only SSTATE and DL from NFS/NAS) seem to work and
> I guess that's also your autobuilder cluster setup.
>

TMPDIR on NFS has never been supported with oe/yocto, and I doubt it will
be at any time in the near future, but if that's changed, I'm sure someone
will jump into the thread and mention it.

As you say, SSTATE_DIR and DL_DIR work fine there.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1133eb74109e6704e3702049
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Aug 8, 2013 at 6:57 AM, Robert Berger <span dir=3D"ltr">&lt;<a href=3D"=
mailto:gmane@reliableembeddedsystems.com" target=3D"_blank">gmane@reliablee=
mbeddedsystems.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":of" style=3D"overflow:hidden">Is=
 it like this by design, or should I file a bug in bugzilla?<br>
<br>
Previous experiments (only SSTATE and DL from NFS/NAS) seem to work and<br>
I guess that&#39;s also your autobuilder cluster setup.</div></blockquote><=
/div><br>TMPDIR on NFS has never been supported with oe/yocto, and I doubt =
it will be at any time in the near future, but if that&#39;s changed, I&#39=
;m sure someone will jump into the thread and mention it.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">As you say,=
 SSTATE_DIR and DL_DIR work fine there.<br>-- <br>Christopher Larson<br>cla=
rson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>
Maintainer - Tslib<br>
Senior Software Engineer, Mentor Graphics
</div></div>

--001a1133eb74109e6704e3702049--
