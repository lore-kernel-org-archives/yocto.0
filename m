Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 455B1E00CF9; Mon, 25 Apr 2016 02:25:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B281E006D3
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 02:25:41 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id d62so74925001iof.2
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 02:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=117V0+4+1NXFhTQ20CwteY0EDcA8V0kCTO4EVBz8dyA=;
	b=c67Pt/LbPsy5z/Tu3UnIB7Kz6RSI3zGK6mZqn5ouQdtT4cG33Lby4Mo2fi4opqohiO
	mQGfoxMd12SNDH8BoiLhxiTMWAf8cRoVYvEgOazYMdKqDhvUiMXZqL2QPfDLNIUnoGtP
	Fm6U6biW6KIuSoULcO/dVVtMesF0hXmeb6CMqRS/9JFr3U6P0p/29OaDwjQfoDpahmTX
	WdHqT0W7qy3ymFmNIhc1PfdxQlFGmot8oJ4MHAbQpdiZCJ+3hsU4lX6/lcxXg5qK8bC+
	3CKy32Z0183tsha0QbbM0/aiLjn4/9Znbqj6LE460kX2YdozzOnGganf3pgPoc/myqMj
	KSlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=117V0+4+1NXFhTQ20CwteY0EDcA8V0kCTO4EVBz8dyA=;
	b=AOVmzmcsHBe0NTGKz2vDLUjr55Prx7MHV6mPT9n7gyuI87qgsRfsg0ZQyZ7PL1irwh
	NARJCM8scsaS8J3wfBHlkCtlFa4d9xOnAGn/G6DqlIDE7VcFd+caTgIU4wHEKr9Iy4rN
	XSKjauSnC7AG666UwqiGU2iZ4duKHZqt9tH/MdH/KN6LH6DwOAAM9nur3uuoMMJZRCCp
	VlLqdG32kKg2aC2zGBZCUEu/Du0fKunLWAeDyodG1kCQ/81yajd9jtie8augfZTUhQ1m
	ITiNddmBjxyqd7ALnkZvzVigZbJQlzqA4ohrNrOo65ofCs+338Dneze8DaW5AUujHSk1
	P4tg==
X-Gm-Message-State: AOPr4FUAdAh0id6LK+MqhxTc7/MuRTBu7KGZJdhhw91ZdSEtOhLgF/cn8IW+AFhLhv2Pae32yzvu3lWqkz9zHk9H
X-Received: by 10.107.51.213 with SMTP id z204mr12840622ioz.148.1461576341339; 
	Mon, 25 Apr 2016 02:25:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Mon, 25 Apr 2016 02:25:21 -0700 (PDT)
In-Reply-To: <20160424231708.GA7573@linux-yxv0>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E570F86EE@fmsmsx111.amr.corp.intel.com>
	<20160422170410.GB23308@linux-yxv0>
	<CAJTo0LYnK-sd+d1bkJN39AhkAN0t+42Nonm38Qyy3BXm1nLYdw@mail.gmail.com>
	<20160424231708.GA7573@linux-yxv0>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 25 Apr 2016 10:25:21 +0100
Message-ID: <CAJTo0Lb_Vmn_ZFBqE4e++9AroBs-s6vTnwKfnMZTYBaVVgjJGA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Yocto Project Status WW17
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
X-List-Received-Date: Mon, 25 Apr 2016 09:25:46 -0000
Content-Type: multipart/alternative; boundary=001a11440cd0a34ff705314bc2d5

--001a11440cd0a34ff705314bc2d5
Content-Type: text/plain; charset=UTF-8

On 25 April 2016 at 00:17, Trevor Woerner <twoerner@gmail.com> wrote:

> > CROPS is docker magic to do builds on Windows/Mac.  Todor did a
> > presentation at ELC: http:
> > //
> events.linuxfoundation.org/sites/events/files/slides/Todor_Minchev_CROPS_ELC_2016.pdf
> > <
> http://events.linuxfoundation.org/sites/events/files/slides/Todor_Minchev_CROPS_ELC_2016.pdf
> >
>
> I was *very* excited to learn about CROPS at ELC, which is why I was
> wondering
> if it was available to experiment with somewhere?


The slides have links to the git repos and some instructions.  I'm sure
Todor would help if you have any specific questions.

Ross

--001a11440cd0a34ff705314bc2d5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 25 April 2016 at 00:17, Trevor Woerner <span dir=3D"ltr">&lt;<a href=3D"=
mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">&gt; CROPS is=
 docker magic to do builds on Windows/Mac.=C2=A0 Todor did a<br>
&gt; presentation at ELC: http:<br>
&gt; //<a href=3D"http://events.linuxfoundation.org/sites/events/files/slid=
es/Todor_Minchev_CROPS_ELC_2016.pdf" rel=3D"noreferrer" target=3D"_blank">e=
vents.linuxfoundation.org/sites/events/files/slides/Todor_Minchev_CROPS_ELC=
_2016.pdf</a><br>
</span>&gt; &lt;<a href=3D"http://events.linuxfoundation.org/sites/events/f=
iles/slides/Todor_Minchev_CROPS_ELC_2016.pdf" rel=3D"noreferrer" target=3D"=
_blank">http://events.linuxfoundation.org/sites/events/files/slides/Todor_M=
inchev_CROPS_ELC_2016.pdf</a>&gt;<br>
<br>
I was *very* excited to learn about CROPS at ELC, which is why I was wonder=
ing<br>
if it was available to experiment with somewhere?</blockquote><div><br></di=
v><div>The slides have links to the git repos and some instructions.=C2=A0 =
I&#39;m sure Todor would help if you have any specific questions.</div><div=
><br></div><div>Ross=C2=A0</div></div></div></div>

--001a11440cd0a34ff705314bc2d5--
