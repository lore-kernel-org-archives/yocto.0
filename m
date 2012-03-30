Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC410E013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 20:12:34 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so1318922pbb.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 20:12:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc
	:x-gm-message-state:content-type;
	bh=p0dJSkZRzJm45yimEBSSND5hygary0CRF3EER1ZMY2s=;
	b=axLx3FDbSFfZ2wKhQitbhgMgUoAgMiwa51uDMNTZxJE1LyKufY6Br6jfsgw1t9Udrh
	jBCRZaLViN5URIRQU/hzDiLW7vidAjnbVwgcp+VH1iFFDVou7iTXufCYe89a3jHflvGD
	ZA+saoma2otF7dSsGfw2WyW1Y3CbNQScsUAyipPXLdALYwiUxJ2hgx2/Pd4rWh6HS+a8
	F4UYbIXFGDTaeUfirXUWoLuj6/87eYN7sEs7rhkQcSn6UZuVMiNWJOMyxOU4lIwBwFP9
	1yIdPUdf9sGDvF9w3Bni5lLJLhVP8AeNRc1c4htTYxU4QuFfG0Pcvp2zxVWu/+Fv8hlt
	US/g==
MIME-Version: 1.0
Received: by 10.68.189.138 with SMTP id gi10mr5012482pbc.89.1333077154638;
	Thu, 29 Mar 2012 20:12:34 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.143.29.18 with HTTP; Thu, 29 Mar 2012 20:12:34 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1203291826450.21523@oneiric>
References: <alpine.DEB.2.02.1203291746350.19207@oneiric>
	<CA+gsK-qYyhBU5gXHAECt=udaX8DpoAz0Y-t5urya8qqimXBgDQ@mail.gmail.com>
	<alpine.DEB.2.02.1203291826450.21523@oneiric>
Date: Thu, 29 Mar 2012 20:12:34 -0700
X-Google-Sender-Auth: TgUAIGtajY3NFnFM-DEdQK41o7o
Message-ID: <CA+gsK-rXemLsxH0NCOaX7xvFNQOYsn416_rEAWyg9s+4Qo6mJg@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQn9+ep3LPajqPWK5L+5DVgVtJyFJG1jVU98u7voHcGBJJHCnuNDcVbAx46xQYm7fc5zx2x2
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: which yocto doc explains bitbake assignment variations?
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
X-List-Received-Date: Fri, 30 Mar 2012 03:12:35 -0000
Content-Type: multipart/alternative; boundary=e89a8fb2091e42adaf04bc6d3695

--e89a8fb2091e42adaf04bc6d3695
Content-Type: text/plain; charset=ISO-8859-1

1. yes, = will always override any prior ?= or ??= and any subsequent ?= or
??= will not change the setting anymore.

2. yes, a ?= following a ??= will set the variable. Only a = will be
override the setting of the ?=. Any following ?= and ??= will not change
the setting.

3. yes, a ?= or = following a ??= will set the variable.


Just try it. Put a variable (FOO) in local.conf and use bitbake -e | grep
FOO

FOO ??= "bar"
FOO ?= "barbar"

:rjs

On Thu, Mar 29, 2012 at 3:34 PM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

>
>  just to be absolutely clear so i don't misunderstand:
>
> On Thu, 29 Mar 2012, Rudolf Streif wrote:
>
> > VAR = "value"
> >
> >     In this example, VAR is set to value.
>
>   so the "=" assignment will *always* set the variable to that value,
> regardless of what combination of =, ?= or ??= has come before it,
> correct?
>
> >     Early Default Value Assignment (?=)
> >
> >     A variable can be early-assigned a default value using
> the ?= assignment operator:
> >
> > A ?= "1"
> > B ?= "2"
> > B ?= "3"
> >
> >     In this example A will contain 1 if it was not previously
> set. B will contain 2 because
> >     the ?= assignment operator is immediate meaning that if there are
> multiple ?= assignments
> >     to a single variable, the first one will be used.
>
>   and the first ?= will be processed, even if there were earlier ??=
> assignments, correct?  (obviously not if there were earlier =
> assignments.)
>
> > A ??= "1"
> > B ??= "2"
> > B ??= "3"
> >
> >     In this example A will contain 1 if it was not previously
> set. B will contain 3 because
> >     the ??= assignment operator is a late or lazy assignment operator
> and assignment will not
> >     take place until the end of the parsing process. If there are
> multiple ??= assignments to a
> >     single variable, the last one will be used.
>
>   however, this "weak" assignment is cancelled by the appearance of
> either a = or a ?= assignment at any time, yes?
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>

