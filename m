Return-Path: <J.Spriggs@raylase.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D539E008CC; Tue,  2 Dec 2014 11:15:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from emailsecurity.raylase.de (mail.raylase.de [217.6.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9E89E0086F
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 11:15:29 -0800 (PST)
Received: from emailsecurity.raylase.de (127.0.0.1) id hfo7ta0171sd for
	<yocto@yoctoproject.org>;
	Tue, 2 Dec 2014 20:15:28 +0100 (envelope-from <J.Spriggs@raylase.de>)
Received: from EXCHANGE-A.raylase.de ([192.168.1.16])
	by emailsecurity.raylase.de (RAYLASE AG)
	with ESMTPS (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA
	bits=256/256)
	id 201412021915280011287; Tue, 02 Dec 2014 20:15:28 +0100
Received: from EXCHANGE-B.raylase.de (192.168.2.12) by EXCHANGE-A.raylase.de
	(192.168.1.16) with Microsoft SMTP Server (TLS) id 14.3.210.2;
	Tue, 2 Dec 2014 20:15:27 +0100
Received: from EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49]) by
	EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49%14]) with mapi id
	14.03.0210.002; Tue, 2 Dec 2014 20:15:27 +0100
From: "Spriggs, Jim" <J.Spriggs@raylase.de>
To: "rfi@lists.rocketboards.org" <rfi@lists.rocketboards.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [Rfi] "bitbake altera-gsrd-image -c populate_sdk" fails with
	"Multiple .bb files ... nativesdk-libiconv ...
	external-linaro-toolchain.bb ... eglibc_2.16.bb"
Thread-Index: AdAODLajOW2E6hQITpeUwmjQuUgUIwAVU0eE
Date: Tue, 2 Dec 2014 19:15:25 +0000
Message-ID: <2238EDC6081C944E97E4EE915AE5CBEC52011AD4@EXCHANGE-B.raylase.de>
References: <2238EDC6081C944E97E4EE915AE5CBEC5200F783@EXCHANGE-B.raylase.de>
In-Reply-To: <2238EDC6081C944E97E4EE915AE5CBEC5200F783@EXCHANGE-B.raylase.de>
Accept-Language: en-GB, de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.255.1]
MIME-Version: 1.0
X-Mlf-Version: 8.0.5.2663
X-Mlf-UniqueId: o201412021915280011287
Cc: "Wilfert, Dennis" <D.Wilfert.extern@raylase.de>,
	=?iso-8859-1?Q?H=F6cht=2C_Matthias?= <M.Hoecht@raylase.de>,
	"Weber, Markus" <M.Weber@raylase.de>, "Dambacher,
	Berthold" <B.Dambacher@raylase.de>
Subject: Re: [Rfi] "bitbake altera-gsrd-image -c populate_sdk" fails with "Multiple .bb files ... nativesdk-libiconv ... external-linaro-toolchain.bb ... eglibc_2.16.bb"
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
X-List-Received-Date: Tue, 02 Dec 2014 19:15:49 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Re-Hi,

Some more investigations...

To shorten the build run times, I used the altera-image-minimal and core-im=
age-minimal recipes instead of the (much larger) altera-gsrd-image.

As they stand, both recipes can be built without problems.

WIth "bitbake <recipe> -c populate_sdk" both fail as above with "Multiple .=
bb files..."

Since one of the duplicate providers is apparently the external-linaro-tool=
chain, I decided to eliminate it from site.conf, and let bitbake build the =
"internal" toolchain.

This time the "-c populate_sdk" worked like a charm.

So it looks to me as if there's an incompatibility between the *external* l=
inaro toolchain and the "populte_sdk" task in the altera version of poky.

I'm more than happy to try and fix the problem, but I don't (yet) have a cl=
ue where to look next.

Has anyone got a pointer for me, please?
--
jim

________________________________________
From: rfi-bounces@lists.rocketboards.org [rfi-bounces@lists.rocketboards.or=
g] on behalf of Spriggs, Jim [J.Spriggs@raylase.de]
Sent: 02 December 2014 10:12
To: rfi@lists.rocketboards.org
Subject: [Rfi] "bitbake altera-gsrd-image -c populate_sdk" fails with "Mult=
iple .bb files ... nativesdk-libiconv ... external-linaro-toolchain.bb ... =
eglibc_2.16.bb"

Hi Guys,

Having followed the instructions at http://www.rocketboards.org/foswiki/Doc=
umentation/GSRD140CompilingLinuxCopyArrowSoCKitEdition  to set up for build=
ing the GSRD image,
I tried "bitbake altera-gsrd-image" and it worked just fine, producing the =
image as expected.

Then I tried "bitbake altera-gsrd-image -c populate_sdk", and got the error=
 message in the Subject.

As an utter newbie, I'm hoping someone can point out (in simple terms!) wha=
t I'm doing wrong.

Is populate_sdk not supported by SoCKit GSRD 14.0 ?
Is my invocation wrong?

Thanks for any clues!

--
Jim
PS: sorry about the company sig - I can't switch it off.



________________________________

RAYLASE AG
Argelsrieder Feld 2+4
82234 Wessling
Germany
Tel.: +49-(0)8153/88 98-0
Fax: +49-(0)8153/88 98-10
http://www.raylase.de

District Court Munich, HRB 131450

Board: Peter von Jan (CEO)

Supervisory Board: Dr. Ulrich Lohmann (Chairman)


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FC=
mlich erhalten haben, informieren Sie bitte sofort den Absender und vernich=
ten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte Weitergabe =
dieser Mail ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =
are not the intended recipient (or have received this e-mail in error) plea=
se notify the sender immediately and destroy this e-mail. Any unauthorized =
copying, disclosure or distribution of the material in this e-mail is stric=
tly forbidden.
_______________________________________________
Rfi mailing list
Rfi@lists.rocketboards.org
http://lists.rocketboards.org/cgi-bin/mailman/listinfo/rfi

________________________________

RAYLASE AG
Argelsrieder Feld 2+4
82234 Wessling
Germany
Tel.: +49-(0)8153/88 98-0
Fax: +49-(0)8153/88 98-10
http://www.raylase.de

District Court Munich, HRB 131450

Board: Peter von Jan (CEO)

Supervisory Board: Dr. Ulrich Lohmann (Chairman)


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FC=
mlich erhalten haben, informieren Sie bitte sofort den Absender und vernich=
ten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte Weitergabe =
dieser Mail ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =
are not the intended recipient (or have received this e-mail in error) plea=
se notify the sender immediately and destroy this e-mail. Any unauthorized =
copying, disclosure or distribution of the material in this e-mail is stric=
tly forbidden.

