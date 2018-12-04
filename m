Return-Path: <n.stanisavljevic@polycaptil.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78397E00C1E; Tue,  4 Dec 2018 02:31:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.95.66.15 listed in list.dnswl.org]
Received: from itinerix.sdv.fr (itinerix.sdv.fr [212.95.66.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 277EBE00B81
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2018 02:31:46 -0800 (PST)
Received: from FIXNIKOLA (unknown [65.39.68.243])
	by itinerix.sdv.fr (Postfix) with ESMTPSA id A74B4DBA0;
	Tue,  4 Dec 2018 11:31:41 +0100 (CET)
From: "Stanisavljevic" <n.stanisavljevic@polycaptil.fr>
To: <hs@denx.de>
References: <9305893f0b3f68a768e8532054b54438@webmail2.sdv.fr>
	<20181128195530.pih7j3s3dinrhhrx@jholzmayr.localdomain>
	<fe8ddf08-8ae1-4a40-bc35-fd83aad09b77@denx.de>
In-Reply-To: <fe8ddf08-8ae1-4a40-bc35-fd83aad09b77@denx.de>
Date: Tue, 4 Dec 2018 11:31:41 +0100
Message-ID: <000201d48bbc$8e464770$aad2d650$@polycaptil.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQLDIGK77zWGGa5b6tn4HL4BTxFT5wFyzQSCAbO3InqjeAJs0A==
Cc: yocto@yoctoproject.org
Subject: Re: am335x evmsk screen init:id"00" respawning too fast disabled for 5 minutes yocto sumo
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
X-List-Received-Date: Tue, 04 Dec 2018 10:31:48 -0000
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Holzmayr and Heiko,

My problem was solved with your advices.
I edited the serial console variable on the machine conf file of my =
custom machine.
It's work fine.
Thank's

n.stanisavljevic

-----Message d'origine-----
De : Heiko Schocher <hs@denx.de>=20
Envoy=C3=A9 : lundi 3 d=C3=A9cembre 2018 05:42
=C3=80 : n.stanisavljevic@polycaptil.fr
Cc : Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>; =
yocto@yoctoproject.org
Objet : Re: [yocto] am335x evmsk screen init:id"00" respawning too fast =
disabled for 5 minutes yocto sumo

Hi n.stanisavljevic,

Am 28.11.2018 um 20:55 schrieb Josef Holzmayr:
> Howdy!
>=20
> On Wed, Nov 28, 2018 at 03:50:02PM +0000, =
n.stanisavljevic@polycaptil.fr wrote:
>> Hello everybody
>>
>> here is an introduction of my situation :
>>
>> I build a custom board from schematic of sitara AM335x-evmsk starter =
kit.
>> I succeed to make a custom OS with yocto (krogoth version) and to =
boot this OS (embedded Linux) on my custom board.
>>
>> This custom board contain a touchscreen (same touchscreen like in the =
AM335x-evmsk starter kit).
>>
>> All worked fine on this board while I used krogoth version on yocto.
>>
>> my problem :
>>
>> Few time ago, I decided to migrate to sumo version of yocto.
>> I build with success the OS (embedded Linux) with yocto sumo version =
for my custom board, but when I try to boot this OS, it's stop/lock and =
print the following message :
>>
>> "INIT:Id'00' respawning too fast : disabled for 5 minutes" (I put a =
screenshot of this message ridden on putty).
>> Every 5 minutes I got this message and I can't acces to the user =
session on putty and on the touchscreen, all board is locked.
>=20
> This is probably because you are basing off something that sets=20
> SERIAL_CONSOLES for the yocto-kernel, like
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto/tree/meta-yocto-b
> sp/conf/machine/beaglebone-yocto.conf?h=3Dmaster#n23
>=20
> If you are using a custom tree which does not use the special driver=20
> for the uart, then you should be fine by setting SERIAL_CONSOLES ?=3D=20
> "115200;ttyS0"
> in your MACHINE config

Yep, see also my patch:

https://www.mail-archive.com/yocto@yoctoproject.org/msg42383.html

may it help you ...

bye,
Heiko

>=20
>>
>> I don't understand why this problem appear when I build a OS with the =
sumo version on Yocto.
>> I have not this problem when I build a OS with the krogoth version on =
yocto.
>>
>> Somebody can help me to solve this problem ?
>> what can I do ?
>>
>=20
> Greetz
>=20

--=20
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de


