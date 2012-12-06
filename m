Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E424FE00655
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 14:53:43 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so6196399lbo.35
	for <yocto@yoctoproject.org>; Thu, 06 Dec 2012 14:53:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=8pFr8eZ6n1nTZ3o0mXX6vZ/ePiMDszpRJDauI9N60xM=;
	b=05n3dd35pvefVP5VINB2WCr+9yfzD+MZaeVSKh6vQWw7NkYB9L7hAnjGSuYmCGZCvN
	5IH1E1E32nzo3A/0SW6of4tv7XvPdvPD4bvY/K0fm4J/WGWMuX7p2zb7laIWKXey3NCR
	zWlepdWj7TcBTTZbqXXJGCEzBjz4LREEZ179NTJAdDmeFO/9nln0IIxK142VZlWzPRs1
	WqC1vbfUbgi51WEceloqGT4U4d+BUG5EZ6SkkPZ5eLXcWpj+0i8+YGzZ+Fwv8rmIqxMi
	PGuUsfvVeSHDcosHbaVIJ8pty5z3UWkZE4HlTt+5fA8SceesdP6o9QT1WMautol1Jni3
	98tg==
Received: by 10.152.113.225 with SMTP id jb1mr3476492lab.23.1354834422827;
	Thu, 06 Dec 2012 14:53:42 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.42.162 with HTTP; Thu, 6 Dec 2012 14:53:22 -0800 (PST)
In-Reply-To: <50C120F1.2020004@mlbassoc.com>
References: <alpine.DEB.2.02.1212061650350.4116@oneiric>
	<CABcZAN=JuymHBYdL8kZUjcYjScfjKAJwYJibP6R=7Xkto1Gh1g@mail.gmail.com>
	<alpine.DEB.2.02.1212061731550.4523@oneiric>
	<50C120F1.2020004@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 6 Dec 2012 15:53:22 -0700
X-Google-Sender-Auth: yRfwJpQf91YzYsHs0aEUHw7nqVQ
Message-ID: <CABcZANnsFY4qT75i8zUv3DD8Kuk9LcbGDzfCnd64Yp2byyq9gQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: FILESEXTRAPATHS needs to be explained *way* better
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
X-List-Received-Date: Thu, 06 Dec 2012 22:53:44 -0000
Content-Type: multipart/alternative; boundary=f46d0408d91b808a9804d036f8c2

--f46d0408d91b808a9804d036f8c2
Content-Type: text/plain; charset=UTF-8

On Thu, Dec 6, 2012 at 3:49 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2012-12-06 15:32, Robert P. J. Day wrote:
>
>> On Thu, 6 Dec 2012, Chris Larson wrote:
>>
>>
>>>
>>> On Thu, Dec 6, 2012 at 2:59 PM, Robert P. J. Day <rpjday@crashcourse.ca>
>>> wrote:
>>>          in addition, there is absolutely no need to add a ":" to the
>>> value
>>>        as the processing adds that for you, so the many, many examples of
>>>
>>>        FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>>
>>>        is potentially confusing to folks reading the code.  (that
>>> trailing
>>>        ":" doesn't hurt, but it has no value.)
>>>
>>>
>>> This is wrong. You only don't need the leading : if FILESEXTRAPATHS
>>> was empty to begin with, which is only the case if that is the first
>>> and only bbappend adding to it. As soon as you get more than one,
>>> you'll end up with concatenated values and no separator.
>>>
>>
>>    i'm confused, not sure what this means.  what is the *proper* usage
>> of that variable?
>>
>
> I think Chris means you don't need ":=", you should just use "="
>

No, := is required whenever you use THISDIR in a bbappend, unless you
*really* mean the path to the recipe itself, which is unlikely. THISDIR
evaluates based on FILE, which resolves to the current file being parsed,
at the time it's expanded.

Bottom line, what you are trying to create is something that looks like
> this:
>   FILESEXTRAPATHS = "some_path:some_other_path:**even_another_path:"
> so the ":" at the end of the expression should always be there.


Right :)
-- 
Christopher Larson

--f46d0408d91b808a9804d036f8c2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Dec 6=
, 2012 at 3:49 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary=
@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">

<div class=3D"im">On 2012-12-06 15:32, Robert P. J. Day wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Thu, 6 Dec 2012, Chris Larson wrote:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<br>
On Thu, Dec 6, 2012 at 2:59 PM, Robert P. J. Day &lt;<a href=3D"mailto:rpjd=
ay@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt; wrote:<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0in addition, there is absolutely no need =
to add a &quot;:&quot; to the value<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0as the processing adds that for you, so the many=
, many examples of<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${=
PN}:&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0is potentially confusing to folks reading the co=
de. =C2=A0(that trailing<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;:&quot; doesn&#39;t hurt, but it has no va=
lue.)<br>
<br>
<br>
This is wrong. You only don&#39;t need the leading : if FILESEXTRAPATHS<br>
was empty to begin with, which is only the case if that is the first<br>
and only bbappend adding to it. As soon as you get more than one,<br>
you&#39;ll end up with concatenated values and no separator.<br>
</blockquote>
<br>
=C2=A0 =C2=A0i&#39;m confused, not sure what this means. =C2=A0what is the =
*proper* usage<br>
of that variable?<br>
</blockquote>
<br></div>
I think Chris means you don&#39;t need &quot;:=3D&quot;, you should just us=
e &quot;=3D&quot;<br></blockquote><div><br></div><div>No, :=3D is required =
whenever you use THISDIR in a bbappend, unless you *really* mean the path t=
o the recipe itself, which is unlikely. THISDIR evaluates based on FILE, wh=
ich resolves to the current file being parsed, at the time it&#39;s expande=
d.=C2=A0</div>

<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">
Bottom line, what you are trying to create is something that looks like thi=
s:<br>
=C2=A0 FILESEXTRAPATHS =3D &quot;some_path:some_other_path:<u></u>even_anot=
her_path:&quot;<br>
so the &quot;:&quot; at the end of the expression should always be there.</=
blockquote></div><br>Right :)<br>-- <br>Christopher Larson<br>
</div>

--f46d0408d91b808a9804d036f8c2--
