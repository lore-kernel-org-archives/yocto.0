Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f178.google.com (mail-ea0-f178.google.com
	[209.85.215.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26817E00734
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 22:15:12 -0700 (PDT)
Received: by mail-ea0-f178.google.com with SMTP id l15so6601488eak.9
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 22:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=NezSbrguZMEstkJBZJx2WisrqVAC/pI30y4Orangyh0=;
	b=XW+IPsSR335vujPvNU9yv27I3sDNeVOOgJAejdcgE82XY7Y0jin/vXg5VEPF+KysZc
	+rzzxa1WqNG5Q0eqUzuITX28nlj+A+U4Y60W02YO/VCYAIWD7fmch6Pt7IQvBYN4KZ+k
	qCHEAENwu0FfZTSMFeot1c3e7EUoG3mAUm1W0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=NezSbrguZMEstkJBZJx2WisrqVAC/pI30y4Orangyh0=;
	b=gOQe49iWJzmfToipnv1bwaQolXnubQBp4bNftIEPsiXnUD/sAKsIh/kaUcp5wkvkJj
	I4dtS4JRT5+bMaaaTDe+J+jMsDvMlPisGBMNWT/NyASsE7jch37K9TcqeMse5skzcYtK
	y6UdXtKOHBQIHKUYOYScM4agzYqm8fYO5vlsdgJIdhcDeKVXA/KPyTxa37iZn6Zda4RG
	RWJJS2EXx47Zul7nT+V4eoe5k3VjH8UWITOl0gTH2HRWYKt/ZrgW7g0/vwLqtEIl7Vbg
	30chz+CEjiarDUEIt19vx7XnKkFup0BVAy7+gMvM/rl8WEwDUybuOKIWgLdVwqBbmR1C
	6kbg==
MIME-Version: 1.0
X-Received: by 10.14.106.195 with SMTP id m43mr27881297eeg.60.1372137311696;
	Mon, 24 Jun 2013 22:15:11 -0700 (PDT)
Received: by 10.223.160.197 with HTTP; Mon, 24 Jun 2013 22:15:11 -0700 (PDT)
In-Reply-To: <CALmOhgmpSjx-D-EycMX9AJv1Rwgrvv3VE2jKqakd4kUtbXYHJg@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF50C1A@ORSMSX101.amr.corp.intel.com>
	<CDE892AD.36CA0%david.c.stewart@intel.com>
	<000001ce6de8$70639de0$512ad9a0$@annabooks.com>
	<CALmOhg=h=j+uHiPdGShjZwtL97jsnhz1v6T4GRfcge0jJypTKQ@mail.gmail.com>
	<CA+gsK-orLA13kBxTSj-E451GQKKdy8L6hUHQxKQgFqg-VNiK8Q@mail.gmail.com>
	<CALmOhgmpSjx-D-EycMX9AJv1Rwgrvv3VE2jKqakd4kUtbXYHJg@mail.gmail.com>
Date: Mon, 24 Jun 2013 22:15:11 -0700
Message-ID: <CA+gsK-phin-6EsfXixkC1OWfpg6J4oK22NOp+duP7aXAgvbM5w@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Trevor Woerner <trevor.woerner@linaro.org>
X-Gm-Message-State: ALoCoQlDN98V3ReKeF9kjkKPIJtA6/NMHtMcZyf8ZF46yyV8605ggHl+K1lOpktwm1YNK8eWHuIZ
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail
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
X-List-Received-Date: Tue, 25 Jun 2013 05:15:15 -0000
Content-Type: multipart/alternative; boundary=001a11c1b8300c293b04dff39d41

--001a11c1b8300c293b04dff39d41
Content-Type: text/plain; charset=ISO-8859-1

Hi Trevor,


On Mon, Jun 24, 2013 at 5:56 AM, Trevor Woerner
<trevor.woerner@linaro.org>wrote:

> Awesome! That's great news! I was hoping someone would "beat me to it"
> :-) I look forward to reading it once it's done. Do you have a
> publisher or an expected release date?
>
> Yes, I do. Pearson and the release date is early next year (Embedded Linux
Conference is my target).


> An appendix on Android's "repo" tool might make for an excellent
> addition; it seems some Yocto projects are showing lots of interest in
> using it.
>
> The idea is to integrate/use it with YP? I know what repo does and that it
is built on top of git but I have not looked behind the scenes to figure
out how it does its job and how it can be used with something else like YP
instead of with the Android repositories and review system.

Cheers,
Rudi

--001a11c1b8300c293b04dff39d41
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Trevor,<div class=3D"gmail_extra"><br><br><div class=3D=
"gmail_quote">On Mon, Jun 24, 2013 at 5:56 AM, Trevor Woerner <span dir=3D"=
ltr">&lt;<a href=3D"mailto:trevor.woerner@linaro.org" target=3D"_blank">tre=
vor.woerner@linaro.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Awesome! That&#39;s great news! I was hoping=
 someone would &quot;beat me to it&quot;<br>
:-) I look forward to reading it once it&#39;s done. Do you have a<br>
publisher or an expected release date?<br>
<br></blockquote><div>Yes, I do. Pearson and the release date is early next=
 year (Embedded Linux Conference is my target).</div><div>=A0</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">

An appendix on Android&#39;s &quot;repo&quot; tool might make for an excell=
ent<br>
addition; it seems some Yocto projects are showing lots of interest in<br>
using it.<br>
<div class=3D"im"><br></div></blockquote><div>The idea is to integrate/use =
it with YP? I know what repo does and that it is built on top of git but I =
have not looked behind the scenes to figure out how it does its job and how=
 it can be used with something else like YP instead of with the Android rep=
ositories and review system.=A0</div>
<div><br></div><div>Cheers,</div><div>Rudi=A0</div></div>
</div></div>

--001a11c1b8300c293b04dff39d41--
