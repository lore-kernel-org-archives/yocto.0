Return-Path: <andrei@gherzan.ro>
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93334E01510
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 05:05:46 -0700 (PDT)
Received: by mail-ve0-f173.google.com with SMTP id ox1so396140veb.18
	for <yocto@yoctoproject.org>; Thu, 02 May 2013 05:05:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=YY0gUdizsTs7UgFfW+5h1uHWl+/aeeBddZDceSxkWrM=;
	b=N8uVFNkUsXGGOopwAhiuI0AQCGsFcz0kkIFulxnvFoPOC+nhr0B78XPBpWvp7uk5TP
	/K53K+wPm+N8C7E2EOWv3XPPv0EkRlxhJ3RLqdyjaEXO0VhEBZzbx1vYm2fIsFqcudyM
	F6mPlSPGQ3swC5ksodOU4NnnTgCofCC8yXTMoUXKZGLeVuMMg2tVDpwY2fEoSJNNFXuH
	o5fzL7CHzqPKxJsl1dYs5avKIpbJfppRbfY1Jw6a7P4sfg9RLTyZEasrZRlgL+p56i/l
	RNnHsVta/epC8Pv4yWEDM/kzftjQb/RsjL2vuY6jaYzf+mqVFYSQ30A7eLrfxQSbkRg3
	F2fg==
X-Received: by 10.58.80.4 with SMTP id n4mr2048102vex.5.1367496345726; Thu, 02
	May 2013 05:05:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Thu, 2 May 2013 05:05:25 -0700 (PDT)
X-Originating-IP: [5.14.143.208]
In-Reply-To: <CANyK_8dPT1i63xAvWGzy56SsgVfhTyLVpDjFAFxxgZT7nsAYCg@mail.gmail.com>
References: <51788033.9010908@gmail.com>
	<CANyK_8fpnN8C6-vZPyFmGx5U3_ySRQp7twsXcKO4utz+WWc2EQ@mail.gmail.com>
	<CA+JN8xOs5YL+vdtJz8ZtqCvUNVi7UO=++grHtx26n2iEpGXbGg@mail.gmail.com>
	<CANyK_8efmMZwTde9tivSDcnUmo2XtZiQ6JTv6oFDbFJTmhp3tw@mail.gmail.com>
	<CAK18fxE99emJoMTwL4mGoMNsHiToAJwEeVf7mWHTE87i9Td-Vg@mail.gmail.com>
	<CANyK_8dPT1i63xAvWGzy56SsgVfhTyLVpDjFAFxxgZT7nsAYCg@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 2 May 2013 14:05:25 +0200
Message-ID: <CAK18fxFd=fXRfGj=yR=9xW6S-N8+EXT1mEgW7YgnbFXcupQ4bA@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQnwLqUbEqIes9Vb0cqA2ZYzICJWGs4j4E0+TRhmZtrE22o/5PAYBn3jcG4SUk6xTOJ4FikC
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
X-List-Received-Date: Thu, 02 May 2013 12:05:46 -0000
Content-Type: multipart/alternative; boundary=047d7b5d6264eb5d2104dbbb0d36

--047d7b5d6264eb5d2104dbbb0d36
Content-Type: text/plain; charset=ISO-8859-1

Managed to apply it. Thanks.


On Thu, May 2, 2013 at 1:37 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 1 May 2013 20:19, Andrei Gherzan <andrei@gherzan.ro> wrote:
> >
> > Aaaaaa... I just can't make it work. My advice is to use git send-email
> too.
> >
>
> You can cherry-pick it from my repository at the moment
> (https://bitbucket.org/betafive/meta-raspberrypi), but yes, git
> send-email is the way forward.
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk
>



-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7b5d6264eb5d2104dbbb0d36
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Managed to apply it. Thanks.</div><div class=3D"gmail_extr=
a"><br><br><div class=3D"gmail_quote">On Thu, May 2, 2013 at 1:37 PM, Paul =
Barker <span dir=3D"ltr">&lt;<a href=3D"mailto:paul@paulbarker.me.uk" targe=
t=3D"_blank">paul@paulbarker.me.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 1 May 2013 20:19, Andre=
i Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt=
; wrote:<br>


&gt;<br>
&gt; Aaaaaa... I just can&#39;t make it work. My advice is to use git send-=
email too.<br>
&gt;<br>
<br>
</div>You can cherry-pick it from my repository at the moment<br>
(<a href=3D"https://bitbucket.org/betafive/meta-raspberrypi" target=3D"_bla=
nk">https://bitbucket.org/betafive/meta-raspberrypi</a>), but yes, git<br>
send-email is the way forward.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
--<br>
Paul Barker<br>
<br>
Email: <a href=3D"mailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a><b=
r>
<a href=3D"http://www.paulbarker.me.uk" target=3D"_blank">http://www.paulba=
rker.me.uk</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-=
align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Roman=
&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--047d7b5d6264eb5d2104dbbb0d36--
