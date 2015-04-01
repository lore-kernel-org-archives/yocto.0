Return-Path: <afalanga@micron.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B02E2E0056E; Wed,  1 Apr 2015 13:15:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [137.201.242.129 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 456 seconds by postgrey-1.32 at yocto-www;
	Wed, 01 Apr 2015 13:15:39 PDT
Received: from mailout.micron.com (mailout.micron.com [137.201.242.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AD3EE0056E
	for <yocto@yoctoproject.org>; Wed,  1 Apr 2015 13:15:39 -0700 (PDT)
Received: from mail.micron.com (ntxboicas01.micron.com [137.201.84.60])
	by mailout.micron.com (8.14.4/8.14.6) with ESMTP id t31K82MH011517
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 1 Apr 2015 14:08:02 -0600
Received: from NTXBOIMBX02.micron.com ([fe80::75b0:c3aa:18ca:6488]) by
	NTXBOICAS01.micron.com ([2002:89c9:147::89c9:147]) with mapi id
	14.03.0224.002; Wed, 1 Apr 2015 14:08:02 -0600
From: "Andy Falanga (afalanga)" <afalanga@micron.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: how to build boost_python module
Thread-Index: AdBst43SOV7nDQ3wTe2P2ecMg5GGsw==
Date: Wed, 1 Apr 2015 20:08:01 +0000
Message-ID: <60F6FAE47D1BCE4380CC06D18F49789BB9B55D6B@NTXBOIMBX02.micron.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.201.88.182]
x-tm-as-product-ver: SMEX-10.0.0.4152-7.000.1014-21442.000
x-tm-as-result: No--35.755700-0.000000-31
x-tm-as-user-approved-sender: Yes
x-tm-as-user-blocked-sender: No
x-mt-checkinternalsenderrule: True
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.73 on 137.201.82.105
Subject: how to build boost_python module
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
X-List-Received-Date: Wed, 01 Apr 2015 20:15:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm truly new to embedded systems development so please forgive my ignoranc=
e.  I'm working on building an embedded Linux image (of course).  In order =
to build the software that I'm interested to build for this ARM system (Zyn=
q zc706), I need to build the python interpreter and the Boost libraries.  =
I've found recipes for these in the system and have used Hob to try to make=
 this happen.  Thus far, no matter what I've tried, I don't see boost_pytho=
n built.  Currently, in the Hob interface, I'm selecting packages to build =
into the image and boost-python isn't listed.  The boost.inc file in /opt/y=
octo/poky-dizzy-12.0.1/meta/recipes-support/boost shows logic to build boos=
t-python.  Since python is being built into this image, shouldn't this pack=
age have been built too?

The question is a simple one, how do I get the build to make boost-python? =
 It's made all of the others I need for my own library: boost-thread, boost=
-regex, boost-filesystem, etc.  I just can't get it to build boost-python.

Thanks
Andy

