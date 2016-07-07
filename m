Return-Path: <mtl1nuxd3v@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF82DE00C40; Thu,  7 Jul 2016 02:52:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtl1nuxd3v[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.193 listed in list.dnswl.org]
Received: from mail-yw0-f193.google.com (mail-yw0-f193.google.com
	[209.85.161.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78ADBE00C1D
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2016 02:52:35 -0700 (PDT)
Received: by mail-yw0-f193.google.com with SMTP id i12so1170793ywa.0
	for <yocto@yoctoproject.org>; Thu, 07 Jul 2016 02:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZD61gyYgv6CG4dJ5LaoLDd6NwmtyuPvObQKc2YkEVi4=;
	b=QOMTvvyoCZaYJ+1p4Hhn/CwB2PVdYxqr2XCTYFJlyS8OuokNEz0XYaFbcAadUjMhQD
	vJDs/CFbStI948n/rtmV+tx0M/eDCpxScl0q7pCFkedbcWyCOJTnisZiOkydtEvsLqYg
	KU2xD5mp61UlAEz3PZJdIXYUrZ17SSR5wsAHzVajxhGNhTXoTEkDgwbwf6N0B5sGdWXy
	TgbBfGHxl2WIiSfCiWEHs9t5fgGf7mznwD79DTPy0KOpB2RvK5pNIgLzdKEtjYv1DSIr
	t2focbDMNGySmxOKOlUACrEx3a/VyLnQj//EzLjmraOVSm5E1oceifPAhZ7i8yWJFkqt
	nYZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZD61gyYgv6CG4dJ5LaoLDd6NwmtyuPvObQKc2YkEVi4=;
	b=gZqh4vGntTyYoxxv0C3jdZrNtexGk2RPm9iqMbbxKDa6zli9DDXx9l82HIw3qhTHgG
	adINLNU5TrxDgF7bEADYlk0Am7AVachRDY8KjoZo4O4qhZ6NsKe+8bBynEpdF/EKvqVQ
	vjVAzup7dpNmuH9qHZhF6KgjiOGvC3wim9jTnjhxWPFAi3KdWdvMInpE1jTtvTkL/PKQ
	zY3Z+6X07/cWbS2ECQ24UrdEYIkYH1ItSlM4duBCMzjk+qqok1T0kVE0/qPBdc3DYs4Y
	7EykFtsiCRgrW4hDT9qu7t7Rs++ZHqk+GCbXVlwiDZ71TuPIB916xEupR/Jb6pBEOHkg
	qIRw==
X-Gm-Message-State: ALyK8tJU/Niy88A7i0dv9vwJvftwem595dJlnkuW71Q6CkcPfvaCNlxrUkXnkgfKm0kZbnrnKSaLzYw0BU3BXA==
X-Received: by 10.129.138.195 with SMTP id a186mr17604881ywg.182.1467885155293;
	Thu, 07 Jul 2016 02:52:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.81.68 with HTTP; Thu, 7 Jul 2016 02:52:34 -0700 (PDT)
In-Reply-To: <CAMKF1srVd7qAGrG=3W55+MHqgOu-Wdhvu5ANRnRy+yz30Sczdw@mail.gmail.com>
References: <CALf_N3Yd-h21rBw2U_v_Qr3=J4SHDrBS75i7TyS=sLrJv7c54A@mail.gmail.com>
	<CAMKF1srVd7qAGrG=3W55+MHqgOu-Wdhvu5ANRnRy+yz30Sczdw@mail.gmail.com>
From: Mark T <mtl1nuxd3v@gmail.com>
Date: Thu, 7 Jul 2016 10:52:34 +0100
Message-ID: <CALf_N3bKfk8m5hQF_2xTQEhYVgK38=2nkQfb+Ncy=hoL9ZLdKw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: How do I select the kernel version in Dizzy ? ( 3.10 | 3.14 | 3.17 )
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
X-List-Received-Date: Thu, 07 Jul 2016 09:52:39 -0000
Content-Type: multipart/alternative; boundary=94eb2c08044040e592053708a511

--94eb2c08044040e592053708a511
Content-Type: text/plain; charset=UTF-8

Thanks - that's working.
Mark

On 6 July 2016 at 18:53, Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Jul 6, 2016 at 10:40 AM, Mark T <mtl1nuxd3v@gmail.com> wrote:
> > Hi,
> >
> > The Dizzy revision looks to support 3 kernel versions ( 3.10 | 3.14 |
> 3.17
> > ).
> >
> > If I chose Dizzy 1.7.3 - how do I ensure  the 3.10 kernel is used for the
> > build ?
>
> usually you would set that in your machine conf file.
>
> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> PREFERRED_VERSION_linux-yocto ?= "3.10%"
>
> >
> > Thanks,
> >
> > Mark
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--94eb2c08044040e592053708a511
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks - that&#39;s working.<br></div>Mark<br></div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 6 July 2016 at =
18:53, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com"=
 target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><span class=3D"">On Wed, Jul 6, 2016 at 10:40 AM, Mark T=
 &lt;<a href=3D"mailto:mtl1nuxd3v@gmail.com">mtl1nuxd3v@gmail.com</a>&gt; w=
rote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; The Dizzy revision looks to support 3 kernel versions ( 3.10 | 3.14 | =
3.17<br>
&gt; ).<br>
&gt;<br>
&gt; If I chose Dizzy 1.7.3 - how do I ensure=C2=A0 the 3.10 kernel is used=
 for the<br>
&gt; build ?<br>
<br>
</span>usually you would set that in your machine conf file.<br>
<br>
PREFERRED_PROVIDER_virtual/kernel ?=3D &quot;linux-yocto&quot;<br>
PREFERRED_VERSION_linux-yocto ?=3D &quot;3.10%&quot;<br>
<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Mark<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</font></span></blockquote></div><br></div>

--94eb2c08044040e592053708a511--
