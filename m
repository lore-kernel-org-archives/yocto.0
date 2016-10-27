Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A63DE00C97; Thu, 27 Oct 2016 04:03:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.180.37 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5CF4E00C7A
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 04:03:17 -0700 (PDT)
Received: from 1bziSp-0002fa-TU by out10c.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <sona.sarmadi@enea.com>)
	id 1bziSp-0002hb-UO; Thu, 27 Oct 2016 04:03:15 -0700
Received: by emcmailer; Thu, 27 Oct 2016 04:03:15 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10c.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <sona.sarmadi@enea.com>)
	id 1bziSp-0002fa-TU; Thu, 27 Oct 2016 04:03:15 -0700
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0294.000; Thu, 27 Oct 2016 13:03:14 +0200
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: Scott Rifenbark <srifenbark@gmail.com>, "mariano.lopez@intel.com"
	<mariano.lopez@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: cve-checker tool
Thread-Index: AdIwLntiYxJel4UHQ6ebcs09cROndQAEuizQ
Date: Thu, 27 Oct 2016 11:03:14 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48ABEA948F@SESTOEX04.enea.se>
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
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: Re: cve-checker tool
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
X-List-Received-Date: Thu, 27 Oct 2016 11:03:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Sona Sarmadi
> Sent: den 27 oktober 2016 10:57
> To: Scott Rifenbark <srifenbark@gmail.com>; 'mariano.lopez@intel.com'
> <mariano.lopez@intel.com>; yocto@yoctoproject.org
> Subject: cve-checker tool
>=20
> Hi guys,
>=20
> I have some questions regarding cve-check tool. I don't find anything
> about this tool in Yocto
> 2.2 release, dose documentation mention this tool and how to use it?
>=20
> Is this tool planned to be integrated with daily build so the Yocto proje=
ct
> can detect Not addressed CVEs automatically?
>=20
> Mariano:
> Does this tool look at CVE tag inside the recipe as well or only checks t=
he
> package version?
>=20
> Can this tool be used together with "meta-security-isafw" and get a fancy
> report?

There are some useful info in the cve-check.bbclass:       =20

#In order to use this class just inherit the class in the
# local.conf file and it will add the cve_check task for
# every recipe. The task can be used per recipe, per image,
# or using the special cases "world" and "universe". The
# cve_check task will print a warning for every unpatched
# CVE found and generate a file in the recipe WORKDIR/cve
# directory. If an image is build it will generate a report
# in DEPLOY_DIR_IMAGE for all the packages used.

I see following logs are generated:
./unzip/1_6.0-r5/cve/cve.log
./gnutls/3.5.3-r0/cve/cve.log
./glibc/2.24-r0/cve/cve.log
./glibc-initial/2.24-r0/cve/cve.log
./foomatic-filters/4.0.17-r1/cve/cve.log
./bzip2/1.0.6-r5/cve/cve.log
./libxml2/2.9.4-r0/cve/cve.log
./perl/5.22.1-r0/cve/cve.log
./expat/2.2.0-r0/cve/cve.log
./flex/2.6.0-r0/cve/cve.log

//Sona

