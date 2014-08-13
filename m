Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7F58E007A0; Wed, 13 Aug 2014 09:14:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FDB8E0079A
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 09:13:54 -0700 (PDT)
Received: by mail-la0-f48.google.com with SMTP id gl10so9166307lab.7
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 09:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=ovN+4mUUWiHXVZHZVyTRGmf4evuLDrBVBGt3UmRkOOU=;
	b=0c5EJl4brlRA+2jH+AOip+qABlE8idjC6HX6wG2j0zopCNpd1kQAYn+4onpbacAZ3h
	wLfE+d/S7mh0UJShBHypnhNgN1fXpc3Dg+UWBZUEhXEU4wkD33+u5pC8iEjCLX1ciJIF
	6gaiA613cghZZxazqjECyIs8Br5Vp4k/9tTQJOqrZvopy2dBoUKo6JBhKXga/6xoUaa5
	PnNcvcLcYL7cA30m/lDeG4Mot4H4vFKZuwf0GbO2FsZWctI9ATF+Gp+b49im6yUZcG6/
	IpiZ8xnEhbAH4kdJ1ph2gOctJSF9CjukKdnnzb3+yr9oHl3MGubjYJyxNEQ6wSJsxfFF
	X4dQ==
X-Received: by 10.153.4.6 with SMTP id ca6mr5702399lad.32.1407946433150; Wed,
	13 Aug 2014 09:13:53 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.43.42 with HTTP; Wed, 13 Aug 2014 09:13:33 -0700 (PDT)
In-Reply-To: <1407931042-4223-1-git-send-email-sujith.h@gmail.com>
References: <1407931042-4223-1-git-send-email-sujith.h@gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Wed, 13 Aug 2014 09:13:33 -0700
X-Google-Sender-Auth: YhfHEBPCv7_AY5EUEoTbJPjgQIs
Message-ID: <CABcZANkmuK_WzRFUw=-bpfEr=0u01Ewj-vbsa5mVy23kC8Q32Q@mail.gmail.com>
To: Sujith H <sujith.h@gmail.com>
Cc: yocto <yocto@yoctoproject.org>, Sujith H <Sujith_Haridasan@mentor.com>,
	Muzaffar Mahmood <muzaffar_mahmood@mentor.com>
Subject: Re: [PATCH] Adding support for systemd and its service files
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
X-List-Received-Date: Wed, 13 Aug 2014 16:14:03 -0000
Content-Type: multipart/alternative; boundary=001a1133ee5a02c94e05008513e6

--001a1133ee5a02c94e05008513e6
Content-Type: text/plain; charset=UTF-8

On Wed, Aug 13, 2014 at 4:57 AM, Sujith H <sujith.h@gmail.com> wrote:

> From: Sujith H <Sujith_Haridasan@mentor.com>
>
> Signed-off-by: Muzaffar Mahmood <muzaffar_mahmood@mentor.com>
> Signed-off-by: Sujith H <sujith.h@gmail.com>
>

Might want to mention 'psplash' in the commit message in the future when
emailing a multi-purpose list like yocto@, so it's clear what exactly it's
patching before reading the email :)
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1133ee5a02c94e05008513e6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Aug 13, 2014 at 4:57 AM, Sujith H <span dir=3D"ltr">&lt;<a href=3D"=
mailto:sujith.h@gmail.com" target=3D"_blank">sujith.h@gmail.com</a>&gt;</sp=
an> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":zt" class=3D"a3s" style=3D"overf=
low:hidden">From: Sujith H &lt;<a href=3D"mailto:Sujith_Haridasan@mentor.co=
m">Sujith_Haridasan@mentor.com</a>&gt;<br>


<br>
Signed-off-by: Muzaffar Mahmood &lt;<a href=3D"mailto:muzaffar_mahmood@ment=
or.com">muzaffar_mahmood@mentor.com</a>&gt;<br>
Signed-off-by: Sujith H &lt;<a href=3D"mailto:sujith.h@gmail.com">sujith.h@=
gmail.com</a>&gt;</div></blockquote></div><br></div><div class=3D"gmail_ext=
ra">Might want to mention &#39;psplash&#39; in the commit message in the fu=
ture when emailing a multi-purpose list like yocto@, so it&#39;s clear what=
 exactly it&#39;s patching before reading the email :)<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a1133ee5a02c94e05008513e6--
