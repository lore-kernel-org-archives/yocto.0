Return-Path: <alexandru.damian@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D687E009BB; Fri,  8 May 2015 01:55:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D68CDE00945
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 01:55:19 -0700 (PDT)
Received: by igbyr2 with SMTP id yr2so15520948igb.0
	for <yocto@yoctoproject.org>; Fri, 08 May 2015 01:55:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=vwvXSrAZiMVrPEV/h2AyALNO/sQ66CZhQMc2Q8wafbw=;
	b=D/C0v0kq2MaLc6Lz3HBBfhdKJS19pcvQZF48TT9LPU7nzPjjnvesfC0flJVDjDe9+z
	gI/VUvFvKXSI4iyP3DzG8AmzVTu+dAr4J4CsMG1pldt9Ut0zVbX9lSfG7Kft1kk1vXz9
	+Zvb/6vOxJQT/eUq9KGvLhFJslFEUxUJREJ+itch1UhsXPfCvn001rZBh+8VBcOoYnx4
	DZWWCG6VzZ6yVRuXp0726t/Lr+jaRWapjYhGvWG8o1ByLynCxbyTe2qSeu3O/Tkr8PjJ
	9XA4MNWFPTYR0q+4OU6YaeJqlzhY3u2lLeUuoWedbcAwO5on9MbyUhhvvRx8kK/LBUx1
	Cqtw==
X-Gm-Message-State: ALoCoQnH8YL0+rTgM789TmJ7my7AZgO0WpNQEKCLBs3JghIiuD5XvKrlRNuIOTGSw/EJhqsfMwDy
X-Received: by 10.42.81.201 with SMTP id a9mr3019768icl.9.1431075319155; Fri,
	08 May 2015 01:55:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.10.67 with HTTP; Fri, 8 May 2015 01:54:58 -0700 (PDT)
In-Reply-To: <1431062039464.37764@inedasystems.com>
References: <D1711C04.5B1A6%belen.barros.pena@intel.com>
	<1431062039464.37764@inedasystems.com>
From: "Damian, Alexandru" <alexandru.damian@intel.com>
Date: Fri, 8 May 2015 09:54:58 +0100
Message-ID: <CAJ2CSBvXZwPkzSFMwEYwwmjWaQCFZqpeM-LDKEiEmRtag5aXvw@mail.gmail.com>
To: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issue with toaster
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
X-List-Received-Date: Fri, 08 May 2015 08:55:29 -0000
Content-Type: multipart/alternative; boundary=90e6ba614ed20bc33105158e30a5

--90e6ba614ed20bc33105158e30a5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

Is there any error message displayed on screen ?

Can you please paste bin your latest *toaster_web.log* file  and send us
the link ?
You can find your latest *toaster_web.log* file by looking in
*/tmp/toaster_** and take most recent one. One way to do this is:

$ find /tmp/toaster_* -printf '%T@ %p\0' | sort -zk 1nr | xargs -0n1 | cut
-d " " -f 2 | head -1

Thank you,
Alex

On Fri, May 8, 2015 at 6:14 AM, Raghavendra Kakarla <
Raghavendra.Kakarla@inedasystems.com> wrote:

> Hi Belen,
>
> I am using yocto fido.
>
> I am entered the my custom layer git repository url(Which is our local gi=
t
> repository where our product corresponding recipe layers re there),a uniq=
ue
> layer name and our git repository revision number.
>
> We entered these data but the import layer version is not respond.
>
> Thanks and Regards,
>
> Raghavendra K.
> ________________________________________
> From: Barros Pena, Belen <belen.barros.pena@intel.com>
> Sent: Thursday, May 7, 2015 6:17 PM
> To: Raghavendra Kakarla; yocto@yoctoproject.org
> Subject: Re: [yocto] Issue with toaster
>
> On 07/05/2015 10:18, "Raghavendra Kakarla"
> <Raghavendra.Kakarla@inedasystems.com> wrote:
>
> >Hi,
> >
> >I have an issue while importing custom layer in toaster. When i gave the
> >all layer information for importing the layer and click on the import
> >layer button in toaster it    wont respond.
> >Could you please help for resolving this issue.
>
> Hi Raghavendra,
>
> We would need a bit more information to understand what's happening:
>
> * Which branch are you using (fido or master). If you are using master,
> which commit?
> * Which data are you entering in the import layer form? Keep in mind that
> you must provide a git url, a unique layer name and a revision. Without
> that information, the "import layer" button will remain stubbornly
> inactive and nothing will happen when you click on it.
>
> Cheers
>
> Bel=C3=A9n
>
> >
> >
> >
> >Thanks in advance.
> >
> >
> > Regards,
> > Raghavendra K.
> >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
Alex Damian
Yocto Project
SSG / OTC

