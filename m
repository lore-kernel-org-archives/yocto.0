Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6076CE00C0E; Wed, 23 Sep 2015 03:09:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.170 listed in list.dnswl.org]
Received: from mail-yk0-f170.google.com (mail-yk0-f170.google.com
	[209.85.160.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BB86E007B3
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 03:09:29 -0700 (PDT)
Received: by ykdt18 with SMTP id t18so36219728ykd.3
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 03:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=wAWKWJVtmnCFJcUesxxqEtIPV+m2YH5PQO6oUsXS/sQ=;
	b=xas1pJgML3nn5mTyvtTlFli9D16g2REYfhztN/IOjBNhYE3kgT4qQ4iPJ15/BbIoXI
	X/IFaVjyJ5wlgwOaYQbrrqeE//p3ccGucCATrqM5CGTHHYGVAKuAMRg3DtrM+EtM4QHp
	vpabzw++qDIm59h9CT6jnCv8JzWwXIrLdMSwHVt7CB9YKo+tKYJZXxPtKm39CcKM+w2g
	m8fDA6H0RMILr8hOtbrBz0YlgVV3JCvFzoSPPlxOEiWbc9fM0LVQ3r0QNiqONBCCN6Go
	/MPTreDrsw4H3C3bHsvb9yitC7DNnOcxj5cBEumHvHAimio10tPBkxazQSdwnj4lb7Bd
	yWew==
MIME-Version: 1.0
X-Received: by 10.13.204.81 with SMTP id o78mr25354021ywd.108.1443002969114;
	Wed, 23 Sep 2015 03:09:29 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Wed, 23 Sep 2015 03:09:28 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Wed, 23 Sep 2015 03:09:28 -0700 (PDT)
In-Reply-To: <54D97D1C25A94C8987390AB26D5EBF79@PAULD>
References: <F9B37C5086864E2EA06AC70C09CF7C25@PAULD>
	<CAFKnvs6eVMrfcH3AOS28vAG237UUbYdLKR=FGB9PBipOQZbqYg@mail.gmail.com>
	<3DB96F2F9D444EFE931CA8443BAFBACE@PAULD>
	<CAPWNY8XTWDDS83JwizV8jH=xkxs9hdRgBLB5CsacTYQsqCwG=Q@mail.gmail.com>
	<DEEBEF6233F54A17BB00A9E93D0A54EC@PAULD>
	<1442946736651.15866@seescan.com> <560252C3.80207@topic.nl>
	<54D97D1C25A94C8987390AB26D5EBF79@PAULD>
Date: Wed, 23 Sep 2015 07:09:28 -0300
Message-ID: <CAF3SDA6D2-SNdU0bbCH0+5vk7XbYgdx-O1Wm+Z_5xQfjbv===Q@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: yocto@yoctoproject.org
Subject: Re: [systemd-devel] How to automount
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
X-List-Received-Date: Wed, 23 Sep 2015 10:09:34 -0000
Content-Type: multipart/alternative; boundary=001a114820c4626ad00520674f4a

--001a114820c4626ad00520674f4a
Content-Type: text/plain; charset=UTF-8

I think that sync just flushes data to disk and umount clears the dirty
bit. There is no sync.vfat that I know.
Em 23/09/2015 05:31, "Paul D. DeRocco" <pderocco@ix.netcom.com> escreveu:

> > From: Mike Looijmans
> >
> > This only serves to remove a mounted directory after
> > "yanking" the device. It
> > doesn't really do anything useful though, you'll still get corrupted
> > filesystems, because Linux is way too lazy in writing out dirty data.
> >
> > Proper solution would be to have the system mount a removable
> > device as
> > read-only, and promote it to r/w once someone tries to write
> > to it. And then
> > after a timeout, it should go back to readonly.
> >
> > Supposedly, "autofs" can accomplish this, but I've never met
> > anyone who got
> > that to actually work.
>
> In my system, the removable drive is used only for backing up or restoring
> various data files in response to user commands. If I do a sync after each
> such command, shouldn't that be enough to guarantee the file system
> doesn't get corrupted when the drive is removed? Will it also ensure the
> dirty flag is clear, or does that get set anyway?
>
> --
>
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114820c4626ad00520674f4a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I think that sync just flushes data to disk and umount clear=
s the dirty bit. There is no sync.vfat that I know.</p>
<div class=3D"gmail_quote">Em 23/09/2015 05:31, &quot;Paul D. DeRocco&quot;=
 &lt;<a href=3D"mailto:pderocco@ix.netcom.com">pderocco@ix.netcom.com</a>&g=
t; escreveu:<br type=3D"attribution"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">&gt; Fr=
om: Mike Looijmans<br>
&gt;<br>
&gt; This only serves to remove a mounted directory after<br>
&gt; &quot;yanking&quot; the device. It<br>
&gt; doesn&#39;t really do anything useful though, you&#39;ll still get cor=
rupted<br>
&gt; filesystems, because Linux is way too lazy in writing out dirty data.<=
br>
&gt;<br>
&gt; Proper solution would be to have the system mount a removable<br>
&gt; device as<br>
&gt; read-only, and promote it to r/w once someone tries to write<br>
&gt; to it. And then<br>
&gt; after a timeout, it should go back to readonly.<br>
&gt;<br>
&gt; Supposedly, &quot;autofs&quot; can accomplish this, but I&#39;ve never=
 met<br>
&gt; anyone who got<br>
&gt; that to actually work.<br>
<br>
In my system, the removable drive is used only for backing up or restoring<=
br>
various data files in response to user commands. If I do a sync after each<=
br>
such command, shouldn&#39;t that be enough to guarantee the file system<br>
doesn&#39;t get corrupted when the drive is removed? Will it also ensure th=
e<br>
dirty flag is clear, or does that get set anyway?<br>
<br>
--<br>
<br>
Ciao,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Paul D. DeRocco=
<br>
Paul=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mailto:<a href=
=3D"mailto:pderocco@ix.netcom.com">pderocco@ix.netcom.com</a><br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a114820c4626ad00520674f4a--
