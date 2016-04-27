Return-Path: <r.schwarz@sotec.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C384E00D96; Wed, 27 Apr 2016 06:23:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA5C1E00D8E
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 06:23:06 -0700 (PDT)
Received: by mail-lf0-f43.google.com with SMTP id c126so56336790lfb.2
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 06:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sotec-eu.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=m5XuJ62KYgeiMgekoU/bWWXAzgQY5lbbG3ZZhrTBEFQ=;
	b=bX5uMpaLYtbYmAHkpZ5YIZwC9+ROFPFsfoLIuNp6Yp/GrdubqfgC53dVSB8fRVNA5K
	WgWworz/kj2pN3JUrgqdgwlHDQ6oaiPX/qrIXTcnLYVWsrr3xRGkjbayXYkFpjVsPojU
	oVxSPnagNMv+S0OcH3IT9oC8dmxFGcj5Wdb/qCLxtnMwH3sYTYklEs9/rL4nVIRK7oeV
	+9yi3W5ZWAr1pt17sOEjWYJRFueB+BMzjYH7y4abOdRAUgrox53telLmNymjYTGk+BA3
	XSdzy+VmP3AGZHHbfaBSPsUhWAk4tM5bvAdDVly3OGUIqetLHjD+h9x2rhZHR1/Hp6VF
	YUBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=m5XuJ62KYgeiMgekoU/bWWXAzgQY5lbbG3ZZhrTBEFQ=;
	b=EZ7U0Pd111zy9Vt2d9GaIcdIXDN9QUBIK9fW4rRHrYS+ZkI6WOEOK7nvXfqNk9my9x
	SA8J08sD3558IGCi/xPvlxmy/E07CrLHx58CQtEHxZnT+gx3V28s88j4X4Rvy8VNJrJQ
	ANAOrHiduviSQMuq4NJsAcLz4aOPDxmVHyZeQREX1D/T2VcNQOAe3J+JUTGlSAXD7jhb
	O0x761FIcNhJ2lCPfKo0WoKUjqn3VXmPZtYsF0BE4KhqoF6l6DLqbNuJE86X5jwJ0cCy
	ahNWJrGTcWd43NrbKlw5egFseyMm2EZqfQPrQQQ3oRzgEvFBRcLbmEIg0/3Gx0kYH+J/
	IVvA==
X-Gm-Message-State: AOPr4FXKvL+evPfREjc8K4OKYsOGl/sHCsc1Fvvpoeqhl7xv7ojPNww1FpPqGVnX4GkzdZLGpTevDtETTd4XUeGsLAACH4HJQbZSV8pguUjsWr5f1qT7/kKSV2Ql31T6t3w+cgNMFam/kuXwZnc=
X-Received: by 10.112.137.228 with SMTP id ql4mr3649726lbb.14.1461763385052;
	Wed, 27 Apr 2016 06:23:05 -0700 (PDT)
MIME-Version: 1.0
From: Ruben Schwarz <r.schwarz@sotec.eu>
Date: Wed, 27 Apr 2016 13:22:55 +0000
Message-ID: <CAEMorpi1b2+NV_CZLOAohnc2T5m-4bWM0J-RqQUp9U8R6MONCA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: populate_sdk cmake and eclipse
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
X-List-Received-Date: Wed, 27 Apr 2016 13:23:09 -0000
Content-Type: multipart/alternative; boundary=089e011766014feb260531774f2a

--089e011766014feb260531774f2a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

we created our own image for our custom hardware with yocto jethro.
Everything works fine, thanks for this great tools!

Now more developers have to write software for our project. I did the
following steps to set up a application dev environment (as mentionend in
application developers guide):

1. Create sdk: bitbake myImage -c populate_sdk
2. copy generated sdk.sh to a fresh installed ubuntu 14.04 and execute.
Toolchain is installed in /opt/poky/2.0.1/
3. install eclipse and the eclipse yocto plugin as mentionend in the docs.
4. Create a new Yocto Autotools C++ Project -> Build -> copy to target ->
Execute -> everything is fine!
5. Create a new Yocto CMake C++ Project -> Build -> Error: unable to run
cmake
6. Compile cmake project by hand:
cd PROJECT_FOLDER/Debug
source /opt/poky/2.0.1/environment_setup...
cmake ..
make

compiles without errors

*Now my questions:*
Anybody here who uses a sdk with eclipse and cmake?
Did I miss any configuration?

Not directly regarded to this problem:
Anybody here who uses JetBrains CLion with a yocto toolchain/sdk?

Thanks in advance and best regards
Ruben

--=20


Besuchen Sie uns auf der Hannover Messe vom 25. - 29. April, Halle 7, Stand=
=20
D 34 auf dem Gemeinschaftsstand Baden-W=C3=BCrttemberg! weitere Information=
en=20
<http://ow.ly/ZR5TO=EF=BB=BF>

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


