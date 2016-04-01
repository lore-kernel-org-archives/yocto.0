Return-Path: <Rikard.Olsson@se.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 270AEE00C96; Fri,  1 Apr 2016 05:59:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [139.15.237.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp6-v.fe.bosch.de (smtp6-v.fe.bosch.de [139.15.237.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDA29E00C92
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 05:59:10 -0700 (PDT)
Received: from vsmta11.fe.internet.bosch.com (unknown [10.4.98.51])
	by imta24.fe.bosch.de (Postfix) with ESMTP id 2276BD80229
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 14:59:09 +0200 (CEST)
Received: from SI-MBX1021.de.bosch.com (vsgw23.fe.internet.bosch.com
	[10.4.98.23])
	by vsmta11.fe.internet.bosch.com (Postfix) with ESMTP id 0425D2380554
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 14:59:09 +0200 (CEST)
Received: from SI-MBX1022.de.bosch.com (10.3.230.36) by
	SI-MBX1021.de.bosch.com (10.3.230.35) with Microsoft SMTP Server (TLS)
	id 15.0.1104.5; Fri, 1 Apr 2016 14:59:08 +0200
Received: from SI-MBX1022.de.bosch.com ([fe80::94f3:2c29:36e3:3f88]) by
	SI-MBX1022.de.bosch.com ([fe80::94f3:2c29:36e3:3f88%22]) with mapi id
	15.00.1104.000; Fri, 1 Apr 2016 14:59:08 +0200
From: "Olsson Rikard (RBSN/ESW1)" <Rikard.Olsson@se.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Append to bblayers.conf and local.conf
Thread-Index: AdGMFet9TimazJ6STgShDmJ1nJIUug==
Date: Fri, 1 Apr 2016 12:59:08 +0000
Message-ID: <05908ff25fd54be287c631f4bc5b006b@SI-MBX1022.de.bosch.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.112.94.39]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1679-8.0.0.1202-22232.006
X-TMASE-MatchedRID: SqVbwiaLnRIR0y60lngYOhcqpH7D1rtQMZm0+sEE9muSfFps38OKeHgP
	YgdS3ntk9FZe6kCkFGe8SZcSrbjehEOrZJUSTvYo0C1sQRfQzEHEQdG7H66TyMdRT5TQAJnAy/5
	4BJsCaGpnZYPYi/FN9Z6kHc+xKEDmyptm/2BAlEsuveSPeBibTwcfcna4XovxdBZohuePIMlWQi
	xjBXPpSO+OADOIe8Od
Subject: Append to bblayers.conf and local.conf
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
X-List-Received-Date: Fri, 01 Apr 2016 12:59:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Yocto team,

We are receiving bblayer.conf and local.conf from external supplier which a=
lready have layers/configuration added. Now we want to add our own layers/c=
onfiguration by appending to these files this to avoid manual merge work ea=
ch time a delivery from external supplier is made.

Question:
How do I append layers/configuration to bblayer.conf and local.conf?

Best regards
Rikard Olsson


