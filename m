Return-Path: <r.schwarz@sotec.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAF33E00C64; Fri, 18 Mar 2016 01:32:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51D75E00C39
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 01:32:37 -0700 (PDT)
Received: by mail-lb0-f177.google.com with SMTP id qe11so29379477lbc.3
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 01:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sotec-eu.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=Tb8VlXoMTdyE+Xa1dJUQnw+ZP7kVtqK/oUiKMtVPefI=;
	b=Dah5AU/pNEEMl15KKYYZASUVQAIY06xN4WcCH8EhAVIJp9PPVRUGGKXnX0b/Snybft
	S0KIzpCpSNZ77m44pAeoGw700gTxYhSdtaP4T9BIu3Wbb9rgkOqZm+IrJkERlqASZPlh
	sdZMblissJNTyccm7EbODdOKWtmU5aEfrujKBkmLUvH7oVsmlMPxQdK/caEL81Qkhvs8
	Xc/NSk0h3WV3ChkHMD+YBEjuV7vS/qjQwwM3v1rnRb5ngN1EXJFMJ2GgHSFyJGSvz30a
	k/fDET5Y3Kl3fweSyxbprJw+WXnAYPhqR4TwM2rcxHhwyqBtgHXHSSROCVL33N/rxBRd
	NYdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Tb8VlXoMTdyE+Xa1dJUQnw+ZP7kVtqK/oUiKMtVPefI=;
	b=O2pIH1d4+s4kzN8RX9pcgCc2DK9O2HWuRVuv8qlUCV+atQmYQSpCSDZkE3yU8P9Mlq
	y52Ssa5WU5fVCthGcX6RNRMXwsQXpdQiL9Ua0CWiLOl6eDnoL7lvawmUJejVOyd+weox
	U/0zY8EYrODNlW/a2e6P1JQY7jKuL7zZEUgh3h9B4RKGi9Gp9+kmMlbq3fGDDx5P7Gv/
	jTE10tlW6vpR51gyo69C2XE5sOH5c+euKM+FFCeU571X3YQyqnaWEgyC9fOII2x0f7T4
	EJNCoqsCO9DXddlRSdVTegRGWuuOZyNC2+9+Bn5H+9YhQdGRaT8I1LHfI0VTfmcoMJLW
	JW/Q==
X-Gm-Message-State: AD7BkJKac4YeOPRDw6HGLcRJCASrWBvSiO8QUgbUe+h3v9FNTSqa0kFTJSeOvlVwiGK2hxoat00g/eIngJR4/F7C98cO9kM3U//1O1YsQ5ADxEiCOQhFkssRhnLsRSuQDaaSlx6o1LxcCAyZN5k=
X-Received: by 10.112.201.202 with SMTP id kc10mr5427313lbc.33.1458289955702; 
	Fri, 18 Mar 2016 01:32:35 -0700 (PDT)
MIME-Version: 1.0
From: Ruben Schwarz <r.schwarz@sotec.eu>
Date: Fri, 18 Mar 2016 08:32:26 +0000
Message-ID: <CAEMorpgmXyJpR5Fwg53D1J9JOj+Hv0mWXmGhO1kW7O1th5o78A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Upgrade from Daisy to Jethro -> Hardware Problems (Device Tree)
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
X-List-Received-Date: Fri, 18 Mar 2016 08:32:42 -0000
Content-Type: multipart/alternative; boundary=001a11c26b22ca2fa2052e4e965d

--001a11c26b22ca2fa2052e4e965d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

we have a customized hardware based on Beaglebone Black. We created an BSP
Layer with daisy and everything worked fine.

Now we decided to upgrade our yocto sources from daisy (Kernel 3.14.4) to
jethro (Kernel 4.1.15).

I adjusted the Kernel patches to work with new sources. The system boots
but the network interfaces aren't available.
ip a shows only the loopback interface.

I see that the Kernel Image changed from uImage to zImage. Device Tree
files are used as an the previous build.

Does anybody know if I have to change the device tree files to work with
the new Kernel? Any other ideas how to solve this problem?

Best regards
Ruben

--=20


Besuchen Sie unseren Chrome Webshop unter shop.cloudwuerdig.com

www.sotec.eu | www.cloudwuerdig.com=20
--=20
SOTEC Software Entwicklungs GmbH + Co Mikrocomputertechnik KG=20
Calwer Stra=C3=9Fe 11, D-75395 Ostelsheim=20
Sitz Ostelsheim, Amtsgericht Stuttgart HRA 330821/HRB 330664,=20
Gesch=C3=A4ftsf=C3=BChrer: Florian Holz=20
Cloudw=C3=BCrdig=C2=AE ist eine eingetragene Marke der SOTEC Software Entwi=
cklungs=20
GmbH + Co Mikrocomputertechnik KG

