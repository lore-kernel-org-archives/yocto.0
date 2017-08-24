Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67FEFE00AD0; Thu, 24 Aug 2017 03:40:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD35FE00726
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 03:40:52 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id o68so733954iod.4
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 03:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DUgzS8m/XkN7f7nF1z54wik5086Y6NvOyBA8bHabET4=;
	b=CZw/bOni99v2IyYHpEFdmxuZuhji32QK1Jhue5cN/AHogEMOXm0oG+Zc/JJuQi64aF
	/9bN40BnTuTP0qn8F86xPyvtwS6WSYChHJuIU0qkgEcAqjVCs4OHhwdA92xowgweKkpy
	HSbckW1qUJvKpieCad71ABkm+I8t7Ip8HMIMjAwrcWhG3+BBCBBjSVzkuMibHfJsgjL2
	XnAFMox/itqqlJ+Oa7iqWifa/EveIfUe22n/hw/x50h/Vl4DJH0VHmfPPw19rv6FoEFp
	DLCIuoBRQNT2iJQd0Q9KHj7MNxbwGnDfszVZIeZzkaa13Uz9gLG51pIGPgK7mySoXr/d
	k3UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DUgzS8m/XkN7f7nF1z54wik5086Y6NvOyBA8bHabET4=;
	b=NJq6gos4uGgDw5qHvd0xuuVulkvaFBLSPzTKQYI297Wmme5hL1Pyw5mpaq1vquqRuA
	y319EhfQCVbvLOPQ1BbTeWL3mF7ZX9OdY5ZHhRfF3ZvhCohLTLeLOYyn/DjcNK+onQKo
	5ff9Afrn6s8TRheFuckjuVF0tDINrFfgscpz0YHzRfJ0oLVd+nW9MyEVlz3mz1eJ/po0
	HuBLKXfbKjaUjEnriYglIfDXkS26qI07ekAr7EUFZjqZhthGuNQ6+b3h1ztPEB/sYdAd
	ub03UukP/iVQq9aLxbiuKX0sS2M7ZfXAyFKJJ/RDOQyh88Zp8vdXi+kYDUhI9FChWqG6
	UkRQ==
X-Gm-Message-State: AHYfb5hDtqyTJ8xhlDo+jODDLPY5GaGZTHAsgBmSlYHTuICqWBH4t9Md
	oeGlJ8b9RpBzUjQVX1FbP+j2igx6is7d
X-Received: by 10.107.160.130 with SMTP id j124mr4649201ioe.229.1503571252142; 
	Thu, 24 Aug 2017 03:40:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.200.71 with HTTP; Thu, 24 Aug 2017 03:40:21 -0700 (PDT)
In-Reply-To: <CAGAf8Lyi4k4o6VSXg97Occ+VErBo5cbTcwa8V7rZhjDKGiOjoQ@mail.gmail.com>
References: <CABpTzB12oTgOmND6wDn+vD2aTvUd6WmavbmHNAXGpA6_dA+Tag@mail.gmail.com>
	<96d5a0c7-4df6-1576-7e50-916c5af724c6@linux.intel.com>
	<CABpTzB3yC2vHf0mFdDq8vGksQSJk1BHkuwTxMb0orCTL4kh1YQ@mail.gmail.com>
	<CAGAf8LzHHWqNmq9g2ZGUMnMnrtD00QPdJ736ttTNAbM+-uyHHQ@mail.gmail.com>
	<CAHiDW_GPQ4WvxqbkSGAq4K=bGfqX45pJrzUGJ1NsgazLtyv40g@mail.gmail.com>
	<CAGAf8Ly4y7xtjgmMrUb35Jkm-fyumN=LKCcfFsXm7+03xUE0Hw@mail.gmail.com>
	<CAHiDW_GuP0+aQdr8utVDD=vUwXoq3OPjR9Psb=t-Js9v8j+F+w@mail.gmail.com>
	<CAGAf8Lyi4k4o6VSXg97Occ+VErBo5cbTcwa8V7rZhjDKGiOjoQ@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Thu, 24 Aug 2017 13:40:21 +0300
Message-ID: <CAHiDW_EUWtZ6LOEL=yNNbyvp=59i4QRqusknwQJ43PPXa+Diyg@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [DNF YOCTO clarifications] smart was replaced with dnf in Yocto 2.3
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
X-List-Received-Date: Thu, 24 Aug 2017 10:40:53 -0000
Content-Type: multipart/alternative; boundary="001a1140ec4260f9f905577d760a"