--e89a8fb2091e42adaf04bc6d3695
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

1. yes, =3D will always override any prior ?=3D or ??=3D and any subsequent=
 ?=3D or ??=3D will not change the setting anymore.<div><br></div><div>2. y=
es, a ?=3D following a ??=3D will set the variable. Only a =3D will be over=
ride the setting of the ?=3D. Any following ?=3D and ??=3D will not change =
the setting.</div>
<div><br></div><div>3. yes, a ?=3D or =3D following a ??=3D will set the va=
riable.</div><div><br></div><div><br></div><div>Just try it. Put a variable=
 (FOO) in local.conf and use bitbake -e | grep FOO</div><div><br></div><div=
>FOO ??=3D &quot;bar&quot;</div>
<div>FOO ?=3D &quot;barbar&quot;</div><div><br></div><div>:rjs<br><br><div =
class=3D"gmail_quote">On Thu, Mar 29, 2012 at 3:34 PM, Robert P. J. Day <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcou=
rse.ca</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><br>
 =A0just to be absolutely clear so i don&#39;t misunderstand:<br>
<div class=3D"im"><br>
On Thu, 29 Mar 2012, Rudolf Streif wrote:<br>
<br>
&gt; VAR =3D &quot;value&quot;<br>
&gt;<br>
&gt; =A0 =A0 In this example,=A0VAR=A0is set to=A0value.<br>
<br>
</div> =A0so the &quot;=3D&quot; assignment will *always* set the variable =
to that value,<br>
regardless of what combination of =3D, ?=3D or ??=3D has come before it,<br=
>
correct?<br>
<div class=3D"im"><br>
&gt; =A0 =A0 Early Default Value Assignment (?=3D)<br>
&gt;<br>
&gt; =A0 =A0 A variable can be early-assigned a default value using the=A0?=
=3D=A0assignment operator:<br>
&gt;<br>
&gt; A ?=3D &quot;1&quot;<br>
&gt; B ?=3D &quot;2&quot;<br>
&gt; B ?=3D &quot;3&quot;<br>
&gt;<br>
&gt; =A0 =A0 In this example=A0A=A0will contain=A01=A0if it was not previou=
sly set.=A0B=A0will contain=A02=A0because<br>
&gt; =A0 =A0 the=A0?=3D=A0assignment operator is immediate meaning that if =
there are multiple=A0?=3D=A0assignments<br>
&gt; =A0 =A0 to a single variable, the first one will be used.<br>
<br>
</div> =A0and the first ?=3D will be processed, even if there were earlier =
??=3D<br>
assignments, correct? =A0(obviously not if there were earlier =3D<br>
assignments.)<br>
<div class=3D"im"><br>
&gt; A ??=3D &quot;1&quot;<br>
&gt; B ??=3D &quot;2&quot;<br>
&gt; B ??=3D &quot;3&quot;<br>
&gt;<br>
&gt; =A0 =A0 In this example=A0A=A0will contain=A01=A0if it was not previou=
sly set.=A0B=A0will contain=A03=A0because<br>
&gt; =A0 =A0 the=A0??=3D=A0assignment operator is a late or lazy assignment=
 operator and assignment will not<br>
&gt; =A0 =A0 take place until the end of the parsing process. If there are =
multiple=A0??=3D=A0assignments to a<br>
&gt; =A0 =A0 single variable, the last one will be used.<br>
<br>
</div> =A0however, this &quot;weak&quot; assignment is cancelled by the app=
earance of<br>
either a =3D or a ?=3D assignment at any time, yes?<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0<a href=3D"http://crashcour=
se.ca" target=3D"_blank">http://crashcourse.ca</a><br>
<br>
Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">http://=
twitter.com/rpjday</a><br>
LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a hr=
ef=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.linkedi=
n.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div></d=
iv></blockquote></div><br></div>

--e89a8fb2091e42adaf04bc6d3695--
