Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7F90E00E02; Fri, 28 Oct 2016 02:03:12 -0700 (PDT)
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
Received: from smtp-out11.electric.net (smtp-out11.electric.net
	[185.38.181.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59E43E00DBA
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 02:03:07 -0700 (PDT)
Received: from 1c0344-0008Sv-T3 by out11d.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <sona.sarmadi@enea.com>)
	id 1c0344-0008VJ-UJ; Fri, 28 Oct 2016 02:03:04 -0700
Received: by emcmailer; Fri, 28 Oct 2016 02:03:04 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out11d.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <sona.sarmadi@enea.com>)
	id 1c0344-0008Sv-T3; Fri, 28 Oct 2016 02:03:03 -0700
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0294.000; Fri, 28 Oct 2016 11:03:03 +0200
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] cve-checker tool
Thread-Index: AdIwLntiYxJel4UHQ6ebcs09cROndQAEuizQABxmBQAAEb2KUA==
Date: Fri, 28 Oct 2016 09:03:03 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48ABEA9D6C@SESTOEX04.enea.se>
References: <3230301C09DEF9499B442BBE162C5E48ABEA948F@SESTOEX04.enea.se>
	<D98FD381-BC63-421E-AD53-8A808C02CCDF@gmail.com>
In-Reply-To: <D98FD381-BC63-421E-AD53-8A808C02CCDF@gmail.com>
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
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Scott Rifenbark <srifenbark@gmail.com>,
	"mariano.lopez@intel.com" <mariano.lopez@intel.com>
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
X-List-Received-Date: Fri, 28 Oct 2016 09:03:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiA+IC4vYnppcDIvMS4wLjYtcjUvY3ZlL2N2ZS5sb2cNCj4gPiAuL2xpYnhtbDIvMi45LjQtcjAv
Y3ZlL2N2ZS5sb2cNCj4gPiAuL3BlcmwvNS4yMi4xLXIwL2N2ZS9jdmUubG9nDQo+ID4gLi9leHBh
dC8yLjIuMC1yMC9jdmUvY3ZlLmxvZw0KPiA+IC4vZmxleC8yLjYuMC1yMC9jdmUvY3ZlLmxvZw0K
PiANCj4gcGVyaGFwcyB5b3UgY2FuIGFkZCB0aGlzIGluZm8gdG8gIkhvdyBEbyBJ4oCdDQo+IHNl
Y3Rpb24gaW4gd2lraSBoZXJlIGh0dHBzOi8vd2lraS55b2N0b3Byb2plY3Qub3JnL3dpa2kvSG93
X2RvX0kNCg0KR29vZCBpZGVhLCB0aGFua3MgZm9yIHRoZSBoaW50LiBJIGRpZCBpdCwgcGxlYXNl
IGZlZWwgZnJlZSB0byBpbXByb3ZlIGl0IDopDQoNCg==

