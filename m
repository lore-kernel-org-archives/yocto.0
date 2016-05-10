Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDFC9E00CCD; Mon,  9 May 2016 21:50:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E138EE00CC8
	for <yocto@yoctoproject.org>; Mon,  9 May 2016 21:50:49 -0700 (PDT)
X-Halon-ID: bfb460c8-166a-11e6-81fe-0050569116f7
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-03.atm.binero.net (Halon Mail Gateway) with ESMTPA
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 06:50:41 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 10 May 2016 06:50:36 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: <yocto@yoctoproject.org>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <OFC4AEB901.A588C143-ONC1257FAE.0051F9D2-C1257FAE.0053090F@esa-grimma.de>
References: <OFC4AEB901.A588C143-ONC1257FAE.0051F9D2-C1257FAE.0053090F@esa-grimma.de>
Message-ID: <06a1adbdf434d7992e40e72f452cedae@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Subject: Re: How to build a simple kernel modul
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
X-List-Received-Date: Tue, 10 May 2016 04:50:53 -0000
Content-Type: multipart/alternative;
	boundary="=_2b6261a530232db9b312316f164cd193"

--=_2b6261a530232db9b312316f164cd193
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2016-05-09 17:06 skrev S.Jaritz@esa-grimma.de: 

> Hej, 
> 
> I want
to build a recipe for a simple GPIO Module. I found no tutorial at the
documentation. What is the comon way to build a simple kernel module? 
>

> The Makefile looks like: 
> ######### 
> obj-m += ledmodule.o 
> 
>
SRC := $(shell pwd) 
> 
> all: modules 
> 
> modules: 
> $(MAKE) -C
$(KERNEL_SRC) M=$(SRC) modules 
> 
> modules_install: 
> $(MAKE) -C
$(KERNEL_SRC) M=$(SRC) modules_install 
> 
> clean: 
> rm -rf *.o *.ko
*.mod.c 
> ######### 
> The recipe contains: 
> ######### 
> SUMMARY =
"ledmodule" 
> SECTION = "" 
> LICENSE = "CLOSED" 
> 
> inherit module

> 
> SRC_URI = "file://ledmodule.c [1] 
> file://Makefile [2] 
> " 
> S
= "${WORKDIR}/ledmodule-0.1" 
> ######### 
> 
> Regards
> 
> Stefan
Jaritz
> Entwickler
> 
>
------------------------------------------------------------
> ESA
Elektroschaltanlagen Grimma GmbH
> Broner Ring 30
> 04668 Grimma
>
Telefon: +49 3437 9211 176
> Telefax: +49 3437 9211 26
> E-Mail:
s.jaritz@esa-grimma.de
> Internet: www.esa-grimma.de
> 
>
Geschäftsführer:
> Dipl.-Ing. Jörg Gaitzsch
> Jörg Reinker
> 
> Sitz der
Gesellschaft: Grimma
> Ust.-ID: DE 141784437
> Amtsgericht: Leipzig, HRB
5159
> Steuernummer: 238/108/00755
> 
> Diese E-Mail enthält
vertrauliche und/oder rechtlich geschützte Informationen. 
> Wenn Sie
nicht der richtige Adressat sind oder diese E-Mail irrtümlich erhalten

> haben, informieren Sie bitte sofort den Absender und löschen Sie
diese 
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte
Weitergabe dieser Mail 
> ist nicht gestattet.
> 
> This e-mail may
contain confidential and/or privileged information. If you are 
> not
the intended recipient (or have received this e-mail in error) please 
>
notify the sender immediately and destroy this e-mail. Any unauthorized

> copying, disclosure or distribution of the material in this e-mail is
strictly 
> forbidden.

Hi, 

There are actually some guides for this,
see lab4
in:
https://www.yoctoproject.org/sites/default/files/kernel-lab-2.1_0.pdf


But to simply build a module using bitbake, you can just do: 

$
bitbake ledmodule 

then you will find your recipe and the module in the
./tmp/work/ structure (assuming you are not inheriting 'rm_work' in
local.conf...). 

if you just want to compile it, you can run: 

$
bitbake ledmodule -c compile 

BR Petter 

Petter Mabäcker

Technux
<petter@technux.se>
www.technux.se
 

Links:
------
[1]
file://sek4_ledmodule.c/
[2] file://Makefile/

--=_2b6261a530232db9b312316f164cd193
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2016-05-09 17:06 skrev S.Jaritz@esa-grimma.de:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored --><span style=3D"font-family: sans-serif; font-size=
: small;">Hej,</span> <br /><br /><span style=3D"font-family: sans-serif; f=
ont-size: small;">I want to build a recipe for a simple GPIO Module. I foun=
d no tutorial at the documentation. What is the comon way to build a simple=
 kernel module?</span> <br /><br /><span style=3D"font-family: sans-serif; =
font-size: small;">The Makefile looks like:</span> <br /><span style=3D"fon=
t-family: sans-serif; font-size: small;">#########</span> <br /><span style=
=3D"font-family: sans-serif; font-size: small;">obj-m +=3D ledmodule.o</spa=
n> <br /><br /><span style=3D"font-family: sans-serif; font-size: small;">S=
RC :=3D $(shell pwd)</span> <br /><br /><span style=3D"font-family: sans-se=
rif; font-size: small;">all: modules</span> <br /><br /><span style=3D"font=
-family: sans-serif; font-size: small;">modules:</span> <br /><span style=
=3D"font-family: sans-serif; font-size: small;">&nbsp; &nbsp; &nbsp; &nbsp;=
 $(MAKE) -C $(KERNEL_SRC) M=3D$(SRC) modules</span> <br /><br /><span style=
