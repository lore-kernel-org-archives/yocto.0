Return-Path: <J.Spriggs@raylase.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA1ADE00978; Thu, 16 Jul 2015 00:45:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.raylase.de (mail.raylase.de [217.6.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE66FE00957
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 00:45:15 -0700 (PDT)
Received: from mail.raylase.de (127.0.0.1) id hktggs0171sv for
	<yocto@yoctoproject.org>;
	Thu, 16 Jul 2015 09:45:13 +0200 (envelope-from <J.Spriggs@raylase.de>)
Received: from EXCHANGE-A.raylase.de ([192.168.1.16])
	by mail.raylase.de (RAYLASE AG)
	with ESMTPS (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256/256)
	id 201507160745080072816; Thu, 16 Jul 2015 09:45:09 +0200
Received: from EXCHANGE-B.raylase.de (192.168.2.12) by EXCHANGE-A.raylase.de
	(192.168.1.16) with Microsoft SMTP Server (TLS) id 14.3.248.2;
	Thu, 16 Jul 2015 09:45:08 +0200
Received: from EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49]) by
	EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49%14]) with mapi id
	14.03.0248.002; Thu, 16 Jul 2015 09:45:07 +0200
From: "Spriggs, Jim" <J.Spriggs@raylase.de>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Is there a fetcher for (dare I say it?) TFS (arrrrgh,
	I said it...) out there somewhere, or do I have to roll my own?
Thread-Index: AdC+2vO/cYxOhM4tR4+d3AdLFs63hv//6EuAgAAZzgD//oWxAA==
Date: Thu, 16 Jul 2015 07:45:05 +0000
Message-ID: <2238EDC6081C944E97E4EE915AE5CBEC5470B384@EXCHANGE-B.raylase.de>
References: <2238EDC6081C944E97E4EE915AE5CBEC547088C1@EXCHANGE-B.raylase.de>
	<4760612.nIr3tGfN7C@peggleto-mobl.ger.corp.intel.com>
	<14229797.vlTy0TZkXI@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <14229797.vlTy0TZkXI@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-GB, de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.2.109]
MIME-Version: 1.0
X-Mlf-Version: 8.0.8.3655
X-Mlf-UniqueId: o201507160745080072816
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is there a fetcher for (dare I say it?) TFS (arrrrgh, I said it...) out there somewhere, or do I have to roll my own?
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
X-List-Received-Date: Thu, 16 Jul 2015 07:45:21 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Paul, List

rodger that, thanks!

Looks like it's time to embiggen my python nature...

A quick skim through the sources suggests (to me, at least) that the p4 com=
mand-set looks similar enough to TEE's to make it a reasonable starting poi=
nt for a TFS fetcher.

Would anyone with wider experience of the various (supported) SCCS care to =
correct my na=EFve impression?

Greets,
--
jim

-----Urspr=FCngliche Nachricht-----
Von: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
Gesendet: Mittwoch, 15. Juli 2015 12:56
An: Spriggs, Jim <J.Spriggs@raylase.de>
Cc: yocto@yoctoproject.org
Betreff: Re: [yocto] Is there a fetcher for (dare I say it?) TFS (arrrrgh, =
I said it...) out there somewhere, or do I have to roll my own?

On Wednesday 15 July 2015 10:23:09 Paul Eggleton wrote:
> Hi Jim,
>
> On Wednesday 15 July 2015 09:06:19 Spriggs, Jim wrote:
> > [ before anyone tells me to wash my mouth with soap: I actually have
> > to live with this junk on a daily basis, so cut me some slack
> > already :-\ ]
> Been there! (Not with TFS, but VSS in a previous job...)
>
> > I'm running the dizzy version of bb  on my build-server, and
> > currently actively *push* stuff to it from the TFS-server.
> >
> > Obviously, I'd much rather have the build-server *pull* from the
> > TFS-server, probably using the TEE CLC.
> >
> > I realize that there's never likely to be any "official" support for
> > TFS, and I'll probably have to roll my own fetcher.
>
> FWIW, and I hope Richard doesn't hit me, I think we would accept a
> fetcher implementation into BitBake rather than having to have it
> floating around somewhere externally - you can see we've done that for
> other proprietary version control systems. The challenge with these
> fetchers though is that nobody who regularly maintains BitBake is able
> to test them, so we are almost completely reliant on folks in the
> community such as yourself to do that testing for us after it gets
> merged (and not send us patches that break it, because we probably won't =
be able to verify that they don't).
>
> > The current Bitbake User Manual seems only to describe the standard
> > fetchers, so if anyone could point me at a clue or two about how to
> > write and integrate a custom fetcher, I'd be very grateful indeed.
>
> I don't think we have anything in the way of documentation on writing
> your own fetcher - the only documentation is the code. That said,
> using the existing fetchers as examples it should be fairly
> straightforward I would hope.

Hmm, the bit I neglected to state explicitly - I'm not aware of anyone havi=
ng previously implemented a TFS fetcher, but hopefully if such a person exi=
sts they will speak up here ;)

Cheers,
Paul

--

Paul Eggleton
Intel Open Source Technology Centre

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

