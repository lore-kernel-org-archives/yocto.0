Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D228BE00CD8; Wed, 10 Feb 2016 01:28:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from DUB004-OMC3S13.hotmail.com (dub004-omc3s13.hotmail.com
	[157.55.2.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 651C9E00CD0
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 01:28:04 -0800 (PST)
Received: from DUB130-W51 ([157.55.2.8]) by DUB004-OMC3S13.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Wed, 10 Feb 2016 01:28:03 -0800
X-TMN: [/qXqss9Jk0nvGjpf5LPWtWhforDJsHIc]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W51142E7931110B65737822DAD70@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 10 Feb 2016 09:28:03 +0000
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 10 Feb 2016 09:28:03.0602 (UTC)
	FILETIME=[576F2F20:01D163E5]
Subject: Disabling ipv6
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
X-List-Received-Date: Wed, 10 Feb 2016 09:28:06 -0000
Content-Type: multipart/alternative;
	boundary="_6b946db1-71df-49a4-8977-d4d9f9ae5480_"

--_6b946db1-71df-49a4-8977-d4d9f9ae5480_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I hit this issue experimenting with disabling ipv6=2C as Todd did originall=
y=2C with an odd error about not being able to build the native sdk.
It's not a problem for me but is there a recommended way for disabling a li=
bc distro feature like ipv6 without creating a whole new distro?  Does libc=
 really require ipv6?  I can see it's the features in DISTRO_FEATURES_LIBC =
that are critical.
For the purposes of this experiment I added to local.conf to get it working=
:DISTRO_FEATURES_remove =3D "ipv6"DISTRO_FEATURES_LIBC_remove =3D "ipv6"
But I expect I will create a new distro at some point.
Cheers=2CChris
On Tuesday 27 October 2015 08:45:26 Burton=2C Ross wrote:> On 26 October 20=
15 at 20:16=2C Todd Efflam <todd.efflam at gmail.com> wrote:> > Thanks for =
the tip.  We tried adding this to the local.conf file but> > it failed with=
 the following error:> > ERROR: Nothing PROVIDES 'glibc'> > ERROR: glibc wa=
s skipped: missing required distro feature 'ipv6' (not> > in DISTRO_FEATURE=
S)> > Ouch.  That's surely not right.> > The commit that introduced this wa=
s:> > commit 97899bc908a421295d814801ff86edeb9304d2fd> Author: Chen Qi <Qi.=
Chen at windriver.com>> Date:   Thu Jul 3 11:23:42 2014 +0800> >     eglibc=
: check for required distro features> >     If users accidently override th=
e DISTRO_FEATURES in local.conf=2C>     then build failures occur for lack =
of libc functions.> >     All features in DISTRO_FEATURES_LIBC should be in=
 DISTRO_FEATURES.>     That's why this patch let the recipe inherit distro_=
features_check>     class and set REQUIRED_DISTRO_FEATURES to "${DISTRO_FEA=
TURES_LIBC}".> >     [YOCTO #6381]> > But the entire point of the logic in =
glibc-options is to make these> options=2C well=2C optional.> > It looks li=
ke the required_distro_features use in eglibc is misguided.  Can> you comme=
nt out the REQUIRED_DISTRO_FEATURES assignment in glibc.inc and> verify tha=
t it then builds fine without ipv6 enabled?
Ah yes=2C I meant to get back to this at some point as I didn't really like=
 how this was fixed previously either (see https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D6381 for details of the problem). It seems to me that w=
e should:
1) Fix the glibc recipes so that they handle an empty libc configuration or=
 error out much earlier with a sensible message if that's not possible
2) Properly detect when DISTRO_FEATURES has been "zapped" via +=3D in local=
.conf or elsewhere and show an error/warning about that.
Cheers=2CPaul
--=20
Paul EggletonIntel Open Source Technology Centre
 		 	   		  =

--_6b946db1-71df-49a4-8977-d4d9f9ae5480_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'><div>I hit this issue experiment=
ing with disabling ipv6=2C as Todd did originally=2C with an odd error abou=
t not being able to build the native sdk.</div><div><br></div><div>It's not=
 a problem for me but is there a recommended way for disabling a libc distr=