=3D"font-family: sans-serif; font-size: small;">modules_install:</span> <br=
 /><span style=3D"font-family: sans-serif; font-size: small;">&nbsp; &nbsp;=
 &nbsp; &nbsp; $(MAKE) -C $(KERNEL_SRC) M=3D$(SRC) modules_install</span> <=
br /><br /><span style=3D"font-family: sans-serif; font-size: small;">clean=
:</span> <br /><span style=3D"font-family: sans-serif; font-size: small;">&=
nbsp; &nbsp; &nbsp; &nbsp; rm -rf *.o *.ko *.mod.c</span> <br /><span style=
=3D"font-family: sans-serif; font-size: small;">#########</span> <br /><spa=
n style=3D"font-family: sans-serif; font-size: small;">The recipe contains:=
</span> <br /><span style=3D"font-family: sans-serif; font-size: small;">##=
#######</span> <br /><span style=3D"font-family: sans-serif; font-size: sma=
ll;">SUMMARY =3D "ledmodule"</span> <br /><span style=3D"font-family: sans-=
serif; font-size: small;">SECTION =3D ""</span> <br /><span style=3D"font-f=
amily: sans-serif; font-size: small;">LICENSE =3D "CLOSED"</span> <br /><br=
 /><span style=3D"font-family: sans-serif; font-size: small;">inherit modul=
e</span> <br /><br /><span style=3D"font-family: sans-serif; font-size: sma=
ll;">SRC_URI =3D "</span><a href=3D"file://sek4_ledmodule.c/"><span style=
=3D"color: blue; font-family: sans-serif; font-size: small;">file://ledmodu=
le.c</span></a><span style=3D"font-family: sans-serif; font-size: small;"> =
\</span> <br /><span style=3D"font-family: sans-serif; font-size: small;">&=
nbsp; &nbsp; &nbsp; &nbsp; </span><a href=3D"file://Makefile/"><span style=
=3D"color: blue; font-family: sans-serif; font-size: small;">file://Makefil=
e</span></a><span style=3D"font-family: sans-serif; font-size: small;"> \</=
span> <br /><span style=3D"font-family: sans-serif; font-size: small;">&nbs=
p; &nbsp; &nbsp; &nbsp; "</span> <br /><span style=3D"font-family: sans-ser=
if; font-size: small;">S =3D "${WORKDIR}/ledmodule-0.1"</span> <br /><span =
style=3D"font-family: sans-serif; font-size: small;">#########</span> <br /=
><br /><span style=3D"font-family: sans-serif; font-size: small;">Regards<b=
r /><br /> Stefan Jaritz<br /> Entwickler<br /><br /> ---------------------=
---------------------------------------<br /> ESA Elektroschaltanlagen Grim=
ma GmbH<br /> Broner Ring 30<br /> 04668 Grimma<br /> Telefon: +49 3437 921=
1 176<br /> Telefax: +49 3437 9211 26<br /> E-Mail: s.jaritz@esa-grimma.de<=
br /> Internet: </span><a><span style=3D"font-family: sans-serif; font-size=
: small;">www.esa-grimma.de</span></a><span style=3D"font-family: sans-seri=
f; font-size: small;"><br /><br /><br /> Gesch&auml;ftsf&uuml;hrer:<br /> D=
ipl.-Ing. J&ouml;rg Gaitzsch<br /> J&ouml;rg Reinker<br /><br /> Sitz der G=
esellschaft: Grimma<br /> Ust.-ID: DE 141784437<br /> Amtsgericht: Leipzig,=
 HRB 5159<br /> Steuernummer: 238/108/00755<br /><br /><br /> Diese E-Mail =
enth&auml;lt vertrauliche und/oder rechtlich gesch&uuml;tzte Informationen=
=2E <br /> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=
&uuml;mlich erhalten <br /> haben, informieren Sie bitte sofort den Absende=
r und l&ouml;schen Sie diese <br /> Nachricht. Das unerlaubte Kopieren sowi=
e die unbefugte Weitergabe dieser Mail <br /> ist nicht gestattet.<br /><br=
 /> This e-mail may contain confidential and/or privileged information. If =
you are <br /> not the intended recipient (or have received this e-mail in =
error) please <br /> notify the sender immediately and destroy this e-mail=
=2E Any unauthorized <br /> copying, disclosure or distribution of the mate=
rial in this e-mail is strictly <br /> forbidden.</span></blockquote>
<p>Hi,</p>
<p><br />There are actually some guides for this, see lab4 in:<br />https:/=
/www.yoctoproject.org/sites/default/files/kernel-lab-2.1_0.pdf</p>
<p>But to simply build a module using bitbake, you can just do:</p>
<p>$ bitbake ledmodule</p>
<p>then you will find your recipe and the module in the ./tmp/work/ structu=
re (assuming you are not inheriting 'rm_work' in local.conf...).</p>
<p>&nbsp;</p>
<p>if you just want to compile it, you can run:</p>
<p>$ bitbake ledmodule -c compile</p>
<p>&nbsp;</p>
<p>BR Petter</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
</body></html>

--=_2b6261a530232db9b312316f164cd193--
