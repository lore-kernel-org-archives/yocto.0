Return-Path: <jon.szymaniak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D2B1E013EB; Thu, 14 Jun 2018 13:08:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f196.google.com (mail-ot0-f196.google.com
	[74.125.82.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30503E013EB
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 13:08:21 -0700 (PDT)
Received: by mail-ot0-f196.google.com with SMTP id l15-v6so8537196oth.6
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 13:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ecB1XMtw0yh5MM5ctSRRZnMyoHrjkg5b4R8Fstt10t0=;
	b=THxa1YDC9RRnP3KgkkCb9T8vLJXwZFF1zIJZpF07f99jagFH27cnsGorNmdSKtaSkr
	0KOAOTHpxNbtPHFiup6TKuyET3iaj2Qsw/Nyga67sTgw1zQV+IzD4dyDDRQgFO5N8crI
	fm7eaf9Qq26ZLr6m4hFa1s9WyhTpbLFqQgZtZU5yebJrDVistqM8EeuDDRV1djyg3Q3f
	HSphB1X/0De/Pbe1k49E45GIdI302U2MNSk/QdCcHWgAozwnJBF7I3hqWZhRebXgHLbU
	12hRNonD8IyXZ+YPFSm/gvOwTa/L35D5vXeQZguDkgwAA17uxXtZoi1HHid1pSg50oJ8
	OEDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ecB1XMtw0yh5MM5ctSRRZnMyoHrjkg5b4R8Fstt10t0=;
	b=sIAoRx8GQi7ECicGKyt8X9ILbYlog2PFJF8YugXv+kIsfIFm5lUw/B6gVXxg5VLwg+
	OkSzfzelpqdC/x4Ur+C4Y4WHOiaHRm1hhUAW4EcppBNooOqd9y/mYx5ib+dMxMBud9Gs
	clRtFvmeHvybQ63r1DxWXWBjoTYO7PQqALitUHecSdcytNQu7CbjcPgdxMpFGelBAmG1
	Z5/JJzLhYo8RHsL317Ky9r3VUqtwIDd20+9ngoXMrDm+8Ksgaj4L/rF7880Xhr4vCtTU
	tUVaecsbmr80w21CdvEXqFJuCKirDwMKXwRGfjy/92j02r9BvfE4XUtbb2Tmu793Qx6Q
	JRUQ==
X-Gm-Message-State: APt69E2GdTLbJwyxdzmMdIseV5Xe2QnkXcvv/3b4CBb4B5THrSu1UxKl
	SqrW7tEZTsIm+sLYCLC76ykvsVz9tB+a8e1ARaY=
X-Google-Smtp-Source: ADUXVKL8CXzysj31lwQ5QD+6kB1/198vtXjDCYhEZefsVNAwlooNf0pIA3OBB/y1KhjQ730o2XQTQ0JIqBbLGgZy8wo=
X-Received: by 2002:a9d:2e68:: with SMTP id
	c37-v6mr2105889otd.276.1529006901219; 
	Thu, 14 Jun 2018 13:08:21 -0700 (PDT)
MIME-Version: 1.0
References: <CANge7vWW35a41fOJhFis1aw2vu2qw9TvtodTSKmyuJ5NvCuL7g@mail.gmail.com>
	<CANge7vWC+p7Df41A5uFLDYfP5EpaFiGhBxtEt5N_DJ3mOwvq3g@mail.gmail.com>
	<aade00d6-6ad7-a894-420b-47a97fb68d37@gmail.com>
	<CANge7vVnftfefRnx80EjvEKfZUkPNvd0mf9QUMqXeXc-6UkCag@mail.gmail.com>
	<CAMKF1so9RB+wb3TJPYNkFuW_LU4fgW8Hpjhgz0S1+b0QDdwgng@mail.gmail.com>
In-Reply-To: <CAMKF1so9RB+wb3TJPYNkFuW_LU4fgW8Hpjhgz0S1+b0QDdwgng@mail.gmail.com>
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Thu, 14 Jun 2018 15:08:10 -0500
Message-ID: <CANge7vUjYRAiGSZY-QGzLTU0p57xcOPS3JryxaO0sLVDSZ-ZZw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: qemu-native build fails on sumo due to missing capstone.h
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
X-List-Received-Date: Thu, 14 Jun 2018 20:08:23 -0000
Content-Type: multipart/alternative; boundary="00000000000034d5b5056e9fa915"

--00000000000034d5b5056e9fa915
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 14, 2018 at 14:18 Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Jun 14, 2018 at 9:56 AM Jon Szymaniak <jon.szymaniak@gmail.com>
> wrote:
> >
> > On Thu, Jun 14, 2018 at 11:43 Khem Raj <raj.khem@gmail.com> wrote:
> > > Do you have capstone development headers/libs installed on your build
> host ?
> > >
> >
> > No, and I understand that's an easy thing to address on the build host.
> >
> > However, I don't think this should be necessary build host dependency.
> > QEMU includes the capstone codebase as a git submodule, so everything
> > that's needed is there.
> >
> > Maybe it's just a matter of tweaking the recipe to set
> > CMAKE_INSTALL_PREFIX appropriately so that when the build dives down
> > into the capstone directory, this points to the correct prefix?
> >
> > It looks like the inclusion and use of capstone is new, as of the QEMU
> > version included with sumo. (i.e. This appears not to be the situation
> > with the version used in rocko and pyro).
>
> Least intrusive approach would be to disable it if its not something you
> depend on.


Makes sense, thank you.

Two workarounds that worked for me were either adding qemu-native to
ASSUME_PROVIDED or appending =E2=80=9C--disable-capstone=E2=80=9D to qemu=
=E2=80=99s EXTRA_OECONF.

I=E2=80=99ll try to follow up with a patch to the recipe in oe-core, unless=
 you
suspect that the source of this is merely something on my end.

--00000000000034d5b5056e9fa915
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div><div><div>On Thu, Jun 14, 2018 at 14:18 Khem Raj &lt;<a href=3D"m=
ailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrot=
e:<br></div><div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
On Thu, Jun 14, 2018 at 9:56 AM Jon Szymaniak &lt;<a href=3D"mailto:jon.szy=
maniak@gmail.com" target=3D"_blank">jon.szymaniak@gmail.com</a>&gt; wrote:<=
br>
&gt;<br>
&gt; On Thu, Jun 14, 2018 at 11:43 Khem Raj &lt;<a href=3D"mailto:raj.khem@=
gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt; &gt; Do you have capstone development headers/libs installed on your b=
uild host ?<br>
&gt; &gt;<br>
&gt;<br>
&gt; No, and I understand that&#39;s an easy thing to address on the build =
host.<br>
&gt;<br>
&gt; However, I don&#39;t think this should be necessary build host depende=
ncy.<br>
&gt; QEMU includes the capstone codebase as a git submodule, so everything<=
br>
&gt; that&#39;s needed is there.<br>
&gt;<br>
&gt; Maybe it&#39;s just a matter of tweaking the recipe to set<br>
&gt; CMAKE_INSTALL_PREFIX appropriately so that when the build dives down<b=
r>
&gt; into the capstone directory, this points to the correct prefix?<br>
&gt;<br>
&gt; It looks like the inclusion and use of capstone is new, as of the QEMU=
<br>
&gt; version included with sumo. (i.e. This appears not to be the situation=
<br>
&gt; with the version used in rocko and pyro).<br>
<br>
Least intrusive approach would be to disable it if its not something you<br=
>
depend on.</blockquote><div dir=3D"auto"><br></div></div></div></div></div>=
</div><div><div><div><div><div class=3D"gmail_quote"><div dir=3D"auto">Make=
s sense, thank you.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto=
">Two workarounds that worked for me were either adding qemu-native to ASSU=
ME_PROVIDED or appending =E2=80=9C<span style=3D"color:rgb(49,49,49);word-s=
pacing:1px;background-color:rgb(255,255,255)">--disable-capstone=E2=80=9D t=
o qemu=E2=80=99s=C2=A0</span><span style=3D"color:rgb(49,49,49);word-spacin=
g:1px;background-color:rgb(255,255,255)">EXTRA_OECONF.</span></div><div dir=
=3D"auto"><span style=3D"color:rgb(49,49,49);word-spacing:1px;background-co=
lor:rgb(255,255,255)"><br></span></div><div dir=3D"auto"><span style=3D"col=
or:rgb(49,49,49);word-spacing:1px;background-color:rgb(255,255,255)">I=E2=
=80=99ll try to follow up with a patch to the recipe in oe-core, unless you=
 suspect that the source of this is merely something on my end.</span></div=
><div dir=3D"auto"><br></div></div></div>
</div>
</div>
</div>

--00000000000034d5b5056e9fa915--
