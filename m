Return-Path: <djszapi@archlinux.us>
Received: from mail-pb0-f51.google.com (mail-pb0-f51.google.com
	[209.85.160.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC909E014E4
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 04:20:10 -0700 (PDT)
Received: by mail-pb0-f51.google.com with SMTP id um15so1922396pbc.24
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 04:20:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=r0VsB5NiwY0pXVaoPGV4dMCFUL/uX3oqVzw5dcVfTOc=;
	b=g9X2JfW6nIFdK2Dv014z0xwLWCr0RqVR8MGQLTwVqq/XOGTdTemRMtWUpeBW1qU5oK
	YQaipb191mCsI5Fm7Zz/23f7rauv/9Kcl1TWCOURRslPZkdhrr64uDjCxHN6+FCouPVK
	LkUJqjeC7gV+aP+Yxi1C4j4dypx6TbgfDa/JNAhAYSU9xy+3FFEn0FcAJpsTgUYG6Lmw
	40ibWd7ZhQYgMctN4s8OEeJfr90/o21U4tE9ue5DRQx49FX++hYWuFAR3mvxsLObM+Cw
	2zJKAfbZR/ca01tb1eFkLQtQD+FuCP9n0HcN9MQDB6iq47csAfp2v3KX9Y8ipLsN9sRx
	mt+g==
MIME-Version: 1.0
X-Received: by 10.68.224.161 with SMTP id rd1mr53476658pbc.121.1374837609787; 
	Fri, 26 Jul 2013 04:20:09 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Fri, 26 Jul 2013 04:20:09 -0700 (PDT)
In-Reply-To: <CANyK_8feNxvXV2h2Lz7PFt57qE514yKc8kXiAJgxnQ760HyvqA@mail.gmail.com>
References: <CAOMwXhMAvqvs2TF_Wc2btWfEnWmvQQJ3RNJiTDw7A1D01RSXyw@mail.gmail.com>
	<CANyK_8fZbN9d0JmbcOhSo+4-xxvqDy29vWnXcgwms6OGFSJkrQ@mail.gmail.com>
	<CAOMwXhNnJH9E6OyD0ch364G0WF58E4ZsU08DM4Bm8eOaqiSOeg@mail.gmail.com>
	<CAJTo0LbZ1mbPkznRn_nMw-aNqc4MB7qAZKas-+uH6NaHODhN5Q@mail.gmail.com>
	<CAOMwXhO_G0zO9bkYM8zHwo-P7MmOBgz1U0Z_uj08i_AV3z+2gA@mail.gmail.com>
	<CANyK_8feNxvXV2h2Lz7PFt57qE514yKc8kXiAJgxnQ760HyvqA@mail.gmail.com>
Date: Fri, 26 Jul 2013 12:20:09 +0100
X-Google-Sender-Auth: mg9eTd2rCrbj7sWzxiSeSQWgTcE
Message-ID: <CAOMwXhOpKtLJcMWQ5kaGeuyPruTKcApQoCL4wxdhdZMhyMyeqg@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQmLpDro3tCqdcxY3hj9t5b8GLkmWrhGHm5/5w8pmSkGRz8cI91C2cismNroJmY+0xc+KJFF
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Criteria for proposing a host distribution supported
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
X-List-Received-Date: Fri, 26 Jul 2013 11:20:10 -0000
Content-Type: multipart/alternative; boundary=e89a8ff24ff65af9fa04e26853f2

--e89a8ff24ff65af9fa04e26853f2
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jul 26, 2013 at 12:14 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 26 July 2013 11:57, Laszlo Papp <lpapp@kde.org> wrote:
> > Actually, I also have problems with Debian stable? See the bugreports I
> > sent. It is mentioned as "supported distribution". Yet, it does not
> work. I
> > do not to follow the parallelism with Arch accordingly.
>
> The cost of supporting a distro will be dependent on the rate and
> magnitude of changes within that distro. Arch has large, frequent
> updates to core packages and so would have to be re-tested almost
> continuously. "Stable" releases of many distros limit how and when
> they will update things like gcc, binutils, etc and try not to
> introduce backwards-incompatible changes. Such things still slip
> through, but they are rare, so OE/Yocto can cope with the developer
> time needed to get the problem fixed. Supporting a rolling-release
> distro which follows the latest toolchain updates would essentially be
> an open-ended commitment.
>

I already explained that you are having a bit of double standard in here.
Updating is not a necessary evil. It is actually the nice way at times when
you get bugfixes, and do not wait for a simple one-liner fix for ages. Let
us not argue over personal styles. I hope, decisions are not based on
personal styles in here.


> > People can always revert the offending arch package to one week older if
> > they wanna use Yocto, or they can fix it. I do not see it a problem, and
> > easily solvable, especially with a clear CI documentation which should
> > happen for any node, anyhow.
>
> So we'd have to say "Arch Linux, with xxx version of gcc, yyy version
> of binutils, etc" was supported, not just "Arch Linux". How many
> packages do we specify the version of?
>

Obviously, the necessary few packages that are listed on the dependency
page.


> > The problem is currently that there is no any focus on Arch
>
> This is incorrect. Just because there Arch isn't "supported" doesn't
> mean no-one cares about it. When the sanity check for a broken make
> 3.82 was added to OE, I put in a bug report to Arch
> (https://bugs.archlinux.org/task/35968) and it got fixed.
>

No no, I was referring to the Yocto project, not Archlinux, and even then:
clear focus is not equal to occasional low-hanging fruit fixes.

Laszlo

--e89a8ff24ff65af9fa04e26853f2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Jul 26, 2013 at 12:14 PM, Paul Barker <span dir=3D=
"ltr">&lt;<a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@p=
aulbarker.me.uk</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div cl=
ass=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 26 July 2013 11:57, Las=
zlo Papp &lt;<a href=3D"mailto:lpapp@kde.org">lpapp@kde.org</a>&gt; wrote:<=
br>
</div><div class=3D"im">&gt; Actually, I also have problems with Debian sta=
ble? See the bugreports I<br>
&gt; sent. It is mentioned as &quot;supported distribution&quot;. Yet, it d=
oes not work. I<br>
&gt; do not to follow the parallelism with Arch accordingly.<br>
<br>
</div>The cost of supporting a distro will be dependent on the rate and<br>
magnitude of changes within that distro. Arch has large, frequent<br>
updates to core packages and so would have to be re-tested almost<br>
continuously. &quot;Stable&quot; releases of many distros limit how and whe=
n<br>
they will update things like gcc, binutils, etc and try not to<br>
introduce backwards-incompatible changes. Such things still slip<br>
through, but they are rare, so OE/Yocto can cope with the developer<br>
time needed to get the problem fixed. Supporting a rolling-release<br>
distro which follows the latest toolchain updates would essentially be<br>
an open-ended commitment.<br></blockquote><div><br></div><div>I already exp=
lained that you are having a bit of double standard in here. Updating is no=
t a necessary evil. It is actually the nice way at times when you get bugfi=
xes, and do not wait for a simple one-liner fix for ages. Let us not argue =
over personal styles. I hope, decisions are not based on personal styles in=
 here.</div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"im">&gt; People can always revert the offending arch package =
to one week older if<br>
&gt; they wanna use Yocto, or they can fix it. I do not see it a problem, a=
nd<br>
&gt; easily solvable, especially with a clear CI documentation which should=
<br>
&gt; happen for any node, anyhow.<br>
<br>
</div>So we&#39;d have to say &quot;Arch Linux, with xxx version of gcc, yy=
y version<br>
of binutils, etc&quot; was supported, not just &quot;Arch Linux&quot;. How =
many<br>
packages do we specify the version of?<br></blockquote><div><br></div><div>=
Obviously, the necessary few packages that are listed on the dependency pag=
e.</div><div>=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div class=3D"im">&gt; The problem is currently that there is no any focus =
on Arch<br>
<br>
</div>This is incorrect. Just because there Arch isn&#39;t &quot;supported&=
quot; doesn&#39;t<br>
mean no-one cares about it. When the sanity check for a broken make<br>
3.82 was added to OE, I put in a bug report to Arch<br>
(<a href=3D"https://bugs.archlinux.org/task/35968" target=3D"_blank">https:=
//bugs.archlinux.org/task/35968</a>) and it got fixed.<br></blockquote><div=
><br></div><div>No no, I was referring to the Yocto project, not Archlinux,=
 and even then: clear focus is not equal to occasional low-hanging fruit fi=
xes.</div>
<div><br></div><div>Laszlo</div></div></div></div>

--e89a8ff24ff65af9fa04e26853f2--
