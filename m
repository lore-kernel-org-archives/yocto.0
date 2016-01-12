Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A563DE00A7D; Tue, 12 Jan 2016 05:04:35 -0800 (PST)
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
	*      [157.55.2.24 listed in list.dnswl.org]
Received: from DUB004-OMC3S15.hotmail.com (dub004-omc3s15.hotmail.com
	[157.55.2.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3F09E008A5
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 05:04:32 -0800 (PST)
Received: from DUB130-W76 ([157.55.2.7]) by DUB004-OMC3S15.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Tue, 12 Jan 2016 05:04:31 -0800
X-TMN: [iJknsZKdntDFGP1HuIvMouSO9qL/t2HV]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W765F778453A937201CE623DACA0@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 12 Jan 2016 13:04:30 +0000
Importance: Normal
In-Reply-To: <1452598069.28375.10.camel@linuxfoundation.org>
References: <DUB130-W826C28E67F7AA9DF278329DACA0@phx.gbl>,
	<1452598069.28375.10.camel@linuxfoundation.org>
MIME-Version: 1.0
X-OriginalArrivalTime: 12 Jan 2016 13:04:31.0185 (UTC)
	FILETIME=[C6A85410:01D14D39]
Subject: Re: Sharing a source repository
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
X-List-Received-Date: Tue, 12 Jan 2016 13:04:35 -0000
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

----------------------------------------=0A=
> Subject: Re: [yocto] Sharing a source repository=0A=
>> Or is there an idiomatic way to pull in a repository in one recipe=0A=
>> and then reference that from other recipes? I can think of something=0A=
>> that would work but would probably be breaking the spirit (eg sym=0A=
>> -linking the git directory somewhere commonly accessible to the other=0A=
>> recipes). This would also have the disadvantage of pulling the whole=0A=
>> repository in even only small part was actually required.=0A=
>=0A=
> You could look at what we do with gcc and the gcc-source recipe. Its=0A=
> works there but its not common place and requires workarounds in some=0A=
> corner cases like the sstate checksum debugging code.=0A=
>=0A=
> Cheers=2C=0A=
>=0A=
> Richard=0A=
=0A=
Thanks Richard. =A0I think in this case I will investigate git subpaths as =
we have a collection of associated projects more than one project rebuilt i=
n different configurations. =A0 =A0It is better to stick to the better used=
 paths!=0A=
=0A=
Cheers=2C=0A=
Chris=0A=
=0A=
 		 	   		  =

