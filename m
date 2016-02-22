Return-Path: <sebastian.rohde@tu-dortmund.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 105A7E00931; Mon, 22 Feb 2016 05:01:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [129.217.128.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from unimail.uni-dortmund.de (mx1.HRZ.tu-dortmund.de
	[129.217.128.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2C15E008C6
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 05:00:45 -0800 (PST)
Received: from ex2010cas1.tu-dortmund.de (ex2010cas1.tu-dortmund.de
	[129.217.131.97])
	by unimail.uni-dortmund.de (8.15.2/8.15.2) with ESMTPS id
	u1MD0SBD011953
	(version=TLSv1.2 cipher=AES128-SHA256 bits=128 verify=NOT);
	Mon, 22 Feb 2016 14:00:37 +0100 (CET)
Received: from EX2010MBX1.tu-dortmund.de ([fe80::8c91:9758:7488:1737]) by
	ex2010cas1.tu-dortmund.de ([2002:81d9:8361::81d9:8361]) with mapi id
	14.03.0266.001; Mon, 22 Feb 2016 14:00:27 +0100
From: "sebastian.rohde@tu-dortmund.de" <sebastian.rohde@tu-dortmund.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Package Level Dependencies
Thread-Index: AdFs+06tfG/HmVMDS/ikrQeiIoYdfwADgGgAABl3frA=
Date: Mon, 22 Feb 2016 13:00:27 +0000
Message-ID: <829E1DFECFCA904FBE9BB9228564C2B301412FADD9@ex2010mbx1.tu-dortmund.de>
References: <829E1DFECFCA904FBE9BB9228564C2B301412FAA3F@ex2010mbx1.tu-dortmund.de>
	<1989092.7OVe9rXmCs@rjs-zotac.streifs.net>
In-Reply-To: <1989092.7OVe9rXmCs@rjs-zotac.streifs.net>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.217.131.107]
MIME-Version: 1.0
Cc: Rudolf J Streif <rudolf.streif@gmail.com>
Subject: Re: Package Level Dependencies
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
X-List-Received-Date: Mon, 22 Feb 2016 13:01:29 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Rudolf,

Thnx for your input! I guess I can see your point. In particular I wasn't t=
hinking so much on using ".inc" files.
Due to the fact that I will be having like 10-20 different test123-config-x=
xx packages managing this using "RCONFLICTS" might be tedious.
I guess this is what virtual packages (say test123-config-xxx has something=
 like PROVIDES=3Dvirtual/test123-config and test123 has a RDEPENDS on virtu=
al/test123-config) are for and I will try to follow this path for now.

For a couple of reasons, the configuration files are in the same git reposi=
tory as the source code of "test123". Is there a way of sharing working dir=
ectories between (at least all config-package recipes, such as I don't net =
to checkout the whole git repository for each of my 10-20 config packages?

Regards,
Sebastian

-----Urspr=FCngliche Nachricht-----
Von: Rudolf J Streif [mailto:rudolf.streif@gmail.com]
Gesendet: Montag, 22. Februar 2016 02:38
An: yocto@yoctoproject.org
Cc: Rohde, Sebastian <sebastian.rohde@tu-dortmund.de>
Betreff: Re: [yocto] Package Level Dependencies

Hi Sebastian,

> I have a recipe (say: "test123") that provides a complex piece of
> software (cmake-based). The software needs some configuration file
> (say "test123.conf"). There are multiple variants of the configuration
> file, sharing the same name, i.e. "test123.conf" exists in different
> variants for multiple hardware configurations.
>
> My aim would be to have multiple packages like "test123-config-XXX"
> and "test123-config-YYY", that cannot be installed at the same time,
> while having one of the packages is a dependency for the main package "te=
st123".

These are two conflicting packages.

>
> Is there a way to achieve this? From my current understanding,
> dependencies are "per-recipe" and not "per-package". Is there any way
> to achieve package level dependencies? I would like to avoid having
> multiple recipes as there are many configuration file options which
> are currently located in the same large source repository as the main sof=
tware.

Look at it from the perspective of conflicting packages.

My approach to this would be the following:

1. Write an include file test123.inc that includes all of the guts of your =
recipe.

2. Write the two recipes test123-config-XXX_1.0.bb and test123-config-
YYY_1.0.bb:

test123-config-XXX_1.0.bb

require test123.inc

SRC_URI +=3D "test123-XXX.conf"

do_install_append() {
   # install config file here
   install 544 test123-XXX.conf ${D}/<location> }

RCONFLICTS_${PN} =3D "test123-config-YYY"

Analog for test123-config-YYY_1.0.bb


You are essentially sharing all of the recipe through the test123.inc and o=
nly add the config file to the respective target recipe. The RCONFLICTS_${P=
N} directive will flag an error if both conflicting packages are attempted =
to be installed.

BR,
Rudi

Wichtiger Hinweis: Die Information in dieser E-Mail ist vertraulich. Sie is=
t ausschlie=DFlich f=FCr den Adressaten bestimmt. Sollten Sie nicht der f=
=FCr diese E-Mail bestimmte Adressat sein, unterrichten Sie bitte den Absen=
der und vernichten Sie diese Mail. Vielen Dank.
Unbeschadet der Korrespondenz per E-Mail, sind unsere Erkl=E4rungen ausschl=
ie=DFlich final rechtsverbindlich, wenn sie in herk=F6mmlicher Schriftform =
(mit eigenh=E4ndiger Unterschrift) oder durch =DCbermittlung eines solchen =
Schriftst=FCcks per Telefax erfolgen.

Important note: The information included in this e-mail is confidential. It=
 is solely intended for the recipient. If you are not the intended recipien=
t of this e-mail please contact the sender and delete this message. Thank y=
ou. Without prejudice of e-mail correspondence, our statements are only leg=
ally binding when they are made in the conventional written form (with pers=
onal signature) or when such documents are sent by fax.