o feature like ipv6 without creating a whole new distro? &nbsp=3BDoes libc =
really require ipv6? &nbsp=3BI can see it's the features in&nbsp=3BDISTRO_F=
EATURES_LIBC that are critical.</div><div><br></div><div>For the purposes o=
f this experiment I added to local.conf to get it working:</div><div><div>D=
ISTRO_FEATURES_remove =3D "ipv6"</div><div>DISTRO_FEATURES_LIBC_remove =3D =
"ipv6"</div></div><div><br></div><div>But I expect I will create a new dist=
ro at some point.</div><div><br></div><div>Cheers=2C</div><div><span style=
=3D"font-size: 12pt=3B">Chris</span></div><div><br></div><div><div>On Tuesd=
ay 27 October 2015 08:45:26 Burton=2C Ross wrote:</div><div>&gt=3B On 26 Oc=
tober 2015 at 20:16=2C Todd Efflam &lt=3Btodd.efflam at gmail.com&gt=3B wro=
te:</div><div>&gt=3B &gt=3B Thanks for the tip. &nbsp=3BWe tried adding thi=
s to the local.conf file but</div><div>&gt=3B &gt=3B it failed with the fol=
lowing error:</div><div>&gt=3B &gt=3B ERROR: Nothing PROVIDES 'glibc'</div>=
<div>&gt=3B &gt=3B ERROR: glibc was skipped: missing required distro featur=
e 'ipv6' (not</div><div>&gt=3B &gt=3B in DISTRO_FEATURES)</div><div>&gt=3B&=
nbsp=3B</div><div>&gt=3B Ouch. &nbsp=3BThat's surely not right.</div><div>&=
gt=3B&nbsp=3B</div><div>&gt=3B The commit that introduced this was:</div><d=
iv>&gt=3B&nbsp=3B</div><div>&gt=3B commit 97899bc908a421295d814801ff86edeb9=
304d2fd</div><div>&gt=3B Author: Chen Qi &lt=3BQi.Chen at windriver.com&gt=
=3B</div><div>&gt=3B Date: &nbsp=3B Thu Jul 3 11:23:42 2014 +0800</div><div=
>&gt=3B&nbsp=3B</div><div>&gt=3B &nbsp=3B &nbsp=3B eglibc: check for requir=
ed distro features</div><div>&gt=3B&nbsp=3B</div><div>&gt=3B &nbsp=3B &nbsp=
=3B If users accidently override the DISTRO_FEATURES in local.conf=2C</div>=
<div>&gt=3B &nbsp=3B &nbsp=3B then build failures occur for lack of libc fu=
nctions.</div><div>&gt=3B&nbsp=3B</div><div>&gt=3B &nbsp=3B &nbsp=3B All fe=
atures in DISTRO_FEATURES_LIBC should be in DISTRO_FEATURES.</div><div>&gt=
=3B &nbsp=3B &nbsp=3B That's why this patch let the recipe inherit distro_f=
eatures_check</div><div>&gt=3B &nbsp=3B &nbsp=3B class and set REQUIRED_DIS=
TRO_FEATURES to "${DISTRO_FEATURES_LIBC}".</div><div>&gt=3B&nbsp=3B</div><d=
iv>&gt=3B &nbsp=3B &nbsp=3B [YOCTO #6381]</div><div>&gt=3B&nbsp=3B</div><di=
v>&gt=3B But the entire point of the logic in glibc-options is to make thes=
e</div><div>&gt=3B options=2C well=2C optional.</div><div>&gt=3B&nbsp=3B</d=
iv><div>&gt=3B It looks like the required_distro_features use in eglibc is =
misguided. &nbsp=3BCan</div><div>&gt=3B you comment out the REQUIRED_DISTRO=
_FEATURES assignment in glibc.inc and</div><div>&gt=3B verify that it then =
builds fine without ipv6 enabled?</div><div><br></div><div>Ah yes=2C I mean=
t to get back to this at some point as I didn't really like how&nbsp=3B</di=
v><div>this was fixed previously either (see&nbsp=3B</div><div>https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D6381 for details of the&nbsp=3B</di=
v><div>problem). It seems to me that we should:</div><div><br></div><div>1)=
 Fix the glibc recipes so that they handle an empty libc configuration or&n=
bsp=3B</div><div>error out much earlier with a sensible message if that's n=
ot possible</div><div><br></div><div>2) Properly detect when DISTRO_FEATURE=
S has been "zapped" via +=3D in local.conf&nbsp=3B</div><div>or elsewhere a=
nd show an error/warning about that.</div><div><br></div><div>Cheers=2C</di=
v><div>Paul</div><div><br></div><div>--&nbsp=3B</div><div><br></div><div>Pa=
ul Eggleton</div><div>Intel Open Source Technology Centre</div></div><div><=
br></div> 		 	   		  </div></body>
</html>=

--_6b946db1-71df-49a4-8977-d4d9f9ae5480_--
