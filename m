Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93795E00E43; Fri,  6 Jul 2018 12:11:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.236.60.155 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout2.han.skanova.net (v-smtpout2.han.skanova.net
	[81.236.60.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA5F5E007D2
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 12:11:37 -0700 (PDT)
Received: from [10.175.196.133] ([84.216.24.121]) by cmsmtp with ESMTPA
	id bW8lf2JSlUtqsbW8lfHwDP; Fri, 06 Jul 2018 21:11:36 +0200
Mime-Version: 1.0 (1.0)
From: Ulf Samuelsson <yocto@emagii.com>
X-Mailer: iPad Mail (15B202)
In-Reply-To: <CALh9vaVPSTpyqrf7sofXiwmeoTxtWKqiz9OL6S3E=HvZLjnhNw@mail.gmail.com>
Date: Fri, 6 Jul 2018 21:11:35 +0200
Message-Id: <060F9969-25C2-42F4-8E70-1660B9C9F08E@emagii.com>
References: <CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com>
	<CALh9vaVPSTpyqrf7sofXiwmeoTxtWKqiz9OL6S3E=HvZLjnhNw@mail.gmail.com>
To: Tim Hammer <tdhammer99@gmail.com>
X-CMAE-Envelope: MS4wfKd1tmcAug/ow001YL7U8pHhaCAx70zYGnkkN9fHQpzkmQWEes6z6sLGJIXB0ppU5S6nxZtWso8cgOjtMLtYJUPxUh7n680GpFVxur+eIQPtJJpsPgwl
	38VAm2svUdoR6/p8cMOlo9jeiGdQmnH9Unusx6MAViCi+Ko3R6d8Ws0bYiq2YOo2ytDNdq9IJ3JpGV/+toGwqE/9O414NNCCb1fTKpz5+PeF0B/9VDUgjvCZ
	oRzmF5KAp45skpHodgaBvA==
Cc: yocto@yoctoproject.org
Subject: Re: Keeping and modifying Source code in Yocto
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
X-List-Received-Date: Fri, 06 Jul 2018 19:11:39 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-DFB12134-39D1-4572-9CA1-67C100DB8512
Content-Transfer-Encoding: 7bit

--Apple-Mail-DFB12134-39D1-4572-9CA1-67C100DB8512
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

externalsrc.bbclass?

In my current project we have a simplified version in a =E2=80=9Dcomponent.b=
bclass=E2=80=9D.
It relies on a variable COMPONENT_DIR defined in our local.conf.

A recipe located in =E2=80=9Drecipe-xxxx/<package>/<package>_$PV.bb=E2=80=9D=
 doing

inherit component

will find its source code in $COMPONENT_DIR/<package>, making the recipe sim=
pler than that of the externalsrc bbclass. No need for SRC_URI statements.

We check out meta layers and the components using repo so the components are=
 always located in $COMPONENTS_DIR.

Been thinking of upstreaming this, but I am unsure about the interest.


Best Regards,
Ulf Samuelsson

> 6 juli 2018 kl. 17:27 skrev Tim Hammer <tdhammer99@gmail.com>:
>=20
>=20
>> On Fri, Jul 6, 2018 at 11:20 AM, Simon Chamlian <simon.chamlian@mpbc.ca> w=
rote:
>=20
>> Hi,
>>=20
>> Is there a way to keep the source code of a package to be able to modify i=
t and then compile?
>>=20
>> For example, with LTIB ( Linux Target Image Builder ), it was possible wi=
th a command to extract the source code from a package, make modifications a=
nd then re-compile?
>>=20
>=20
> I suggest you take a look at the devtool:
>      https://www.yoctoproject.org/software-item/devtool/
>      https://wiki.yoctoproject.org/wiki/TipsAndTricks/Patching_the_source_=
for_a_recipe
>=20
> =20
>> Thanks,
>> S
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>> --=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>=20
>=20
>=20
> --=20
>=20
> .Tim
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-DFB12134-39D1-4572-9CA1-67C100DB8512
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><span style=3D"background-color: rgba(255, 2=
55, 255, 0);">externalsrc.bbclass?</span><div><span style=3D"background-colo=
r: rgba(255, 255, 255, 0);"><br></span></div><div><span style=3D"background-=
color: rgba(255, 255, 255, 0);">In my current project we have a simplified v=
ersion in a =E2=80=9Dcomponent.bbclass=E2=80=9D.</span></div><div><span styl=
e=3D"background-color: rgba(255, 255, 255, 0);">It relies on a variable COMP=
ONENT_DIR defined in our local.conf.</span></div><div><span style=3D"backgro=
und-color: rgba(255, 255, 255, 0);"><br></span></div><div><span style=3D"bac=
kground-color: rgba(255, 255, 255, 0);">A recipe located in =E2=80=9Drecipe-=
xxxx/&lt;package&gt;/&lt;package&gt;_$PV.bb=E2=80=9D doing</span></div><div>=
<span style=3D"background-color: rgba(255, 255, 255, 0);"><br></span></div><=
div><span style=3D"background-color: rgba(255, 255, 255, 0);">inherit compon=
ent</span></div><div><span style=3D"background-color: rgba(255, 255, 255, 0)=
;"><br></span></div><div><span style=3D"background-color: rgba(255, 255, 255=
, 0);">will find its source code in $COMPONENT_DIR/&lt;package&gt;, making t=
he recipe simpler than that of the externalsrc bbclass. No need for SRC_URI s=
tatements.</span></div><div><span style=3D"background-color: rgba(255, 255, 2=
55, 0);"><br></span></div><div><span style=3D"background-color: rgba(255, 25=
5, 255, 0);">We check out meta layers and the components using repo so the c=
omponents are always located in $COMPONENTS_DIR.</span></div><div><span styl=
e=3D"background-color: rgba(255, 255, 255, 0);"><br></span></div><div><span s=
tyle=3D"background-color: rgba(255, 255, 255, 0);">Been thinking of upstream=
ing this, but I am unsure about the interest.<br></span></div><div><br></div=
><br><div>Best Regards,<div>Ulf Samuelsson</div></div><div><br>6 juli 2018 k=
l. 17:27 skrev Tim Hammer &lt;<a href=3D"mailto:tdhammer99@gmail.com">tdhamm=
er99@gmail.com</a>&gt;:<br><br></div><blockquote type=3D"cite"><div><div dir=
=3D"ltr"><br><div>On Fri, Jul 6, 2018 at 11:20 AM, Simon Chamlian <span dir=3D=
"ltr">&lt;<a href=3D"mailto:simon.chamlian@mpbc.ca" target=3D"_blank">simon.=
chamlian@mpbc.ca</a>&gt;</span> wrote:<br></div><div class=3D"gmail_extra"><=
div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Is there a way to keep the=
 source code of a package to be able to modify it and then compile?</div><di=
