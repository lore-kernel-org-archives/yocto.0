Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE220E00803; Fri, 16 Sep 2016 06:34:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.172 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A68BEE006E9
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 06:34:20 -0700 (PDT)
Received: by mail-io0-f172.google.com with SMTP id m79so25675432ioo.3
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 06:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vNDF4ideK1SQj1C4wC6wEfEUe/uO/XpjEnzZ3NB9+y4=;
	b=Ba44HDLe/nIwNhrqns2ND2SSRlFhvMlDaRsgOMH0PZeYF8nBf3sZCbfNKJdYkIZ2g9
	4QihVmzcERXIMc6R5E9WT0GUhEX1fkFIeA7VNhJj/yMS+RfozRCG6/ZpYlwwuaE4/ksp
	4iFE8o4p5eFjyf2J/1ojNNO7kctGLzrZ9yvPHtwOFfhsvU7FfiM/C4C/nSHFmhVsij4o
	bkoXZmHnFkm+8bodCxynbHJpfNzCJ/gWkR6zX1yVkVKA2RFi7+pb74oXnqJ8q6Lqr03K
	iejDGvnw7CPJ3uzzzLTLFz1INYL33RbNq/hKpPkb2sqWfKFg7axeasghb+6bmt5WNPq5
	BRuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vNDF4ideK1SQj1C4wC6wEfEUe/uO/XpjEnzZ3NB9+y4=;
	b=K3nM+PHR8h9Kjsc3wBCG1lf9t6lRQanEmtgIe36ZboQqVa1cjK1nMHg7YqXJAi/BZU
	IfU+KnJfOp1nnb4n8dBR8mPRjRVTcrgQv/MBrTmELpyqHXyCslwxVNdVPVXGaN9HAhqW
	1Bb9gHE6KAUfeH2Rrynimwu/nmq4a8LXLvmPM0M9sZPa/ht13aLEOWHTOno2PnLtlRrb
	CDdGMz/SyGxBAz8rrwJ2x0fLKyz1EgWrvDmenI7DBN6/3BBNdDlLElzZGA0n8LNiNMfy
	gDOmjviJILWCX8kZOCUggGC1z8Q5sAbsQfGRISR9MnfSuUCiYF/KuArKypRZSdPVwICi
	1WlA==
X-Gm-Message-State: AE9vXwNRn7A4G78XkUfc167SQGg5Xh1SfzeU/EIeiPZM4Cw6m1vBNTEg3NOV82J6uz7oyaJbw4Paj1evV+WAHtNq
X-Received: by 10.107.142.66 with SMTP id q63mr7030303iod.201.1474032859611;
	Fri, 16 Sep 2016 06:34:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.27 with HTTP; Fri, 16 Sep 2016 06:33:59 -0700 (PDT)
In-Reply-To: <DUB127-W345DAE7A51AB5AFFFEA9D0DAF30@phx.gbl>
References: <DUB127-W345DAE7A51AB5AFFFEA9D0DAF30@phx.gbl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 16 Sep 2016 14:33:59 +0100
Message-ID: <CAJTo0LZ0Z+_JaTO4ZW2VoKOPZvbwsmcYqUVRssPMoaKLq46UPw@mail.gmail.com>
To: Chris Trobridge <christrobridge@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QA Host Contamination in autotools/pkconfig based recipe
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
X-List-Received-Date: Fri, 16 Sep 2016 13:34:23 -0000
Content-Type: multipart/alternative; boundary=94eb2c05ea90fc16f2053ca004d2

--94eb2c05ea90fc16f2053ca004d2
Content-Type: text/plain; charset=UTF-8

On 16 September 2016 at 13:40, Chris Trobridge <christrobridge@hotmail.com>
wrote:

> The install line in the makefile is "cp -af $(APP_LIBXX_FILES)
> $(DESTDIR)$(libdir)/", so I am at a bit of a loss as this should preserve
> ownership.
>

It does - the build happens as you (uid 1000) so the file gets installed as
1000.  This is why makefiles should generally use "install" instead, as
that will reset owner.  automake has built in support for this, otherwise
just patch out "cp" and use "install" instead.

Oh and:

inherit autotools pkgconfig
B = "${S}"

Just inherit autotools-brokensep instead.

Ross

--94eb2c05ea90fc16f2053ca004d2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 16 September 2016 at 13:40, Chris Trobridge <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:christrobridge@hotmail.com" target=3D"_blank">christrobridge@ho=
tmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(20=
4,204,204);border-left-style:solid;padding-left:1ex"><div id=3D"gmail-:lw" =
class=3D"gmail-a3s gmail-aXjCH gmail-m157330459d4f61e1">The install line in=
 the makefile is &quot;cp -af $(APP_LIBXX_FILES) $(DESTDIR)$(libdir)/&quot;=
, so I am at a bit of a loss as this should preserve ownership.<br></div></=
blockquote></div><br></div><div class=3D"gmail_extra">It does - the build h=
appens as you (uid 1000) so the file gets installed as 1000.=C2=A0 This is =
why makefiles should generally use &quot;install&quot; instead, as that wil=
l reset owner. =C2=A0automake has built in support for this, otherwise just=
 patch out &quot;cp&quot; and use &quot;install&quot; instead.</div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Oh and:</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><span style=3D"f=
ont-size:13px">inherit autotools pkgconfig</span><br style=3D"font-size:13p=
x"><span style=3D"font-size:13px">B =3D &quot;${S}&quot;</span><br style=3D=
"font-size:13px"></div><div class=3D"gmail_extra"><span style=3D"font-size:=
13px"><br></span></div><div class=3D"gmail_extra"><span style=3D"font-size:=
13px">Just inherit autotools-brokensep instead.</span></div><div class=3D"g=
mail_extra"><span style=3D"font-size:13px"><br></span></div><div class=3D"g=
mail_extra">Ross</div></div>

--94eb2c05ea90fc16f2053ca004d2--