--089e011766014feb260531774f2a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>we created our own image for our cu=
stom hardware with yocto jethro. Everything works fine, thanks for this gre=
at tools!</div><div><br></div><div>Now more developers have to write softwa=
re for our project. I did the following steps to set up a application dev e=
nvironment (as mentionend in application developers guide):</div><div><br><=
/div><div>1. Create sdk:=C2=A0<span style=3D"line-height:1.5">bitbake myIma=
ge -c populate_sdk</span></div><div>2. copy generated sdk.sh to a fresh ins=
talled ubuntu 14.04 and execute. Toolchain is installed in /opt/poky/2.0.1/=
</div><div>3. install eclipse and the eclipse yocto plugin as mentionend in=
 the docs.</div><div>4. Create a new Yocto Autotools C++ Project -&gt; Buil=
d -&gt; copy to target -&gt; Execute -&gt; everything is fine!</div><div>5.=
 Create a new Yocto CMake C++ Project -&gt; Build -&gt; Error: unable to ru=
n cmake</div><div>6. Compile cmake project by hand:</div><div>cd PROJECT_FO=
LDER/Debug</div><div>source /opt/poky/2.0.1/environment_setup...</div><div>=
cmake ..</div><div>make</div><div><br></div><div>compiles without errors</d=
iv><div><br></div><div><b>Now my questions:</b></div><div>Anybody here who =
uses a sdk with eclipse and cmake?</div><div>Did I miss any configuration?<=
/div><div><br></div><div>Not directly regarded to this problem:</div><div>A=
nybody here who uses JetBrains CLion with a yocto toolchain/sdk?</div><div>=
<br></div><div>Thanks in advance and best regards</div><div>Ruben</div></di=
v>

<br>
<p style=3D"font-family:Arial;font-size:11px;vertical-align:baseline"></p><=
p style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1.3em;vertical-=
align:baseline"></p><p style=3D"font-family:Arial;font-size:11px;vertical-a=
lign:baseline">Besuchen Sie uns auf der Hannover Messe vom 25. - 29. April,=
 Halle 7, Stand D 34 auf dem Gemeinschaftsstand Baden-W=C3=BCrttemberg! <a =
href=3D"http://ow.ly/ZR5TO=EF=BB=BF" target=3D"_blank">weitere Informatione=
n</a></p><p style=3D"font-family:Arial;font-size:11px;vertical-align:baseli=
ne">Besuchen Sie unseren Chrome Webshop unter <a href=3D"http://shop.cloudw=
uerdig.com" target=3D"_blank">shop.cloudwuerdig.com</a></p><p style=3D"font=
-family:Arial;font-size:11px;vertical-align:baseline"><span style=3D"font-w=
eight:bold;vertical-align:baseline"><a href=3D"http://www.sotec.eu/" style=
=3D"text-decoration:none;color:rgb(0,0,0)" target=3D"_blank">www.sotec.eu</=
a>=C2=A0|=C2=A0<a href=3D"http://www.cloudwuerdig.com/" style=3D"text-decor=
ation:none;color:rgb(0,0,0)" target=3D"_blank">www.<wbr>cloudwuerdig.com</a=
>=C2=A0</span><br>--=C2=A0<br>SOTEC Software Entwicklungs GmbH + Co Mikroco=
mputertechnik KG=C2=A0<br>Calwer Stra=C3=9Fe 11, D-75395 Ostelsheim=C2=A0<b=
r>Sitz Ostelsheim, Amtsgericht Stuttgart HRA 330821/HRB 330664, Gesch=C3=A4=
ftsf=C3=BChrer: Florian Holz=C2=A0<br>Cloudw=C3=BCrdig=C2=AE ist eine einge=
tragene Marke der SOTEC Software Entwicklungs GmbH + Co Mikrocomputertechni=
k KG</p><p style=3D"font-family:Arial;font-size:11px;vertical-align:baselin=
e">Der Inhalt dieser e-Mail ist ausschlie=C3=9Flich f=C3=BCr den bezeichnet=
en Adressaten bestimmt. Wenn Sie nicht der vorgesehene Adressat dieser e-Ma=
il oder dessen Vertreter sein sollten, so beachten Sie bitte, dass jede For=
m der Kenntnisnahme, Ver=C3=B6ffentlichung, Vervielf=C3=A4ltigung oder Weit=
ergabe des Inhalts dieser e-Mail unzul=C3=A4ssig ist. Wir bitten Sie, sich =
in diesem Fall mit dem Absender der e-Mail in Verbindung zu setzen.</p><p s=
tyle=3D"font-family:Arial;font-size:11px;vertical-align:baseline">The conte=
nt of this e-mail is meant exclusively for the person to whom it is address=
ed. If you are not the person to whom this e-mail is addressed or his/her r=
epresentative, please be informed, that any form of knowledge, publication,=
 duplication or distribution of the content of this e-mail is inadmissible.=
 We ask you, therefore, in such a case to please contact the sender of this=
 e-mail.</p><p style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1.=
3em"></p><p style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1.3em=
"></p>

--089e011766014feb260531774f2a--
