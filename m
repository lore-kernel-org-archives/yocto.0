Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61CAFE00AAA; Thu, 30 Jul 2015 01:50:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7F99E00A7E
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 01:50:18 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jul 2015 01:50:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,576,1432623600"; d="scan'208";a="774348028"
Received: from mjsmolax-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.8.11])
	by orsmga002.jf.intel.com with ESMTP; 30 Jul 2015 01:50:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 30 Jul 2015 09:50:13 +0100
Message-ID: <7861693.hW9MCO2lEF@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.8-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <2238EDC6081C944E97E4EE915AE5CBEC5476EED6@EXCHANGE-B.raylase.de>
References: <2238EDC6081C944E97E4EE915AE5CBEC5476A872@EXCHANGE-B.raylase.de>
	<81e2e36e8df04c9584ea5a9ca8afa303@googlemail.com>
	<2238EDC6081C944E97E4EE915AE5CBEC5476EED6@EXCHANGE-B.raylase.de>
MIME-Version: 1.0
Cc: Yves Vandervennet <yvanderv@opensource.altera.com>,
	"rfi@lists.rocketboards.org" <rfi@lists.rocketboards.org>,
	Dalon Westergreen <dwesterg@gmail.com>,
	"enak999@googlemail.com" <enak999@googlemail.com>
Subject: Re: Which repo for meta-altera ?
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
X-List-Received-Date: Thu, 30 Jul 2015 08:50:22 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

(Adding Khem and Yves, the maintainers of the github repo, to CC)

In the interests of keeping the layer index accurate, can we get some=20=

clarification on which repo is the official BSP?

Thanks,
Paul

On Thursday 30 July 2015 06:52:22 Spriggs, Jim wrote:
> Hi Kevin,
>=20
> Rodger, got it this time =E2=80=93 I had indeed missed the clue about=
 the
> maintainers.
=20
> I should RTFM more often=E2=80=A6.
>=20
> Many thanks for your help and patience =E2=98=BA.
> --
> jim
>=20
> Von: enak999@googlemail.com [mailto:enak999@googlemail.com]
> Gesendet: Mittwoch, 29. Juli 2015 22:37
> An: Dalon Westergreen <dwesterg@gmail.com>; Spriggs, Jim
> <J.Spriggs@raylase.de>; Alex J Lennon <ajlennon@dynamicdevices.co.uk>=

 Cc:
> yocto@yoctoproject.org; rfi@lists.rocketboards.org
> Betreff: Re: [yocto] Which repo for meta-altera ?
>=20
> As you can read in the ReadMe.md Khem Raj and Yves Vandervennet are t=
he
> official maintainers of
> github.com/altera-opensource/meta-altera<http://github.com/altera-ope=
nsourc
> e/meta-altera>
=20
> I really recommend to use
> github.com/altera-opensource/meta-altera<http://github.com/altera-ope=
nsourc
> e/meta-altera> instead of the fork from Khem Raj. But since you use t=
he fork
> of one of the maintainers, it will probably be most of the time in sy=
nch
> with the altera-opensource repository.
=20
> Von: Dalon Westergreen<mailto:dwesterg@gmail.com>
> Gesendet: =E2=80=8EMittwoch=E2=80=8E, =E2=80=8E29=E2=80=8E. =E2=80=8E=
Juli=E2=80=8E =E2=80=8E2015 =E2=80=8E21=E2=80=8E:=E2=80=8E54
> An: Spriggs, Jim<mailto:J.Spriggs@raylase.de>, Alex J
> Lennon<mailto:ajlennon@dynamicdevices.co.uk>, Kevin
> B.<mailto:enak999@googlemail.com>
 Cc:
> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>,
> rfi@lists.rocketboards.org<mailto:rfi@lists.rocketboards.org>=20
> As far as I understand it Altera only maintains the one repo.
> On July 29, 2015 6:44:23 AM PDT, "Spriggs, Jim"
> <J.Spriggs@raylase.de<mailto:J.Spriggs@raylase.de>> wrote:
=20
> Hi Alex, Dalon, Kevin, Lists
>=20
> hmmm, so I guess I'm still confused (sorry).
>=20
> Alex recommends going via the "official" oe layers index, which curre=
ntly
> links directly to
> github.com/kraj/meta-altera<http://github.com/kraj/meta-altera>.
=20
> Kevin and Dalon hold out for
> github.com/altera-opensource/meta-altera<http://github.com/altera-ope=
nsourc
> e/meta-altera>, and Dalon specifically says "... and repos under any =
user
> name in github are forks".
=20
> So is there an official ;-) dichotomy between altera and oe?
>=20
> Thanks for listening...
> --
> jim
>=20
>=20
> -----Urspr=C3=BCngliche Nachricht-----
> Von: Alex J Lennon [mailto:ajlennon@dynamicdevices.co.uk]
> Gesendet: Mittwoch, 29. Juli 2015 15:10
> An: Spriggs, Jim <J.Spriggs@raylase.de<mailto:J.Spriggs@raylase.de>>
> Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> Betreff: Re: [yocto] Which repo for meta-altera ?
>=20
>=20
>=20
> On 28/07/2015 10:10, Spriggs, Jim
>=20
> wrote:
>=20
>  Hi Guys; confused noob here...
>=20
>  There appear to be (at least) two "official" repos for meta-altera:
>=20
>          github.com/kraj/meta-altera<http://github.com/kraj/meta-alte=
ra>
>=20
>  and
>=20
>        =20
> git.rocketboards.org/meta-altera.git<http://git.rocketboards.org/meta=
-alter
> a.git>
=20
>=20
>  So how should I choose between them?
>=20
>  Thanks!
>  --
>  Jim
>=20
>  Sorry about the company sig.: I can't switch it off.
>=20
>=20
> fwiw I would usually start with the official index
>=20
> http://layers.openembedded.org/layerindex/branch/master/layers/
>=20
> This seems to point to github
>=20
> Cheers, Alex
>=20
>=20
> ________________________________
>=20
>=20
> RAYLASE AG
> Argelsrieder Feld 2+4
> 82234 Wessling
> Germany
> Tel.: +49-(0)8153/88 98-0
> Fax: +49-(0)8153/88 98-10
> http://www.raylase.de
>=20
> District Court Munich, HRB 131450
>=20
> Board: Peter von Jan (CEO)
>=20
> Supervisory Board: Dr. Ulrich Lohmann (Chairman)
>=20
>=20
> Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BC=
tzte
> Informationen. Wenn Sie nicht der richtige Adressat sind oder diese E=
-Mail
> irrt=C3=BCmlich erhalten haben, informieren Sie bitte sofort den Abse=
nder und
> vernichten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugt=
e
> Weitergabe dieser Mail ist nicht gestattet.
=20
> This e-mail may contain confidential and/or privileged information. I=
f you
> are not the intended recipient (or have received this e-mail in error=
)
> please notify the sender immediately and destroy this e-mail. Any
> unauthorized copying, disclosure or distribution of the material in t=
his
> e-mail is strictly forbidden.
=20
> --
> Sent from my Android device with K-9 Mail. Please excuse my brevity.
>=20
> ________________________________
>=20
> RAYLASE AG
> Argelsrieder Feld 2+4
> 82234 Wessling
> Germany
> Tel.: +49-(0)8153/88 98-0
> Fax: +49-(0)8153/88 98-10
> http://www.raylase.de
>=20
> District Court Munich, HRB 131450
>=20
> Board: Peter von Jan (CEO)
>=20
> Supervisory Board: Dr. Ulrich Lohmann (Chairman)
>=20
>=20
> Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BC=
tzte
> Informationen. Wenn Sie nicht der richtige Adressat sind oder diese E=
-Mail
> irrt=C3=BCmlich erhalten haben, informieren Sie bitte sofort den Abse=
nder und
> vernichten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugt=
e
> Weitergabe dieser Mail ist nicht gestattet.
=20
> This e-mail may contain confidential and/or privileged information. I=
f you
> are not the intended recipient (or have received this e-mail in error=
)
> please notify the sender immediately and destroy this e-mail. Any
> unauthorized copying, disclosure or distribution of the material in t=
his
> e-mail is strictly forbidden.

--=20

Paul Eggleton
Intel Open Source Technology Centre