--001a1140ec4260f9f905577d760a
Content-Type: text/plain; charset="UTF-8"

On 24 August 2017 at 10:33, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:
>
> Hello Jussi,
>
> I would like to thank you very much for the useful reply. It was a bit
different with me, but most boiled down as you said/explained (the
difference are in client/server IP addresses, but everything else is almost
the same - I guess, I do not have complete set of .rpms on my server side).
>
> I issued the following comand on client (qemux86-64): dnf list all | wc
-l, and got the following response:
> Repository 'oe-packages' is missing name in configuration, using id.
> Last metadata expiration check: 0:42:56 ago on Thu Aug 24 06:13:31 2017
UTC
> 7909
>
> Regarding the command's answer, I have two questions to ask: one easy,
and one tough. ;-)
>
> Easy one. What is the reason for this message: Repository 'oe-packages'
is missing name in configuration, using id???

I'm not a yum/dnf expert at all but the error seems to be saying that
oe-packages.repo is missing a line like "name =  OpenEmbedded packages".

> Tough one: 7909 packages overall on server. Could you (YOCTO
maintainers), please, keep DNF (for .rpm packages) onwards indefinitely in
YOCTO, and make/create master YOCTO download servers, the same what Fedora
distro does for almost two decades (with YUM, prior DNF)?
>
> The positive answer on the second question will make (for many thousand
people using .rpms in YOCTO) life much easier, won't it?!

No. Yocto is not an operating system, it's a toolset that can be used to
build many wildly different operating systems. An rpm repo would only be
compatible with one of those OSes.

If a Yocto user builds and maintains a specific OS with Yocto, it might
make sense for them to maintain rpm repos for that OS. It does not make
sense for Yocto project.

 - Jussi

--001a1140ec4260f9f905577d760a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 24 August 2017 at 10:33, Zoran Stojsavljevic &lt;<a hre=
f=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavl=
jevic@gmail.com</a><wbr>&gt; wrote:<br>&gt;<br>&gt; Hello Jussi,<br>&gt;<br=
>&gt; I would like to thank you very much for the useful reply. It was a bi=
t different with me, but most boiled down as you said/explained (the differ=
ence are in client/server IP addresses, but everything else is almost the s=
ame - I guess, I do not have complete set of .rpms on my server side).<br>&=
gt;<br>&gt; I issued the following comand on client (qemux86-64): dnf list =
all | wc -l, and got the following response:<br>&gt; Repository &#39;oe-pac=
kages&#39; is missing name in configuration, using id.<br>&gt; Last metadat=
a expiration check: 0:42:56 ago on Thu Aug 24 06:13:31 2017 UTC<br>&gt; 790=
9<br>&gt;<br>&gt; Regarding the command&#39;s answer, I have two questions =
to ask: one easy, and one tough. ;-)<br>&gt;<br>&gt; Easy one. What is the =
reason for this message: Repository &#39;oe-packages&#39; is missing name i=
n configuration, using id???<div><br></div><div>I&#39;m not a yum/dnf exper=
t at all but the error seems to be saying that oe-packages.repo is missing =
a line like &quot;name =3D =C2=A0OpenEmbedded packages&quot;.</div><div><br=
>&gt; Tough one: 7909 packages overall on server. Could you (YOCTO maintain=
ers), please, keep DNF (for .rpm packages) onwards indefinitely in YOCTO, a=
nd make/create master YOCTO download servers, the same what Fedora distro d=
oes for almost two decades (with YUM, prior DNF)?<br>&gt;<br>&gt; The posit=
ive answer on the second question will make (for many thousand people using=
 .rpms in YOCTO) life much easier, won&#39;t it?!</div><div><br></div><div>=
No. Yocto is not an operating system, it&#39;s a toolset that can be used t=
o build many wildly different operating systems. An rpm repo would only be =
compatible with one of those OSes.</div><div><br></div><div>If a Yocto user=
 builds and maintains a specific OS with Yocto, it might make sense for the=
m to maintain rpm repos for that OS. It does not make sense for Yocto proje=
ct.</div><div><br></div><div>=C2=A0- Jussi</div></div>

--001a1140ec4260f9f905577d760a--
