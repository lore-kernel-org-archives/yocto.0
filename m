Return-Path: <pourya.shirazian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C9B1E00524; Tue, 24 Jun 2014 12:22:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pourya.shirazian[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.43 listed in list.dnswl.org]
Received: from mail-pb0-f43.google.com (mail-pb0-f43.google.com
	[209.85.160.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F3A3E003C1
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 12:22:51 -0700 (PDT)
Received: by mail-pb0-f43.google.com with SMTP id um1so629198pbc.30
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 12:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=s5WOHvfM0ZeHl1L6tbiFPqhJTifPZmoa4VBda3Wxm8A=;
	b=UGSV5JaS+MDEBAwT7dx49Ph0lq/Nlr93JhaWvIwDQTZgyCY9GAT1JaT0ShWkSfjYBr
	aH3ZxPwdeYhgw4cFyAL6YT86BLZZ4dYDC1dqHBivRX7dWW53YEdzWOrJAbAiaYGj6IZx
	/3rSuR1+28sTO6yXNkx3jpxQroE+Jwngs9F00EBo0T41dy+Fw/pjrwAg8cZBB5Bi3owa
	YSCFHRPWly0cV/7jA368hBYmiRF58b+bl3oSCAPXffpjQ//Tfk8nKTlKldxVcLGw31Zo
	lWJu23PBKHr+UP5iEMVdATcxXmvUJwGw+UyQXjtopcEzE+Fm7yh2csQ90rWykyOuKEQG
	u5cQ==
MIME-Version: 1.0
X-Received: by 10.66.146.199 with SMTP id te7mr4490253pab.106.1403637771324;
	Tue, 24 Jun 2014 12:22:51 -0700 (PDT)
Received: by 10.70.26.99 with HTTP; Tue, 24 Jun 2014 12:22:51 -0700 (PDT)
In-Reply-To: <20140624082756.GD22071@ad.chargestorm.se>
References: <CAFjJ7KbgxzjNu4ScnDHhHTYv8rft_AKrp72nj-+zT6JOdKE-mA@mail.gmail.com>
	<20140624082756.GD22071@ad.chargestorm.se>
Date: Tue, 24 Jun 2014 12:22:51 -0700
Message-ID: <CAFjJ7KaMoePZxpNL80p+dDaoW8YHj=HiZm2Z+et2ds9Qh-5iCA@mail.gmail.com>
From: Pourya Shirazian <pourya.shirazian@gmail.com>
To: Pourya Shirazian <pourya.shirazian@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SRC_URI issue in recipe writing
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
X-List-Received-Date: Tue, 24 Jun 2014 19:22:57 -0000
Content-Type: multipart/alternative; boundary=047d7b6d99aec0d66f04fc99e21b

--047d7b6d99aec0d66f04fc99e21b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks alot Anders,

Finally I made it work with ssh:

The colon after the domain name should be changed to a / :
Wrong) SRC_URI =3D "git@mygitserver.net:me/myproject.git;protocol=3Dssh;
branch=3Dmaster"
Correct) SRC_URI =3D "git@mygitserver.net/me/myproject.git;protocol=3Dssh;
branch=3Dmaster"

Cheers,


On Tue, Jun 24, 2014 at 1:27 AM, Anders Darander <anders@chargestorm.se>
wrote:

