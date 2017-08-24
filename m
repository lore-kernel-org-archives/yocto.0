Return-Path: <stefano.pagnottelli@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76072E00A39; Thu, 24 Aug 2017 01:41:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stefano.pagnottelli[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.180 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f180.google.com (mail-wr0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9A88E00726
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 01:41:57 -0700 (PDT)
Received: by mail-wr0-f180.google.com with SMTP id p8so7723367wrf.5
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 01:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=/aECSRXSeqFEmfcw157+JcpoWPPCmteyV7FcDatbGZo=;
	b=JejH9PmcGfq8p+zT/dzO+/9t6tGgY6zx1ADrAnl00pap0rJQ/Tk6chJ+6AOY19hiqS
	ddOmUbOzbyY0pBxS6x8BMm6b5CjvsVX/AkqU6xK2o0wHncCHFEB6btG4SahZ+BsuLiHj
	1hB5wblNc47b9AwgBU2rihF7yjXwmOe7AhalUSfsAjvzLvvk7IWieeMZqTnWy+Ne2Los
	8LIPXWeWtpriSbfMugBiwZwv+SWXIUJ0j+a7k3y9SnGk68w86uA6Eg7MN76otMS6sZ3I
	XI169y87reVPs9mb7OKTnpMhxYqBxBEu8f+Qy3pHAp1hygpOHAmnj2OHr8PAmyQaYmdY
	jLQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=/aECSRXSeqFEmfcw157+JcpoWPPCmteyV7FcDatbGZo=;
	b=tqMdFZER852Fus6KLubJBEwJvIcepjLcI0wubO5hbpD34v0+d0obrIvfdZroqmvDlX
	nA1LNEhdBIsoBVVUnL5Ot6Lun2yPMvIfC4EyyG8MptMuKg3MEC1xNRRo4mjBJgvxtDwL
	j1fZIJv069/kExbtbyoFIt17gAxJE+kjN5RjHaNj+ouoA0w57c7xjv/Q+XH5KaPztUOq
	MHhQSdIbbJieksg7j3m8Ah+qhWBx5Y50Ct0RSKtB4wHifEMSmSvCVWZdm8lwJnux51PX
	RKjuNsZxSrP+9heXtWSbfiGcXwkDtZfz6PIkjHIU0sH9Lmj0PZT+w83e4ycCwYT5/GKG
	Fx9w==
X-Gm-Message-State: AHYfb5hgLoWWInq4rX4xRZLaVg292fT9AoRhB3DC7sfSM1rJtWEFxyVA
	0DIttsu8aqNY1j3QOGe8pVJPIUgTnQ==
X-Received: by 10.223.177.148 with SMTP id q20mr3500986wra.123.1503564116222; 
	Thu, 24 Aug 2017 01:41:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAJJpNC2h4U9iUXTAK1PvHJ99fpmqGdD8MoEn3=HfnP=3Tsg5sw@mail.gmail.com>
	<a48d28db-9736-7291-e890-04966298ca5c@gmail.com>
In-Reply-To: <a48d28db-9736-7291-e890-04966298ca5c@gmail.com>
From: Stefano Pagnottelli <stefano.pagnottelli@gmail.com>
Date: Thu, 24 Aug 2017 08:41:45 +0000
Message-ID: <CAJJpNC2tvdQ-=1jJCnkrVvyS4xEbaXfhW6s04kfCbw+W0JRX6g@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RDEPENDS dependency problem
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
X-List-Received-Date: Thu, 24 Aug 2017 08:41:58 -0000
Content-Type: multipart/alternative; boundary="f403045e6e620b68e005577bcd33"

--f403045e6e620b68e005577bcd33
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

First of all, thanks for your reply.

Il giorno mer 23 ago 2017 alle ore 20:56 Khem Raj <raj.khem@gmail.com> ha
scritto:

> On 8/23/17 1:12 AM, Stefano Pagnottelli wrote:
> > Hi to all,
> >
> > I'm trying to build this layer:
> > (https://github.com/bachp/meta-homeassistant) using the yocto pyro on a
> > raspberry pi 3 target and the opkg package system.
> >
> > Inside the recipe
> > (
> https://github.com/bachp/meta-homeassistant/blob/master/recipes-homeassis=
tant/homeassistant/python3-homeassistant_0.51.2.bb
> )
> > there  are some RDEPENDS with strict equal
> > dependencies (ex:python3-aiohttp (=3D 2.2.5)).
> >
> > We I build the image with the opgk package system the system fail in th=
e
> > do_rootfs task because is not finding the package python3-aiohttp =3D
> > 2.2.5.. If I understood correctly this happens because the build system
> > si appending the recipe revision (PR variable) at end of package name
> > and the results is  python3-aiohttp_2.2.5-r0 and not
> > python3-aiohttp_2.2.5 as opkg is expecting.
>
> I dont think r0 is in play here. You can test it by changing dependency
> check to look for  (=3D for 2.2.5-r0), I think it should still fail.
>

I do some tests of on rdendps on the recipe:

With python3-aiohttp (=3D 2.2.5-r0) the image is built without problems, wi=
th
python3-aiohttp (>=3D 2.2.5) the image is built without problems, with
python3-aiohttp (=3D 2.2.5) the task fail with the following error:

Problem 1/1:
  - nothing provides python3-aiohttp =3D 2.2.5 needed by
python3-homeassistant-0.51.2-r0.cortexa7hf-neon-vfpv4

So it seems to me that know the recipe revision is mandatory if you want to
put a strict dependency on a rdpends. But if I understood correctly the
yocto build system it's not possible to predict the recipe revision because
is automatically computed,  And a change in the recipe will break the
dependency also if the source software version is the same because this
will change the recipe version.


>
> >
> > As workaround I changed all strict =3D with a >=3D and the build comple=
te
> > without errors.
>
> this is ok as long as the package can work with newer versions of this
> package. I am not sure if thats the case, you might have to check with
> authors intent for using =3D instead of >=3D
>

I think that ,in that case the author is using strict =3D dependencies
because we are trying to compile a python project that strictly depend
python module with a specific version.  Can be useful to have strict =3D
dependency in a recipe but it is not mandatory, the project compile well
also with >=3D.

Regards
Stefano


>
> >
> > My question is: It's possible to  instruct the build system to ignore
> > the recipe revision when it match the version of the package? Or in
> > alternative it's possible to automatically detect the recipe revision o=
f
> > the package?
> >
> > Thanks in advance
> > Stefano
> > =E2=80=A6
> > --
> >
> > There are 10 types of people in this world, those who understand binary
> > and those who dont
> >
> >
>
> --

There are 10 types of people in this world, those who understand binary and
those who dont

--f403045e6e620b68e005577bcd33
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>First of all, thanks for your reply.</div><div><br></=
div><div class=3D"gmail_quote"><div dir=3D"ltr">Il giorno mer 23 ago 2017 a=
lle ore 20:56 Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"=
_blank">raj.khem@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On 8/23/17 1:12 AM, Stefano Pagnottelli wrote:<br>
&gt; Hi to all,<br>
&gt;<br>
&gt; I&#39;m trying to build this layer:<br>
&gt; (<a href=3D"https://github.com/bachp/meta-homeassistant" rel=3D"norefe=
rrer" target=3D"_blank">https://github.com/bachp/meta-homeassistant</a>) us=
ing the yocto pyro on a<br>
&gt; raspberry pi 3 target and the opkg package system.<br>
&gt;<br>
&gt; Inside the recipe<br>
&gt; (<a href=3D"https://github.com/bachp/meta-homeassistant/blob/master/re=
cipes-homeassistant/homeassistant/python3-homeassistant_0.51.2.bb" rel=3D"n=
oreferrer" target=3D"_blank">https://github.com/bachp/meta-homeassistant/bl=
ob/master/recipes-homeassistant/homeassistant/python3-homeassistant_0.51.2.=
bb</a>)<br>
&gt; there =C2=A0are some RDEPENDS with strict equal<br>
&gt; dependencies=C2=A0(ex:python3-aiohttp (=3D 2.2.5)).<br>
&gt;<br>
&gt; We I build the image with the opgk package system the system fail in t=
he<br>
&gt; do_rootfs task because is not finding the package python3-aiohttp =3D<=
br>
&gt; 2.2.5.. If I understood correctly this happens because the build syste=
m<br>
&gt; si appending the recipe revision (PR variable) at end of package name<=
br>
&gt; and the results is =C2=A0python3-aiohttp_2.2.5-r0 and not<br>
&gt; python3-aiohttp_2.2.5 as opkg is expecting.<br>
<br>
I dont think r0 is in play here. You can test it by changing dependency<br>
check to look for=C2=A0 (=3D for 2.2.5-r0), I think it should still fail.<b=
r></blockquote><div><br></div><div>I do some tests of on rdendps on the rec=
ipe:</div><div><br></div><div>With python3-aiohttp (=3D 2.2.5-r0) the image=
 is built without problems, with python3-aiohttp (&gt;=3D 2.2.5) the image =
is built without problems, with python3-aiohttp (=3D 2.2.5) the task fail w=
ith the following error:</div><div><br></div><div><div>Problem 1/1:</div><d=
iv>=C2=A0 - nothing provides python3-aiohttp =3D 2.2.5 needed by python3-ho=
meassistant-0.51.2-r0.cortexa7hf-neon-vfpv4</div></div><div><br></div><div>=
So it seems to me that know the recipe revision is mandatory if you want to=
 put a strict dependency on a rdpends. But if I understood correctly the yo=
cto build system it&#39;s not possible to predict the recipe revision becau=
se is automatically computed, =C2=A0And a change in the recipe will break t=
he dependency also if the source software version is the same because this =
will change the recipe version.</div><div>=C2=A0<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
<br>
&gt;<br>
&gt; As workaround I changed all strict =3D with a &gt;=3D and the build co=
mplete<br>
&gt; without errors.<br>
<br>
this is ok as long as the package can work with newer versions of this<br>
package. I am not sure if thats the case, you might have to check with<br>
authors intent for using =3D instead of &gt;=3D<br></blockquote><div><br></=
div><div>I think that ,in that case the author is using strict =3D dependen=
cies because we are trying to compile a python project that strictly depend=
 python module with a specific version.=C2=A0 Can be useful to have strict =
=3D dependency in a recipe but it is not mandatory, the project compile wel=
l also with &gt;=3D.</div><div><br></div><div>Regards</div><div>Stefano</di=
v><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt;<br>
&gt; My question is: It&#39;s possible to =C2=A0instruct=C2=A0the build sys=
tem to ignore<br>
&gt; the recipe revision when it match the version of the package? Or in<br=
>
&gt; alternative it&#39;s possible to automatically detect the recipe revis=
ion of<br>
&gt; the package?<br>
&gt;<br>
&gt; Thanks in advance<br>
&gt; Stefano<br>
&gt; =E2=80=A6<br>
&gt; --<br>
&gt;<br>
&gt; There are 10 types of people in this world, those who understand binar=
y<br>
&gt; and those who dont<br>
&gt;<br>
&gt;<br>
<br>
</blockquote></div></div><div dir=3D"ltr">-- <br></div><div class=3D"gmail_=
signature" data-smartmail=3D"gmail_signature"><p dir=3D"ltr">There are 10 t=
ypes of people in this world, those who understand binary and those who don=
t</p>
</div>

--f403045e6e620b68e005577bcd33--
