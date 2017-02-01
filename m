Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A68EDE00942; Wed,  1 Feb 2017 04:52:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.171 listed in list.dnswl.org]
Received: from mail-yw0-f171.google.com (mail-yw0-f171.google.com
	[209.85.161.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FC3FE008F3
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2017 04:52:48 -0800 (PST)
Received: by mail-yw0-f171.google.com with SMTP id l19so234239439ywc.2
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2017 04:52:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=tUQObOo1SaeHVBeDoV3EcE3jcd0GVbOR5l0dueu0d20=;
	b=hw7N5+4EBZ1zqKAlP3UYOgUX8CZUbXkyIaf4PHE515Qaf9mtQWyYWWoBnn/mXEFaap
	4CFLGV8QWUbfRvo3v8KzXCCVDNWW4WmPLOqpVo/8kQVXnPD6Gw8/pu6NZA6geaKFFUlz
	H7YRjDIJm8HHqCNWi/wqPv529BGeETfH0rD4QRVAh5xE5nNnXoQOU0Ik4G4MO2t+idAi
	tFI3g4edik8xPzMgn6bMcKYzVN/B/WgDF1CWCBKFfERxfmjbax8fmspUzkS0fjpYCd3m
	Y8+BkWSTFoYNbWtu+w8p3p2XhsxjQY/BqmN6T5Vg5cKf1Ib2IXQ/ucxal1IWliaaIkZY
	UPdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=tUQObOo1SaeHVBeDoV3EcE3jcd0GVbOR5l0dueu0d20=;
	b=ZWn1WHywoO0pq7OlZD3I0QUYqphK7SkPEGU7Z2IjZue8iYIPBurUT8zaqCkj7vtOCX
	XavGDTXQNaWlerGkpk7eswUxUL7eSluY0XQBzGUaZU6LfqLhmPTb5aguQHDbSI4KSgwU
	pdTgf+5aEZZOnk0JnsNawpxNMIG5yMnfjBIUXW7GZ7pmuyv5qauCrY8jJjxHvGmti9a7
	5vZ670SCX+narMUiKByHg8Ygc/ztVhn7vn+4Q1CkpJ+LdMQCdpvp/kiBMQbjPRRMiwYr
	kXOREIcx2U5tyT0rWDnJcJU260/M6AbUbeHyT6wkqNHmkTEleuEJn9WrAcizUtII198W
	Dl1w==
X-Gm-Message-State: AIkVDXLjOhZzBSCM/NDNCIdVhUC2pSW9Bt244mLwHBSWT5NCSHZmYTXeOTNJ4JbLfs0eBGoqzGxCGSiFmppTsw60
X-Received: by 10.129.177.197 with SMTP id p188mr1431116ywh.183.1485953568080; 
	Wed, 01 Feb 2017 04:52:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.13.234.11 with HTTP; Wed, 1 Feb 2017 04:52:17 -0800 (PST)
In-Reply-To: <1485946097.20333.193.camel@intel.com>
References: <04fb01d27c77$613d3780$23b7a680$@ln-systems.com>
	<1485946097.20333.193.camel@intel.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Wed, 1 Feb 2017 14:52:17 +0200
Message-ID: <CAHiDW_EBjCQ_X04mA8b-5OdHSoTN+AqNbneZiLCTWCXp70f6OQ@mail.gmail.com>
To: Patrick Ohly <patrick.ohly@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: DEPENDS only half working
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
X-List-Received-Date: Wed, 01 Feb 2017 12:52:55 -0000
Content-Type: multipart/alternative; boundary=94eb2c14620494c2c80547778686

--94eb2c14620494c2c80547778686
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 1 February 2017 at 12:48, Patrick Ohly <patrick.ohly@intel.com> wrote:

> On Wed, 2017-02-01 at 10:38 +0000, colin.helliwell@ln-systems.com wrote:
> > I=E2=80=99ve got an odd problem with a pair of recipes:
> >
> > App =E2=80=98bar=E2=80=99 uses =E2=80=98libfoo=E2=80=99, so I=E2=80=99v=
e set a DEPENDS in bar.bb =E2=80=93 I can see
> > this is being half picked up, because =E2=80=98bitbake bar=E2=80=99 sho=
ws both builds
> > being started. However bar isn=E2=80=99t waiting on libfoo =E2=80=93 ba=
r tries to
> > compile before libfoo has even finished configuring, let alone
> > compiled and installed it=E2=80=99s header (foo_lib.h) into sysroot.
> >
> > I think the recipes are probably otherwise correct - if I =E2=80=98bitb=
ake
> > libfoo=E2=80=99 then =E2=80=98bitbake bar=E2=80=99 then all works.
> >
> > I=E2=80=99ve looked at some simple lib recipes within poky (e.g.
> > libwebp_0.4.3.bb / webkitgtk_2.8.5.bb), and can=E2=80=99t spot anything
> > wrong/missing. Not sure if libfoo should have any =E2=80=98install=E2=
=80=99 or similar
> > sections, or any FILES_ settings, but I was [naively=E2=80=A6?] hoping =
that
> > the inherited classes will be sorting out all that generic kinda
> > stuff.
>
> [...]
>
> > DEPENDS_${PN} =3D "libfoo"
>   ^^^^^^^^^^^^^
> This needs to be just "DEPENDS". DEPENDS sets the dependencies for the
> compilation of the entire recipe, whereas...
>
> > RDEPENDS_${PN} =3D "libfoo"
>
> ... RDEPENDS is for runtime dependencies specific packages and thus has
> _<package name> as suffix ($PN =3D bar in this case).
>
>
You also don't need the RDEPENDS_${PN} line in your recipe at all in normal
cases: if your app links with libfoo, the runtime dependency will be
automatically added.

Jussi

--94eb2c14620494c2c80547778686
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
 February 2017 at 12:48, Patrick Ohly <span dir=3D"ltr">&lt;<a href=3D"mail=
to:patrick.ohly@intel.com" target=3D"_blank">patrick.ohly@intel.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span c=
lass=3D"gmail-">On Wed, 2017-02-01 at 10:38 +0000, <a href=3D"mailto:colin.=
helliwell@ln-systems.com">colin.helliwell@ln-systems.com</a> wrote:<br>
&gt; I=E2=80=99ve got an odd problem with a pair of recipes:<br>
&gt;<br>
&gt; App =E2=80=98bar=E2=80=99 uses =E2=80=98libfoo=E2=80=99, so I=E2=80=99=
ve set a DEPENDS in <a href=3D"http://bar.bb" rel=3D"noreferrer" target=3D"=
_blank">bar.bb</a> =E2=80=93 I can see<br>
&gt; this is being half picked up, because =E2=80=98bitbake bar=E2=80=99 sh=
ows both builds<br>
&gt; being started. However bar isn=E2=80=99t waiting on libfoo =E2=80=93 b=
ar tries to<br>
&gt; compile before libfoo has even finished configuring, let alone<br>
&gt; compiled and installed it=E2=80=99s header (foo_lib.h) into sysroot.<b=
r>
&gt;<br>
&gt; I think the recipes are probably otherwise correct - if I =E2=80=98bit=
bake<br>
&gt; libfoo=E2=80=99 then =E2=80=98bitbake bar=E2=80=99 then all works.<br>
&gt;<br>
&gt; I=E2=80=99ve looked at some simple lib recipes within poky (e.g.<br>
&gt; <a href=3D"http://libwebp_0.4.3.bb" rel=3D"noreferrer" target=3D"_blan=
k">libwebp_0.4.3.bb</a> / <a href=3D"http://webkitgtk_2.8.5.bb" rel=3D"nore=
ferrer" target=3D"_blank">webkitgtk_2.8.5.bb</a>), and can=E2=80=99t spot a=
nything<br>
&gt; wrong/missing. Not sure if libfoo should have any =E2=80=98install=E2=
=80=99 or similar<br>
&gt; sections, or any FILES_ settings, but I was [naively=E2=80=A6?] hoping=
 that<br>
&gt; the inherited classes will be sorting out all that generic kinda<br>
&gt; stuff.<br>
<br>
</span>[...]<br>
<br>
&gt; DEPENDS_${PN} =3D &quot;libfoo&quot;<br>
=C2=A0 ^^^^^^^^^^^^^<br>
This needs to be just &quot;DEPENDS&quot;. DEPENDS sets the dependencies fo=
r the<br>
compilation of the entire recipe, whereas...<br>
<br>
&gt; RDEPENDS_${PN} =3D &quot;libfoo&quot;<br>
<br>
... RDEPENDS is for runtime dependencies specific packages and thus has<br>
_&lt;package name&gt; as suffix ($PN =3D bar in this case).<br>
<br></blockquote><div><br></div><div>You also don&#39;t need the RDEPENDS_$=
{PN} line in your recipe at all in normal cases: if your app links with lib=
foo, the runtime dependency will be automatically added.</div><div><br></di=
v><div>Jussi</div></div></div></div>

--94eb2c14620494c2c80547778686--
