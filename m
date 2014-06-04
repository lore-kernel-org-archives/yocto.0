Return-Path: <ellurubharath29@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED004E00B74; Wed,  4 Jun 2014 14:47:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ellurubharath29[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f174.google.com (mail-we0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04E0BE00B6A
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 14:47:34 -0700 (PDT)
Received: by mail-we0-f174.google.com with SMTP id k48so119748wev.19
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 14:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=5kk5Qpn/q92LTYRfa7Z9zddWiDJLTl0cybZRISTBGR8=;
	b=qd8lY9AnPBZTRdAwfONgREtNSt6lh//rILLicHkZWokphQMw+ZBx3jpw6S6TQai3m8
	gnCupJOEEBcCLvfcF2Uf4fKGxMm7TrihBS44RnB1g8XGuCYIx8U/WsUA6bSpoEh/oUlh
	G6wglKEtNSmWTIXycH+w1Oq8q82w7XsEjxlLoM2yo7BJVSndvhfifyu/4pbPiQXeUEAD
	liE2lDmZrRy1Co47xkuJTsgoNZgGw7pmTs37DLRCAQNjxCpuN/2RXxoUhERUmXxZWCo8
	itTHUlmdGr/df/nMgdakpilS69ImyC7n+dj6gVNorAZbjSPO7YFnHYIQ7JDhZ/isChp0
	BFhQ==
MIME-Version: 1.0
X-Received: by 10.194.176.37 with SMTP id cf5mr9176765wjc.79.1401918454022;
	Wed, 04 Jun 2014 14:47:34 -0700 (PDT)
Received: by 10.194.172.164 with HTTP; Wed, 4 Jun 2014 14:47:33 -0700 (PDT)
In-Reply-To: <8992080.rOWudXBWns@peggleto-mobl5.ger.corp.intel.com>
References: <CAGM0ZdSD2D0gTOXbvmtZJuK5Am0XY+5jDADYQEZg2psLnNmoOQ@mail.gmail.com>
	<CAP71WjxesgvZNOMiUYG15wNce1BQ=0sJhVH--74FuqHsM3-93Q@mail.gmail.com>
	<8992080.rOWudXBWns@peggleto-mobl5.ger.corp.intel.com>
Date: Wed, 4 Jun 2014 16:47:33 -0500
Message-ID: <CAGM0ZdSpoxebM6n8Vbamgn4wHkLpt5isN5yK+h0YverhHEP=jw@mail.gmail.com>
From: Bharath Chandra <ellurubharath29@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build History Folder
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
X-List-Received-Date: Wed, 04 Jun 2014 21:47:38 -0000
Content-Type: multipart/alternative; boundary=089e013d17ac74c8a004fb09930b

--089e013d17ac74c8a004fb09930b
Content-Type: text/plain; charset=UTF-8

Thank you Paul,

I am new to yocto. I am trying to build the image from scratch again and
now the package folder is generated.
Thanks for the response.



On Wed, Jun 4, 2014 at 4:12 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Wednesday 04 June 2014 20:59:22 Nicolas Dechesne wrote:
> > On Wed, Jun 4, 2014 at 8:35 PM, Bharath Chandra
> >
> > <ellurubharath29@gmail.com> wrote:
> > > I want to capture build history while building an image and I have done
> > > the
> > > following settings in conf/local.conf file.
> > >
> > >      INHERIT += "buildhistory"
> > >      BUILDHISTORY_COMMIT = "1"
> > >
> > > as suggested in
> > >
> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#mainta
> > > ining-build-output-quality
> > >
> > >
> > > But, the problem is buildhistory/images folder is being created but
> > > buildhistory/packages
> > >
> > > folder is not being created. Any kind of suggestions on this issue
> would
> > > be helpful.
> >
> > maybe a dumb question... but have you actually built any package? if a
> > package is re-used from sstate, then it's not built, and no statistics
> > are generated.
>
> This is true of 1.5 and older, but in 1.6, packages whose contents are
> restored from shared state *will* be captured in buildhistory. (However, if
> you built an image and then afterwards enabled buildhistory and built the
> image again, you wouldn't have any package information collected.)
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>



-- 
Thanks & Regards,
Bharath Chandra Elluru.
Contact Number:785-979-4875.

--089e013d17ac74c8a004fb09930b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Thank you Paul,<br><br></div>I am new to yocto. =
I am trying to build the image from scratch again and now the package folde=
r is generated.<br></div>Thanks for the response.<br><br></div><div class=
=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Wed, Jun 4, 2014 at 4:12 PM, Paul Egg=
leton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com=
" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">On Wednesday 04 June 2014 20:59:22 =
Nicolas Dechesne wrote:<br>
&gt; On Wed, Jun 4, 2014 at 8:35 PM, Bharath Chandra<br>
&gt;<br>
&gt; &lt;<a href=3D"mailto:ellurubharath29@gmail.com">ellurubharath29@gmail=
.com</a>&gt; wrote:<br>
&gt; &gt; I want to capture build history while building an image and I hav=
e done<br>
&gt; &gt; the<br>
&gt; &gt; following settings in conf/local.conf file.<br>
&gt; &gt;<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0INHERIT +=3D &quot;buildhistory&quot;<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0BUILDHISTORY_COMMIT =3D &quot;1&quot;<br>
&gt; &gt;<br>
&gt; &gt; as suggested in<br>
&gt; &gt; <a href=3D"http://www.yoctoproject.org/docs/current/ref-manual/re=
f-manual.html#mainta" target=3D"_blank">http://www.yoctoproject.org/docs/cu=
rrent/ref-manual/ref-manual.html#mainta</a><br>
&gt; &gt; ining-build-output-quality<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; But, the problem is buildhistory/images folder is being created b=
ut<br>
&gt; &gt; buildhistory/packages<br>
&gt; &gt;<br>
&gt; &gt; folder is not being created. Any kind of suggestions on this issu=
e would<br>
&gt; &gt; be helpful.<br>
&gt;<br>
&gt; maybe a dumb question... but have you actually built any package? if a=
<br>
&gt; package is re-used from sstate, then it&#39;s not built, and no statis=
tics<br>
&gt; are generated.<br>
<br>
</div></div>This is true of 1.5 and older, but in 1.6, packages whose conte=
nts are<br>
restored from shared state *will* be captured in buildhistory. (However, if=
<br>
you built an image and then afterwards enabled buildhistory and built the<b=
r>
image again, you wouldn&#39;t have any package information collected.)<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div dir=
=3D"ltr">Thanks &amp; Regards,<div>Bharath Chandra Elluru.</div><div>Contac=
t Number:785-979-4875.</div></div>
</div>

--089e013d17ac74c8a004fb09930b--
