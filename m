Return-Path: <dlohar2009@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 469C0E00AAB; Fri, 16 Oct 2015 20:58:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dlohar2009[at]gmail.com)
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
	*      [209.85.220.172 listed in list.dnswl.org]
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02EB5E006D5
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 20:58:31 -0700 (PDT)
Received: by qkht68 with SMTP id t68so62691927qkh.3
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 20:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ULBjEwdd1WD1BSaVQuU9/xAzyy+h1I/9Lirk+TUtF+U=;
	b=XKFYjxu3q9ZCUdIXeBXojodHp9/TozyasNFEs+mv8hgp9SBLY1iy9dBl8MsBuXaZqp
	M4rgtn1UYgANi+wWizXNR1GbykI7Y6DiQxJsPjxPR3TPAEYVd9seRTEKlj6tJY5LJTys
	X9BUNv4t6nAx6SUEDM6VfF05lfNI8u+zTRU7ejRfZNlscxfJROF0FUJIyqYTAnMqkqFQ
	LAiMWLyuaylEGj3yWLo3s6omtV6iCQzKyu9Msrm48ruXODThdtos7Ecmu/gapsRQE33J
	hnSnpJvjhyZZE3fiXJvo1ag2jReOg830BqcB/ZOxCBVBvM8V8KOqXC5d8N0eA0SC/8E8
	L8oA==
MIME-Version: 1.0
X-Received: by 10.55.209.93 with SMTP id s90mr23542174qki.55.1445054310830;
	Fri, 16 Oct 2015 20:58:30 -0700 (PDT)
Received: by 10.140.39.145 with HTTP; Fri, 16 Oct 2015 20:58:30 -0700 (PDT)
In-Reply-To: <46B8A2A4-93A4-4136-A76E-310D2CE71108@gmail.com>
References: <CAAm4naA+NwGmhvX=PJMP+JMK4ahWjNdh2XW70bNgveE_mpwxTw@mail.gmail.com>
	<46B8A2A4-93A4-4136-A76E-310D2CE71108@gmail.com>
Date: Sat, 17 Oct 2015 09:28:30 +0530
Message-ID: <CAAm4naDV5SSTnd4r=_Yc5HMdUq3J1+e9D6rzzeTUAUW7YCS3Uw@mail.gmail.com>
From: Debasmita Lohar <dlohar2009@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Queries regarding yocto dual booting
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
X-List-Received-Date: Sat, 17 Oct 2015 03:58:33 -0000
Content-Type: multipart/alternative; boundary=001a1147a55ee0d7a2052244ec02

--001a1147a55ee0d7a2052244ec02
Content-Type: text/plain; charset=UTF-8

The messages it is showing are:
booting from cd...
iso linux boot: loading /vmlinux
loading initrd
trying to unpack rootfs
switched to clock source.
mounted file system.
After that it is showing yocto project and enters into the desktop.
It may be noted that I am using the iso file downloaded from terasic
website.
I need to install yocto in de2i-150 terasic board.

Debasmita Lohar
MS Student
Computer Science and Engineering
IIT Kharagpur


On Fri, Oct 16, 2015 at 10:17 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> > On Oct 16, 2015, at 12:22 AM, Debasmita Lohar <dlohar2009@gmail.com>
> wrote:
> >
> > Hello,
> > I am using De2i-150 board which provides a yocto iso. I have installed
> puppy linux before yocto and now I want to install yocto in the unallocated
> portion. Basically I want dual booting. But when I tried to install yocto,
> it just started from the live cd and did not show me any install option.
> Please help me regarding this issue.
>
> there are few seconds when the syslinux prompt appears. You need to type
> in "install"
>
> > Thank you.
> >
> > Debasmita Lohar
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1147a55ee0d7a2052244ec02
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>The messages it is show=
ing are:<br>booting from cd...<br></div>iso linux boot: loading /vmlinux<br=
></div><div>loading initrd<br></div>trying to unpack rootfs<br></div>switch=
ed to clock source.<br></div>mounted file system.<br></div>After that it is=
 showing yocto project and enters into the desktop.<br></div>It may be note=
d that I am using the iso file downloaded from terasic website.<br></div>I =
need to install yocto in de2i-150 terasic board.<br></div><div class=3D"gma=
il_extra"><br clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D=
"ltr"><div><div><div>Debasmita Lohar<br></div>MS Student<br></div>Computer =
Science and Engineering<br></div>IIT Kharagpur<br><div><div><div><div><br><=
/div></div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Fri, Oct 16, 2015 at 10:17 PM, Khem Raj <=
span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank=
">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><span class=3D""><br>
&gt; On Oct 16, 2015, at 12:22 AM, Debasmita Lohar &lt;<a href=3D"mailto:dl=
ohar2009@gmail.com">dlohar2009@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt; I am using De2i-150 board which provides a yocto iso. I have installed=
 puppy linux before yocto and now I want to install yocto in the unallocate=
d portion. Basically I want dual booting. But when I tried to install yocto=
, it just started from the live cd and did not show me any install option. =
Please help me regarding this issue.<br>
<br>
</span>there are few seconds when the syslinux prompt appears. You need to =
type in &quot;install&quot;<br>
<br>
&gt; Thank you.<br>
&gt;<br>
&gt; Debasmita Lohar<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
<br>
</font></span></blockquote></div><br></div>

--001a1147a55ee0d7a2052244ec02--
