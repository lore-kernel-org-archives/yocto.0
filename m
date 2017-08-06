Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36010E00C4E; Sun,  6 Aug 2017 02:27:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C06BFE00C46
	for <yocto@yoctoproject.org>; Sun,  6 Aug 2017 02:27:20 -0700 (PDT)
Received: by mail-vk0-f54.google.com with SMTP id j189so1176348vka.0
	for <yocto@yoctoproject.org>; Sun, 06 Aug 2017 02:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YwLVQtQ7pxcFNLM1wJfjSNDWA4scc8jhYkm67W5qfzU=;
	b=p8nisBLbAGQPQ2L2QSpL6AV8Nlskd9mVpAf6reO3JzTfQ0aHf2Tc/qQiCsnqKOS1Hr
	7RR9U1uPjXSReAi+oGslZxG/J+Ib6dg+tcqWtF9NaE2mpRP1KECYJAwTM2o3dRS8FLOD
	TqFMHQ1orCnqoqpIt7UgrjLoUJzGqAnPDTQMNomuFRv6B5aMySxMzABQzHdPR+WrG0Ia
	pqQ2gf++7TEvJeK+kbri1feuqrgr0rX/t++Y3I9IkKoLF5tVDz83qkjiJ1eXn52qcOjF
	hew9aFyac/KGJVgVYp+Pe3JV5BU1c+HR/FpL/jhQVDSogeAsQDJqeIalPJjV5kRhTZI+
	dfCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YwLVQtQ7pxcFNLM1wJfjSNDWA4scc8jhYkm67W5qfzU=;
	b=pv6mOTsQmwwnt0/0mjm/TiDUjwFF2TupuSVN+OPpctjkzTGQjySmeZCdRzK9J+HUC3
	0mWYptJtUsIcSJpH+tht1zIaEI9/5CfM3b3Dly4M98c28K3DhHCem/E0FJf9OYEgAG3Z
	X96PXbJ35MmxwL6a9FPHpBSaLE2c31jIoxm2H3iQdxJEhyZxJs4MWKjnXeV+tCIkOMb9
	4LI1hE4a79n8Z2i0AKHVujTgUwSnnWqpJZVeowr6Zu7f3XoLl/JDtHIOASGKgbpOG6kO
	OH6pYRQBS1S8MYZrBWCHcJoQCqB0lqdojNKjpKRQzZAaT3m3xYRG1pK5EagT5YHYKYO5
	RcWA==
X-Gm-Message-State: AHYfb5hJHvFTKk3pvEWudCLQ9miI8SBON5ErHklM7wNvmNr3V/tQzYwa
	J3hJ3sqB+BA0UjVUqDDBcYqf+lX1kQ==
X-Received: by 10.31.161.22 with SMTP id k22mr4287876vke.141.1502011639968;
	Sun, 06 Aug 2017 02:27:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.26.168 with HTTP; Sun, 6 Aug 2017 02:27:19 -0700 (PDT)
Received: by 10.176.26.168 with HTTP; Sun, 6 Aug 2017 02:27:19 -0700 (PDT)
In-Reply-To: <CA+z1-f_wMOSaDwHde_SAkQgS-447wRECJ0QgkqXZ0gwf2CHk7Q@mail.gmail.com>
References: <CA+z1-f_wMOSaDwHde_SAkQgS-447wRECJ0QgkqXZ0gwf2CHk7Q@mail.gmail.com>
From: "Chris Z." <winotu.email@gmail.com>
Date: Sun, 6 Aug 2017 11:27:19 +0200
Message-ID: <CAEjjReLhUFsW32fR0mzkJUwU+YEAQKzP2v-=BMdXGxPLJAZY8A@mail.gmail.com>
To: "blackthirt33n ." <jjosburn@gmail.com>
Cc: yoctoproject <yocto@yoctoproject.org>
Subject: Re: using wic to build an iso
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
X-List-Received-Date: Sun, 06 Aug 2017 09:27:21 -0000
Content-Type: multipart/alternative; boundary="001a11440aaa3fb84a05561256c0"

--001a11440aaa3fb84a05561256c0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

It's starting from here:
http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#creating=
-partitioned-images

P.S.
This link is to latest doc.

Best regards,
Chris Z.

05.08.2017 19:22 "blackthirt33n ." <jjosburn@gmail.com> napisa=C5=82(a):

> is there documentation on how to use wic to create a bootable iso for
> an x64/x86 target?
> James
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11440aaa3fb84a05561256c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">It&#39;s=
 starting from here:</div><div dir=3D"auto"><a href=3D"http://www.yoctoproj=
ect.org/docs/latest/dev-manual/dev-manual.html#creating-partitioned-images"=
>http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#creatin=
g-partitioned-images</a><br></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">P.S.</div><div dir=3D"auto">This link is to latest doc.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Best regards,</div><div dir=3D"auto">=
Chris Z.</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">05.08.2017 19:22 &quot;blackthirt33n .&quot; &lt;<a href=3D"mailto:jjosb=
urn@gmail.com">jjosburn@gmail.com</a>&gt; napisa=C5=82(a):<br type=3D"attri=
bution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">is there documentat=
ion on how to use wic to create a bootable iso for=C2=A0<div>an x64/x86 tar=
get?</div><div>James</div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div></div>

--001a11440aaa3fb84a05561256c0--