--90e6ba614ed20bc33105158e30a5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">Hello,</div><div class=3D"gmail_default" style=3D"font-family:ta=
homa,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-famil=
y:tahoma,sans-serif">Is there any error message displayed on screen ?=C2=A0=
</div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">=
<br></div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-ser=
if">Can you please paste bin your latest <i>toaster_web.log</i> file =C2=A0=
and send us the link ?</div><div class=3D"gmail_default" style=3D"font-fami=
ly:tahoma,sans-serif">You can find your latest <i>toaster_web.log</i> file =
by looking in <i>/tmp/toaster_*</i> and take most recent one. One way to do=
 this is:</div><div class=3D"gmail_default" style=3D"font-family:tahoma,san=
s-serif"><br></div><div class=3D"gmail_default"><font face=3D"monospace, mo=
nospace" size=3D"1">$ find /tmp/toaster_* -printf &#39;%T@ %p\0&#39; | sort=
 -zk 1nr | xargs -0n1 | cut -d &quot; &quot; -f 2 | head -1<br></font></div=
><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br><=
/div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">T=
hank you,</div><div class=3D"gmail_default" style=3D"font-family:tahoma,san=
s-serif">Alex</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Fri, May 8, 2015 at 6:14 AM, Raghavendra Kakarla <span dir=3D"lt=
r">&lt;<a href=3D"mailto:Raghavendra.Kakarla@inedasystems.com" target=3D"_b=
lank">Raghavendra.Kakarla@inedasystems.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">Hi Belen,<br>
<br>
I am using yocto fido.<br>
<br>
I am entered the my custom layer git repository url(Which is our local git =
repository where our product corresponding recipe layers re there),a unique=
 layer name and our git repository revision number.<br>
<br>
We entered these data but the import layer version is not respond.<br>
<br>
Thanks and Regards,<br>
<br>
Raghavendra K.<br>
________________________________________<br>
From: Barros Pena, Belen &lt;<a href=3D"mailto:belen.barros.pena@intel.com"=
>belen.barros.pena@intel.com</a>&gt;<br>
Sent: Thursday, May 7, 2015 6:17 PM<br>
To: Raghavendra Kakarla; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yo=
ctoproject.org</a><br>
Subject: Re: [yocto] Issue with toaster<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On 07/05/2015 10:18, &quot;Raghavendra Kakarla&quot;<br>
&lt;<a href=3D"mailto:Raghavendra.Kakarla@inedasystems.com">Raghavendra.Kak=
arla@inedasystems.com</a>&gt; wrote:<br>
<br>
&gt;Hi,<br>
&gt;<br>
&gt;I have an issue while importing custom layer in toaster. When i gave th=
e<br>
&gt;all layer information for importing the layer and click on the import<b=
r>
&gt;layer button in toaster it=C2=A0 =C2=A0 wont respond.<br>
&gt;Could you please help for resolving this issue.<br>
<br>
Hi Raghavendra,<br>
<br>
We would need a bit more information to understand what&#39;s happening:<br=
>
<br>
* Which branch are you using (fido or master). If you are using master,<br>
which commit?<br>
* Which data are you entering in the import layer form? Keep in mind that<b=
r>
you must provide a git url, a unique layer name and a revision. Without<br>
that information, the &quot;import layer&quot; button will remain stubbornl=
y<br>
inactive and nothing will happen when you click on it.<br>
<br>
Cheers<br>
<br>
Bel=C3=A9n<br>
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;Thanks in advance.<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt; Raghavendra K.<br>
&gt;<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature"><div dir=3D"ltr">Alex Damian<div>Yocto Proje=
ct<br></div><div>SSG / OTC=C2=A0</div></div></div>
</div>

--90e6ba614ed20bc33105158e30a5--
