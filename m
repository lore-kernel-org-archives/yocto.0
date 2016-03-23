Return-Path: <r.schwarz@sotec.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B563E00920; Wed, 23 Mar 2016 01:17:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F8E1E00863
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 01:17:11 -0700 (PDT)
Received: by mail-lb0-f173.google.com with SMTP id oe12so4870542lbc.0
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 01:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sotec-eu.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=cs8VBbdZsiU1++cYZtEqca0hYovEZpeMI96PrJR4Jq0=;
	b=Y4DfxJPv3DE8il/ipiBZMVvObY1D+KuaXq2ip3tsUsrrT1Gmd81qRt5u7si1WwIaro
	Dl5cjE06UtawpAb+3wQYybTd27ch0Dz0ar5ZUz0Dx3qpfVu+7Fo/hVl/idBruf0kfia5
	ni5z2K4rKOlUq8tZM3gdbdfSSp+rz+SyZ3QA4YtUA3PC6gR3mcraJIkt/jdQ/L+TVXua
	zaPknxbpOApTiBh7hr3GqZltCff3KXGBonnlBYrAs7qYRdJw0M6RksI5u2OjTfbQqZjH
	prAUGOppU2aI/8cb8q2svfqmQXdPNYYKvbkcOJ9TlXaV5XXIuLAXbRMHyGaBWN/k0AMa
	pu+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=cs8VBbdZsiU1++cYZtEqca0hYovEZpeMI96PrJR4Jq0=;
	b=SGI9c6hlDoLfPIKDgj87l6WVhCDqoG4CdRXkw4EezadKQfzGBa035zVuvnqcNXjclK
	M22cSmXkQNu5/v07pqVoh936pdwESSd/ccwHit2BSYHHRcUy9JZU4M9JznerFf2AvaK8
	Yfh2BmRx17I6lLEeIAbC6VwvD7Vp7tNG4XNeZwD5xO1fHcE0ehjNmC2VK5BZocSg4aeA
	OF1F4VsKP91UYa7RuG8SP+3ydBYLWQ5sIf2HwXjgKUVJQkDUbqzRuHGzMtAkO8cB+KVN
	Ebm5dywlBM1ZeHTQo6kG5NdS8xU0OI+QqbDJbw0C999yKER+wU+zWCtlTFZOfmYvpRgm
	tMCg==
X-Gm-Message-State: AD7BkJKfg4i7ybd3IEYUFesK5r1RSP4JVN4uOO/OO1mN4IVPyn7oz5nsOEAVVQNJjiKZ179Mk5V1jCfU4jUW0q8lO+WiyIbwvjEfqO9YJbCtTTsf84HA97x7kYRAODbvYDwqUvWvQ5oa3H9l/sc=
X-Received: by 10.112.63.135 with SMTP id g7mr601764lbs.54.1458721029964; Wed,
	23 Mar 2016 01:17:09 -0700 (PDT)
MIME-Version: 1.0
From: Ruben Schwarz <r.schwarz@sotec.eu>
Date: Wed, 23 Mar 2016 08:17:00 +0000
Message-ID: <CAEMorpieMRySSz9YVzw+yNXZyeYMS3icKQZZHNvbR8U9AzEqdA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: upgrade daisy -> jethro
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
X-List-Received-Date: Wed, 23 Mar 2016 08:17:18 -0000
Content-Type: multipart/alternative; boundary=001a11c3ea42d15dba052eb2f4ac

--001a11c3ea42d15dba052eb2f4ac
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

we have a customized board with Texas Instruments AM335x Processor. It's
based on Beaglebone Black and EVM Starter Kit.

We have a working yocto-daisy image running U-Boot 2013.07 and Kernel 3.14.
No we want to upgrade to jethro, including U-Boot 2015.07 and Kernel 4.1.

What I did:
- Merging U-Boot Patches from 2013.07 to 2015.07.
  The board boots and ping to other machine is possible from U-Boot command
line.

- Building Kernel 4.1 with defconfig from Kernel 3.14
  This Kernel boots, but no network interfaces come up. *ip a* only shows
loopback interface. Device Tree files are the same as in Kernel 3.14

- Building Kernel 4.1 with omap2plus_defconfig
  This Kernel doesn't boot, it hangs after U-Boot procedure.

My Questions:
- Anybody here who did something similar? Any hint how to handle yocto
upgrades in general?
- Are there any changes in device tree from kernel 3.14 to 4.1?
- How can I check if the problem is u-boot specific (Hardware init), device
tree or kernel driver?
- Anybody here who has a running linux kernel 4.1 for beaglebone black?

And, more general:
- How do you handle yocto source upgrades in your products / systems? Code
freeze after development?

Thanks in advance and best regards
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


--001a11c3ea42d15dba052eb2f4ac
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>we have a customized board with Tex=
as Instruments AM335x Processor. It&#39;s based on Beaglebone Black and EVM=
 Starter Kit.</div><div><br></div><div>We have a working yocto-daisy image =
running U-Boot 2013.07 and Kernel 3.14. No we want to upgrade to jethro, in=
cluding U-Boot 2015.07 and Kernel 4.1.</div><div><br></div><div>What I did:=
</div><div>- Merging U-Boot Patches from 2013.07 to 2015.07.=C2=A0</div><di=
v>=C2=A0 The board boots and ping to other machine is possible from U-Boot =
command line.</div><div><br></div><div>- Building Kernel 4.1 with defconfig=
 from Kernel 3.14</div><div>=C2=A0 This Kernel boots, but no network interf=
aces come up. <i>ip a</i>=C2=A0only shows loopback interface. Device Tree f=
iles are the same as in Kernel 3.14</div><div><br></div><div>- Building Ker=
nel 4.1 with omap2plus_defconfig</div><div>=C2=A0 This Kernel doesn&#39;t b=
oot, it hangs after U-Boot procedure.</div><div><br></div><div>My Questions=
:</div><div>- Anybody here who did something similar? Any hint how to handl=
e yocto upgrades in general?</div><div>- Are there any changes in device tr=
ee from kernel 3.14 to 4.1?</div><div>- How can I check if the problem is u=
-boot specific (Hardware init), device tree or kernel driver?</div><div>- A=
nybody here who has a running linux kernel 4.1 for beaglebone black?</div><=
div><br></div><div>And, more general:</div><div>- How do you handle yocto s=
ource upgrades in your products / systems? Code freeze after development?</=
div><div><br></div><div>Thanks in advance and best regards</div><div>Ruben<=
/div><div><br></div><div><br></div></div>

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

--001a11c3ea42d15dba052eb2f4ac--
