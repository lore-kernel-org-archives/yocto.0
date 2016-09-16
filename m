Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D325E006B3; Fri, 16 Sep 2016 05:52:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.13 listed in list.dnswl.org]
Received: from DUB004-OMC3S4.hotmail.com (dub004-omc3s4.hotmail.com
	[157.55.2.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3570E006B3
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 05:51:56 -0700 (PDT)
Received: from DUB127-W12 ([157.55.2.7]) by DUB004-OMC3S4.hotmail.com over TLS
	secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Fri, 16 Sep 2016 05:51:55 -0700
X-TMN: [aL/ohyHWTplOKVsvQOShsr+F4QZUABc4]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB127-W12D05537BA95946E13F8FEDAF30@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 16 Sep 2016 13:51:55 +0100
Importance: Normal
In-Reply-To: <57DBE7CD.6060409@phytec.de>
References: <DUB127-W74594485FCFFB10C4DC5E4DAF30@phx.gbl>,
	<57DBE7CD.6060409@phytec.de>
MIME-Version: 1.0
X-OriginalArrivalTime: 16 Sep 2016 12:51:55.0565 (UTC)
	FILETIME=[1AB7DDD0:01D21019]
Subject: Re: QA python3 runtime dependency
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
X-List-Received-Date: Fri, 16 Sep 2016 12:52:03 -0000
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

=0A=
=0A=
----------------------------------------=0A=
> Subject: Re: [yocto] QA python3 runtime dependency=0A=
> To: christrobridge@hotmail.com=3B yocto@yoctoproject.org=0A=
> From: s.mueller-klieser@phytec.de=0A=
> Date: Fri=2C 16 Sep 2016 14:38:37 +0200=0A=
>=0A=
> On 16.09.2016 13:45=2C Chris Trobridge wrote:=0A=
>> My top-level python3 scripts have "#!/usr/bin/python3" and the recipe RD=
EDENDS on python3.=0A=
>=0A=
> I guess this is what you need:=0A=
>=0A=
> RDEPENDS_${PN} =3D "python3-core"=0A=
>=0A=
> As the interpreter is in the -core package.=0A=
>=0A=
> Regards=2C Stefan=0A=
>=0A=
>> There's no problem in the final system as python3 is present in /usr/bin=
 as expected.=0A=
>> What I do not understand is why I am getting a QA warning : "requires /u=
sr/bin/python3=2C but no providers found in RDEPENDS? [file-rdeps]".=0A=
>> Any ideas why this is happening?=0A=
>> Thanks=2CChris=0A=
=0A=
Thanks=2C=0A=
=0A=
I was looking for the right package - that works.=0A=
=0A=
What puzzles me a bit is that my project RDEPENDs python3 and python3 RDEPE=
NDs python3-core=2C so I would have thought this=A0=0A=
would have propagated!=0A=
=0A=
Regards=2C=0A=
Chris=0A=
=0A=
=0A=
=0A=
 		 	   		  =

