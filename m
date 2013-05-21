Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BB0EE01542
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 04:02:33 -0700 (PDT)
Received: by mail-ob0-f181.google.com with SMTP id dn14so519508obc.40
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 04:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Hn8qNUlgN2jRCByi69sNvKJYVcRaleCkqrdOMibiz5w=;
	b=U72ATHvbpjkLjlejS8P7g9SJN11+P4Z7gPJrzyes6KOmHVKdxKnhkT4IZo+d3NKnVh
	wex9f1wM5QPHiRnStszPiKJCPLUUNYQC//ozETSnsjcVYLeuYU8ZKHyOCGnO/VyK0cMi
	JzoeF9ECrROpRlDkqgHaVnaQxcdNM+s2IAxUkgQyq9NVE7XHvYzmd1StYrHbQEK6a8HH
	7iuXgwjRycZhZaOC2mCY9VyUZUBGs4KBDJR3uXHu/FDCpcfqdQtdhueqHT8Mctf2jYjX
	BzTDwotGswpSn765xYgmG2yk2tE9700UJ81J2p/HwpxNBNUa4GbWN5zkm1flZZgEjJys
	2eGQ==
X-Received: by 10.60.60.10 with SMTP id d10mr1067015oer.6.1369134153286; Tue,
	21 May 2013 04:02:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.114.163 with HTTP; Tue, 21 May 2013 04:02:13 -0700 (PDT)
In-Reply-To: <CANyK_8dYMkL8j5nu781+V-LvpiLnExJQ4VLTLoVkMt+ckESSQw@mail.gmail.com>
References: <CAAGt+t3ueJoFB=Vf9sX5pE5CTx4g9QG6px9XjW-uUrDH49BJvg@mail.gmail.com>
	<CANyK_8ffvTksbu+nT=yAw7-5zV9n6+3dxY0XqiPVt=j5j6+5LQ@mail.gmail.com>
	<CAAGt+t3+aTm5fYopwCjK5ced1MMNBZN__4wKFQsaTKmfy9H+SA@mail.gmail.com>
	<CANyK_8dRpZ1us_mZRvhLk6rCT3xZ4A5dmeAar2D2B0w6ntaZXw@mail.gmail.com>
	<CANyK_8dYMkL8j5nu781+V-LvpiLnExJQ4VLTLoVkMt+ckESSQw@mail.gmail.com>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 21 May 2013 13:02:13 +0200
Message-ID: <CAAGt+t3GGu+jdCg6AW5xygVKaM3x2AHyw8VCq86O83cRonE9Jg@mail.gmail.com>
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
X-List-Received-Date: Tue, 21 May 2013 11:02:34 -0000
Content-Type: multipart/alternative; boundary=089e01294802db97a504dd386296

--089e01294802db97a504dd386296
Content-Type: text/plain; charset=ISO-8859-1

Hi Paul,

I followed this manual
https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_my_recipe_into_Yocto.3F

and replaced my helloworld.bb file.

Sourced oe-init-build and ran* bitbake gumstix-console-image*

got this error: http://pastebin.com/fxUwQina

Previously, i ran gumstix-console-image successfull but now it breaks.

Any idea about this error?


On Tue, May 21, 2013 at 12:37 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 21 May 2013 11:35, Paul Barker <paul@paulbarker.me.uk> wrote:
> > On 21 May 2013 11:12, Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:
> >> I sourced oe-init-build-env and ran bitbake helloworld from build
> directory.
> >> Then i get this error. previously, i ran bitbake core-image-minimal and
> was
> >> successful. No idea where i am doing wrong?
> >
> > Ok, I guess that it's bitbake itself that throws the error then? Could
> > you try adding 'inherit externalsrc' to the top of your recipe, that
> > class is there to prevent do_fetch, do_unpack etc being called which
> > may be failing as there isn't a SRC_URI set.
> >
>
> Ah no, there is a SRC_URI. But you don't really need it and it's
> probably looking in the wrong place for hello.c. The externalsrc class
> is designed for this case. See
>
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/externalsrc.bbclass
> or the equivalent file in your local clone of poky.
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

--089e01294802db97a504dd386296
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div><br></div><div>I followed this manual=A0<a hr=
ef=3D"https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_my_recipe=
_into_Yocto.3F" target=3D"_blank">https://wiki.yoctoproject.org/wiki/How_do=
_I#Q:_How_do_I_put_my_recipe_into_Yocto.3F</a></div>


<div><br></div><div>and replaced my <a href=3D"http://helloworld.bb" target=
=3D"_blank">helloworld.bb</a> file.</div><div><br></div><div>Sourced oe-ini=
t-build and ran<i> bitbake gumstix-console-image</i></div><div>
<br></div><div>got this error:=A0<a href=3D"http://pastebin.com/fxUwQina" t=
arget=3D"_blank">http://pastebin.com/fxUwQina</a></div><div><br></div><div>=
Previously, i ran gumstix-console-image successfull but now it breaks.</div=
>


<div><br></div><div style>Any idea about this error?</div><div class=3D"gma=
il_extra"><br><br><div class=3D"gmail_quote">On Tue, May 21, 2013 at 12:37 =
PM, Paul Barker <span dir=3D"ltr">&lt;<a href=3D"mailto:paul@paulbarker.me.=
uk" target=3D"_blank">paul@paulbarker.me.uk</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On 21 May 2013 11:35, Paul Barker &lt;<=
a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.m=
e.uk</a>&gt; wrote:<br>



&gt; On 21 May 2013 11:12, Zafrullah Syed &lt;<a href=3D"mailto:zafrullahme=
hdi@gmail.com" target=3D"_blank">zafrullahmehdi@gmail.com</a>&gt; wrote:<br=
>
&gt;&gt; I sourced oe-init-build-env and ran bitbake helloworld from build =
directory.<br>
&gt;&gt; Then i get this error. previously, i ran bitbake core-image-minima=
l and was<br>
&gt;&gt; successful. No idea where i am doing wrong?<br>
&gt;<br>
&gt; Ok, I guess that it&#39;s bitbake itself that throws the error then? C=
ould<br>
&gt; you try adding &#39;inherit externalsrc&#39; to the top of your recipe=
, that<br>
&gt; class is there to prevent do_fetch, do_unpack etc being called which<b=
r>
&gt; may be failing as there isn&#39;t a SRC_URI set.<br>
&gt;<br>
<br>
</div>Ah no, there is a SRC_URI. But you don&#39;t really need it and it&#3=
9;s<br>
probably looking in the wrong place for hello.c. The externalsrc class<br>
is designed for this case. See<br>
<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classe=
s/externalsrc.bbclass" target=3D"_blank">https://git.yoctoproject.org/cgit/=
cgit.cgi/poky/tree/meta/classes/externalsrc.bbclass</a><br>
or the equivalent file in your local clone of poky.<br>
<div><div><br>
--<br>
Paul Barker<br>
<br>
Email: <a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paul=
barker.me.uk</a><br>
<a href=3D"http://www.paulbarker.me.uk" target=3D"_blank">http://www.paulba=
rker.me.uk</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<span style=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:=
collapse;color:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><fon=
t color=3D"#888888" face=3D"arial, sans-serif"><span style=3D"border-collap=
se:collapse"><br>


</span></font></div>
</div></div>

--089e01294802db97a504dd386296--