> * Pourya Shirazian <pourya.shirazian@gmail.com> [140624 00:58]:
>
> > Hi,
>
> > When writing a recipe the SRC_URI is supposed to accept git repository
> > addresses but the following fails to build for me:
>
> > 1. With http URL: It also does not allow my credentials to be embedded
> in the
> > URI
>
> > SRC_URI =3D "
> http://mygitserver.net/myproject.git;protocol=3Dhttp;branch=3Dmaster"
>
> You should use git:// here. This is to inform bitbake that this is a git
> URL. You should keep protocol=3Dhttp, as this will tell bitbake that git
> should use the http protocol.
>
> Do you need to supply credentials together with your http-URL?
>
> > Exception: ExpansionError: Failure expanding variable SRCPV, expression
> was $
> > {@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fetche=
r
> > failure: SRCREV was used yet no valid SCM was found in SRC_URI
>
> Well, as you used http://... in SRC_URI, bitbake think's it has to
> download a file from the webserver.
>
>
> > 2. With ssh URL
>
> > SRC_URI =3D "git@mygitserver.net:
> me/myproject.git;protocol=3Dssh;branch=3Dmaster"
>
> > Exception: ExpansionError: Failure expanding variable SRCPV, expression
> was $
> > {@bb.fetch2.get_srcrev(d)} which triggered exception MalformedUrl: The
> URL: "
> > git@mygitserver.net:me/myproject.git;protocol=3Dssh;branch=3Dmaster" is
> invalid and
> > cannot be interpreted
>
> You still need to start the URI with git://...
>
> > After checking the documentation it seems it only expects the git
> protocol only
> > and it worked in this example, however, our internal enterprise github
> only
> > supports http and ssh URIs.
>
> No, the protocol is specified by adding protocol=3Dxxx.
>
> > SRC_URI =3D "git://
> github.com/GraphicsEmpire/gridvisualization.git;branch=3Dmaster=E2=80=9D
>
> Cheers,
> Anders
>
> --
> Anders Darander
> ChargeStorm AB / eStorm AB
>

--047d7b6d99aec0d66f04fc99e21b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks alot Anders,<div><br></div><div>Finally I made it w=
ork with ssh:=C2=A0</div><div><br></div><div>The colon after the domain nam=
e should be changed to a / :</div><div><span style=3D"color:rgb(80,0,80);fo=
nt-family:arial,sans-serif;font-size:13px">Wrong) SRC_URI =3D &quot;git@myg=
itserver.net:me/</span><span style=3D"color:rgb(80,0,80);font-family:arial,=
sans-serif;font-size:13px">myproject.git;protocol=3Dssh;</span><span style=
=3D"color:rgb(80,0,80);font-family:arial,sans-serif;font-size:13px">branch=
=3Dmaster&quot;</span><br>
</div><div>Correct) SRC_URI =3D=C2=A0<span style=3D"font-size:13px;color:rg=
b(80,0,80);font-family:arial,sans-serif">&quot;<a href=3D"http://git@mygits=
erver.net/me/">git@mygitserver.net/me/</a></span><span style=3D"font-size:1=
3px;color:rgb(80,0,80);font-family:arial,sans-serif">myproject.git;protocol=
=3Dssh;</span><span style=3D"font-size:13px;color:rgb(80,0,80);font-family:=
arial,sans-serif">branch=3Dmaster&quot;</span></div>
<div><span style=3D"font-size:13px;color:rgb(80,0,80);font-family:arial,san=
s-serif"><br></span></div><div><span style=3D"font-size:13px;color:rgb(80,0=
,80);font-family:arial,sans-serif">Cheers,</span></div></div><div class=3D"=
gmail_extra">
<br><br><div class=3D"gmail_quote">On Tue, Jun 24, 2014 at 1:27 AM, Anders =
Darander <span dir=3D"ltr">&lt;<a href=3D"mailto:anders@chargestorm.se" tar=
get=3D"_blank">anders@chargestorm.se</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">
* Pourya Shirazian &lt;<a href=3D"mailto:pourya.shirazian@gmail.com">pourya=
.shirazian@gmail.com</a>&gt; [140624 00:58]:<br>
<div class=3D""><br>
&gt; Hi,<br>
<br>
&gt; When writing a recipe the SRC_URI is supposed to accept git repository=
<br>
&gt; addresses but the following fails to build for me:<br>
<br>
&gt; 1. With http URL: It also does not allow my credentials to be embedded=
 in the<br>
&gt; URI<br>
<br>
&gt; SRC_URI =3D &quot;<a href=3D"http://mygitserver.net/myproject.git;prot=
ocol=3Dhttp;branch=3Dmaster" target=3D"_blank">http://mygitserver.net/mypro=
ject.git;protocol=3Dhttp;branch=3Dmaster</a>&quot;<br>
<br>
</div>You should use git:// here. This is to inform bitbake that this is a =
git<br>
URL. You should keep protocol=3Dhttp, as this will tell bitbake that git<br=
>
should use the http protocol.<br>
<br>
Do you need to supply credentials together with your http-URL?<br>
<div class=3D""><br>
&gt; Exception: ExpansionError: Failure expanding variable SRCPV, expressio=
n was $<br>
&gt; {@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fetch=
er<br>
&gt; failure: SRCREV was used yet no valid SCM was found in SRC_URI<br>
<br>
</div>Well, as you used http://... in SRC_URI, bitbake think&#39;s it has t=
o<br>
download a file from the webserver.<br>
<div class=3D""><br>
<br>
&gt; 2. With ssh URL<br>
<br>
&gt; SRC_URI =3D &quot;git@mygitserver.net:me/myproject.git;protocol=3Dssh;=
branch=3Dmaster&quot;<br>
<br>
&gt; Exception: ExpansionError: Failure expanding variable SRCPV, expressio=
n was $<br>
&gt; {@bb.fetch2.get_srcrev(d)} which triggered exception MalformedUrl: The=
 URL:=C2=A0&quot;<br>
&gt; git@mygitserver.net:me/myproject.git;protocol=3Dssh;branch=3Dmaster&qu=
ot;=C2=A0is invalid and<br>
&gt; cannot be interpreted<br>
<br>
</div>You still need to start the URI with git://...<br>
<div class=3D""><br>
&gt; After checking the documentation it seems it only expects the git prot=
ocol only<br>
&gt; and it worked in this example, however, our internal enterprise github=
 only<br>
&gt; supports http and ssh URIs.<br>
<br>
</div>No, the protocol is specified by adding protocol=3Dxxx.<br>
<div class=3D""><br>
&gt; SRC_URI =3D &quot;git://<a href=3D"http://github.com/GraphicsEmpire/gr=
idvisualization.git;branch=3Dmaster" target=3D"_blank">github.com/GraphicsE=
mpire/gridvisualization.git;branch=3Dmaster</a>=E2=80=9D<br>
<br>
</div>Cheers,<br>
Anders<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Anders Darander<br>
ChargeStorm AB / eStorm AB<br>
</font></span></blockquote></div><br></div>

--047d7b6d99aec0d66f04fc99e21b--
