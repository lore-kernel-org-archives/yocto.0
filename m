Return-Path: <Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1420DE00EED; Fri,  2 Oct 2015 08:58:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from FLEMING.seektech.com (unknown [66.192.149.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6BD4E007C9
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 08:58:06 -0700 (PDT)
Received: from WRIGHT.seescan.com (192.168.11.30) by mail.seektech.com
	(192.168.3.10) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Fri, 2 Oct 2015 08:58:04 -0700
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Fri, 2 Oct 2015 08:58:05 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Fri, 2 Oct 2015 08:58:05 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: FILESEXTRAPATHS_prepend fails for systemd
Thread-Index: AQHQ/SrpSZ7zTKRzlkqP7xAfuvAPtA==
Date: Fri, 2 Oct 2015 15:58:04 +0000
Message-ID: <1443801396017.79471@seescan.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: WRIGHT.seescan.com
X-GFI-SMTP-RemoteIP: 192.168.11.30
Subject: FILESEXTRAPATHS_prepend fails for systemd
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
X-List-Received-Date: Fri, 02 Oct 2015 15:58:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm trying to change my /etc/systemd/journald.conf file.


I have created a file in:


our_system/recipe-core/systemd_%.bbappend


With the contents:


FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"

I created a directory in the same path called "systemd" and placed our new =
version of journald.conf in it.

Then I did:

bitbake -c cleanall systemd && bitbake systemd
bitbake -c cleanall our_image && bitbake our_image

Then I checked and the old journald.conf is still installed.

What am I doing wrong?

Frederick


