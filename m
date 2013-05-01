Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f52.google.com (mail-vb0-f52.google.com
	[209.85.212.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7547CE00310
	for <yocto@yoctoproject.org>; Wed,  1 May 2013 12:19:30 -0700 (PDT)
Received: by mail-vb0-f52.google.com with SMTP id q16so1470870vbe.11
	for <yocto@yoctoproject.org>; Wed, 01 May 2013 12:19:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=zRqEKABj93hU+mpjPkGPtCcnw3NxGJtaqMHMG5I+6Dc=;
	b=DdtWRXxpDgF9Bb450gbhy/jVResgl3HhO3ivoSf/v7O2+RMYHrvH47HSrBq6QTLHYn
	PKuN1GrxDfC5FUktkf2BRpsCm34F29lCcQKWYRlD1vXBNQzLxKYN0qLAi1PuUIaDh8Yw
	GZC3KEVAI6RDsCqOWFl+hh5s/156gUY6qGnFJQUAk+0OM0Q8D2+tdy1IRXv7mEMb5s5Z
	DQSjk+1L5luH1NXiXhNE6iWCt3yiqxqJM39swAwvHoowxwnYeUvZ4+KJf+JQKwzQEsDs
	MhHRV24YPmNV00AGD+08CRV7EYBWgYqu7QKsNHVc1aIsQ1wHOROV67PE4hHLyUb3JTX3
	mM8w==
X-Received: by 10.59.3.9 with SMTP id bs9mr1202604ved.38.1367435969835; Wed,
	01 May 2013 12:19:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Wed, 1 May 2013 12:19:09 -0700 (PDT)
X-Originating-IP: [5.14.143.208]
In-Reply-To: <CANyK_8efmMZwTde9tivSDcnUmo2XtZiQ6JTv6oFDbFJTmhp3tw@mail.gmail.com>
References: <51788033.9010908@gmail.com>
	<CANyK_8fpnN8C6-vZPyFmGx5U3_ySRQp7twsXcKO4utz+WWc2EQ@mail.gmail.com>
	<CA+JN8xOs5YL+vdtJz8ZtqCvUNVi7UO=++grHtx26n2iEpGXbGg@mail.gmail.com>
	<CANyK_8efmMZwTde9tivSDcnUmo2XtZiQ6JTv6oFDbFJTmhp3tw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 1 May 2013 21:19:09 +0200
Message-ID: <CAK18fxE99emJoMTwL4mGoMNsHiToAJwEeVf7mWHTE87i9Td-Vg@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQlEekfu/m55/tgynfwSzlVuxZ08LKrbnqSm4m6ew/LruM4+s/m/pb0wzQvqt0lgvX18Ym5U
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] sdcard_image-rpi.bbclass: Copy startup files required for 16MB GPU operation.
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
X-List-Received-Date: Wed, 01 May 2013 19:19:30 -0000
Content-Type: multipart/alternative; boundary=e89a8f9219363c76d204dbacff35

--e89a8f9219363c76d204dbacff35
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Apr 25, 2013 at 3:03 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 25 April 2013 13:57, Seth Bollinger <seth.boll@gmail.com> wrote:
> > On Thu, Apr 25, 2013 at 7:51 AM, Paul Barker <paul@paulbarker.me.uk>
> wrote:
> >>
> >> Trying to apply this email I get:
> >>
> >>     Applying: sdcard_image-rpi.bbclass: Copy startup files required
> >> for 16MB GPU operation.
> >>     fatal: corrupt patch at line 14
> >>     Patch failed at 0001 sdcard_image-rpi.bbclass: Copy startup files
> >> required for 16MB GPU operation.
> >>
> >> Trying to apply the attached patch I get:
> >>
> >>     Patch format detection failed.
> >>
> >> Are you using 'git send-email'?
> >>
> >> However, I can apply this after fixing the attached patch file by
> >> hand, giving it a test now.
> >
> >
> > I run git format-patch and then copy the text into the email and attach
> the
> > patch.  I apologize for the trouble.  Richard complained of whitespace
> > problems in my last patches so I'm trying to alleviate this problem.  :)
> > I'll see if I can't get gmail set up on my vm so I can use git
> send-email.
> >
> > Seth
>
> Somehow a leading '>' crept into the attached patch.
>
> Almost all mail clients ruin patches, maybe take a look at
> https://coderwall.com/p/dp-gka for using 'git send-email' with gmail.
>
> If you don't want to clog the list with attempts which might not work,
> send a few test patches to me and i'll let you know if they work.
>
>
Aaaaaa... I just can't make it work. My advice is to use git send-email
too.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--e89a8f9219363c76d204dbacff35
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Thu, Apr 25, 2013 at 3:03 PM, Paul Barker <span dir=3D"ltr">&lt;=
<a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.=
me.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">On 25 April 2013 13:57, Seth Bollinger &lt;<=
a href=3D"mailto:seth.boll@gmail.com">seth.boll@gmail.com</a>&gt; wrote:<br=
>

<div class=3D"im">&gt; On Thu, Apr 25, 2013 at 7:51 AM, Paul Barker &lt;<a =
href=3D"mailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt; wrote:<=
br>
&gt;&gt;<br>
&gt;&gt; Trying to apply this email I get:<br>
&gt;&gt;<br>
&gt;&gt; =A0 =A0 Applying: sdcard_image-rpi.bbclass: Copy startup files req=
uired<br>
&gt;&gt; for 16MB GPU operation.<br>
&gt;&gt; =A0 =A0 fatal: corrupt patch at line 14<br>
&gt;&gt; =A0 =A0 Patch failed at 0001 sdcard_image-rpi.bbclass: Copy startu=
p files<br>
&gt;&gt; required for 16MB GPU operation.<br>
&gt;&gt;<br>
&gt;&gt; Trying to apply the attached patch I get:<br>
&gt;&gt;<br>
&gt;&gt; =A0 =A0 Patch format detection failed.<br>
&gt;&gt;<br>
&gt;&gt; Are you using &#39;git send-email&#39;?<br>
&gt;&gt;<br>
&gt;&gt; However, I can apply this after fixing the attached patch file by<=
br>
&gt;&gt; hand, giving it a test now.<br>
&gt;<br>
&gt;<br>
</div>&gt; I run git format-patch and then copy the text into the email and=
 attach the<br>
&gt; patch. =A0I apologize for the trouble. =A0Richard complained of whites=
pace<br>
&gt; problems in my last patches so I&#39;m trying to alleviate this proble=
m. =A0:)<br>
&gt; I&#39;ll see if I can&#39;t get gmail set up on my vm so I can use git=
 send-email.<br>
&gt;<br>
&gt; Seth<br>
<br>
Somehow a leading &#39;&gt;&#39; crept into the attached patch.<br>
<br>
Almost all mail clients ruin patches, maybe take a look at<br>
<a href=3D"https://coderwall.com/p/dp-gka" target=3D"_blank">https://coderw=
all.com/p/dp-gka</a> for using &#39;git send-email&#39; with gmail.<br>
<br>
If you don&#39;t want to clog the list with attempts which might not work,<=
br>
send a few test patches to me and i&#39;ll let you know if they work.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div style>Aaaaaa... I just can&#39;t make it work. My=A0advice=A0=
is to use git send-email too. =A0</div></div><div><br></div>-- <br><div dir=
=3D"ltr">

<div style=3D"text-align:center"></div><div style=3D"text-align:center"><di=
v align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-size:m=
edium"><b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;te=
xt-align:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" s=
ize=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--e89a8f9219363c76d204dbacff35--
