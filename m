Return-Path: <rstreif@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A672E00543; Fri,  8 Aug 2014 08:53:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29DFAE0034B
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 08:52:58 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id rp18so6381037iec.26
	for <yocto@yoctoproject.org>; Fri, 08 Aug 2014 08:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=FN5LzlrKIOthRGXZSUHSb2UO81AbigjX9qAldPkSZjo=;
	b=JeG/oy1y8gelphNN+ZW7ynGStxP0C9Ii93fuGFL+A3R1maAk1m4W6fIaazvFvHPG1X
	AUbhazZFpRTOaQUhvW3dLdkJvbFIxtK1YlWkvVTvR0uZMfNYbdcrLnyC9gA2Z7WrNVac
	PuT6iKmMfcUXTTY0w45dZ4ER9enqEJs+uZyQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=FN5LzlrKIOthRGXZSUHSb2UO81AbigjX9qAldPkSZjo=;
	b=PNxc6vuyhb4hSCoIkz/ZhnFKBr1NJUWdzt8BUQTHcOSPs5ZVfZe/EE3p4okGH0ZP97
	5YEZSUed73TFWbOhbhRf0frTSkTcmGH01rKQ4DHa6K9ptAiYnlCQODeN7n/HT1Baa/DZ
	BHM20LCj58bcOHZsqqjU9shcfFnhfRCe8INwSbN1j9Y4wVNcIswVb+j+NxdkxhT45dtW
	9kFJQ0Wz+8YcL7pW3kjPNQC3qIBkEMTbUrdsB1cXUqAsfQwV+MNAX8wmiHn5EGFoUNeK
	iehq+DXnn/ZTUkPxglc4gDYyM56XeuVOuIxv3GFzlelm8sPZCsPceicGSkKbSuYlkLhT
	1Iqw==
X-Gm-Message-State: ALoCoQmkZU899+2cGxGzzRc9akPkrkMYs+83uZTO5ovFZXhdnox4bfhpNTrEktzO8WQFef1bcvKu
MIME-Version: 1.0
X-Received: by 10.43.94.73 with SMTP id bx9mr12849499icc.19.1407513177334;
	Fri, 08 Aug 2014 08:52:57 -0700 (PDT)
Received: by 10.107.149.73 with HTTP; Fri, 8 Aug 2014 08:52:57 -0700 (PDT)
Received: by 10.107.149.73 with HTTP; Fri, 8 Aug 2014 08:52:57 -0700 (PDT)
In-Reply-To: <53E4D4A0.1030607@dfki.de>
References: <53E4D4A0.1030607@dfki.de>
Date: Fri, 8 Aug 2014 08:52:57 -0700
Message-ID: <CA+gsK-qsK4=R-a-TnCizz8_+1sWJ68zmh-zeYAK2UyBehDjp0w@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "Dr. Markus Eich" <markus.eich@dfki.de>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: No network at startup using core-image-minimal
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
X-List-Received-Date: Fri, 08 Aug 2014 15:53:03 -0000
Content-Type: multipart/alternative; boundary=bcaec5186f20f3bd90050020328c

--bcaec5186f20f3bd90050020328c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Markus,

Please try core-image-base instead of core-image-minimal. That should
provide you with the necessary network support.

Best regards,
Rudi
On Aug 8, 2014 6:46 AM, "Dr. Markus Eich" <markus.eich@dfki.de> wrote:

