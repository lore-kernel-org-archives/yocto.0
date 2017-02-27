Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF55BE009CF; Mon, 27 Feb 2017 05:39:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.181 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E436E00970
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 05:39:36 -0800 (PST)
Received: by mail-qk0-f181.google.com with SMTP id n127so96815456qkf.0
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 05:39:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=08D5lArukBn4Q2i4pKiYw7S2B7mfLz+TtgO7SMx/8Lg=;
	b=IBT5Gao1hfajYWyf55Mhy2ZQjkcX79oexFl8K0cHEd03Sm5O+42swqBWpTrOPN+cz8
	RFBRrjDKhnWOYgqrjOiVOwSMlQI5w9NOSYz4CqT6iWYmwknpjQTiakHBclM6Q8FpJB/0
	VC9I1RPj9RzJ2LoaMMED6BsOyBdUzOLBopqXUkRM4/mkGVHbw3cQ+UBWmtn7P4RJFfOT
	Makmemc68bwMpvlap03Pdbt201miflz42ZDQ+3YE56r1DEL9WB9ADtMs+NrM2PpOfRHA
	j5IUUuafi4RShAs5iAp8l8ZdVZ6rGnLWiHaKz7GKWFxruZgY93Y1Lz6N0lpM994nDugi
	091w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=08D5lArukBn4Q2i4pKiYw7S2B7mfLz+TtgO7SMx/8Lg=;
	b=edGNEp2i0z+P+qEmQLt5oZnvEPbgXLYXbmN5eI/n7UF2GSshphR/3fHaEeF4Uv/ZTs
	CgBAelWPGroT+OtpVHAIz8GzR4dvjh+NbEalFqSTb+bL0tZ1kwqg5TGRY/FeitQmGqVg
	ahOzpX1nqqAdhY61dEKQBO+FXqu47bU5W17HqvLYMIUlM++ahNjTPe6ey3hL95jFmyEO
	3BUD02YvZ/+ItQSqA48yguxqcnE+ov1fsAQUhxeRvp1TzgtZDl9+Q7Z1fLCL1AJnOc5Y
	Se7j5DuEvIWmAtBhN9Q/jv98LpZEhQVDIbKX4Vn84wlgbIVs14haZnQiFeO7B03qtXeF
	aYdA==
X-Gm-Message-State: AMke39kqfd3Q4Fzn4QyeWgWjq0zR2VKBTpg+v5j8HgMbO6jhpDq0bt0T1sv5wEKH4jtvPxlf4wO7H38IyG4qkw==
X-Received: by 10.55.139.67 with SMTP id n64mr17364455qkd.157.1488202776085;
	Mon, 27 Feb 2017 05:39:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.132.68 with HTTP; Mon, 27 Feb 2017 05:39:35 -0800 (PST)
In-Reply-To: <alpine.LFD.2.20.1702270446460.4745@uk63952.mitel.com>
References: <alpine.LFD.2.20.1702270446460.4745@uk63952.mitel.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 27 Feb 2017 08:39:35 -0500
Message-ID: <CADkTA4Nu=KaXF+j-+r-dqnBFmBOV_5JJUSEBAoJkP3RO+F7M+w@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: couple questions about kernel-dev manual, section 2.6, "emenlow" branch
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
X-List-Received-Date: Mon, 27 Feb 2017 13:39:38 -0000
Content-Type: multipart/alternative; boundary=001a114f8b88d290e305498335be

--001a114f8b88d290e305498335be
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 27, 2017 at 4:54 AM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>
>   still working my way through the kernel-dev manual, and a couple
> oddities in section 2.6.
>
>   first, the example given uses the (alleged) standard/emenlow branch,
> which i'm pretty sure doesn't exist anymore, yes? if one is going to
> use an example, i suggest one base that example on one of the YP
> reference BSPs that's guaranteed to always exist, such as beagleboard
> or arm-versatile-926ejs.
>

