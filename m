Return-Path: <jmehaffey@mvista.com>
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2B01E01485
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 08:35:27 -0800 (PST)
Received: by mail-we0-f181.google.com with SMTP id u7so1909748wey.26
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 08:35:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=RLvNbA3WlLMDxQxj4RsGJ1iMpJo3ArvzFywp38RIwy4=;
	b=URKbFzqKUK/sAukihIAKTEXIlZeRRA6EAgTp9xxoMssWeyL/mVhMpAvXGqsjEcbv+U
	zlXy9ywPB5Y57SCgK6yW2x/F1b2MoLrs191O08NRiXtz6jyxnbabzhcrxpDoSULI6xY1
	aCQxydCunscpOOhMgxm4r5oJ7nPpcUIg/2CGVQGKAgof7z9QCmY6JaUCYRdlf3B+jGoO
	nGQWxUJm1fIeuE/bfUTmrOInv1OUioIC04uiu/D/jwlXrjh5fqy7j+RNf5bY95KV6HCI
	DR6TCRQxqlHvePE7lZgwqVUDzcT2HAXidd0d76kOb41pfhj0QZFj9aPcXGrbbSnxzUq3
	46xA==
MIME-Version: 1.0
X-Received: by 10.194.143.35 with SMTP id sb3mr33505206wjb.30.1358872526073;
	Tue, 22 Jan 2013 08:35:26 -0800 (PST)
Received: by 10.227.2.68 with HTTP; Tue, 22 Jan 2013 08:35:25 -0800 (PST)
In-Reply-To: <20130122112628.E460120DA8C@gemini.denx.de>
References: <20130122070331.C3B6120DA8C@gemini.denx.de>
	<33115ABC4887814E8A92A08FBC93416B08DC598A@IRSMSX103.ger.corp.intel.com>
	<20130122112628.E460120DA8C@gemini.denx.de>
Date: Tue, 22 Jan 2013 08:35:25 -0800
Message-ID: <CAGOhT_fp04iRBj2PqNJSZJJiOw5qzjyqcTZ0rXuDG_GjvhADoQ@mail.gmail.com>
From: John Mehaffey <mehaf@mvista.com>
To: Wolfgang Denk <wd@denx.de>
X-Gm-Message-State: ALoCoQlEk+ARhL+JxTqxXNP/oA/hRJdnMwo/Pev0AwTgs1j6W5O++sjWMqSF0vsJXL056ElXMzmJ
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: M2, M3, M4 milestones available?
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
X-List-Received-Date: Tue, 22 Jan 2013 16:35:28 -0000
Content-Type: multipart/alternative; boundary=089e0115e878362fd004d3e32ae9

--089e0115e878362fd004d3e32ae9
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 22, 2013 at 3:26 AM, Wolfgang Denk <wd@denx.de> wrote:

> Dear Cornel,
>
> In message <
> 33115ABC4887814E8A92A08FBC93416B08DC598A@IRSMSX103.ger.corp.intel.com>
> you wrote:
> >
> > From a QA point of view, we are approaching the 1.4 M3 milestone.
> > Here is what Saul wrote for the latest Full Pass request:
> >
> > "
> > QA Teams:
> >
> > Please do FULL Pass testing on this as a PRE-M3 Full Pass so we have
> > some idea of what's going on.
> >
> > Git Rev: 9eb88ceb39b7d0b8ddc6487e61ce8edadef10ec4
> > "
>
> OK, so we have not reached M3 yet.  Thanks.
>
> Would it not make sense to regularly update the release schedule web
> page [1] so that it also reports the current state?  or is there any
> other web page where such information is present?
>
> [1] https://wiki.yoctoproject.org/wiki/Yocto_1.4_Schedule
>
>
> > 1.4 M2 was kind of blurry because it landed during charismas and new
> > year thus many of us were on vacation.
>
> So what exactly is the git commit ID of the 1.4 M2 milestone release?
> I cannot see any matching tag in the git repository?
>

Hi Wolfgang,

The M2 and M3 milestones were merged. Please see Liu Song's email on Dec
27, in part: "Yocto Project CCB has approved our request to merge M2 and M3
together. So there won=92t be a M2 release and we will be working toward a =
M3
release for M2 and M3 features by Feb. 7th, 2013"

