Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28EB0E00A1F; Wed, 27 May 2015 12:03:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
Received: from mail-la0-f49.google.com (mail-la0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85959E009D2
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 12:03:28 -0700 (PDT)
Received: by labko7 with SMTP id ko7so10982475lab.2
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 12:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:message-id:mime-version:subject:date:references
	:to:in-reply-to;
	bh=GVlcgkCIehgyvjuy0jI2TiBW3zigVd/WmFFUIkBEa3g=;
	b=xOF7tV9nPk72eg5hUgK2iDXU5R7XVUe3zEsHXNd4KqTXWx6SnUsLp92xHgyChQRGeK
	7YhXxXkgbv9o8mDeIaB1p0H8Flf3kKBlQerG2EgH6bBoyLgsCu0Gsslz1DYjTzp6JV26
	iURD/f97QWvXUhVHsWvVCWRqRMTcOs2V2YCfr8skTMFwPNXYpKuPCiz/zLbS19zy2yVS
	Gn1SQApxIkz3E7D5Obj7pkT89tW4gWWpy8YcnfpbVGD6YIGbrgl1PGmUgHfqcrlBWRGA
	SpUg9Crnb+uEr430c3rYUXKP2fBw1Iqmco50simrzuC/h27CV4zDrByahnndO71Gfe7D
	pnMg==
X-Received: by 10.112.64.193 with SMTP id q1mr28792489lbs.11.1432753406626;
	Wed, 27 May 2015 12:03:26 -0700 (PDT)
Received: from [192.168.0.102] (0xc2ffb932.linknet.dk.telia.net.
	[194.255.185.50])
	by mx.google.com with ESMTPSA id w7sm4015895lag.42.2015.05.27.12.03.24
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 27 May 2015 12:03:26 -0700 (PDT)
From: Christian Ege <k4230r6@gmail.com>
Message-Id: <4D62EF5B-89C3-4498-86CE-04017A5C9A82@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
Date: Wed, 27 May 2015 21:03:23 +0200
References: <CADu_VSa5W1E+GCiXgkaXGRoJ7g4kz4WZ7M=GZvbAgL_KCYgodg@mail.gmail.com>
To: yocto@yoctoproject.org
In-Reply-To: <CADu_VSa5W1E+GCiXgkaXGRoJ7g4kz4WZ7M=GZvbAgL_KCYgodg@mail.gmail.com>
X-Mailer: Apple Mail (2.2098)
Subject: Re: Start openvpn with my own config at startup
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
X-List-Received-Date: Wed, 27 May 2015 19:03:48 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F62F0ADC-A1E3-42D9-90DB-449171DBC8A0"

--Apple-Mail=_F62F0ADC-A1E3-42D9-90DB-449171DBC8A0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> Am 27.05.2015 um 20:07 schrieb Matthew Karas <mkarascybi@gmail.com>:
>=20
> I have an ovpn file I'd like my system to start up with.  I was able
> to install the openvpn file into /etc/openvpn using a bbappends file -
> but the system doesn't start openvpn like the openvpn docs describes.
>=20
> How do I set up openvpn to launch with my config file at start up?
It depends if you build for a systemd or init.d based set-up. If you are =
building for init.d which is the default setting you can check the init =
script how openvpn is started:

=
http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/recipe=
s-support/openvpn/openvpn/openvpn =
<http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/recip=
es-support/openvpn/openvpn/openvpn>

Regards,
Christian
>=20
> Thanks
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_F62F0ADC-A1E3-42D9-90DB-449171DBC8A0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">Am 27.05.2015 um 20:07 schrieb Matthew Karas &lt;<a =
href=3D"mailto:mkarascybi@gmail.com" =
class=3D"">mkarascybi@gmail.com</a>&gt;:</div><br =
class=3D"Apple-interchange-newline"><div class=3D"">I have an ovpn file =
I'd like my system to start up with. &nbsp;I was able<br class=3D"">to =
install the openvpn file into /etc/openvpn using a bbappends file -<br =
class=3D"">but the system doesn't start openvpn like the openvpn docs =
describes.<br class=3D""><br class=3D"">How do I set up openvpn to =
launch with my config file at start up?<br =
class=3D""></div></blockquote>It depends if you build for a systemd or =
init.d based set-up. If you are building for init.d which is the default =
setting you can check the init script how openvpn is =
started:</div><div><br class=3D""></div><div><a =
href=3D"http://cgit.openembedded.org/meta-openembedded/tree/meta-networkin=
g/recipes-support/openvpn/openvpn/openvpn" =
class=3D"">http://cgit.openembedded.org/meta-openembedded/tree/meta-networ=
king/recipes-support/openvpn/openvpn/openvpn</a></div><div><br =
class=3D""></div><div>Regards,</div><div>Christian<br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><br =
class=3D"">Thanks<br class=3D"">-- <br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_F62F0ADC-A1E3-42D9-90DB-449171DBC8A0--
