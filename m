Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D25EFE00C37; Mon,  4 Apr 2016 08:09:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-03.atm.binero.net (vsp-unauthed02.binero.net
	[195.74.38.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 417CEE00C2F
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 08:09:12 -0700 (PDT)
X-Halon-ID: 2cbcb8e7-fa77-11e5-8ff9-0050569116f7
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-03.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Mon,  4 Apr 2016 17:09:06 +0200 (CEST)
MIME-Version: 1.0
Date: Mon, 04 Apr 2016 17:09:03 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: GUEYTAT Julien <j.gueytat@cdssoft.studiel.fr>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <EC7BC1CD2E085743BB2AE634252C39C171CDB5@server.exchange.local>
References: <EC7BC1CD2E085743BB2AE634252C39C171CDB5@server.exchange.local>
Message-ID: <de89d347015b4afe389e8b6d0e3d66b3@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Adding more screens / PiTFT support.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 04 Apr 2016 15:09:16 -0000
X-Groupsio-MsgNum: 29279
Content-Type: multipart/alternative;
	boundary="=_d95fdd51e4f37b68fa234d51b0f9b186"

--=_d95fdd51e4f37b68fa234d51b0f9b186
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2016-04-04 15:17 skrev GUEYTAT Julien: 

> Hi, 
> 
> I would like to
add PiTFT support to the meta-raspberry layer. Or at least I would like
to add it in my own BSP layer. 
> 
> I read that Peter were playing with
that recently. Could you please give me some hints to do so? 
> 
> I
have at least two more screens to integrate. 
> 
> If someone could
point me to an example of a BSP based on meta-raspberrypi that would be
awesome. 
> 
> Thanks in advance, 
> 
> Best Regards 
> 
> JULIEN
GUEYTAT 
> 
> INGÉNIEUR INFORMATIQUE 
> 
> 1027, avenue du Docteur
Julien Lefebre BP27 
> 
> 06271 Villeneuve-Loubet Cedex 
> 
> Fixe : +33
(0) 492 024 545
> Mob : +33(0) 617 980 383
> Fax : +33(0) 492 024 546
>
Email : j.gueytat@cdssoft.studiel.fr 
> 
> www : www.studiel.fr [1] 
>

> PPENSEZ ENVIRONNEMENT, IMPRIMEZ SEULEMENT SI NÉCESSAIRE

Hi Julien,


After some discussions with the community, we decided that the
official meta-raspberrypi pitft support should be added using
MACHINE_FEATURES. If you look in README for meta-raspberrypi there are
some basic description about how to enable support: 

For a already
supported pitft model (pitft22 is supported and 28r is on it's way
https://lists.yoctoproject.org/pipermail/yocto/2016-March/029284.html),
you can just add below MACHINE_FEATURES to local.conf:


MACHINE_FEATURES += "pitft pitft22" 

In order to add support for
additional models you can use
https://lists.yoctoproject.org/pipermail/yocto/2016-March/029284.html as
a reference.
 Basically what you need are to: 

* add the overlay for
the screen 

* Add dtoverlay option with wanted default arguments in
rpi-config_git.bb 

* Add a default calibration (if needed) 

Assuming
an overlay exists for your model, it shouldn't be so tricky to fix the
rest.. 

BR Petter 

Petter Mabäcker

Technux
<petter@technux.se>
www.technux.se
 

Links:
------
[1]
http://www.studiel.fr/

--=_d95fdd51e4f37b68fa234d51b0f9b186
Content-Type: multipart/related;
 boundary="=_21e597dfe44d675a2f1a218ecbbcd8a6"

--=_21e597dfe44d675a2f1a218ecbbcd8a6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2016-04-04 15:17 skrev GUEYTAT Julien:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored --><!-- meta ignored -->
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<!-- o ignored --></p>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
<p class=3D"MsoNormal"><span>I would like to add PiTFT support to the meta-=
raspberry layer. Or at least I would like to add it in my own BSP layer.<!-=
- o ignored --></span></p>
<p class=3D"MsoNormal"><span>I read that Peter were playing with that recen=
tly. Could you please give me some hints to do so?<!-- o ignored --></span>=
</p>
<p class=3D"MsoNormal"><span>I have at least two more screens to integrate=
=2E<!-- o ignored --></span></p>
<p class=3D"MsoNormal"><span><!-- o ignored -->&nbsp;</span></p>
<p class=3D"MsoNormal"><span>If someone could point me to an example of a B=
SP based on meta-raspberrypi that would be awesome.<!-- o ignored --></span=
></p>
<p class=3D"MsoNormal"><span><!-- o ignored -->&nbsp;</span></p>
<p class=3D"MsoNormal"><span>Thanks in advance,<!-- o ignored --></span></p=
>
<p class=3D"MsoNormal"><span>Best Regards<!-- o ignored --></span></p>
<p class=3D"MsoNormal"><span><!-- o ignored -->&nbsp;</span></p>
<p class=3D"MsoNormal"><strong><span style=3D"color: #1f497d; mso-fareast-l=
anguage: FR;">Julien GUEYTAT<!-- o ignored --></span></strong></p>
<p class=3D"MsoNormal"><strong><span style=3D"color: #1f497d; mso-fareast-l=
anguage: FR;">Ing&eacute;nieur Informatique<!-- o ignored --></span></stron=
g></p>
<p class=3D"MsoNormal"><span style=3D"color: #1f497d; mso-fareast-language:=
 FR;"><img id=3D"Image_x0020_1" src=3D"cid:f440e4e287d3a1e379c4450ae9cc49db=
@technux.se" alt=3D"Logo CDS SOFT" width=3D"209" height=3D"51" /><!-- o ign=
ored --></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size: 10.0pt; color: #1f497d; ms=
o-fareast-language: FR;">1027, avenue du Docteur Julien Lefebre BP27</span>=
<strong><span style=3D"color: #1f497d; mso-fareast-language: FR;"><!-- o ig=
nored --></span></strong></p>
<p class=3D"MsoNormal"><span style=3D"font-size: 10.0pt; color: #1f497d; ms=
o-fareast-language: FR;">06271 Villeneuve-Loubet Cedex<!-- o ignored --></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"text-decoration: underline;"><span st=
yle=3D"font-size: 10.0pt; color: #1f497d; mso-fareast-language: FR;">Fixe</=
span></span><span style=3D"font-size: 10.0pt; color: #1f497d; mso-fareast-l=
anguage: FR;"> :&nbsp; +33 (0) 492&nbsp;024 545<br /><span style=3D"text-de=
coration: underline;">Mob</span> :&nbsp; +33(0) 617 980 383<br /><span styl=
e=3D"text-decoration: underline;">Fax</span> :&nbsp;&nbsp;&nbsp; +33(0) 492=
&nbsp;024 546<br /><span style=3D"text-decoration: underline;">Email</span>=
 : </span><span style=3D"mso-fareast-language: FR;"><a href=3D"mailto:j.gue=
ytat@cdssoft.studiel.fr"><span style=3D"color: #0563c1;">j.gueytat@cdssoft=
=2Estudiel.fr</span></a><span style=3D"color: #1f497d;"><!-- o ignored --><=
/span></span></p>
<p class=3D"MsoNormal"><span style=3D"text-decoration: underline;"><span st=
yle=3D"font-size: 10.0pt; color: #1f497d; mso-fareast-language: FR;">www</s=
pan></span><span style=3D"font-size: 10.0pt; color: #1f497d; mso-fareast-la=
nguage: FR;"> : </span><span style=3D"mso-fareast-language: FR;"><a href=3D=
"http://www.studiel.fr/"><span style=3D"color: #0563c1;">www.studiel.fr</sp=
an></a><span style=3D"color: #1f497d;"><!-- o ignored --></span></span></p>
<p class=3D"MsoNormal"><strong><span style=3D"font-size: 24.0pt; font-famil=
y: Webdings; color: green; mso-fareast-language: FR;">P</span></strong><str=
ong><span style=3D"font-size: 10.0pt; font-family: 'Arial',sans-serif; colo=
r: green; mso-fareast-language: FR;">Pensez Environnement, imprimez seuleme=
nt si n&eacute;cessaire</span></strong><span style=3D"color: #1f497d; mso-f=
areast-language: FR;"><!-- o ignored --></span></p>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
</div>
</blockquote>
<p>Hi Julien,</p>
<p>After some discussions with the community, we decided that the official =
meta-raspberrypi pitft support should be added using MACHINE_FEATURES. If y=
ou look in README for meta-raspberrypi there are some basic description abo=
ut how to enable support:</p>
<p>For a already supported pitft model (pitft22 is supported and 28r is on =
it's way https://lists.yoctoproject.org/pipermail/yocto/2016-March/029284=
=2Ehtml), you can just add below MACHINE_FEATURES to local.conf:</p>
<p>MACHINE_FEATURES +=3D "pitft pitft22"</p>
<p>&nbsp;</p>
<p>In order to add support for additional models you can use https://lists=
=2Eyoctoproject.org/pipermail/yocto/2016-March/029284.html as a reference=
=2E<br />&nbsp;Basically what you need are to:</p>
<p>* add the overlay for the screen</p>
<p>* Add dtoverlay option with wanted default arguments in rpi-config_git=
=2Ebb</p>
<p>* Add a default calibration (if needed)</p>
<p>&nbsp;</p>
<p>Assuming an overlay exists for your model, it shouldn't be so tricky to =
fix the rest..</p>
<p>BR Petter</p>
<p>&nbsp;</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
</body></html>

--=_21e597dfe44d675a2f1a218ecbbcd8a6
Content-Transfer-Encoding: base64
Content-ID: <f440e4e287d3a1e379c4450ae9cc49db@technux.se>
Content-Type: image/png;
 name=image001.png
Content-Disposition: inline;
 filename=image001.png;
 size=7552

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
RjBwnmDg/wC1ArguDtiwIAAAAABJRU5ErkJggg==

--=_21e597dfe44d675a2f1a218ecbbcd8a6--

--=_d95fdd51e4f37b68fa234d51b0f9b186--