> Dear all,
>
> I am setting up my Odroid XU with yocto using the core-image-minimal
> receipe. Almost done and I am able to boot the system and log in via scre=
en
> (UART), but..
>
> The network is not present at start-up. When I do lsmod I just see "Not
> tainted" and no modules are loaded.
>
> The module I need to load is the smsc95xx module. When I tried to load th=
e
> driver with "modpobe" it could not find the driver (although it is in
> /lib/modules/3.4.98-custom/kernel/drivers/net/usb)
> I had to manually add it to /lib/modules/3.4.98-custom/modules.dep (which
> was empty after the bitbake process in rootfs)
>
> So I added
> "kernel/drivers/net/usb/smsc95xx.ko: " to modules.dep.
>
> Then I could load it with modprobe. In order to load it at startup
>
> I created a /etc/modules with the content "smsc95xx". Now my question:
>
> Is there an easier (bitbake) way to make the modules load at startup
> without editing configs on the target device? Am I missing something? Doe=
s
> core-image-minimal not include network?
>
> Cheers,
>
> Markus
>
>
>
>
> --
> Dr.-Ing. Markus Eich
>
>  Senior Researcher
>  Marine Inspection Robotics
>  Space Robotics
>   Besuchsadresse der Nebengesch=C3=A4ftstelle:
>  DFKI GmbH
>  Robotics Innovation Center
>  Robert-Hooke-Stra=C3=9Fe 5
>  28359 Bremen, Germany
>   Postadresse der Hauptgesch=C3=A4ftsstelle Standort Bremen:
>  DFKI GmbH
>  Robotics Innovation Center
>  Robert-Hooke-Stra=C3=9Fe 1
>  28359 Bremen, Germany
>
>  Tel.:     +49 421 178 45-4105
>  Zentrale: +49 421 178 45-0
>  Fax:      +49 421 178 45-4150 (Faxe bitte namentlich kennzeichnen)
>  E-Mail:   markus.eich@dfki.de
>
>  Weitere Informationen: http://www.dfki.de/robotik
>  -----------------------------------------------------------------------
>  Deutsches Forschungszentrum fuer Kuenstliche Intelligenz GmbH
>  Firmensitz: Trippstadter Stra=C3=9Fe 122, D-67663 Kaiserslautern
>  Geschaeftsfuehrung: Prof. Dr. Dr. h.c. mult. Wolfgang Wahlster
>  (Vorsitzender) Dr. Walter Olthoff
>  Vorsitzender des Aufsichtsrats: Prof. Dr. h.c. Hans A. Aukes
>  Amtsgericht Kaiserslautern, HRB 2313
>  Sitz der Gesellschaft: Kaiserslautern (HRB 2313)
>  USt-Id.Nr.:    DE 148646973
>  Steuernummer:  19/673/0060/3
>  -----------------------------------------------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--bcaec5186f20f3bd90050020328c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi Markus, </p>
<p dir=3D"ltr">Please try core-image-base instead of core-image-minimal. Th=
at should provide you with the necessary network support. </p>
<p dir=3D"ltr">Best regards, <br>
Rudi</p>
<div class=3D"gmail_quote">On Aug 8, 2014 6:46 AM, &quot;Dr. Markus Eich&qu=
ot; &lt;<a href=3D"mailto:markus.eich@dfki.de">markus.eich@dfki.de</a>&gt; =
wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Dear all,<br>
<br>
I am setting up my Odroid XU with yocto using the core-image-minimal receip=
e. Almost done and I am able to boot the system and log in via screen (UART=
), but..<br>
<br>
The network is not present at start-up. When I do lsmod I just see &quot;No=
t tainted&quot; and no modules are loaded.<br>
<br>
The module I need to load is the smsc95xx module. When I tried to load the =
driver with &quot;modpobe&quot; it could not find the driver (although it i=
s in /lib/modules/3.4.98-custom/<u></u>kernel/drivers/net/usb)<br>
I had to manually add it to /lib/modules/3.4.98-custom/<u></u>modules.dep (=
which was empty after the bitbake process in rootfs)<br>
<br>
So I added<br>
&quot;kernel/drivers/net/usb/<u></u>smsc95xx.ko: &quot; to modules.dep.<br>
<br>
Then I could load it with modprobe. In order to load it at startup<br>
<br>
I created a /etc/modules with the content &quot;smsc95xx&quot;. Now my ques=
tion:<br>
<br>
Is there an easier (bitbake) way to make the modules load at startup withou=
t editing configs on the target device? Am I missing something? Does core-i=
mage-minimal not include network?<br>
<br>
Cheers,<br>
<br>
Markus<br>
<br>
<br>
<br>
<br>
-- <br>
Dr.-Ing. Markus Eich<br>
<br>
=C2=A0Senior Researcher<br>
=C2=A0Marine Inspection Robotics<br>
=C2=A0Space Robotics<br>
=C2=A0 Besuchsadresse der Nebengesch=C3=A4ftstelle:<br>
=C2=A0DFKI GmbH<br>
=C2=A0Robotics Innovation Center<br>
=C2=A0Robert-Hooke-Stra=C3=9Fe 5<br>
=C2=A028359 Bremen, Germany<br>
=C2=A0 Postadresse der Hauptgesch=C3=A4ftsstelle Standort Bremen:<br>
=C2=A0DFKI GmbH<br>
=C2=A0Robotics Innovation Center<br>
=C2=A0Robert-Hooke-Stra=C3=9Fe 1<br>
=C2=A028359 Bremen, Germany<br>
<br>
=C2=A0Tel.: =C2=A0 =C2=A0 <a href=3D"tel:%2B49%20421%20178%2045-4105" value=
=3D"+49421178454105" target=3D"_blank">+49 421 178 45-4105</a><br>
=C2=A0Zentrale: <a href=3D"tel:%2B49%20421%20178%2045-0" value=3D"+49421178=
450" target=3D"_blank">+49 421 178 45-0</a><br>
=C2=A0Fax: =C2=A0 =C2=A0 =C2=A0<a href=3D"tel:%2B49%20421%20178%2045-4150" =
value=3D"+49421178454150" target=3D"_blank">+49 421 178 45-4150</a> (Faxe b=
itte namentlich kennzeichnen)<br>
=C2=A0E-Mail: =C2=A0 <a href=3D"mailto:markus.eich@dfki.de" target=3D"_blan=
k">markus.eich@dfki.de</a><br>
<br>
=C2=A0Weitere Informationen: <a href=3D"http://www.dfki.de/robotik" target=
=3D"_blank">http://www.dfki.de/robotik</a><br>
=C2=A0------------------------------<u></u>------------------------------<u=
></u>-----------<br>
=C2=A0Deutsches Forschungszentrum fuer Kuenstliche Intelligenz GmbH<br>
=C2=A0Firmensitz: Trippstadter Stra=C3=9Fe 122, D-67663 Kaiserslautern<br>
=C2=A0Geschaeftsfuehrung: Prof. Dr. Dr. h.c. mult. Wolfgang Wahlster<br>
=C2=A0(Vorsitzender) Dr. Walter Olthoff<br>
=C2=A0Vorsitzender des Aufsichtsrats: Prof. Dr. h.c. Hans A. Aukes<br>
=C2=A0Amtsgericht Kaiserslautern, HRB 2313<br>
=C2=A0Sitz der Gesellschaft: Kaiserslautern (HRB 2313)<br>
=C2=A0USt-Id.Nr.: =C2=A0 =C2=A0DE 148646973<br>
=C2=A0Steuernummer: =C2=A019/673/0060/3<br>
=C2=A0------------------------------<u></u>------------------------------<u=
></u>-----------<br>
<br>
-- <br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote></div>

--bcaec5186f20f3bd90050020328c--
