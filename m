Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 089B3E0085F; Tue, 25 Nov 2014 08:14:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [202.136.110.238 listed in list.dnswl.org]
Received: from webmail2.adam.net.au (webmail2.adam.net.au [202.136.110.238])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AC83E0084A
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 08:13:55 -0800 (PST)
Received: from localhost (webmail2.adam.net.au [127.0.0.1])
	by webmail2.adam.net.au (8.13.8/8.13.8) with ESMTP id sAPGDHqk013166;
	Wed, 26 Nov 2014 02:43:18 +1030
Message-Id: <f36cad6dbfa6fc9e2121fcea6efeefbb9db05c32@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Anders Darander" <anders@chargestorm.se>, peterengcomau001@adam.com.au
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <20141125125640.GB6282@ad.chargestorm.se>
Date: Wed, 26 Nov 2014 02:43:17 +1030
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: New error in 1.7
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Nov 2014 16:14:08 -0000
Content-Type: multipart/alternative;
	boundary="=_3718a379ceb791591ce83e1ec9fecf5f"

--=_3718a379ceb791591ce83e1ec9fecf5f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=C2=A0My original problem is that the image built in 1.6.1 does not buil=
d=0Ain 1.7. Paul indicated this is probably because of the -foreign issu=
e=0Aas referred to in the reference manual Section 5.6.3 when upgrading.=
=C2=A0=0AWhat I need to do is modify my recipe to include this. I unders=
tand=0Aonce I have modified the recipe I can generate a patch against th=
e=0Aoriginal.=0AHowever, I still cannot identify the original change to=
 the recipe=0Arequired to add this item.=0AI have added to the recipe=0A=
EXTRA_OECONF =3D " 'AM_INIT_AUTOMAKE([foreign]); "=0AIs this the correct=
 change to the recipe to ensure the config.ac file=0Ais updated so that=
 any non-conformance with GNU guidelines is=0Aoverlooked?=0AI am still g=
etting the original error error.=0ADo I need to add :do_config() {}and i=
f so, what do I put in the=0Abetween the brackets? note that it looks li=
ke do_config is being run=0Aalready because that is what is generating t=
he error=0ARegardsLachlan =0A=0A----- Original Message -----=0AFrom: "An=
ders Darander" =0ATo:"peterengcomau001@adam.com.au" =0ACc:"Paul Eggleton=
" , "yocto@yoctoproject.org" =0ASent:Tue, 25 Nov 2014 13:56:41 +0100=0AS=
ubject:Re: [yocto] New error in 1.7=0A=0A * peterengcomau001@adam.com.au=
  [141125 13:44]:=0A > This is new territory for me.=0A > I have created=
 the following patch=0A > diff --git a/configure.ac b/configure.ac=0A >=
 --- a/configure.ac=0A > +++ b/configure.ac=0A > @@ -16 +16 @@ AC_CONFIG=
_SRCDIR([libop/op_config.h])=0A > -AM_INIT_AUTOMAKE=0A > +AM_INIT_AUTOMA=
KE([foreign])=0A=0A Yep, that's not really a valid patch file (at least=
 not one that can=0Abe=0A applied.=0A=0A > Can you direct me to some inf=
ormation that describes the exact=0Asyntax=0A > for creating patches?=0A=
=0A If you want to do it by hand, look at the "Creating patches with=0Ad=
iff"=0A section on http://jungels.net/articles/diff-patch-ten-minutes.ht=
ml.=0A=0A If you think you might need to add multiple patches, rework th=
em=0Aetc.=0A I'd recommend using git.=0A=0A Cheers,=0A Anders=0A=0A --=
 =0A Anders Darander=0A ChargeStorm AB / eStorm AB=0A -- =0A ___________=
____________________________________=0A yocto mailing list=0A yocto@yoct=
oproject.org=0A https://lists.yoctoproject.org/listinfo/yocto=0A---- Mes=
sage sent via Adam Internet WebMail - http://www.adam.com.au/

