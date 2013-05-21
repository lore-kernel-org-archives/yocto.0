Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B43E9E0154B
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 03:19:40 -0700 (PDT)
Received: by mail-ob0-f177.google.com with SMTP id wn6so497993obc.36
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 03:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Fp9Rimju4ntGHFUxE80PjqwDkEu4h/TAxBa930bVh7Y=;
	b=fnz8WJwT56OLLLh4FANi2yZ9kcFoLtP5fYsoBgPRcZbSqliavsjg4Hyj2cNWa9AI7z
	YXpthy5fNjOlkOmDTQmNyu7wn4W/s6W1vK92ra7VVYlnjs/FHC5polU8eWm7EkD0ka1c
	IwSAZN8dzzRArxwzd8JEfDuZs0tfKH3QRIDlDNjvqQF/e5pNGTI54fHLttJXbGVWqyAj
	7Eh2rIpSfsUoRtnGW80TvQLBZZdBZdNOM14AmfNX8D+LtkSERB7YeJDO2kh2qWAnPB0H
	lvHyO49+e0SOniOBKFy/HomDBBb5a17PLG1zkGTz7GvAdRu6uL6tuXVPWBvuU1dEOMnA
	7MbQ==
X-Received: by 10.60.121.33 with SMTP id lh1mr901872oeb.98.1369131579699; Tue,
	21 May 2013 03:19:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.114.163 with HTTP; Tue, 21 May 2013 03:12:46 -0700 (PDT)
In-Reply-To: <CANyK_8ffvTksbu+nT=yAw7-5zV9n6+3dxY0XqiPVt=j5j6+5LQ@mail.gmail.com>
References: <CAAGt+t3ueJoFB=Vf9sX5pE5CTx4g9QG6px9XjW-uUrDH49BJvg@mail.gmail.com>
	<CANyK_8ffvTksbu+nT=yAw7-5zV9n6+3dxY0XqiPVt=j5j6+5LQ@mail.gmail.com>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 21 May 2013 12:12:46 +0200
Message-ID: <CAAGt+t3+aTm5fYopwCjK5ced1MMNBZN__4wKFQsaTKmfy9H+SA@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Hello world package error
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
X-List-Received-Date: Tue, 21 May 2013 10:19:40 -0000
Content-Type: multipart/alternative; boundary=047d7b33d004757a2804dd37c915

--047d7b33d004757a2804dd37c915
Content-Type: text/plain; charset=ISO-8859-1

Hi Paul,

I sourced oe-init-build-env and ran *bitbake helloworld *from build
directory*. *Then i get this error. previously, i ran bitbake
core-image-minimal and was successful. No idea where i am doing wrong?


On Tue, May 21, 2013 at 12:04 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 21 May 2013 10:42, Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:
> > When i try to run bitbake helloworld from build it throws "Nothing
> provides
> > bitbake " error
>
> This sounds like bitbake isn't on your PATH. Have you sourced
> oe-init-build-env from the poky directory? Does running `which
> bitbake` give any output?
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk
>



-- 
Regards,
Zafrullah Syed

--047d7b33d004757a2804dd37c915
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div><br></div><div style>I sourced oe-init-build-=
env and ran <i>bitbake helloworld </i>from build directory<i>. </i>Then i g=
et this error. previously, i ran bitbake core-image-minimal and was success=
ful. No idea where i am doing wrong?</div>

<div style><br></div><div style><br></div><div class=3D"gmail_extra"><div c=
lass=3D"gmail_quote">On Tue, May 21, 2013 at 12:04 PM, Paul Barker <span di=
r=3D"ltr">&lt;<a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">pa=
ul@paulbarker.me.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 21 May 2013 10:42, Zafr=
ullah Syed &lt;<a href=3D"mailto:zafrullahmehdi@gmail.com">zafrullahmehdi@g=
mail.com</a>&gt; wrote:<br>


&gt; When i try to run bitbake helloworld from build it throws &quot;Nothin=
g provides<br>
&gt; bitbake &quot; error<br>
<br>
</div>This sounds like bitbake isn&#39;t on your PATH. Have you sourced<br>
oe-init-build-env from the poky directory? Does running `which<br>
bitbake` give any output?<br>
<br>
--<br>
Paul Barker<br>
<br>
Email: <a href=3D"mailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a><b=
r>
<a href=3D"http://www.paulbarker.me.uk" target=3D"_blank">http://www.paulba=
rker.me.uk</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><span style=
=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:collapse;co=
lor:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><font color=3D"=
#888888" face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse=
"><br>

</span></font></div>
</div></div>

--047d7b33d004757a2804dd37c915--
