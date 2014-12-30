Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D83BE0083A; Tue, 30 Dec 2014 07:45:37 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3499AE003E3
	for <yocto@yoctoproject.org>; Tue, 30 Dec 2014 07:45:28 -0800 (PST)
Received: from localhost (webmail2.adam.net.au [127.0.0.1])
	by webmail2.adam.net.au (8.13.8/8.13.8) with ESMTP id sBUFjDCO014791;
	Wed, 31 Dec 2014 02:15:13 +1030
Message-Id: <547988affb54758502fe31b4a9613e00d927d5c0@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	"Yocto discussion list" <yocto@yoctoproject.org>
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <alpine.LFD.2.11.1412300918330.16521@localhost>
Date: Wed, 31 Dec 2014 02:15:13 +1030
MIME-Version: 1.0
Subject: Re: is it not a *requirement* that layers start with "meta-"?
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
X-List-Received-Date: Tue, 30 Dec 2014 15:45:37 -0000
Content-Type: multipart/alternative;
	boundary="=_060ba8f6dcc8876fc48d4ba108e63a2b"

--=_060ba8f6dcc8876fc48d4ba108e63a2b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

If you use the yocto scripts for setting up a new layer, it=0Aautomatica=
lly prepends 'meta-'. That may be why there is no=0Arequirement.Lachlan=
=0A=0A----- Original Message -----=0AFrom: "Robert P. J. Day" =0ATo:"Yoc=
to discussion list" =0ACc:=0ASent:Tue, 30 Dec 2014 09:20:55 -0500 (EST)=
=0ASubject:[yocto] is it not a *requirement* that layers start with=0A"m=
eta-"?=0A=0A just proofing the BSP Guide and i read again that starting=
 a layer=0A name with "meta-" is not an actual requirement, it's just st=
andard=0A practice. but is there no code/script anywhere that requires t=
hat=0A prefix to process the layer properly?=0A=0A i'm pretty sure i've=
 run across YP utilities that check specifically=0A for a "meta-" prefix=
, so that would make that prefix mandatory,=0Awould=0A it not? i wish i=
 could remember where i've seen this, but it eludes=0Ame=0A at the momen=
t.=0A=0A rday=0A=0A -- =0A=0A=0A=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=0A Robert P. J. Day Ottawa, Ontario, C=
ANADA=0A http://crashcourse.ca=0A=0A Twitter: http://twitter.com/rpjday=
=0A LinkedIn: http://ca.linkedin.com/in/rpjday=0A=0A=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=0A -- =0A _______=
________________________________________=0A yocto mailing list=0A yocto@=
yoctoproject.org=0A https://lists.yoctoproject.org/listinfo/yocto=0A----=
 Message sent via Adam Internet WebMail - http://www.adam.com.au/

--=_060ba8f6dcc8876fc48d4ba108e63a2b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>If you use the yocto scripts for setting up a new layer, it=
 automatically prepends 'meta-'. That may be why there is no requirement=
<div>Lachlan<br /><br /><blockquote><br />----- Original Message -----<=
br /><div style=3D"width:100%;background:rgb(228,228,228);"><div style=
=3D"font-weight:bold;">From:</div> "Robert P. J. Day" &lt;rpjday@crashco=
urse.ca&gt;</div><br /><div style=3D"font-weight:bold;">To:</div>"Yocto=
 discussion list" &lt;yocto@yoctoproject.org&gt;<br /><div style=3D"font=
-weight:bold;">Cc:</div><br /><div style=3D"font-weight:bold;">Sent:</di=
v>Tue, 30 Dec 2014 09:20:55 -0500 (EST)<br /><div style=3D"font-weight:b=
old;">Subject:</div>[yocto] is it not a *requirement* that layers start=
 with "meta-"?<br /><br /><br /><br />=0A  just proofing the BSP Guide a=
nd i read again that starting a layer<br />=0Aname with "meta-" is not a=
n actual requirement, it's just standard<br />=0Apractice. but is there=
 no code/script anywhere that requires that<br />=0Aprefix to process th=
e layer properly?<br /><br />=0A  i'm pretty sure i've run across YP uti=
lities that check specifically<br />=0Afor a "meta-" prefix, so that wou=
ld make that prefix mandatory, would<br />=0Ait not? i wish i could reme=
mber where i've seen this, but it eludes me<br />=0Aat the moment.<br />=
<br />=0Arday<br /><br />=0A-- <br /><br />=0A=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br />=0ARobert P. J. Da=
y                                 Ottawa, Ontario, CANADA<br />=0A     =
                   http://crashcourse.ca<br /><br />=0ATwitter:        =
                               http://twitter.com/rpjday<br />=0ALinkedI=
n:                               http://ca.linkedin.com/in/rpjday<br />=
=0A=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br />=0A-- <br />=0A_______________________________________________<=
br />=0Ayocto mailing list<br />=0Ayocto@yoctoproject.org<br />=0Ahttps:=
//lists.yoctoproject.org/listinfo/yocto<br /></blockquote></div>---- Mes=
sage sent via Adam Internet WebMail  - http://www.adam.com.au/</body></h=
tml>

--=_060ba8f6dcc8876fc48d4ba108e63a2b--
