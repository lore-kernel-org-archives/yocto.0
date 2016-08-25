Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7136E01093; Thu, 25 Aug 2016 10:08:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1259E0108D
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 10:08:06 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id fi15so18555488pac.1
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 10:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=0PgiDcierTpA3gI1l+lWsGcTzR+yc56IZ0EKVNk/JrI=;
	b=UsZFVhtFi9OUrRGIaJZkt6XWN1g8b0Iz5jQiHMu+jwBJcfikNA9Vxy2KwCALUvEgIF
	kUKMuV3DeKHUcFfHsu0znywu6fc393gT9mUyKGuDnXUu8Zc74UkRkOCt0+JMLeB7CwGi
	n3nE/TgyVeFVMhCY6myGoyaQs+fNr9gF/o+dFVXP3Tm2LUsiErJ0By/cwNKo16/Dz7yx
	Mgu8ANmsMTJBXzWo75q68ftAZjrwUECbIpkr4i3oB58JUZRJBihtyJ7tAQZPuealOhLR
	mDZqX7YaaqQnbkpJk47q1G9fiJaSaS+vTQpJ3I5zAWZYcyPQyINhzNawg+zRJjba9UJ4
	uXVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=0PgiDcierTpA3gI1l+lWsGcTzR+yc56IZ0EKVNk/JrI=;
	b=PDLUinMYio+rH+jYhkAEdYpRx7mRKAgCwITDBer87Cx6EYa8B8K6F29Kv11h/a850P
	PF++11HcUfZ8Cw9G9/yvey9Ndfp0BKet01So2wIpcq6Ff1z4goYLpUeIVcQ1EsxlxszY
	0n2yVqug9o5rzk/eRt10btJczy/SJAlN0ochzhmx6fPTmf5NVSJwHtyr0df+SvzKg2+h
	jCyWfZUWLuHIqNjzEoVRrKX/yxRwY1DoCsEs/ai2OywlteQaEEKal4MNB/mVUEXEJX+W
	v80GKl7x9zfLj9eSdXOzLyQ25soB9J0iuvnOmqK+twlMsIINko7FIwW/J+HFKiIl4zYR
	OnUg==
X-Gm-Message-State: AE9vXwNCb5/8mFttbeAf/u5bskAZSElLyMS7VUnu2cLLMbRNVjfnRSpevasUhC/fK6gssw==
X-Received: by 10.66.62.164 with SMTP id z4mr17874786par.156.1472144885709;
	Thu, 25 Aug 2016 10:08:05 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:3edf:157a:f659:3403:a165?
	([2601:647:4c00:3edf:157a:f659:3403:a165])
	by smtp.gmail.com with ESMTPSA id
	e2sm22234125pfd.45.2016.08.25.10.08.04
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 25 Aug 2016 10:08:04 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <OF43D5FF2A.20B2A60C-ONC125801A.0032C979-C125801A.003C454B@esa-grimma.de>
Date: Thu, 25 Aug 2016 10:08:35 -0700
Message-Id: <56DA04E8-BDB8-4D3A-AE8F-D41271B73EFF@gmail.com>
References: <OF43D5FF2A.20B2A60C-ONC125801A.0032C979-C125801A.003C454B@esa-grimma.de>
To: S.Jaritz@esa-grimma.de
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: How to add a textline to the busybox-syslog syslog.conf?
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
X-List-Received-Date: Thu, 25 Aug 2016 17:08:09 -0000
X-Groupsio-MsgNum: 31652
Content-Type: multipart/signed;
	boundary="Apple-Mail=_714C8DB8-F44A-45D8-9A48-1DFE928B7B4C";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_714C8DB8-F44A-45D8-9A48-1DFE928B7B4C
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_6B12193D-3169-4B1E-AEAA-377C3BBB41D5"

--Apple-Mail=_6B12193D-3169-4B1E-AEAA-377C3BBB41D5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


