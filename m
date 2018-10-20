Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78E03E0097C; Fri, 19 Oct 2018 17:38:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com
	[209.85.222.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C836E00920
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 17:38:40 -0700 (PDT)
Received: by mail-ua1-f66.google.com with SMTP id c21so8075191uap.7
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 17:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=0DpCTc46CQS70SAduGQUhvm1RIlOvj737BtjvRnbEPk=;
	b=gcYa79LSoy75RSgSUNay2mtmZrCxPk05NcMXKNQM5oG87mtLpRZ0ChxjC13mQ4XUrc
	2ZA4tqmpsdC53R++j7TAaSkoMWkdSA/qYQjJm+ACtNSomhvpDu7zKlGJK0Mvn67hRLM9
	OiHZm9E7r8W5yQAqebXufN1nadIKozOVPZOdPO4PxMMOmOQpayr8xr/LmRvSk0xV86Dy
	1Cjl9nB7ZwQNlX47I7q4XmuxWsxw+VjUXRTTLD1Jqo9S7gifyCNoaar7MrMy0KaKQpiC
	enz7ROGeIk/MkrzAswAEfPmkYmqBZKULcL+oZXxE7VmlIc6WcsD/BAfI8Z23m3aqwPOg
	UX2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=0DpCTc46CQS70SAduGQUhvm1RIlOvj737BtjvRnbEPk=;
	b=ZoqdEjSW91w2+q1ZA71PAtZ0X0HTb4X7sJr6zz7YLev1IEOaFo0eLONHWjzG0JbdMf
	TCEz0XRk8U0JZ6EabJ08LkX5yVcCNKYov50pz8a8l1NRAlTElmFoG3q805zCLTf3x2gO
	kGVBN27JmbvC8K7fJMzdQKybgGz3UcrdNnWvBwbf5IHCf/SQuUY76BMvbRoozFex3W7z
	j/jTZoly1Tl1tNYjZw6tiRESIqYe6JoBhJRy/cuy7YJmfWAzDb7R58sFzjJJKD2Xw+s+
	klnuZ+Nv80YBhcs/ujTvf20z/6qCNQNWcg2Shqy+TLtTNpJVGR+o5P6Wue9S2Zpa1dNP
	KyVQ==
X-Gm-Message-State: ABuFfogpTAsNHm2RZeLY5xALEi2zjB8V8EiIdW9mkrFPzRLJ81OIVBUo
	toIhES8YLw42oH0o3q6bCPuWUFD6UUsYVgtUDKk=
X-Google-Smtp-Source: ACcGV63zbA/1uD6/PubCQ4z2kqxGm3fzCql3aLedviC0Y2FnDDJcGBW7q6rARQ85pTAhuUOUeVaTkMji/uhF2tklgeQ=
X-Received: by 2002:a9f:308a:: with SMTP id j10mr5861987uab.28.1539995919406; 
	Fri, 19 Oct 2018 17:38:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAN70yQVCzQs-yt7M+J-bbuiaYJy4-hr+ceZFxE_xX6M1L++xGA@mail.gmail.com>
In-Reply-To: <CAN70yQVCzQs-yt7M+J-bbuiaYJy4-hr+ceZFxE_xX6M1L++xGA@mail.gmail.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Fri, 19 Oct 2018 17:38:28 -0700
Message-ID: <CANx9H-CRsmet7fz=X0VwH0876mpBz7dEao5cgS_2=XdP63Q4Lw@mail.gmail.com>
To: nishant poorswani <nishantpoorswani@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Python-tkinter
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
X-List-Received-Date: Sat, 20 Oct 2018 00:38:41 -0000
Content-Type: multipart/alternative; boundary="000000000000bb5d4c05789e3dd2"

--000000000000bb5d4c05789e3dd2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 4, 2018 at 4:09 PM nishant poorswani <nishantpoorswani@gmail.co=
m>
wrote:

> Hey. I want to add python-tkinter into my image.
> I've added in my local.conf . When I try to use it I cannot import Tkinte=
r
> into my code. Can anyone help with this? I get an error If this fails
> Python may not be configured properly. ImportError: No module named
> _tkinter. Any help would be appreciated.
> --


The reason is that tk is not in oe-core (even though tcl is), so the
_tkinter python extension (compiled c code) is disabled.[1]

If you would file a bug [2] for this I=E2=80=99ll take a crack at a fix in =
2.7
cycle as tkinter is useful for matlab that I=E2=80=99ve been working on. Co=
mponent
should be =E2=80=9Ccore=E2=80=9D.

[1]
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/p=
ython/python3/avoid_warning_about_tkinter.patch#n23

[2] https://bugzilla.yoctoproject.org/



> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000bb5d4c05789e3dd2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu,=
 Oct 4, 2018 at 4:09 PM nishant poorswani &lt;<a href=3D"mailto:nishantpoor=
swani@gmail.com">nishantpoorswani@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"auto">Hey. I want to add python-tkinter=
 into my image.<div dir=3D"auto">I&#39;ve added in my local.conf . When I t=
ry to use it I cannot import Tkinter into my code. Can anyone help with thi=
s? I get an error If this fails Python may not be configured properly. Impo=
rtError: No module named _tkinter. Any help would be appreciated.=C2=A0</di=
v></div>
-- </blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">The reason is=
 that tk is not in oe-core (even though tcl is), so the _tkinter python ext=
ension (compiled c code) is disabled.[1]</div><div dir=3D"auto"><br></div><=
div dir=3D"auto">If you would file a bug [2] for this I=E2=80=99ll take a c=
rack at a fix in 2.7 cycle as tkinter is useful for matlab that I=E2=80=99v=
e been working on. Component should be =E2=80=9Ccore=E2=80=9D.</div><div di=
r=3D"auto"><br></div><div dir=3D"auto"><div>[1] <a href=3D"http://git.yocto=
project.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/python/python3/av=
oid_warning_about_tkinter.patch#n23">http://git.yoctoproject.org/cgit/cgit.=
cgi/poky/tree/meta/recipes-devtools/python/python3/avoid_warning_about_tkin=
ter.patch#n23</a></div><div><br></div></div><div dir=3D"auto">[2] <a href=
=3D"https://bugzilla.yoctoproject.org/">https://bugzilla.yoctoproject.org/<=
/a></div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000bb5d4c05789e3dd2--
