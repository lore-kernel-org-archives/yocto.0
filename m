Return-Path: <jakobsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA3AEE0095F; Sat, 25 Feb 2017 15:10:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jakobsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96C42E0086E
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 15:10:25 -0800 (PST)
Received: by mail-it0-f66.google.com with SMTP id e137so7977493itc.0
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 15:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=6f09dfQKA3+QEPLe/gdVc5+uICs1GYju+uqdtcnt+CA=;
	b=hjn6gTONJTID4c38lTpovWXWjJAGKHJA6pt6BsO7OQ/qCgEWtSNiszYlk0E8P10IqS
	EEm4zT3H4sBtLB8516ZO4CVHOWKmjdfwrThU5CIHjqMRySynsStPovkg0bS89zH+cays
	5JkAaOl8L+/wyw0jKAllWQzOuKwqzHU0o5LTKOWwWCh7bUF6/GCmM0+PyDjbdA3dMx6T
	kSH6FRYuc3afHVyYkKnEvzZgw7r6Kcpib061TG/VFz1b5gLd8DojeH+MUurvqZU/n70i
	JNZtCySvBCtTDq9IGzo2GsHlR5dSd0W4hEPlAOL9zeTkatq271VBYIB5XdH5zi7Yi5Ia
	aOXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=6f09dfQKA3+QEPLe/gdVc5+uICs1GYju+uqdtcnt+CA=;
	b=Cc5DW2WAM9jYYh+/NX4OtnpNN6H5vdpJ9wVuqzWz3Rxtu9+Xte3hAahwtKN4Tvr1Km
	BtoN4rhQhmSSTV/6maiPSvWTP5wsawKABdqyQTfEWDkPKUD1sR46Gc6hjspM/a/Q2fkW
	1pPpvPNRnme+9WodLlZS19qYSi9BHtROpYCP5sV+1CgMvIm8ki9sfbpgg7wfzUS2U0YW
	7UE7JuPs9XHF3Rdzz7UYiTXwRdgpoqCntFQPsZaLZwZ7RupDgidsOT34vL0rptFkZ3Mc
	y7qb8kSRd9MTTlU/xdNlYXG+lqSjkS2/eiPpbjnAQ2aJW5m/1zK5s+iR9UECqaZaxiES
	znmQ==
X-Gm-Message-State: AMke39m0iSnesqLmfdiUr7SgM1xFgB8JQLi0E6kiLi4urFkJxrEcxeRLrP8TSHXz/ktfXd1NbYjSiujt5AGrKA==
X-Received: by 10.36.51.68 with SMTP id k65mr8230614itk.4.1488064224559; Sat,
	25 Feb 2017 15:10:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.81.69 with HTTP; Sat, 25 Feb 2017 15:10:24 -0800 (PST)
In-Reply-To: <CAD4b0_JR7jfR9QfADu3j0xAv85otVmeDdwTLqVEJSDF-xnAnCw@mail.gmail.com>
References: <CACr_9kHaf_Jqogt0BK8LaXXxrb_L6uhq3=z1ZXvo6M8Dvs4Tiw@mail.gmail.com>
	<CAD4b0_JR7jfR9QfADu3j0xAv85otVmeDdwTLqVEJSDF-xnAnCw@mail.gmail.com>
From: Jakob Simon-Gaarde <jakobsg@gmail.com>
Date: Sun, 26 Feb 2017 00:10:24 +0100
Message-ID: <CACr_9kGfECT5fq6rbufeHLf_EcqaMMXPp74A7yEBXgUmPbhYKQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Python3 partial rootfs installation
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
X-List-Received-Date: Sat, 25 Feb 2017 23:10:26 -0000
Content-Type: multipart/alternative; boundary=001a1143cdb0820c7e054962f3c0

--001a1143cdb0820c7e054962f3c0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for the answer. I tried adding it as a dependency but I get this:
ERROR: Nothing PROVIDES 'python3-modules'

On Fri, Feb 24, 2017 at 10:21 AM, Maciej Borz=C4=99cki <
maciej.borzecki@rndity.com> wrote:

> On Fri, Feb 24, 2017 at 9:50 AM, Jakob Simon-Gaarde <jakobsg@gmail.com>
> wrote:
> > Hi.
> >
> > I want to use Python3 on yocto 2.2 so I added it as a dependency in my
> > project. Python3.5 was added to the final rootfs
> > but it is partial. Many of the standard libraries that are build during
> the
> > image creation does not end up in the target rootfs.
> >
> > For instance socketserver.py which was the first missing module I
> > encountered.
> >
> > Is there any way to make a full standard python3 install?
>
> Installing python3-modules should cover most of your needs.
>
>
> Cheers,
> --
> Maciej Borzecki
> RnDity
>



--=20
Med venlig hilsen / Best regards
Jakob Simon-Gaarde

--001a1143cdb0820c7e054962f3c0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the answer. I tried adding it as a dependency b=
ut I get this:<br>ERROR: Nothing PROVIDES &#39;python3-modules&#39;<br></di=
v><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Feb 24,=
 2017 at 10:21 AM, Maciej Borz=C4=99cki <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:maciej.borzecki@rndity.com" target=3D"_blank">maciej.borzecki@rndity.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""=
>On Fri, Feb 24, 2017 at 9:50 AM, Jakob Simon-Gaarde &lt;<a href=3D"mailto:=
jakobsg@gmail.com">jakobsg@gmail.com</a>&gt; wrote:<br>
&gt; Hi.<br>
&gt;<br>
&gt; I want to use Python3 on yocto 2.2 so I added it as a dependency in my=
<br>
&gt; project. Python3.5 was added to the final rootfs<br>
&gt; but it is partial. Many of the standard libraries that are build durin=
g the<br>
&gt; image creation does not end up in the target rootfs.<br>
&gt;<br>
&gt; For instance socketserver.py which was the first missing module I<br>
&gt; encountered.<br>
&gt;<br>
&gt; Is there any way to make a full standard python3 install?<br>
<br>
</span>Installing python3-modules should cover most of your needs.<br>
<br>
<br>
Cheers,<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
Maciej Borzecki<br>
RnDity<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature">Med venlig hilsen =
/ Best regards<br>Jakob Simon-Gaarde</div>
</div>

--001a1143cdb0820c7e054962f3c0--
