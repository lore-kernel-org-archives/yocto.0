Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 882C8E0152C
	for <yocto@yoctoproject.org>; Wed,  1 May 2013 12:10:46 -0700 (PDT)
Received: by mail-vb0-f42.google.com with SMTP id w15so1473027vbf.1
	for <yocto@yoctoproject.org>; Wed, 01 May 2013 12:10:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=iruyqU9/L32u6d9gRWeObTbGYp2DIAeUbGE/KnWJ+Ts=;
	b=ClckvPiJ1l+wT+JVyJzh11qW/jQyLww13rYHifBSSuBaVT/RwnSl0g4oIMw9kS7a/u
	Zt5S06r+9OAWCBIiyr/OIfjlZr4+3D5QUInzX4LqQ5TIkvBlF95BpCJlWUuZAs7C4/Ex
	7ZiHPyUASQ1nurVKnq3wTK2v7sT573MCEFsOPPwUS4QMw6szrECGTOgLc7SmDH6SRDP7
	JYULf7FTrjslPV6/fgG2iEnMRP190tKZyUw9Z0Q7s5o6EQwP5kb6AKBIBW/Hb5J/o1AU
	N3rluN5u25QMMkS9ZY0Kpu6CB46mvtQF0asS0jtHssoqQbFmXxlqPj1sGedYdjrvPqdw
	Q16g==
X-Received: by 10.58.50.7 with SMTP id y7mr1216428ven.24.1367435445647; Wed,
	01 May 2013 12:10:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Wed, 1 May 2013 12:10:25 -0700 (PDT)
X-Originating-IP: [5.14.143.208]
In-Reply-To: <CANyK_8dWFNWQ2UhHdQUPACfruFk9uSrUfpTVxJeNn2m3kAYX=A@mail.gmail.com>
References: <51788031.7080701@gmail.com>
	<CANyK_8fujLspj_VCZd5TY9x4A62m=WKhva3BavL91XzwY5Krgw@mail.gmail.com>
	<CA+JN8xMvcoaLKufSeCLO21ozH542OG-uZSn8fDS0OVMGXkUNbw@mail.gmail.com>
	<CANyK_8dWFNWQ2UhHdQUPACfruFk9uSrUfpTVxJeNn2m3kAYX=A@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 1 May 2013 21:10:25 +0200
Message-ID: <CAK18fxFCE_=X57fDp8+wYQOACeOjU2NPuM3bLKYYxCNFTOiCqA@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQmJRMeO6BtHeZoz8a3WOa6TpoOCm3FbvEgBwEjYB69TxR1b3jdlIhTGt/xyjt4MtqOCCnMz
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] sdcard_image-rpi.bbclass: Fix error in conditional test
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
X-List-Received-Date: Wed, 01 May 2013 19:10:46 -0000
Content-Type: multipart/alternative; boundary=089e0112c63afdeafe04dbacdfa0

--089e0112c63afdeafe04dbacdfa0
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Apr 25, 2013 at 2:59 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 25 April 2013 13:51, Seth Bollinger <seth.boll@gmail.com> wrote:
> > On Thu, Apr 25, 2013 at 7:38 AM, Paul Barker <paul@paulbarker.me.uk>
> wrote:
> >>
> >> '[[' should be a bash builtin. What host OS are you using for the build?
> >
> > I'm using debian.  I'll check what the default shell is.  You're right,
> it's
> > probably dash.
> >
>
> Try 'sudo dpkg-reconfigure dash'.
>
> > However, should this fail silently then?  In this instance I only saw the
> > error with debug enabled.  Otherwise it silently tried to dd a compressed
> > image to the sd card.  Of course this didn't run.  :)
> >
>
> I assume that 'if' tries to run the command, gets a non-zero return
> value as the command doesn't run and just interprets this as the
> command running but returning non-zero.
>
>
I think I asked Seth a while ago and he confirmed that bash was his shell. I
thought about dash as well. But as a matter of fact we should remove
bashisms and make things as usable as possible. So maybe his patch makes
sense after all.


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--089e0112c63afdeafe04dbacdfa0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thu, Apr 25, 2013 at 2:59 PM, Paul Barker <span dir=3D"=
ltr">&lt;<a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@pa=
ulbarker.me.uk</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div cla=
ss=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">On 25 April 2013 13:51, Seth Bollinger &lt;<a href=3D"mail=
to:seth.boll@gmail.com">seth.boll@gmail.com</a>&gt; wrote:<br>


<div class=3D"im">&gt; On Thu, Apr 25, 2013 at 7:38 AM, Paul Barker &lt;<a =
href=3D"mailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt; wrote:<=
br>
&gt;&gt;<br>
&gt;&gt; &#39;[[&#39; should be a bash builtin. What host OS are you using =
for the build?<br>
&gt;<br>
</div>&gt; I&#39;m using debian. =A0I&#39;ll check what the default shell i=
s. =A0You&#39;re right, it&#39;s<br>
&gt; probably dash.<br>
&gt;<br>
<br>
Try &#39;sudo dpkg-reconfigure dash&#39;.<br>
<br>
&gt; However, should this fail silently then? =A0In this instance I only sa=
w the<br>
&gt; error with debug enabled. =A0Otherwise it silently tried to dd a compr=
essed<br>
&gt; image to the sd card. =A0Of course this didn&#39;t run. =A0:)<br>
&gt;<br>
<br>
I assume that &#39;if&#39; tries to run the command, gets a non-zero return=
<br>
value as the command doesn&#39;t run and just interprets this as the<br>
command running but returning non-zero.<br>
<div class=3D""><div class=3D"h5"><br></div></div></blockquote><div><br></d=
iv><div>I think I asked Seth a while ago and he confirmed that bash was his=
 shell. I</div><div>thought about dash as well. But as a matter of fact we =
should remove</div>

<div>bashisms and make things as usable as possible. So maybe his patch mak=
es</div><div>sense after all.=A0</div></div><br clear=3D"all"><div><br></di=
v>-- <br><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=
=3D"text-align:center">

<div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-siz=
e:medium"><b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small=
;text-align:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333=
" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--089e0112c63afdeafe04dbacdfa0--
