Return-Path: <eric@eukrea.com>
Received: from mo2.mail-out.ovh.net (mo2.mail-out.ovh.net [178.32.228.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B6DBE006D2
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2013 07:59:10 -0800 (PST)
Received: from mail240.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id 9D4CFDC1744
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2013 17:08:44 +0100 (CET)
Received: from b0.ovh.net (HELO queueout) (213.186.33.50)
	by b0.ovh.net with SMTP; 18 Jan 2013 17:59:07 +0200
Received: from pac33-2-82-240-38-71.fbx.proxad.net (HELO e6520eb)
	(eric%eukrea.com@82.240.38.71)
	by ns0.ovh.net with SMTP; 18 Jan 2013 17:59:07 +0200
Date: Fri, 18 Jan 2013 16:59:06 +0100
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
To: Jon Szymaniak <jon.szymaniak@gmail.com>
X-Ovh-Mailout: 178.32.228.2 (mo2.mail-out.ovh.net)
Message-ID: <20130118165906.676f0ec6@e6520eb>
In-Reply-To: <CANge7vXP6Cy4sxo-vXuPEyigd5ag=Jt2ixc_WhZv2QQ+UnnBxw@mail.gmail.com>
References: <CANge7vUAQxfbBrkSwQd=0sxgUN71Gaveub07gPX9oYLsj9A3tQ@mail.gmail.com>
	<CANge7vWDaQj2+eYJpRnbhQ0NQ_V8A4zE0sBhXTnvGQDCC5MTHA@mail.gmail.com>
	<CA+Z6RkXWTm-SPUPwW1Xrd0E_HXrLKd8Ah57wfkH5OspoG7o2Qg@mail.gmail.com>
	<19691651.cLZhLvd0Ni@helios>
	<CANge7vWH1tCjHsJOSa=JP86a3+APQk93ds1UwuYeUGzy4F02WQ@mail.gmail.com>
	<20130117091908.493c18fb@e6520eb>
	<CANge7vXP6Cy4sxo-vXuPEyigd5ag=Jt2ixc_WhZv2QQ+UnnBxw@mail.gmail.com>
Organization: =?UTF-8?B?RXVrcsOpYQ==?= Electromatique
X-Mailer: Claws Mail 3.9.0 (GTK+ 2.24.13; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
X-Ovh-Tracer-Id: 8163337274612886852
X-Ovh-Remote: 82.240.38.71 (pac33-2-82-240-38-71.fbx.proxad.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: -100
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehledrieeiucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-Spam-Check: DONE|U 0.5/N
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehledrieeiucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: yocto@yoctoproject.org, Paul Eggleton <paul.eggleton@linux.intel.com>,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: Remove unwanted package from Qt
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 Jan 2013 15:59:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Le Fri, 18 Jan 2013 10:25:22 -0500,
Jon Szymaniak <jon.szymaniak@gmail.com> a =C3=A9crit :
> I checked the package list on a running system (opkg list | grep -i
> qt). Here's all the installed Qt packages...no qt4-embedded-examples
> as far as I see.
>=20
> libqtcoree4 - 4.8.3-r50.0
> libqtdeclarativee4 - 4.8.3-r50.0
> libqtguie4 - 4.8.3-r50.0
> libqtnetworke4 - 4.8.3-r50.0
> libqtscripte4 - 4.8.3-r50.0
> libqtsqle4 - 4.8.3-r50.0
>=20
> Seems strange to me...any thoughts?

strange, in a fresh build of danny /usr/share/qtopia is only present in
the following packages :

./qt4-embedded-translation-linguist/usr/share/qtopia
./qt4-embedded-translation-qt/usr/share/qtopia
./qt4-embedded-translation-qvfb/usr/share/qtopia
./qt4-embedded-qt3to4/usr/share/qtopia
./qt4-embedded-translation-qtconfig/usr/share/qtopia
./qt4-embedded-mkspecs/usr/share/qtopia
./qt4-embedded-phrasebook-dutch/usr/share/qtopia
./qt4-embedded-phrasebook-french/usr/share/qtopia
./qt4-embedded-phrasebook-spanish/usr/share/qtopia
./qt4-embedded-phrasebook-russian/usr/share/qtopia
./qt4-embedded-phrasebook-italian/usr/share/qtopia
./qt4-embedded-phrasebook-polish/usr/share/qtopia
./qt4-embedded-translation-assistant/usr/share/qtopia
./qt4-embedded-phrasebook-swedish/usr/share/qtopia
./qt4-embedded-doc/usr/share/doc/qtopia
./qt4-embedded-translation-designer/usr/share/qtopia
./qt4-embedded-phrasebook-danish/usr/share/qtopia
./qt4-embedded-phrasebook-finnish/usr/share/qtopia
./qt4-embedded-phrasebook-german/usr/share/qtopia
./qt4-embedded-demos-doc/usr/share/doc/qtopia
./qt4-embedded-phrasebook-japanese/usr/share/qtopia
./qt4-embedded-phrasebook-norwegian/usr/share/qtopia
./qt4-embedded-phrasebook-hungarian/usr/share/qtopia

can you check in your workdir in packages-split which package includes
this directory ?

Eric

