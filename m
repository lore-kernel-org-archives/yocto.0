Return-Path: <chuckwolber@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23D06E00C71; Thu, 14 Feb 2019 12:29:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (chuckwolber[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com
	[209.85.221.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B6C3E00C46
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 12:29:44 -0800 (PST)
Received: by mail-vk1-f174.google.com with SMTP id h128so1704822vkg.11
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 12:29:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=IiUdWDbfKAngec6JxKBfeEdwV33bZ1Jx6OZFqujO00o=;
	b=o+dd9EFfymWn3YDtc8I/EG82siocQoJQuKBuL+vrsumSjDHP3hrDalvbz8KwnFWxWX
	GPt06yxs7SDDRuJOW/S2oFTs2k6N/LyCmK+bgyuJhMOk0edKRDUp11pDe1MMIyJHrinH
	TubR/oKpTyAoJFjXr2WYLb1A/NepDv0uzashCKDFpuc5fu0d7u+7YkFRKSo4hg5WYW3K
	i9hMf9B4kG4p7admsgapRR4eRNcMkJTbClqChzgHXyF/HwZQt6MVKEnEUpSAcII2oSpJ
	jzGnB3dkRISuLBF3wJVi+3Y0VnUq0TA9zKlkuJD4PghulcIM5H1Fa+q02/pPzuCyM5oI
	00ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=IiUdWDbfKAngec6JxKBfeEdwV33bZ1Jx6OZFqujO00o=;
	b=Xp4pSFjF8biu5B3x1RO0K+0kb9Mpdt77rK8mQ5IbdqpuFQymbV8fBx/+0NQevezrYc
	gpi0slfn3mxdM+bJFx9BYkUC6TZKWUY2AJ1WTajIBdyOtdi5pMavwpfCv/W1znkeb2XS
	xi/xU+Yox/AIRAH8rqs/ztZEt3OVc88SkotZe498rgTNX6Zk+oXHSlhmodJ5yfnumEcq
	Br/lM9HZyuj/8TCUUVTgWIjUo496f0of3m5rEZWSTGUwCCv56rBkSYVdAWug8M3b4kok
	tv5oUTcMwUeGdRJTaGs27/l4iW9LXzSrsg3hC+pY8PQ8uFt/b7X8mb7t5HApWh9X3zuM
	7ssw==
X-Gm-Message-State: AHQUAubBWHzmlHd95rAl+/dZtZnkiRCWYJWM/3btjTG9T2yGJi1t5n/Y
	MFvSuLDzInAuzHIZl35DPP2SyfBmoCxKCKvhI+Y=
X-Google-Smtp-Source: AHgI3IaloH2YjOsKIoFWULmnkXNt/T+qmqsW5eWX2jqZzxp5dMfIR8mzK+FQKoASF+sfJUwETQqpapCIt3u8Y6FAyOI=
X-Received: by 2002:a1f:cb82:: with SMTP id b124mr3091559vkg.65.1550176183539; 
	Thu, 14 Feb 2019 12:29:43 -0800 (PST)
MIME-Version: 1.0
References: <IwCSBa8UNgIfRzldVTE4xVmfnQsdsbhPhxR3hNKJSg5WGpUoVUnaS-rwOcCQ-oDgZiMhl75IKCl6BTdjUzZQTK0QLtDDFLNOUdX5SgOJezg=@protonmail.com>
	<CAJTo0LYK1DoH16fOcAdv7sxfefpJddWJqcb0oVchAb8sJy_QYw@mail.gmail.com>
In-Reply-To: <CAJTo0LYK1DoH16fOcAdv7sxfefpJddWJqcb0oVchAb8sJy_QYw@mail.gmail.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Thu, 14 Feb 2019 12:29:32 -0800
Message-ID: <CAB=6tBTdYm1FHHvYHKax4GB5stWp_+oh1fQA=A692a8eU8RAOQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Two recipes install the same file
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
X-List-Received-Date: Thu, 14 Feb 2019 20:29:45 -0000
Content-Type: multipart/alternative; boundary="000000000000c25cb40581e08447"

--000000000000c25cb40581e08447
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have run across this a few times, particularly with man pages, when
including upstream packages into my images.

I have to use a bbappend recipe in my meta layer to remove the lower
priority version.

I quite like the feature because it ensures that all collisions are known
and dealt with in a clear and formal way.

..Ch:W..

On Thu, Feb 14, 2019 at 08:55 Burton, Ross <ross.burton@intel.com> wrote:

> Two packages can't install the same file.  In this case I suspect
> you'll need to split up the packaging further.  A common alternative
> for binaries in /bin which want to be installed by both e.g. coreutils
> and busybox is to use update-alternatives.
>
> Ross
>
> On Thu, 14 Feb 2019 at 16:36, madoga <madoga@protonmail.com> wrote:
> >
> > Hello everyone,
> >
> > I have an issue while I'm trying to overwrite some files that two
> recipes are installing. Task do_rootfs fails and I want to ask about the
> best way to solve this:
> >
> > -------------
> > Error: Transaction check error:
> >   file /app/econfig.xml conflicts between attempted installs of
> tests-1.0-r0 and error-1.0-r0
> >   file /app/controller.xml conflicts between attempted installs of
> tests-1.0-r0 and controller-1.0-r0
> >   file /app/user_mode.xml conflicts between attempted installs of
> mode-1.0-r0 and tests-1.0-r0
> > Error Summary
> > -------------
> >  When I launch bitbake with a concrete image this error appears and I
> don't know how I can give "priority" to a recipe. I have found something
> about create .bbappend file...
> >
> > Thank you,
> > Mario
> >
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
--=20
=E2=80=9CI would challenge anyone here to think of a question upon which we=
 once
had a scientific answer, however inadequate, but for which now the best
answer is a religious one."  -Sam Harris

--000000000000c25cb40581e08447
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">I have run across this a few times, particularly wit=
h man pages, when including upstream packages into my images.=C2=A0</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto">I have to use a bbappend recipe=
 in my meta layer to remove the lower priority version.</div></div><div dir=
=3D"auto"><br></div><div dir=3D"auto">I quite like the feature because it e=
nsures that all collisions are known and dealt with in a clear and formal w=
ay.</div><div dir=3D"auto"><br></div><div dir=3D"auto">..Ch:W..</div><div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu,=
 Feb 14, 2019 at 08:55 Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel=
.com">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">Two packages can&#39;t install the same file.=C2=A0 In this case I =
suspect<br>
you&#39;ll need to split up the packaging further.=C2=A0 A common alternati=
ve<br>
for binaries in /bin which want to be installed by both e.g. coreutils<br>
and busybox is to use update-alternatives.<br>
<br>
Ross<br>
<br>
On Thu, 14 Feb 2019 at 16:36, madoga &lt;<a href=3D"mailto:madoga@protonmai=
l.com" target=3D"_blank">madoga@protonmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello everyone,<br>
&gt;<br>
&gt; I have an issue while I&#39;m trying to overwrite some files that two =
recipes are installing. Task do_rootfs fails and I want to ask about the be=
st way to solve this:<br>
&gt;<br>
&gt; -------------<br>
&gt; Error: Transaction check error:<br>
&gt;=C2=A0 =C2=A0file /app/econfig.xml conflicts between attempted installs=
 of tests-1.0-r0 and error-1.0-r0<br>
&gt;=C2=A0 =C2=A0file /app/controller.xml conflicts between attempted insta=
lls of tests-1.0-r0 and controller-1.0-r0<br>
&gt;=C2=A0 =C2=A0file /app/user_mode.xml conflicts between attempted instal=
ls of mode-1.0-r0 and tests-1.0-r0<br>
&gt; Error Summary<br>
&gt; -------------<br>
&gt;=C2=A0 When I launch bitbake with a concrete image this error appears a=
nd I don&#39;t know how I can give &quot;priority&quot; to a recipe. I have=
 found something about create .bbappend file...<br>
&gt;<br>
&gt; Thank you,<br>
&gt; Mario<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=E2=80=9CI would challe=
nge anyone here to think of a question upon which we once had a scientific=
=C2=A0answer, however inadequate, but for which now the best answer is a re=
ligious one.&quot;=C2=A0 -Sam Harris</div></div>

--000000000000c25cb40581e08447--
