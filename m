Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05709E0079A; Mon, 25 Aug 2014 10:07:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E2EFE006B5
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 10:07:27 -0700 (PDT)
Received: from localhost.localdomain (unknown [78.8.164.13])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 1BCB72B300FD;
	Mon, 25 Aug 2014 19:07:23 +0200 (CEST)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: yocto@yoctoproject.org
Date: Mon, 25 Aug 2014 19:07:20 +0200
Message-ID: <4829846.nEKDNArLxY@localhost.localdomain>
User-Agent: KMail/4.13.3 (Linux/3.15.10-200.fc20.x86_64; KDE/4.13.3; x86_64; ;
	)
In-Reply-To: <07EF1EFB-2454-4D8A-A1FC-3B2C3E8F85AD@keylevel.com>
References: <07EF1EFB-2454-4D8A-A1FC-3B2C3E8F85AD@keylevel.com>
MIME-Version: 1.0
Subject: Re: Unexpected redirection error in script
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
X-List-Received-Date: Mon, 25 Aug 2014 17:07:38 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Monday 25 of August 2014 17:50:00 Chris Tapp wrote:
> I've previously used expressions of the form:
>=20
>    IFS=3D. read -r $a $b $c $d <<< "$IP"
try:

echo "$IP" | IFS=3D. read -r a b c d

>=20
> to split an IP address into its octets.
>=20
> However, when I try this for generic_pc under daisy I get an "Unexpec=
ted
> redirection" error.
>=20
> Is this to do with the Busybox version/configuration or something els=
e?
Busybox uses ash shell. Bash tricks like this won't work.


--=20

Maciej Borz=C4=99cki=20
Senior Software Engineer Open-RnD Sp. z o.o.=20
www.open-rnd.pl, Facebook, Twitter=20
mobile: +48 telefon, fax: +48 42 657 9079=20

Niniejsza wiadomo=C5=9B=C4=87 wraz z za=C5=82=C4=85cznikami mo=C5=BCe z=
awiera=C4=87 chronione prawem lub=20
poufne informacje i zosta=C5=82a wys=C5=82ana wy=C5=82=C4=85cznie do wi=
adomo=C5=9Bci i u=C5=BCytku os=C3=B3b, do=20
kt=C3=B3rych zosta=C5=82a zaadresowana. Je=C5=9Bli wiadomo=C5=9B=C4=87 =
zosta=C5=82a otrzymana przypadkowo=20
zabrania si=C4=99 jej kopiowania lub rozsy=C5=82ania do os=C3=B3b trzec=
ich. W takim przypadku=20
uprasza si=C4=99 o natychmiastowe zniszczenie wiadomo=C5=9Bci oraz poin=
formowanie=20
nadawcy o zaistnia=C5=82ej sytuacji za pomoc=C4=85 wiadomo=C5=9Bci zwro=
tnej. Dzi=C4=99kujemy.=20

This message, including any attachments hereto, may contain privileged =
or=20
confidential information and is sent solely for the attention and use o=
f the=20
intended addressee(s). If you are not an intended addressee, you may ne=
ither=20
use this message nor copy or deliver it to anyone. In such case, you sh=
ould=20
immediately destroy this message and kindly notify the sender by reply =
email.=20
Thank you. 