v><br></div><div>For example, with LTIB (
<span>Linux Target Image Builder</span>

), it was possible with a command to extract the source code from a package,=
 make modifications and then re-compile?</div><div><br></div></div></blockqu=
ote><div>

<div><br></div><div>I suggest you take a look at the devtool:<br></div><div>=
&nbsp; &nbsp; &nbsp;<a href=3D"https://www.yoctoproject.org/software-item/de=
vtool/">https://www.yoctoproject.org/software-item/devtool/</a></div><div>&n=
bsp; &nbsp; &nbsp;<a href=3D"https://wiki.yoctoproject.org/wiki/TipsAndTrick=
s/Patching_the_source_for_a_recipe">https://wiki.yoctoproject.org/wiki/TipsA=
ndTricks/Patching_the_source_for_a_recipe</a></div><div class=3D"gmail_extra=
"><br class=3D"gmail-Apple-interchange-newline">

</div>&nbsp;</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div></div><div>Thanks,</div><div>S<br></div><div><br></div><div><br><=
/div><div><br></div><div><br></div><br></div>
<br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><br=
>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div clas=
s=3D"gmail_signature"><div dir=3D"ltr"><br><span style=3D"font-family:&quot;=
arial narrow&quot;,sans-serif">.Tim</span><br></div></div>
</div></div>
</div></blockquote><blockquote type=3D"cite"><div><span>-- </span><br><span>=
_______________________________________________</span><br><span>yocto mailin=
g list</span><br><span><a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a></span><br><span><a href=3D"https://lists.yoctoproject.org/li=
stinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></span><br></=
div></blockquote></body></html>=

--Apple-Mail-DFB12134-39D1-4572-9CA1-67C100DB8512--
