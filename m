Return-Path: <peachj@lexmark.com>
Received: from exprod8og103.obsmtp.com (exprod8og103.obsmtp.com [64.18.3.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2AC3E00498
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2012 00:55:46 -0800 (PST)
Received: from mail-qc0-f200.google.com ([209.85.216.200]) (using TLSv1) by
	exprod8ob103.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUKX/kQ6rdosKLL8tRlZxXdWPnGkyp/6u@postini.com;
	Fri, 16 Nov 2012 00:55:46 PST
Received: by mail-qc0-f200.google.com with SMTP id l42so4077607qco.11
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2012 00:55:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=4izVOWcW5qBMhPMaJOxmHQqhouBxGHWru0JbBmoxdhY=;
	b=CZI00n6vixwjUV4XFfOxVjHcv2Bbk6zwF5WdO3qjkwl9y5ijHNVkaIxsP3tc7EoEoL
	mj/QNwmtAoELmW2gavAGFeRUcKGna0k5aTmYaPueo5QwsdrL6PcjBN6nlH2W5nk91xdG
	Lpr2iuarAbATDDaM0RM1ctTWID2jaSXHaAzQbMnwJEUqDBk2PAaK2MyvVaZQYdvQQ3UR
	gr3JTEPyrC1G3lXYlRK0mmWxhxatnFf5rSli6j6xcUHDbqrOpfj53KgDDiGhM05RY7f9
	ljVQMGAWvdqc30CW29VWWNbhkn8Zgaj2Ej5CHYn3ocs8IU9oXmO3k3sSaKk1lVIKSI7s
	EvAA==
Received: by 10.229.105.131 with SMTP id t3mr822167qco.23.1353056145238;
	Fri, 16 Nov 2012 00:55:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.229.105.131 with SMTP id t3mr822165qco.23.1353056145065; Fri,
	16 Nov 2012 00:55:45 -0800 (PST)
Received: by 10.49.107.136 with HTTP; Fri, 16 Nov 2012 00:55:44 -0800 (PST)
In-Reply-To: <1353044032.4160.11.camel@babel.joshhome>
References: <tencent_4D0038032A743D29372622A1@qq.com>
	<1353044032.4160.11.camel@babel.joshhome>
Date: Fri, 16 Nov 2012 03:55:44 -0500
Message-ID: <CA+QkY1DXJ3X9cHricP1fprwAx0U2tGT-+y1DjNmhkCiaLtvhGA@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: Liu <treebody@embedstudy.com>
X-Gm-Message-State: ALoCoQl76BeLVkdML+9EY8pspOZ1SG8rvAJ8FCSQ37CNsQcvSC+bWQRGI9a7ONdMzDZVm+dRsr9he8D1iBUzmYE40G8Wf8pjRGakTBM5C5EW45Zc0XEXs4nzZ5UMLp+zhB5ds6Nbddeml/0ti+556dNIZ7scXp32jg==
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: questions about writing a recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 16 Nov 2012 08:55:47 -0000
Content-Type: multipart/alternative; boundary=002215401822e3460804ce98ee28

--002215401822e3460804ce98ee28
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Nov 16, 2012 at 12:33 AM, Joshua Immanuel <josh@hipro.co.in> wrote:

> Hello Liu,
>
> On Fri, 2012-11-16 at 11:06 +0800, Liu wrote:
> >     I'm writing a recipe and come up with a question.I want to invoke
> > the the workdir of package A in my recipe of package B. I tried to use
> > the variable WORKDIR,but it represent for the workdir of B in the
> > recipe of package B. So is there any good ideas about this ?
>
> IMHO, depending on files from another package's workdir is a bad idea.
>
>
I agree with this -- it's not a good idea to depend on files from another
package's workdir.  If you're needing headers or libraries, you should be
installing those headers or objects to the sysroot and then getting them
from there.

Kind regards,

Jerrod

--002215401822e3460804ce98ee28
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Fri, Nov 16, 2012 at 12:33 AM, Joshua Immanue=
l <span dir=3D"ltr">&lt;<a href=3D"mailto:josh@hipro.co.in" target=3D"_blan=
k">josh@hipro.co.in</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>
Hello Liu,<br>
<div class=3D"im"><br>
On Fri, 2012-11-16 at 11:06 +0800, Liu wrote:<br>
&gt; =A0 =A0 I&#39;m writing a recipe and come up with a question.I want to=
 invoke<br>
&gt; the the workdir of package A in my recipe of package B. I tried to use=
<br>
&gt; the variable WORKDIR,but it represent for the workdir of B in the<br>
&gt; recipe of package B. So is there any good ideas about this ?<br>
<br>
</div>IMHO, depending on files from another package&#39;s workdir is a bad =
idea.<br><span class=3D"HOEnZb"><font color=3D"#888888"><br></font></span><=
/blockquote><div><br></div><div>I agree with this -- it&#39;s not a good id=
ea to depend on files from another package&#39;s workdir. =A0If you&#39;re =
needing headers or libraries, you should be installing those headers or obj=
ects to the sysroot and then getting them from there.</div>
<div><br></div><div>Kind regards,</div><div><br></div><div>Jerrod</div></di=
v>

--002215401822e3460804ce98ee28--