--=_3718a379ceb791591ce83e1ec9fecf5f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>=C2=A0My original problem is that the image built in 1.6.1 d=
oes not build in 1.7. Paul indicated this is probably because of the -fo=
reign issue as referred to in the reference manual Section 5.6.3 when up=
grading.=C2=A0<div><br /></div><div>What I need to do is modify my recip=
e to include this. I understand once I have modified the recipe I can ge=
nerate a patch against the original.</div><div><br /></div><div>However,=
 I still cannot identify the original change to the recipe required to a=
dd this item.</div><div><br /></div><div>I have added to the recipe</div=
><div><br /></div><div>EXTRA_OECONF =3D " 'AM_INIT_AUTOMAKE([foreign]);=
 "</div><div><br /></div><div>Is this the correct change to the recipe t=
o ensure the config.ac file is updated so that any non-conformance with=
 GNU guidelines is overlooked?</div><div><br /></div><div>I am still get=
ting the original error error.</div><div><br /></div><div>Do I need to a=
dd :</div><div>do_config() {}</div><div>and if so, what do I put in the=
 between the brackets? note that it looks like do_config is being run al=
ready because that is what is generating the error</div><div><br /></div=
><div>Regards</div><div>Lachlan</div>=0A=09=09=09=09<br /><blockquote><b=
r />----- Original Message -----<br /><div style=3D"width:100%;backgroun=
d:rgb(228,228,228);"><div style=3D"font-weight:bold;">From:</div> "Ander=
s Darander" &lt;anders@chargestorm.se&gt;</div><br /><div style=3D"font-=
weight:bold;">To:</div>"peterengcomau001@adam.com.au" &lt;peterengcomau0=
01@adam.com.au&gt;<br /><div style=3D"font-weight:bold;">Cc:</div>"Paul=
 Eggleton" &lt;paul.eggleton@linux.intel.com&gt;, "yocto@yoctoproject.or=
g" &lt;yocto@yoctoproject.org&gt;<br /><div style=3D"font-weight:bold;">=
Sent:</div>Tue, 25 Nov 2014 13:56:41 +0100<br /><div style=3D"font-weigh=
t:bold;">Subject:</div>Re: [yocto] New error in 1.7<br /><br /><br />=0A=
* peterengcomau001@adam.com.au &lt;peterengcomau001@adam.com.au&gt; [141=
125 13:44]:<br />=0A&gt;    This is new territory for me.<br />=0A&gt; =
   I have created the following patch<br />=0A&gt;    diff --git a/confi=
gure.ac b/configure.ac<br />=0A&gt;    --- a/configure.ac<br />=0A&gt; =
   +++ b/configure.ac<br />=0A&gt;    @@ -16 +16 @@ AC_CONFIG_SRCDIR([li=
bop/op_config.h])<br />=0A&gt;    -AM_INIT_AUTOMAKE<br />=0A&gt;    +AM_=
INIT_AUTOMAKE([foreign])<br /><br />=0AYep, that's not really a valid pa=
tch file (at least not one that can be<br />=0Aapplied.<br /><br />=0A&g=
t;    Can you direct me to some information that describes the exact syn=
tax<br />=0A&gt;    for creating patches?<br /><br />=0AIf you want to d=
o it by hand, look at the "Creating patches with diff"<br />=0Asection o=
n http://jungels.net/articles/diff-patch-ten-minutes.html.<br /><br />=
=0AIf you think you might need to add multiple patches, rework them etc.=
<br />=0AI'd recommend using git.<br /><br />=0ACheers,<br />=0AAnders<b=
r /><br />=0A-- <br />=0AAnders Darander<br />=0AChargeStorm AB / eStorm=
 AB<br />=0A-- <br />=0A_______________________________________________<=
br />=0Ayocto mailing list<br />=0Ayocto@yoctoproject.org<br />=0Ahttps:=
//lists.yoctoproject.org/listinfo/yocto<br /></blockquote>---- Message s=
ent via Adam Internet WebMail  - http://www.adam.com.au/</body></html>

--=_3718a379ceb791591ce83e1ec9fecf5f--