I can't say that one will always exist .. but the arm-versatile branch has
been around for years, and until the qemuarm target changes to use something
else, it will continue to be around.


>
>   next, i'm assuming that one would be running those "git whatchanged"
> commands in the project directory, under
> tmp/work-shared/<target>/kernel-source, yes? it's just not made clear
> in that section where a reader would be doing those things.
>

Correct.


>
>   finally, section 2.6.1 reads:
>
> "Here is an example that looks at what has changed in the emenlow
> branch of the linux-yocto-3.19 kernel."
>
>   what does the kernel version of 3.19 have to do with those git
> commands? how do those commands depend on the particular version of
> the linux-yocto recipe you're using?
>

At one point I was changing the branching structure, and the kernel meta
data was in the same repo as the kernel source, so that could change some
of the commands.

But nothing has changed on that front in quite some time, so the answer
is "they don't depend on the version you are using" .. so the version
reference
could be dropped.

Bruce


>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a114f8b88d290e305498335be
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Feb 27, 2017 at 4:54 AM, Robert P. J. Day <span dir=3D"ltr">&lt=
;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcou=
rse.ca</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
=C2=A0 still working my way through the kernel-dev manual, and a couple<br>
oddities in section 2.6.<br>
<br>
=C2=A0 first, the example given uses the (alleged) standard/emenlow branch,=
<br>
which i&#39;m pretty sure doesn&#39;t exist anymore, yes? if one is going t=
o<br>
use an example, i suggest one base that example on one of the YP<br>
reference BSPs that&#39;s guaranteed to always exist, such as beagleboard<b=
r>
or arm-versatile-926ejs.<br></blockquote><div><br></div><div>I can&#39;t sa=
y that one will always exist .. but the arm-versatile branch has <br></div>=
<div>been around for years, and until the qemuarm target changes to use som=
ething<br></div><div>else, it will continue to be around.<br></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">
<br>
=C2=A0 next, i&#39;m assuming that one would be running those &quot;git wha=
tchanged&quot;<br>
commands in the project directory, under<br>
tmp/work-shared/&lt;target&gt;/<wbr>kernel-source, yes? it&#39;s just not m=
ade clear<br>
in that section where a reader would be doing those things.<br></blockquote=
><div><br></div><div>Correct.<br></div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
<br>
=C2=A0 finally, section 2.6.1 reads:<br>
<br>
&quot;Here is an example that looks at what has changed in the emenlow<br>
branch of the linux-yocto-3.19 kernel.&quot;<br>
<br>
=C2=A0 what does the kernel version of 3.19 have to do with those git<br>
commands? how do those commands depend on the particular version of<br>
the linux-yocto recipe you&#39;re using?<br></blockquote><div><br></div><di=
v>At one point I was changing the branching structure, and the kernel meta<=
br></div><div>data was in the same repo as the kernel source, so that could=
 change some<br></div><div>of the commands.<br><br></div><div>But nothing h=
as changed on that front in quite some time, so the answer <br></div><div>i=
s &quot;they don&#39;t depend on the version you are using&quot; .. so the =
version reference<br></div><div>could be dropped.<br><br></div><div>Bruce<b=
r></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
rday<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>
Robert P. J. Day=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ottawa, Ontario,=
 CANADA<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <a href=3D"http://crashcourse.ca" rel=3D"noreferrer" target=3D"_=
blank">http://crashcourse.ca</a><br>
<br>
Twitter:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a=
 href=3D"http://twitter.com/rpjday" rel=3D"noreferrer" target=3D"_blank">ht=
tp://twitter.com/rpjday</a><br>
LinkedIn:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ca.linkedin.=
com/in/rpjday" rel=3D"noreferrer" target=3D"_blank">http://ca.linkedin.com/=
in/<wbr>rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;Thou shalt n=
ot follow the NULL pointer, for chaos and madness await thee at its end&quo=
t;</div>
</div></div>

--001a114f8b88d290e305498335be--