Der Inhalt dieser e-Mail ist ausschlie=C3=9Flich f=C3=BCr den bezeichneten =
Adressaten=20
bestimmt. Wenn Sie nicht der vorgesehene Adressat dieser e-Mail oder dessen=
=20
Vertreter sein sollten, so beachten Sie bitte, dass jede Form der=20
Kenntnisnahme, Ver=C3=B6ffentlichung, Vervielf=C3=A4ltigung oder Weitergabe=
 des=20
Inhalts dieser e-Mail unzul=C3=A4ssig ist. Wir bitten Sie, sich in diesem F=
all=20
mit dem Absender der e-Mail in Verbindung zu setzen.

The content of this e-mail is meant exclusively for the person to whom it=
=20
is addressed. If you are not the person to whom this e-mail is addressed or=
=20
his/her representative, please be informed, that any form of knowledge,=20
publication, duplication or distribution of the content of this e-mail is=
=20
inadmissible. We ask you, therefore, in such a case to please contact the=
=20
sender of this e-mail.


--001a11c26b22ca2fa2052e4e965d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>we have a customized hardware based=
 on Beaglebone Black. We created an BSP Layer with daisy and everything wor=
ked fine.</div><div><br></div><div>Now we decided to upgrade our yocto sour=
ces from daisy (Kernel 3.14.4) to jethro (Kernel 4.1.15).=C2=A0</div><div><=
br></div><div>I adjusted the Kernel patches to work with new sources. The s=
ystem boots but the network interfaces aren&#39;t available.</div><div>ip a=
 shows only the loopback interface.</div><div><br></div><div>I see that the=
 Kernel Image changed from uImage to zImage. Device Tree files are used as =
an the previous build.</div><div><br></div><div>Does anybody know if I have=
 to change the device tree files to work with the new Kernel? Any other ide=
as how to solve this problem?</div><div><br></div><div>Best regards</div><d=
iv>Ruben</div></div>

<br>
<p style=3D"font-family:Arial;font-size:11px;vertical-align:baseline"></p><=
p style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1.3em;vertical-=
align:baseline"></p><p style=3D"font-family:Arial;font-size:11px;vertical-a=
lign:baseline">Besuchen Sie unseren Chrome Webshop unter <a href=3D"http://=
shop.cloudwuerdig.com" target=3D"_blank">shop.cloudwuerdig.com</a></p><p st=
yle=3D"font-family:Arial;font-size:11px;vertical-align:baseline"><span styl=
e=3D"font-weight:bold;vertical-align:baseline"><a href=3D"http://www.sotec.=
eu/" style=3D"text-decoration:none;color:rgb(0,0,0)" target=3D"_blank">www.=
sotec.eu</a>=C2=A0|=C2=A0<a href=3D"http://www.cloudwuerdig.com/" style=3D"=
text-decoration:none;color:rgb(0,0,0)" target=3D"_blank">www.<wbr>cloudwuer=
dig.com</a>=C2=A0</span><br>--=C2=A0<br>SOTEC Software Entwicklungs GmbH + =
Co Mikrocomputertechnik KG=C2=A0<br>Calwer Stra=C3=9Fe 11, D-75395 Ostelshe=
im=C2=A0<br>Sitz Ostelsheim, Amtsgericht Stuttgart HRA 330821/HRB 330664, G=
esch=C3=A4ftsf=C3=BChrer: Florian Holz=C2=A0<br>Cloudw=C3=BCrdig=C2=AE ist =
eine eingetragene Marke der SOTEC Software Entwicklungs GmbH + Co Mikrocomp=
utertechnik KG</p><p style=3D"font-family:Arial;font-size:11px;vertical-ali=
gn:baseline">Der Inhalt dieser e-Mail ist ausschlie=C3=9Flich f=C3=BCr den =
bezeichneten Adressaten bestimmt. Wenn Sie nicht der vorgesehene Adressat d=
ieser e-Mail oder dessen Vertreter sein sollten, so beachten Sie bitte, das=
s jede Form der Kenntnisnahme, Ver=C3=B6ffentlichung, Vervielf=C3=A4ltigung=
 oder Weitergabe des Inhalts dieser e-Mail unzul=C3=A4ssig ist. Wir bitten =
Sie, sich in diesem Fall mit dem Absender der e-Mail in Verbindung zu setze=
n.</p><p style=3D"font-family:Arial;font-size:11px;vertical-align:baseline"=
>The content of this e-mail is meant exclusively for the person to whom it =
is addressed. If you are not the person to whom this e-mail is addressed or=
 his/her representative, please be informed, that any form of knowledge, pu=
blication, duplication or distribution of the content of this e-mail is ina=
dmissible. We ask you, therefore, in such a case to please contact the send=
er of this e-mail.</p><p style=3D"font-family:Arial,Helvetica,sans-serif;fo=
nt-size:1.3em"></p><p style=3D"font-family:Arial,Helvetica,sans-serif;font-=
size:1.3em"></p>

--001a11c26b22ca2fa2052e4e965d--