-mehaf

"

>
> Best regards,
>
> Wolfgang Denk
>
> --
> DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
> If you use modules, you pay the price. Sane embedded solutions
> running in "tight" environments don't use modules :-)
>     -- Benjamin Herrenschmidt in <1258234866.2140.451.camel@pasglop>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e0115e878362fd004d3e32ae9
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Tue, Jan 22, 2013 at 3:26 AM, Wolfgang Denk <=
span dir=3D"ltr">&lt;<a href=3D"mailto:wd@denx.de" target=3D"_blank">wd@den=
x.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Dear Cornel,<br>
<div class=3D"im"><br>
In message &lt;<a href=3D"mailto:33115ABC4887814E8A92A08FBC93416B08DC598A@I=
RSMSX103.ger.corp.intel.com">33115ABC4887814E8A92A08FBC93416B08DC598A@IRSMS=
X103.ger.corp.intel.com</a>&gt; you wrote:<br>
&gt;<br>
&gt; From a QA point of view, we are approaching the 1.4 M3 milestone.<br>
&gt; Here is what Saul wrote for the latest Full Pass request:<br>
&gt;<br>
&gt; &quot;<br>
&gt; QA Teams:<br>
&gt;<br>
&gt; Please do FULL Pass testing on this as a PRE-M3 Full Pass so we have<b=
r>
&gt; some idea of what&#39;s going on.<br>
&gt;<br>
&gt; Git Rev: 9eb88ceb39b7d0b8ddc6487e61ce8edadef10ec4<br>
&gt; &quot;<br>
<br>
</div>OK, so we have not reached M3 yet. =A0Thanks.<br>
<br>
Would it not make sense to regularly update the release schedule web<br>
page [1] so that it also reports the current state? =A0or is there any<br>
other web page where such information is present?<br>
<br>
[1] <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_1.4_Schedule" targe=
t=3D"_blank">https://wiki.yoctoproject.org/wiki/Yocto_1.4_Schedule</a><br>
<div class=3D"im"><br>
<br>
&gt; 1.4 M2 was kind of blurry because it landed during charismas and new<b=
r>
&gt; year thus many of us were on vacation.<br>
<br>
</div>So what exactly is the git commit ID of the 1.4 M2 milestone release?=
<br>
I cannot see any matching tag in the git repository?<br></blockquote><div><=
br>Hi Wolfgang,<br><br>The M2 and M3 milestones were merged. Please see Liu=
 Song&#39;s email on Dec 27, in part: &quot;Yocto Project CCB has approved =
our request to <span class=3D"il">merge</span> <span class=3D"il">M2</span>=
 and M3 together. So there won=92t be a <span class=3D"il">M2</span> releas=
e and we will be working toward
 a M3 release for <span class=3D"il">M2</span> and M3 features by Feb. 7<su=
p>th</sup>, 2013&quot;<br><br>-mehaf<br><br>&quot; <br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">

<div class=3D"im"><br>
Best regards,<br>
<br>
Wolfgang Denk<br>
<br>
--<br>
DENX Software Engineering GmbH, =A0 =A0 MD: Wolfgang Denk &amp; Detlev Zund=
el<br>
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany<br>
Phone: <a href=3D"tel:%28%2B49%29-8142-66989-10" value=3D"+4981426698910">(=
+49)-8142-66989-10</a> Fax: <a href=3D"tel:%28%2B49%29-8142-66989-80" value=
=3D"+4981426698980">(+49)-8142-66989-80</a> Email: <a href=3D"mailto:wd@den=
x.de">wd@denx.de</a><br>

</div>If you use modules, you pay the price. Sane embedded solutions<br>
running in &quot;tight&quot; environments don&#39;t use modules :-)<br>
=A0 =A0 -- Benjamin Herrenschmidt in &lt;1258234866.2140.451.camel@pasglop&=
gt;<br>
<div class=3D"HOEnZb"><div class=3D"h5">___________________________________=
____________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br>

--089e0115e878362fd004d3e32ae9--
