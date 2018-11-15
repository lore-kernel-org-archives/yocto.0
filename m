Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3A91E00C19; Wed, 14 Nov 2018 17:59:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (kergoth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.194 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
	[209.85.167.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6543DE00A6B
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 17:59:20 -0800 (PST)
Received: by mail-oi1-f194.google.com with SMTP id r127-v6so15463101oie.3
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 17:59:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=kpCgRGKCfsnNA55fGU+TPTSpnyjwKw5GMheZtE5aWt8=;
	b=cJjLPI2M4iK/NPJEeX5Wpsf+4hTKVzTTR12CoooXM6SSVtU54LMfAZlsnOErok3Iaz
	dIg5Wl8WBcJd5qFc05iEKyXLa6umNeiz4t2kaKCTIHExxoDCqg48bYcBYLKLm4B4lKVz
	zobTWN5bpqTN+0lZSapMiEXZatW9blcyNgkVTPrCFzdBxfwpg2PzZt+ERvUKQiIlM7rv
	+gOxEnqAD7mwXY4T9ZWzCLCw5A6ij229aQRrUlWBhNgrNq17xbWevOC1Es2KVw+FdZYh
	jkz3aczru6dBqsXON/otJMrAtkNWB+qssLqi4COp5CHckSATB4rNsNlSYlh4eYRKn9qi
	bmRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=kpCgRGKCfsnNA55fGU+TPTSpnyjwKw5GMheZtE5aWt8=;
	b=r2osbE//eVicatyjaNFPBskQw5eoKvz5d2yJH6bcYgqfKBTQ+DfIUTBc8Dy/VKV43o
	mrHvxHQ9wzELmmQ+cAzEbI03lCXP28lcVrzhAFXa3SP+aG94ByaRwBPnMlR9ch9aA6+j
	5JMYPds4N+bDM//bV+gyc/zWKUQgY2DUhTuA3Ft+nE6kItjRwWMnkn/dZ/eA1tCwYWrY
	b7bgd/G0lMs6BZ85wvZ6kKHjpVJFZQNQXHu0fcTk36+yutuRcsfQMtF+rZZHk2oGfhoP
	xYrdPRohxXAm/DoVRMBib7OVBKKip96Mo0tdakYyvdJGYiE/4kGuduzGY4s4yl19euyE
	lILw==
X-Gm-Message-State: AGRZ1gK4MRBCcG3obta5CX1V64Yc7z1dspieVEcCYIg+Sv8RcVux+kfZ
	ssVRAidYARqO3xgHm1QfCDDClccydSMhGxlCvsY=
X-Google-Smtp-Source: AJdET5cPG2MB8M4goymiBTngP6qTgOCK9zjANF5ZWTZzamudpjD8pNPPergrmsR/betF8jiinaQ9CYsPYU1TN5jaZ7g=
X-Received: by 2002:aca:dbd4:: with SMTP id
	s203-v6mr2373560oig.109.1542247159559; 
	Wed, 14 Nov 2018 17:59:19 -0800 (PST)
MIME-Version: 1.0
References: <CACfi_Z3yjSK95o843HqpubqKgx=f-3u3e3GwGz65enKYTmbS6Q@mail.gmail.com>
In-Reply-To: <CACfi_Z3yjSK95o843HqpubqKgx=f-3u3e3GwGz65enKYTmbS6Q@mail.gmail.com>
From: Christopher Larson <kergoth@gmail.com>
Date: Wed, 14 Nov 2018 18:59:07 -0700
Message-ID: <CABcZANk279D1gPSb3eib0XpdUmEAz5TRB8DKt6NBALfKVU6cOA@mail.gmail.com>
To: davis.roman84@gmail.com
Cc: yocto <yocto@yoctoproject.org>, bitbake-devel@lists.openembedded.org,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [bitbake-devel] difference between DEPLOYDIR vs D
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
X-List-Received-Date: Thu, 15 Nov 2018 01:59:21 -0000
Content-Type: multipart/alternative; boundary="0000000000001a009b057aaa66ce"

--0000000000001a009b057aaa66ce
Content-Type: text/plain; charset="UTF-8"

IIrc DEPLOYDIR contents get copied to DEPLOY_DIR by sstate for the
do_deploy task. I.e. tmp/deploy/. This is independent of packaging.

On Wed, Nov 14, 2018 at 5:38 PM Davis Roman <davis.roman84@gmail.com> wrote:

> Hello,
>
> I'm trying to understand the correlation between the $DEPLOYDIR and $D
> variables.
>
> They both seem very similar.
>
> Do files from DEPLOYDIR eventually get copied to D in order to finally
> make its way into the final package?
>
> If so, why bother with  DEPLOYDIR and instead just copy straight into D?
>
> Thank you,
>
> Davis
> --
> _______________________________________________
> bitbake-devel mailing list
> bitbake-devel@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/bitbake-devel
>


-- 
Christopher Larson
kergoth at gmail dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Senior Software Engineer, Mentor Graphics

--0000000000001a009b057aaa66ce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">IIrc DEPLOYDIR contents get copied to DEPLOY_DIR by sstate=
 for the do_deploy task. I.e. tmp/deploy/. This is independent of packaging=
.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Nov 14, 2018=
 at 5:38 PM Davis Roman &lt;<a href=3D"mailto:davis.roman84@gmail.com">davi=
s.roman84@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr">Hello,=C2=A0<div><br></div><div>I&#39;m trying to understa=
nd the correlation between the $DEPLOYDIR and $D variables.=C2=A0</div><div=
><br></div><div>They both seem very similar.</div><div><br></div><div>Do fi=
les from DEPLOYDIR eventually get copied to D in order to finally make its =
way into the final package?</div><div><br></div><div>If so, why bother with=
=C2=A0 DEPLOYDIR and instead just copy straight into D?</div><div><br></div=
><div>Thank you,</div><div><br>Davis</div></div>
-- <br>
_______________________________________________<br>
bitbake-devel mailing list<br>
<a href=3D"mailto:bitbake-devel@lists.openembedded.org" target=3D"_blank">b=
itbake-devel@lists.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/bitbake-devel" re=
l=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/mailman/li=
stinfo/bitbake-devel</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"l=
tr"><div><div dir=3D"ltr">Christopher Larson<br>kergoth at gmail dot com<br=
>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Senior Software Engineer, M=
entor Graphics</div></div></div></div>

--0000000000001a009b057aaa66ce--
