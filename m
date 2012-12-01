Return-Path: <eric@eukrea.com>
Received: from mo3.mail-out.ovh.net (5.mo3.mail-out.ovh.net [87.98.178.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31450E006C6
	for <yocto@yoctoproject.org>; Sat,  1 Dec 2012 10:08:09 -0800 (PST)
Received: from mail171.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id F2618FF98D3
	for <yocto@yoctoproject.org>; Sat,  1 Dec 2012 19:19:35 +0100 (CET)
Received: from b0.ovh.net (HELO queueout) (213.186.33.50)
	by b0.ovh.net with SMTP; 1 Dec 2012 20:08:07 +0200
Received: from tal33-3-82-233-81-124.fbx.proxad.net (HELO eb-e6520)
	(eric%eukrea.com@82.233.81.124)
	by ns0.ovh.net with SMTP; 1 Dec 2012 20:08:05 +0200
Date: Sat, 1 Dec 2012 19:08:05 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
To: yocto@yoctoproject.org
X-Ovh-Mailout: 178.32.228.3 (mo3.mail-out.ovh.net)
Message-ID: <20121201190805.3b0084ba@eb-e6520>
In-Reply-To: <CAOkC3Rb3sVtYEvc6S0i5V2zBRiN6u=db3mA=kPu9baDcj8t7DA@mail.gmail.com>
References: <CAOkC3Rb3sVtYEvc6S0i5V2zBRiN6u=db3mA=kPu9baDcj8t7DA@mail.gmail.com>
Organization: =?ISO-8859-1?B?RXVrculh?= Electromatique
X-Mailer: Claws Mail 3.8.1 (GTK+ 2.24.8; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
X-Ovh-Tracer-Id: 5153525349343276458
X-Ovh-Remote: 82.233.81.124 (tal33-3-82-233-81-124.fbx.proxad.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: 0
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehiedrtdeiucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecunecuhfhrohhmpefgrhhitgcuueornhgrrhguuceovghrihgtsegvuhhkrhgvrgdrtghomheqnecuffhomhgrihhnpehgihhthhhusgdrtghomhenucfjughrpeffhffvuffkjghfohfogggtgfesthhqredtredtud
X-Spam-Check: DONE|U 0.5/N
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehiedrtdeiucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecunecuhfhrohhmpefgrhhitgcuueornhgrrhguuceovghrihgtsegvuhhkrhgvrgdrtghomheqnecuffhomhgrihhnpehgihhthhhusgdrtghomhenucfjughrpeffhffvuffkjghfohfogggtgfesthhqredtredtud
Subject: Re: Raspberry Pi Board
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
X-List-Received-Date: Sat, 01 Dec 2012 18:08:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

Le Sat, 1 Dec 2012 22:50:35 +0530,
GOPIKRISHNAN S <gopikrishnans@pec.edu> a =E9crit :
> Anybody worked on Raspberry Pi Board. I wish to make my students to
> practice opensource software porting and C programming on cheaper board
> like Raspberry Pi. Or can anybody recommend a Cheaper embedded board with
> Yocto Project Support in India.?
>=20
you can find a layer providing support for the Pi here :
https://github.com/djwillis/meta-raspberrypi

Eric

