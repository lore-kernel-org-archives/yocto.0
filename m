Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1A8FE00B8B; Tue, 29 Aug 2017 12:38:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.54 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15DE9E00B8B
	for <yocto@yoctoproject.org>; Tue, 29 Aug 2017 12:38:43 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id f13so22146862wme.1
	for <yocto@yoctoproject.org>; Tue, 29 Aug 2017 12:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GAI483TCw64iheI2s/65zGmzvhcHTPJJBP6zANOgzAM=;
	b=AQQPfe4d+woHCTNlZhapGJFSexHqFByXiqgNGh3FnzEevfWeAUpK7z8faDptSq87rJ
	LoaT1n8Jxnb/sC91izlcCGA76P3GppLBkIYQqvBK+YqmEdlO4ijte3RU1tsOs+m38/v4
	XtAgaqUniiM8RZqiZY0096GjILFdNyXF3KycIoWI/A72f16MnhPMBWwfvuUBhLSgP2Sx
	P1q/deuvjPfQ47oEri6nqMEHa68bAWVPpdcAa/VcuVrwGWxacxtaKR57K4o/31bJulWc
	n4lP7cTSzDDgLBlAlwlcUTv0Vzcne7k+cfr/oAfbCAEyExlhFvP5PIkJrLWkESGTw6Ib
	CdNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GAI483TCw64iheI2s/65zGmzvhcHTPJJBP6zANOgzAM=;
	b=WR3D7eDQwnBcX0JUlK2Tq6KzF0FsF6sM5rzzCJaBIy1PWuUh90myCBjFfJMv3YdeM0
	XZn+SD09gahTH+b8Nh+zJFzAxVWHFBqxsMTPZzN1yYUKWAvKDnBDfEArF+9K14g63TQp
	nfG5C10/ZFXu+2cmBD2o+lGg1Utbkt+SHZWK95PNJklJFzSXzPg/yY9h6O4UJLroINw+
	UkY5xWVsWyFIpl0lL82cJLM+0xat8RX5AN2NMmpzqlA1hYtLICs/TkVMY4mCjVmsl+ha
	KAiB7QptMf0HpZzHRFyfz3wUecTyF0IyP+zRbfds+ChShFA2K37E3b8LXl8nG+9W9uTT
	9EaA==
X-Gm-Message-State: AHYfb5hdQPEtMB7E7XHSdBdgc34O3ShNPDH6PUzEsPMe0s17dCQmUX/s
	R70i3tolTEnd+feb5GwWOI+AUOJH8g==
X-Received: by 10.28.26.199 with SMTP id a190mr352282wma.25.1504035523131;
	Tue, 29 Aug 2017 12:38:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.218.208 with HTTP; Tue, 29 Aug 2017 12:38:42 -0700 (PDT)
In-Reply-To: <CAJTo0LbqNEQ0Vz9Jy3KKGqGN5=fFgAHRNG+2yR7uUDG9thoLvA@mail.gmail.com>
References: <CABpTzB12oTgOmND6wDn+vD2aTvUd6WmavbmHNAXGpA6_dA+Tag@mail.gmail.com>
	<96d5a0c7-4df6-1576-7e50-916c5af724c6@linux.intel.com>
	<CABpTzB3yC2vHf0mFdDq8vGksQSJk1BHkuwTxMb0orCTL4kh1YQ@mail.gmail.com>
	<CAGAf8LzHHWqNmq9g2ZGUMnMnrtD00QPdJ736ttTNAbM+-uyHHQ@mail.gmail.com>
	<CAHiDW_GPQ4WvxqbkSGAq4K=bGfqX45pJrzUGJ1NsgazLtyv40g@mail.gmail.com>
	<CAGAf8Ly4y7xtjgmMrUb35Jkm-fyumN=LKCcfFsXm7+03xUE0Hw@mail.gmail.com>
	<CAHiDW_GuP0+aQdr8utVDD=vUwXoq3OPjR9Psb=t-Js9v8j+F+w@mail.gmail.com>
	<CAGAf8Lyi4k4o6VSXg97Occ+VErBo5cbTcwa8V7rZhjDKGiOjoQ@mail.gmail.com>
	<CAHiDW_EUWtZ6LOEL=yNNbyvp=59i4QRqusknwQJ43PPXa+Diyg@mail.gmail.com>
	<CAGAf8LxofVx8TQgrgHFsLhZF5_ROUb6GXR8mAWs7xxxv1iBOKA@mail.gmail.com>
	<CAJTo0LbqNEQ0Vz9Jy3KKGqGN5=fFgAHRNG+2yR7uUDG9thoLvA@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 29 Aug 2017 21:38:42 +0200
Message-ID: <CAGAf8LzGTMqh5MzSSHmEUFqcA5JkRteA=qNiiXg0+BYo-2KM-g@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>,
	Jussi Kukkonen <jussi.kukkonen@intel.com>
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
X-List-Received-Date: Tue, 29 Aug 2017 19:38:45 -0000
Content-Type: multipart/alternative; boundary="001a114cc8be15fcfa0557e98f7b"

