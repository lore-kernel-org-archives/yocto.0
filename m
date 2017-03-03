Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 485E8E00A16; Thu,  2 Mar 2017 23:45:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.181.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Thu, 02 Mar 2017 23:45:03 PST
Received: from smtp-out11.electric.net (smtp-out11.electric.net
	[185.38.181.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87A79E0094C
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 23:45:03 -0800 (PST)
Received: from 1cjhsa-0002Y3-TO by out11a.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <sona.sarmadi@enea.com>)
	id 1cjhsa-0002Ze-UN; Thu, 02 Mar 2017 23:43:56 -0800
Received: by emcmailer; Thu, 02 Mar 2017 23:43:56 -0800
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out11a.electric.net with esmtps (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.87) (envelope-from <sona.sarmadi@enea.com>)
	id 1cjhsa-0002Y3-TO; Thu, 02 Mar 2017 23:43:56 -0800
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0319.002; Fri, 3 Mar 2017 08:43:56 +0100
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: "Lei, Maohui" <leimaohui@cn.fujitsu.com>
Thread-Topic: a new layer that support spdx
Thread-Index: AdKSVZ7ToFKkqu+SRW+I9gwqtL+b5gBmk4dg
Date: Fri, 3 Mar 2017 07:43:54 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48AC32B12E@SESTOEX04.enea.se>
References: <1B56A49860EB2D45ADE3731B15C959FD01275BB282@G08CNEXMBPEKD02.g08.fujitsu.local>
In-Reply-To: <1B56A49860EB2D45ADE3731B15C959FD01275BB282@G08CNEXMBPEKD02.g08.fujitsu.local>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.142.231]
MIME-Version: 1.0
X-Outbound-IP: 192.36.1.72
X-Env-From: sona.sarmadi@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:ECDHE-RSA-AES256-SHA:256
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Subject: Re: a new layer that support spdx
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
X-List-Received-Date: Fri, 03 Mar 2017 07:45:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Lei, Maohui
> Sent: den 1 mars 2017 07:37
> To: yocto@yoctoproject.org; openembedded-
> devel@lists.openembedded.org
> Subject: [yocto] a new layer that support spdx
>=20
> Hi all
>=20
> I have submitted a new layer named meta-spdxscanner that can be used
> to create spdx files to the OpenEmbedded layer index.
> Compared to the spdx module in oe-core, this layer has features as
> following:
>=20
>   * Easy to use
>     Dosocs2-native has been add into this meta, there is no need to insta=
ll
> anything in build server.
>   * Good performance
>     It has better performance than the spdx module in current oe-core,
> especially in rebuilding.


Thanks Lei,

Do you know if there is a plan to support this in any upcoming Yocto releas=
es?=20

//Sona

P.S. BTW I tested this with oe-core master branch I get circular dependency=
 chains ERROR :)=20
Do you if this works in master or AM I doing something wrong?