> On Aug 25, 2016, at 3:58 AM, S.Jaritz@esa-grimma.de wrote:
>=20
> Hej ho
>=20
> I have an app that is using syslog. For it I like to set the amount of =
log data.
>=20
> I am using the std. yocto(krogoth) together with the std. meta-atmel =
layer. This layers are installing the "busybox-syslog"-package. This =
comes with the "/etc/syslog.conf" file.
>=20
> My question is: How to append the syslog.conf with a line like =
"myApp,auth.notice /var/log/messages" out of a recipe?

you can write a bbappend for busybox recipe in your own layer and add =
do_install_append there



>=20
> My idea of the dummy recipe looks like:
> ######## myApp.bb ########
> SUMMARY =3D "myApp"
> SECTION =3D "demo"
> LICENSE =3D "GPL"
>=20
> inherit cmake
>=20
> DEPENDS =3D "busybox-syslog"
>=20
> SRC_URI =3D "gitsm://mygit/myApp.git;protocol=3Dhttp;branch=3Ddevelop"
>=20
> PV =3D "1.0.0"
>=20
> S =3D "${WORKDIR}/git/"
>=20
> BBCLASSEXTEND =3D "native nativesdk"
>=20
> do_install_append() {
>         echo 'myApp.*        /var/log/messages' >> /etc/syslog.conf
> }
> #########################
>=20
> Any ideas how to do it in a nice way?
>=20
> Regards!
>=20
> Stefan Jaritz
>=20
> ------------------------------------------------------------
> ESA Elektroschaltanlagen Grimma GmbH
> Broner Ring 30
> 04668 Grimma
> Telefon: +49 3437 9211 176
> Telefax: +49 3437 9211 26
> E-Mail: s.jaritz@esa-grimma.de
> Internet: www.esa-grimma.de <x-msg://18/www.esa-grimma.de>
>=20
>=20
> Gesch=E4ftsf=FChrer:
> Dipl.-Ing. J=F6rg Gaitzsch
> J=F6rg Reinker
>=20
> Sitz der Gesellschaft: Grimma
> Ust.-ID: DE 141784437
> Amtsgericht: Leipzig, HRB 5159
> Steuernummer: 238/108/00755
>=20
>=20
> Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte =
Informationen.
> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich=
 erhalten
> haben, informieren Sie bitte sofort den Absender und l=F6schen Sie =
diese
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe =
dieser Mail
> ist nicht gestattet.
>=20
> This e-mail may contain confidential and/or privileged information. If =
you are
> not the intended recipient (or have received this e-mail in error) =
please
> notify the sender immediately and destroy this e-mail. Any =
unauthorized
> copying, disclosure or distribution of the material in this e-mail is =
strictly
> forbidden.--
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_6B12193D-3169-4B1E-AEAA-377C3BBB41D5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Aug 25, 2016, at 3:58 AM, <a =
href=3D"mailto:S.Jaritz@esa-grimma.de" =
class=3D"">S.Jaritz@esa-grimma.de</a> wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><font size=3D"2" =
face=3D"sans-serif" class=3D"">Hej ho</font>
<br class=3D"">
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">I have an =
app that is using syslog.
For it I like to set the amount of log data.</font>
<br class=3D"">
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">I am =
using the std. yocto(krogoth) together
with the std. meta-atmel layer. This layers are installing the =
"busybox-syslog"-package.
This comes with the "/etc/syslog.conf" file.</font>
<br class=3D"">
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">My =
question is: How to append the syslog.conf
with a line like "myApp,auth.notice /var/log/messages" out of
a recipe?</font>
<br class=3D""></div></blockquote><div><br class=3D""></div><div>you can =
write a bbappend for busybox recipe in your own layer and add =
do_install_append there</div><div><br class=3D""></div><div><br =
class=3D""></div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">My idea =
of the dummy recipe looks like:</font>
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">######## =
myApp.bb ########</font>
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">SUMMARY =3D=
 "myApp"</font>
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">SECTION =3D=
 "demo"</font>
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">LICENSE =3D=
 "GPL"</font>
<br class=3D"">
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">inherit =
cmake</font>
<br class=3D"">
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">DEPENDS =3D=
 "busybox-syslog"</font>
<br class=3D"">
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">SRC_URI =3D=
 "<a href=3D"gitsm://mygit/myApp.git;protocol=3Dhttp;branch=3Ddevelop" =
