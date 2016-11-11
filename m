Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAEEFE006EA; Fri, 11 Nov 2016 10:38:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [23.83.214.29 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from camel.maple.relay.mailchannels.net
	(camel.maple.relay.mailchannels.net [23.83.214.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A00F1E0050B
	for <yocto@yoctoproject.org>; Fri, 11 Nov 2016 10:38:09 -0800 (PST)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 8ECD81213A9;
	Fri, 11 Nov 2016 18:38:02 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-107-69-155.us-west-2.compute.internal
	[10.107.69.155])
	by relay.mailchannels.net (Postfix) with ESMTPA id A9C5D120D54;
	Fri, 11 Nov 2016 18:38:01 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.22.43.236])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.8); Fri, 11 Nov 2016 18:38:02 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1478889482141:217765624
X-MC-Ingress-Time: 1478889482141
Received: from [37.228.247.203] (port=27244 helo=[192.168.0.60])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.87)
	(envelope-from <pidge@toganlabs.com>)
	id 1c5Gi4-002z5B-PA; Fri, 11 Nov 2016 19:38:01 +0100
Message-ID: <1478889473.18810.3.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: Alain Achkar <alain.achkar@triacta.com>, joshua.g.lock@intel.com
Date: Fri, 11 Nov 2016 18:37:53 +0000
In-Reply-To: <CAGkf0HCnrCpufRV9U_pz7LYDkCvhK7of_1=0zgS425GeGYSUPQ@mail.gmail.com>
References: <CAGkf0HCnrCpufRV9U_pz7LYDkCvhK7of_1=0zgS425GeGYSUPQ@mail.gmail.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Cc: yocto@yoctoproject.org
Subject: Re: Buildbot / Autobuilder / custom?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: pidge@toganlabs.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 11 Nov 2016 18:38:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2016-11-11 at 12:35 -0500, Alain Achkar wrote:
> Hello Joshua!
>=20
> We are using Yocto to build for the Variscite DART-6UL SoM which is
> based on Freescale/NXP i.MX6UL (http://variwiki.com/index.php?title=3DD
> ART-6UL_Yocto_Jethro_R1_build).
>=20
> Currently, developers run builds manually on their desktops. We are
> considering using a continuous integration server. I found out that
> The Yocto Project uses Autobuilder which in turn uses BuildBot. I
> read most of the introductory documentation.
>=20
> Would you recommend that we install only BuildBot and configure it to
> build what we need?
>=20
> OR
>=20
> Would you recommend that we install Autobuilder (and BuildBot) and
> configure it to build what we need?

Actually, the yocto-autobuilder already contains buildbot so no need
for both.

If you read:

http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/tree/README-QUIC
KSTART

and probably some of the other READMEs and the documentation in the
docs directory of the yocto-autobuilder directory, it should get you
started in the right direction.

Feel free to ask questions if you need help.

-b

Elizabeth 'pidge' Flanagan
Founder/CTO Tog=C3=A1n Labs
www.toganlabs.com

>=20
> What is the faster path to get up and running?
>=20
> Thanks!
> Alain.
>=20
> --=C2=A0
> Alain Achkar, M.Eng. | Software Engineer
> Triacta Power Solutions
> (O)=C2=A0613.256.2868=C2=A0(C)=C2=A0613.406.6520
> www.triacta.com=C2=A0=C2=A0