--001a114cc8be15fcfa0557e98f7b
Content-Type: text/plain; charset="UTF-8"

> For all future releases, forever?  Committing to that would be foolish.

Nothing is forever, you know this at the best. Seemed/seems that Canon Lake
(supposed to be Core 7, now it is Core 9. or Core 10, or One only knows...
You name it) supposed to be out in Q3 2016, but INTEL did not reach
yielding on 10nm EUV(L) yet... Even Moore's Law is not forever (which INTEL
committed to FOREVER)!? Committing to that (Moore's Law), would be foolish
(Present Time), after all. Don't you agree? ;-)

I have all the rights to make mistakes... In lieu of above written by
yourself! Don't you agree (after my comments)?

> We have no plans to move from DNF to something else.  Luckily Yocto is
open source so if in a few years time a stable and
> superior alternative to DNF appears and we move to it, you can continue
to maintain the DNF recipes yourself.

I must say, that here, in this paragraph, I read true Words of Wisdom. I
would like to thank you for that. :-)

Zoran
_______

On Tue, Aug 29, 2017 at 6:31 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 24 August 2017 at 15:34, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
>
>> Do you agree to continue keeping DNF package (in
>> .../meta/recipe_devtools/) for handling of .rpm type of packages in the
>> future releases of YOCTO (it is, after all, much better and more mature
>> tool that smartpm)?
>>
>
> For all future releases, forever?  Committing to that would be foolish.
>
> We have no plans to move from DNF to something else.  Luckily Yocto is
> open source so if in a few years time a stable and superior alternative to
> DNF appears and we move to it, you can continue to maintain the DNF recipes
> yourself.
>
> Ross
>

--001a114cc8be15fcfa0557e98f7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-size:12.8px">&gt; For all future releas=
es, forever?=C2=A0 Committing to that would be foolish.</div><div style=3D"=
font-size:12.8px"><br></div><div style=3D"font-size:12.8px">Nothing is fore=
ver, you know this at the best. Seemed/seems that Canon Lake (supposed to b=
e Core 7, now it is Core 9. or Core 10, or One only knows... You name it) s=
upposed to be out in Q3 2016, but INTEL did not reach yielding on 10nm EUV(=
L) yet... Even Moore&#39;s Law is not forever (which INTEL committed to FOR=
EVER)!? Committing to that (Moore&#39;s Law), would be foolish (Present Tim=
e), after all. Don&#39;t you agree? ;-)</div><div style=3D"font-size:12.8px=
"><br></div><div style=3D"font-size:12.8px">I have all the rights to make m=
istakes... In lieu of above written by yourself! Don&#39;t you agree (after=
 my comments)?</div><div style=3D"font-size:12.8px"><br></div><div style=3D=
"font-size:12.8px">&gt; We have no plans to move from DNF to something else=
.=C2=A0 Luckily Yocto is open source so if in a few years time a stable and=
</div><div style=3D"font-size:12.8px">&gt; superior alternative to DNF appe=
ars and we move to it, you can continue to maintain the DNF recipes yoursel=
f.</div><div style=3D"font-size:12.8px"><br></div><div style=3D"font-size:1=
2.8px">I must say, that here, in this paragraph, I read true Words of Wisdo=
m. I would like to thank you for that. :-)</div><div style=3D"font-size:12.=
8px"><br></div><div style=3D"font-size:12.8px">Zoran</div><div style=3D"fon=
t-size:12.8px">_______</div><div class=3D"gmail_extra"><br><div class=3D"gm=
ail_quote">On Tue, Aug 29, 2017 at 6:31 PM, Burton, Ross <span dir=3D"ltr">=
&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@=
intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><span>On 24 August 2017 at 15:34, Zoran Stojsavljevic <span dir=3D=
"ltr">&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank=
">zoran.stojsavljevic@gmail.com</a><wbr>&gt;</span> wrote:</span><div class=
=3D"gmail_extra"><div class=3D"gmail_quote"><span><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div dir=3D"ltr"><div><span style=3D"font-size:12.8px">Do you agree t=
o continue keeping DNF package (in .../meta/recipe_devtools/) for handling =
of .rpm type of packages in the future releases of YOCTO (it is, after all,=
 much better and more mature tool that smartpm)?</span></div></div></blockq=
uote><div><br></div></span><div>For all future releases, forever?=C2=A0 Com=
mitting to that would be foolish.</div><div><br></div><div>We have no plans=
 to move from DNF to something else.=C2=A0 Luckily Yocto is open source so =
if in a few years time a stable and superior alternative to DNF appears and=
 we move to it, you can continue to maintain the DNF recipes yourself.</div=
><span class=3D"m_8229766149449591509HOEnZb"><font color=3D"#888888"><div><=
br></div><div>Ross</div></font></span></div></div></div>
</blockquote></div><br></div></div>

--001a114cc8be15fcfa0557e98f7b--
