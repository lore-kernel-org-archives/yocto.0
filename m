Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A0EEE00B36; Tue, 17 Nov 2015 07:40:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 471E1E00B0B
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 07:40:15 -0800 (PST)
Received: by ioir85 with SMTP id r85so22301897ioi.1
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 07:40:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=A370igIKIvRp0PmtVukcnT2HzvdzG5qPDNzets80wK8=;
	b=Y3YwdL/bOPIpDbtdVQK7Tj4Z25io+7T90zh3AY2NsHAnheCkibXYG3oPcuE/gVzC/f
	xOn1kzfjpttO5Fb4RS/1NYtHGLPUg26lLGbTJsMx8pNyMPACkdSL3czJBE9y4IZeQZPc
	FFb115ihCpRhfgtp5BD3xSx6700zn0y3JL2OUI8s2u+YTzW1JsreDA7H2gMtjgerqoMC
	7uHJ6mtoQMepF5Yd+5ArFlfUOpcIqJMEtx1cAY/TgtGbbiTPZigLOs2krT82/fcD5m+D
	rPGN9q8xi1+AwtRIdKyIhYiEUXa2ubhS7+XlJ6Zid+luzhzKOw7BeQFSp7AlNcDidJaQ
	dwZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth_com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=A370igIKIvRp0PmtVukcnT2HzvdzG5qPDNzets80wK8=;
	b=KxqnKUWsThRmOk8OM0pP3O/QN7Mw0opSoD6x4ZxgKjPE+nBdXsY9mhdyPSTSwYuM0o
	5hMNdnCXlz0jen99grrIyNv8FsBmMZ+Hd7Cjb4N8r9DXJlbdI1phEIKpaef/IsmiUkAJ
	r42tt3X1fXhZetyrq8h8eNuUPqTOpQLM5ShwPxWHb9xlwlV9N9k9DJqOaR7G/DQSqvRu
	X23naFoKKaSwbyitMQzRmJH9BQG8cfg8xV/VEPCtCkAa1cyIfw/mSoZBZMEblOzh27c8
	OtJZCJm0JxWvSmB/OyKkPRonQO+Qes2VSqMJ1fXTYMM6ouI7nBla9RyBlit3ccEAbatN
	uaQg==
X-Received: by 10.107.134.28 with SMTP id i28mr38009574iod.74.1447774815050;
	Tue, 17 Nov 2015 07:40:15 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.93.7 with HTTP; Tue, 17 Nov 2015 07:39:55 -0800 (PST)
In-Reply-To: <564B48D3.7050304@mlbassoc.com>
References: <564B48D3.7050304@mlbassoc.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Tue, 17 Nov 2015 08:39:55 -0700
X-Google-Sender-Auth: ght3dq5Qj4rexz_C3bGzkH4Jgb0
Message-ID: <CABcZANnBeR7BN8M1_GaFDQKbQjbfJtg7_4fy=wH76hMV0vdDuQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: New warning(s)
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
X-List-Received-Date: Tue, 17 Nov 2015 15:40:19 -0000
Content-Type: multipart/alternative; boundary=001a113ecc0a90e2f30524be57b6

--001a113ecc0a90e2f30524be57b6
Content-Type: text/plain; charset=UTF-8

On Tue, Nov 17, 2015 at 8:33 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> When I run bitbake using layers that are not GIT repos, I'm
> now getting a lot of messages like this:
>   fatal: Not a git repository (or any parent up to mount point /raid)
>   Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not
> set).
>
> This seems to be new (I've built from such trees many times
> before with no such messages) and it hardly seems "fatal".
> The messages apparently are coming from 'git' (I tested with
> git version 1.9.1 and 1.7.11)
>
> Why the change?
>

I believe we need https://github.com/kergoth/meta-mentor/commit/2125799
applied to oe-core, haven't had a chance to submit it yet, but it looked to
me like an accidental loss of the stderr capture/suppression when the
metadata_scm functions were reworked recently.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113ecc0a90e2f30524be57b6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Nov 17, 2015 at 8:33 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-le=
ft-style:solid;padding-left:1ex"><div id=3D":fw" class=3D"" style=3D"overfl=
ow:hidden">When I run bitbake using layers that are not GIT repos, I&#39;m<=
br>
now getting a lot of messages like this:<br>
=C2=A0 fatal: Not a git repository (or any parent up to mount point /raid)<=
br>
=C2=A0 Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not=
 set).<br>
<br>
This seems to be new (I&#39;ve built from such trees many times<br>
before with no such messages) and it hardly seems &quot;fatal&quot;.<br>
The messages apparently are coming from &#39;git&#39; (I tested with<br>
git version 1.9.1 and 1.7.11)<br>
<br>
Why the change?</div></blockquote></div><br>I believe we need=C2=A0<a href=
=3D"https://github.com/kergoth/meta-mentor/commit/2125799">https://github.c=
om/kergoth/meta-mentor/commit/2125799</a> applied to oe-core, haven&#39;t h=
ad a chance to submit it yet, but it looked to me like an accidental loss o=
f the stderr capture/suppression when the metadata_scm functions were rewor=
ked recently.<br>-- <br><div class=3D"gmail_signature">Christopher Larson<b=
r>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus=
<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics</div>
</div></div>

--001a113ecc0a90e2f30524be57b6--
