Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30476E00C58; Thu,  6 Dec 2018 19:30:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [203.222.77.226 listed in list.dnswl.org]
X-Greylist: delayed 902 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Dec 2018 19:30:19 PST
Received: from mail.innerrange.com.au (mail.innerrange.com.au [203.222.77.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80E7CE00C31
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2018 19:30:19 -0800 (PST)
Received: from ir-mail.corp.innerrange.com.au (192.168.4.15) by
	ir-mail.corp.innerrange.com.au (192.168.4.15) with Microsoft SMTP
	Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.1.1531.3; Fri, 7 Dec 2018 14:15:14 +1100
Received: from ir-mail.corp.innerrange.com.au ([fe80::b00d:e485:459b:788f]) by
	ir-mail.corp.innerrange.com.au ([fe80::b00d:e485:459b:788f%2]) with
	mapi id 15.01.1531.007; Fri, 7 Dec 2018 14:15:14 +1100
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Missing RDEPENDS on libldb, libtevent
Thread-Index: AdSN2xGUgDAA8/KTTSyEIHNDlPdLnA==
Date: Fri, 7 Dec 2018 03:15:14 +0000
Message-ID: <c4f487118ad847bda609a64302287ee4@innerrange.com>
Accept-Language: en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.105.91]
MIME-Version: 1.0
Subject: Missing RDEPENDS on libldb, libtevent
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
X-List-Received-Date: Fri, 07 Dec 2018 03:30:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am doing Yocto builds with Yocto sumo, and using the meta-oe layer.

I recently updated Yocto poky from eebbc00b to 64a257fa, and updated meta-o=
e from 2bb21ef2 to 8760facb. After that, I found I got build errors:

ERROR: libldb-1.3.1-r0 do_package_qa: QA Issue: /usr/lib/python2.7/site-pac=
kages/ldb.so contained in package pyldb requires libldb.so.1(LDB_0.9.10), b=
ut no providers found in RDEPENDS_pyldb? [file-rdeps]
ERROR: libldb-1.3.1-r0 do_package_qa: QA Issue: /usr/lib/python2.7/site-pac=
kages/ldb.so contained in package pyldb requires libldb.so.1, but no provid=
ers found in RDEPENDS_pyldb? [file-rdeps]
...
ERROR: libldb-1.3.1-r0 do_package_qa: QA Issue: /usr/lib/libldb.so.1.3.1 co=
ntained in package libldb requires libtevent.so.0(TEVENT_0.9.9), but no pro=
viders found in RDEPENDS_libldb? [file-rdeps]
ERROR: libldb-1.3.1-r0 do_package_qa: QA Issue: /usr/lib/libldb.so.1.3.1 co=
ntained in package libldb requires libtevent.so.0, but no providers found i=
n RDEPENDS_libldb? [file-rdeps]
...

ERROR: libtevent-0.9.36-r0 do_package_qa: QA Issue: /usr/lib/python2.7/site=
-packages/_tevent.so contained in package python-tevent requires libtevent.=
so.0(TEVENT_0.9.9), but no providers found in RDEPENDS_python-tevent? [file=
-rdeps]
ERROR: libtevent-0.9.36-r0 do_package_qa: QA Issue: /usr/lib/python2.7/site=
-packages/_tevent.so contained in package python-tevent requires libtevent.=
so.0, but no providers found in RDEPENDS_python-tevent? [file-rdeps]

I'm not sure what changed to make these errors appear, but I have added RDE=
PENDS lines in bbappend as a work-around for now.

--=20
Craig McQueen


