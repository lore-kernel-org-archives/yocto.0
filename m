Return-Path: <michael.blaettler@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4DDFE00CCA; Mon, 24 Oct 2016 00:26:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.35.17.28 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 392 seconds by postgrey-1.32 at yocto-www;
	Mon, 24 Oct 2016 00:26:39 PDT
Received: from goliath.siemens.de (goliath.siemens.de [192.35.17.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A239E00C93
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 00:26:39 -0700 (PDT)
Received: from mail1.sbs.de (mail1.sbs.de [192.129.41.35])
	by goliath.siemens.de (8.15.2/8.15.2) with ESMTPS id u9O7K5Jm030212
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 09:20:05 +0200
Received: from DEFTHW99ERJMSX.ww902.siemens.net
	(defthw99erjmsx.ww902.siemens.net [139.22.70.135])
	by mail1.sbs.de (8.15.2/8.15.2) with ESMTPS id u9O7K5Yv000758
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 09:20:05 +0200
Received: from DEFTHW99ERBMSX.ww902.siemens.net (139.22.70.76) by
	DEFTHW99ERJMSX.ww902.siemens.net (139.22.70.135) with Microsoft SMTP
	Server (TLS) id 14.3.319.2; Mon, 24 Oct 2016 09:20:05 +0200
Received: from DEFTHW99EH2MSX.ww902.siemens.net ([169.254.12.168]) by
	DEFTHW99ERBMSX.ww902.siemens.net ([139.22.70.76]) with mapi id
	14.03.0319.002; Mon, 24 Oct 2016 09:20:04 +0200
From: "Blaettler, Michael" <michael.blaettler@siemens.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] curl-native and ca-bundle
Thread-Index: AdItxwnfsYkHQ+WoQHu6lS08RYgrkQ==
Date: Mon, 24 Oct 2016 07:20:03 +0000
Message-ID: <347AAC56F29ACA4EA31B39C2109A6FE702F1298D@DEFTHW99EH2MSX.ww902.siemens.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [139.22.70.22]
MIME-Version: 1.0
Subject: curl-native and ca-bundle
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
X-List-Received-Date: Mon, 24 Oct 2016 07:26:43 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all

We just had an issue in regard to curl-native.
By default curl is configured with the "--with-ca-bundle=3D${sysconfdir}/ss=
l/certs/ca-certificates.crt" flag.
In case curl-native is builded the ${sysconfdir} of the current project is =
compiled into the binary. Due to sstate caching the binary will be reused i=
n other projects, but the ca-bundle is still loaded from the first project.=
 As soon as the first project (where the initial build took place) is delet=
ed, curl-native won't be able to fetch from HTTPS sources, because the ca-p=
ath is invalid.

As a quick solution I removed the "--with-ca-bundle" configure option in na=
tive builds and curl is now loading the default certificate chain of the bu=
ild host.

Does anybody found simmilar issues in other recipes?
How do you handle them?
Is there a common approach?

Kind regards

Michael

