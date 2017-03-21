Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F4A9E00726; Tue, 21 Mar 2017 05:33:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.173 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C5CDE00726
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 05:33:10 -0700 (PDT)
Received: by mail-qk0-f173.google.com with SMTP id v127so133435085qkb.2
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 05:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rZj1jvXWjyPvzOM9zh9ZQ22CyQinLbNmcbWaBJOfxPQ=;
	b=EMgr+m92fpYlZwUMGHO68SDVUw4qhcGcIKaO6txsEAxUX37pikWjjcJ1+SfTzukbey
	Rt5qZQwOQE1MBuojAFZBOzW2OvZF7mlclDBunNoqp4DZXTV9aHwN9iQcbb74Cx5tCHsY
	fyg0/xMBhkqhrpN35UpJNWXLoUlvrxy9Dq7xWFVEllD6aSqbit/4zna8sKeB4evw25dG
	Q4ijEd0H/LAsrKOg0qptMK3I9qSpqzyHyMoVVtKmGO8jOI6cUTRYRFcGXJ8PtQU7Jh5Z
	e8fQKInTHkP81ITYJWSrGN0sbuQtIfSAw+EQECE9fCJE4shqk4NNUhNlbf4GiY9gHCpG
	0lEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rZj1jvXWjyPvzOM9zh9ZQ22CyQinLbNmcbWaBJOfxPQ=;
	b=O4cP9ckH/nxfsrTEJGvUjkU/tLz+XSyYBlE0iFTG4VYhkNcktNGD9Ni7z8pIDjy4AZ
	jeQTVLxiGmU6AAYuZ3V2QqVQs3rnG8BBqEETBKUd3vfCdIqkG+o1nvMCa4qpxV2/mMpK
	ZQMYK5xdId5iPj6JTrwhmRmuW/adVgRZyQH4cP7Ht1mqj6h7khS+EHTHp7AC0O84OUiG
	fvp54uDKptAMvWyJnWIDfgVm14LimMsVUfTl7uATrN5kqAFBcocu28HW+4cdN8O/d1p7
	8cGHUeWQljwVnzOLwpSkehF4NXlyOvvrbsIyrwkipoC6sqbmXOAdLT0fgEL6ztZd1Fjs
	uIVQ==
X-Gm-Message-State: AFeK/H20RMiP7vDCEvahavJiDnrzKCMDH5Pa7l9FWVGtkBmtRHWp6LIKHVDdZUbAfq+lmaZ6pLKg9WLzYQ3Aaw==
X-Received: by 10.55.121.194 with SMTP id u185mr29762327qkc.56.1490099589917; 
	Tue, 21 Mar 2017 05:33:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.163.69 with HTTP; Tue, 21 Mar 2017 05:33:09 -0700 (PDT)
In-Reply-To: <CY4PR12MB1880C1DA0123AF0A0A2211B2A53D0@CY4PR12MB1880.namprd12.prod.outlook.com>
References: <CY4PR12MB1880C1DA0123AF0A0A2211B2A53D0@CY4PR12MB1880.namprd12.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 21 Mar 2017 08:33:09 -0400
Message-ID: <CADkTA4Pb_b9rXe9eD6kzsY+WCbh7MQNTkwjb5oLjEJnK+O8-Zw@mail.gmail.com>
To: Richard Zhang <richard.zhang@pica8.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to use *.bb file to select different kernel config/feature?
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
X-List-Received-Date: Tue, 21 Mar 2017 12:33:13 -0000
Content-Type: multipart/alternative; boundary=94eb2c05a196bcb712054b3cd8c8

--94eb2c05a196bcb712054b3cd8c8
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 21, 2017 at 3:15 AM, Richard Zhang <richard.zhang@pica8.com>
wrote:

> Hi all
>
>
> I want   to use one linux-kernel-myown.bb file to select different config
> for several boxes.
>
> I think when I give MACHINE to box1\box2\box3, the kernel config and
> features select can be done.
>
>
> Is it correct :
>
>
> when use MACHINE=box1\box2\box3 and so on:
>
>
> KERNEL_FEATURES_append_box1=" cfg/box1.scc"
>

These are variables like any other in bitbake. They can take a variety of
overrides, one of which is the machine
name. So yes, you could append a kernel feature only for your $MACHINE with
the line above.

But you must be using a kernel recipe that inherits kernel-yocto for the
feature to be processed.

> KERNEL_CONFIG_box1=" cfg/box1_defconfig.cfg"
>

Assuming KERNEL_CONFIG is a valid variable in your layers, this would also
work. But if you are using
configuration fragments and kernel-yocto, that isn't a variable that is
used.

Bruce


>
>
> this instruction could work?or any suggestion.
>
>
>
> Regards
>
> Richard
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--94eb2c05a196bcb712054b3cd8c8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Mar 21, 2017 at 3:15 AM, Richard Zhang <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:richard.zhang@pica8.com" target=3D"_blank">richard.zhang@pi=
ca8.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_-7963218019750877656divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif" dir=3D"lt=
r">
<p>Hi all</p>
<p><br>
</p>
<p>I want =C2=A0 to use one <a href=3D"http://linux-kernel-myown.bb" target=
=3D"_blank">linux-kernel-myown.bb</a> file to select different config for s=
everal boxes.</p>
<p>I think when I give MACHINE to=C2=A0<span>box1\box2\box3</span>, the ker=
nel config and features select can be done.<br>
</p>
<p><br>
</p>
<p>Is it correct :</p>
<p><br>
</p>
<p>when use MACHINE=3Dbox1\box2\box3 and so on:</p>
<p><br>
</p>
<p><span>KERNEL_FEATURES_append_box1=3D&quot; cfg/box1.scc&quot;</span></p>=
</div></div></blockquote><div><br></div><div>These are variables like any o=
ther in bitbake. They can take a variety of overrides, one of which is the =
machine<br></div><div>name. So yes, you could append a kernel feature only =
for your $MACHINE with the line above.</div><div><br></div><div>But you mus=
t be using a kernel recipe that inherits kernel-yocto for the feature to be=
 processed.</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div id=3D=
"m_-7963218019750877656divtagdefaultwrapper" style=3D"font-size:12pt;color:=
#000000;font-family:Calibri,Arial,Helvetica,sans-serif" dir=3D"ltr">
<p><span><span>KERNEL_CONFIG_box1=3D&quot; cfg/box1_defconfig.cfg&quot;</sp=
an></span></p></div></div></blockquote><div><br></div><div>Assuming KERNEL_=
CONFIG is a valid variable in your layers, this would also work. But if you=
 are using</div><div>configuration fragments and kernel-yocto, that isn&#39=
;t a variable that is used.</div><div><br></div><div>Bruce</div><div>=C2=A0=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div id=3D"m_-7963218=
019750877656divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;fon=
t-family:Calibri,Arial,Helvetica,sans-serif" dir=3D"ltr"><p><br>
</p>
<p><br>
</p>
<p>this instruction could work?or any suggestion.<br>
</p>
<p><br>
</p>
<p><br>
</p>
<p>Regards</p><span class=3D"HOEnZb"><font color=3D"#888888">
<p>Richard<br>
</p>
</font></span></div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;Thou shalt =
not follow the NULL pointer, for chaos and madness await thee at its end&qu=
ot;</div>
</div></div>

--94eb2c05a196bcb712054b3cd8c8--