class=3D"">gitsm://mygit/myApp.git;protocol=3Dhttp;branch=3Ddevelop</a>"</=
font>
<br class=3D"">
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">PV =3D =
"1.0.0"</font>
<br class=3D"">
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">S =3D =
"${WORKDIR}/git/"</font>
<br class=3D"">
<br class=3D""><font size=3D"2" face=3D"sans-serif" =
class=3D"">BBCLASSEXTEND =3D "native nativesdk"</font>
<br class=3D"">
<br class=3D""><font size=3D"2" face=3D"sans-serif" =
class=3D"">do_install_append() {</font>
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">&nbsp; =
&nbsp; &nbsp; &nbsp; </font><tt class=3D""><font size=3D"2" =
class=3D"">echo
'</font></tt><font size=3D"2" face=3D"sans-serif" class=3D"">myApp.* =
&nbsp; &nbsp; &nbsp;
&nbsp;/var/log/messages</font><tt class=3D""><font size=3D"2" class=3D"">'=
 &gt;&gt; </font></tt><font size=3D"2" face=3D"sans-serif" =
class=3D"">/etc/syslog.conf</font>
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">}</font>
<br class=3D""><font size=3D"2" face=3D"sans-serif" =
class=3D"">#########################</font>
<br class=3D"">
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">Any ideas =
how to do it in a nice way?</font>
<br class=3D"">
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">Regards!<br=
 class=3D"">
<br class=3D"">
Stefan Jaritz<br class=3D"">
<br class=3D"">
------------------------------------------------------------<br =
class=3D"">
ESA Elektroschaltanlagen Grimma GmbH<br class=3D"">
Broner Ring 30<br class=3D"">
04668 Grimma<br class=3D"">
Telefon: +49 3437 9211 176<br class=3D"">
Telefax: +49 3437 9211 26<br class=3D"">
E-Mail: <a href=3D"mailto:s.jaritz@esa-grimma.de" =
class=3D"">s.jaritz@esa-grimma.de</a><br class=3D"">
Internet: </font><a href=3D"x-msg://18/www.esa-grimma.de" class=3D""><font=
 size=3D"2" face=3D"sans-serif" =
class=3D"">www.esa-grimma.de</font></a><font size=3D"2" =
face=3D"sans-serif" class=3D""><br class=3D"">
<br class=3D"">
<br class=3D"">
Gesch=E4ftsf=FChrer:<br class=3D"">
Dipl.-Ing. J=F6rg Gaitzsch<br class=3D"">
J=F6rg Reinker<br class=3D"">
<br class=3D"">
Sitz der Gesellschaft: Grimma<br class=3D"">
Ust.-ID: DE 141784437<br class=3D"">
Amtsgericht: Leipzig, HRB 5159<br class=3D"">
Steuernummer: 238/108/00755<br class=3D"">
<br class=3D"">
<br class=3D"">
Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte =
Informationen.
<br class=3D"">
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich
erhalten <br class=3D"">
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
<br class=3D"">
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
Mail <br class=3D"">
ist nicht gestattet.<br class=3D"">
<br class=3D"">
This e-mail may contain confidential and/or privileged information. If
you are <br class=3D"">
not the intended recipient (or have received this e-mail in error) =
please
<br class=3D"">
notify the sender immediately and destroy this e-mail. Any unauthorized
<br class=3D"">
copying, disclosure or distribution of the material in this e-mail is =
strictly
<br class=3D"">
forbidden.</font>-- <br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_6B12193D-3169-4B1E-AEAA-377C3BBB41D5--

--Apple-Mail=_714C8DB8-F44A-45D8-9A48-1DFE928B7B4C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAle/JhMACgkQuwUzVZGdMxQfEQCfT7O+nu6977pjfTDCZFCiyVgS
eL8AniR7xq10hyjHAYoC/AGC1D1HYW9d
=JW6K
-----END PGP SIGNATURE-----

--Apple-Mail=_714C8DB8-F44A-45D8-9A48-1DFE928B7B4C--
