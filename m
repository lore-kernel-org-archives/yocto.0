Return-Path: <michael.ho@bmw-carit.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C2F8E00D04; Thu, 12 Oct 2017 07:15:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 168 seconds by postgrey-1.32 at yocto-www;
	Thu, 12 Oct 2017 07:15:00 PDT
Received: from cit-hm8-gw01.bmw-carit.de (cit-hm8-mail01.bmw-carit.de
	[212.118.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F237E00CEC
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 07:15:00 -0700 (PDT)
Received: from [10.40.100.14] (port=46359 helo=cit-hm8-mail01.bmw-carit.de)
	by cit-hm8-gw01.bmw-carit.de with esmtps (TLSv1.2:AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <Michael.Ho@bmw-carit.de>)
	id 1e2eDZ-0000BN-1P; Thu, 12 Oct 2017 16:12:09 +0200
Received: from CIT-HM8-EX01.bmw-carit.intra (10.40.100.13) by
	CIT-HM8-EX02.bmw-carit.intra (10.40.100.14) with Microsoft SMTP Server
	(TLS) id 15.0.1178.4; Thu, 12 Oct 2017 16:12:09 +0200
Received: from CIT-HM8-EX01.bmw-carit.intra ([fe80::dd00:8c64:6c76:7244]) by
	CIT-HM8-EX01.bmw-carit.intra ([fe80::dd00:8c64:6c76:7244%12]) with mapi
	id 15.00.1178.000; Thu, 12 Oct 2017 16:12:09 +0200
X-CTCH-RefID: str=0001.0A0C0205.59DF7839.0169, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
From: Michael Ho <Michael.Ho@bmw-carit.de>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"mike.looijmans@topic.nl"
	<mike.looijmans@topic.nl>, "twoerner@gmail.com" <twoerner@gmail.com>,
	"martin.jansa@gmail.com" <martin.jansa@gmail.com>
Thread-Topic: [yocto] RFC: Backwards compatibility checking sstate-cache
Thread-Index: AQHS8YVx0AkhV90UzU6NiV6x+tgB0aK/5BuAgCEAlNA=
Date: Thu, 12 Oct 2017 14:12:08 +0000
Message-ID: <1507817528393.71890@bmw-carit.de>
References: <1498816090789.97105@bmw-carit.de>,
	<1506010313.18640.166.camel@linuxfoundation.org>
In-Reply-To: <1506010313.18640.166.camel@linuxfoundation.org>
Accept-Language: en-GB, de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.20.21.235]
MIME-Version: 1.0
Subject: Re: RFC: Backwards compatibility checking sstate-cache
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
X-List-Received-Date: Thu, 12 Oct 2017 14:15:02 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Richard (and all),=0A=
=0A=
@Richard: Thanks for the input regarding the topic and apologies for not re=
plying until now, I was a bit buried under workload and simultaneously comp=
leting my Masters studies. I also wanted to take some time to digest your c=
omments amid working on this CDEPENDS concept, and I just want to say that =
I'm very open to finding another way to implement this concept of rebuild a=
voidance in Yocto.=0A=
=0A=
I think the idea of a non-invasive approach can be a bit tricky, but your i=
dea of a secondary sstate signature and mapping table sounds workable to me=
. (In fact, as I slowly developed out this concept, I think it's almost req=
uired). One point though with the removal of the metadata changes is that t=
he view of "what is compatible" will be concrete and cannot differ among ch=
ildren. Sometimes you have only specific children of a recipe that can hand=
le compatibility changes (and at different levels of compatibility) while o=
thers cannot handle any change at all, and that is why I developed with the=
 metadata changes as a basis. But definitely, yes, the change to metadata m=
akes things more complex and does in a sense impose policy, which I underst=
and would be undesirable. Maybe we can figure out an approach that avoids m=
etadata changes but keeps this ability to differ compatibility handling amo=
ng children.=0A=
=0A=
Currently I have a working proof of concept (I've developed out the earlier=
 shared patches further) that I'd like to share soon and demonstrate. It st=
ill needs some further refinement but I think it's showing some interesting=
 results already. I'll think further about the topic and see what I can com=
e up with that matches your line of thoughts.=0A=
=0A=
@Martin Jansa: Thank you for the comments and information, it's good to kno=
w that there's some interest from the community to look into this idea.=0A=
=0A=
@Mike Looijmans: Yes, that's essentially the problem I want to resolve with=
 this proof of concept, breaking long build chains at points where a clear =
precision cut could've been made depending on whether a rebuild is actually=
 required or not (i.e. the bitstream tool not changing). In that case I wou=
ld even use the tool version and assume even if the tool binary has changed=
, that the output result of tool would stay the same so it is compatible in=
 essence (and avoid rebuilding 31 hours of stuff).=0A=
=0A=
@Trevor Woerner: Thanks for the suggestion, I was planning to cross-post wh=
en I had a more stable proof of concept code to share.=0A=
=0A=
Note: I'll be following my colleague, Mario Domenech Goulart (mario-goulart=
), to OEDEM 2017 where I hope to discuss the current concept code and show =
some potential use cases.=0A=
=0A=
Kind regards,=0A=
Michael Ho=0A=
=0A=
--=0A=
BMW Car IT GmbH=0A=
Michael Ho=0A=
Spezialist Entwicklung - Linux Software Integration=0A=
Lise-Meitner-Str. 14=0A=
89081 Ulm=0A=
=0A=
Tel.: +49 731 3780 4071=0A=
Mobil: +49 152 5498 0471=0A=
Fax: +49-731-37804-001=0A=
Mail: michael.ho@bmw-carit.de=0A=
Web: http://www.bmw-carit.de=0A=
--------------------------------------------------------=0A=
BMW Car IT GmbH=0A=
Gech=E4ftsf=FChrer: Kai-Uwe Balszuweit und Alexis Trolin=0A=
Sitz und Registergericht: M=FCnchen HRB 134810=0A=
--------------------------------------------------------=0A=
=0A=
________________________________________=0A=
From: Richard Purdie <richard.purdie@linuxfoundation.org>=0A=
Sent: 21 September 2017 18:11=0A=
To: Michael Ho; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] RFC: Backwards compatibility checking sstate-cache=0A=
=0A=
On Fri, 2017-06-30 at 09:48 +0000, Michael Ho wrote:=0A=
> Hi, at BMW Car IT we are working on an experimental feature to=0A=
> improve sstate cache hits and we are looking for comments on the=0A=
> approach who might have some insights to the problem and seeing if=0A=
> anyone is interested in the feature for mainline.=0A=
=0A=
Sorry I didn't see this before now but it was brought to my attention.=0A=
=0A=
I have given this problem quite some thought off and on. I do worry=0A=
that the interface you propose is complex and requires changes=0A=
throughout the metadata and those changes impose "policy". One of our=0A=
strengths is that we're managed to keep "policy" out of the metadata.=0A=
=0A=
In this context by policy, I mean when a recipe is equivalent and when=0A=
it is not.=0A=
=0A=
I do have a counter-proposal of how we could solve this in a less=0A=
invasive way. This isn't implemented but wouldn't in theory be hard to=0A=
do.=0A=
=0A=
The idea would be to have some kind of equivalence list. The first=0A=
built object's sstate checksum would become the definitive checksum and=0A=
the object added to the sstate cache.=0A=
=0A=
If a new object is built, it would be compared with the one in sstate.=0A=
If deemed equivalent (by whatever policy), a mapping would be added to=0A=
the list. If not, there is no mapping and it becomes a new definitive=0A=
checksum.=0A=
=0A=
All runqueue would then have to do is present its list of sstate=0A=
checksums to the list and convert them (in dependency order) into=0A=
canonical checksums.=0A=
=0A=
This list could be a local equivalence file, or an equivalence server=0A=
which could resolve list of checksums.=0A=
=0A=
Doing it this way totally isolates the comparison from the metadata=0A=
itself and in my view protects us from future changes in definition of=0A=
equivalence.=0A=
=0A=
How does that sound?=0A=
=0A=
Cheers,=0A=
=0A=
Richard=0A=
=0A=
=0A=
=0A=

