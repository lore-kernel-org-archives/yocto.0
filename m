Return-Path: <prvs=19196a2f2c=John.Klug@multitech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F577E00C29; Wed, 23 Jan 2019 10:35:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.126.90.11 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 316 seconds by postgrey-1.32 at yocto-www;
	Wed, 23 Jan 2019 10:35:22 PST
Received: from mail2.multitech.com (mail2.multitech.com [65.126.90.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32E48E00B9D
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 10:35:21 -0800 (PST)
Received: from mail2.multitech.com (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	8BD5958C7AE_C48B2ADB
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 18:30:05 +0000 (GMT)
Received: from EXCHDBPM1.dc.multitech.prv (smtp01.multitech.prv [192.168.11.6])
	(using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
	(Client CN "",
	Issuer "MultiTech Systems Intermediate CA 01" (verified OK))
	by mail2.multitech.com (Sophos Email Appliance) with ESMTPS id
	53A3958C780_C48B2ADF
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 18:30:05 +0000 (GMT)
Received: from EXCHDBPM1.dc.multitech.prv (192.168.11.6) by
	EXCHDBPM1.dc.multitech.prv (192.168.11.6) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1034.26; Wed, 23 Jan 2019 12:30:05 -0600
Received: from EXCHDBPM1.dc.multitech.prv ([192.168.11.6]) by
	EXCHDBPM1.dc.multitech.prv ([192.168.11.6]) with mapi id 15.01.1034.033;
	Wed, 23 Jan 2019 12:30:05 -0600
From: John Klug <John.Klug@multitech.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Exclude kernel module from image
Thread-Index: AQHUs0h9bYmGRuIO8UiYS1DchBmobQ==
Date: Wed, 23 Jan 2019 18:30:05 +0000
Message-ID: <a4a6a347805343858a90a67242762ab5@multitech.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.52.122]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=multitech.com;
	h=from:to:subject:date:message-id:content-type:content-transfer-encoding:mime-version;
	s=key2; bh=C/S1wvD/q4ng2qGp+zc47HoZsJhv2vwMeV9oCNs2qT8=;
	b=DrD86MKWwzXEypso0NFZjKoGm3GZFWvp+FJ9nj3p5rpAMGq/Q8+AJ0PAWfvtbajZi7/8E1zEheYnCZpwMFGEFgG9ogvxJa5s0JYRuZa/WEAJD/h2WD+23zs3DBMAVtWpu4syUuGdnISqjy2QMBXwEWfr7GyASzwdYNo2evKSA5Q=
Subject: Exclude kernel module from image
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
X-List-Received-Date: Wed, 23 Jan 2019 18:35:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I am looking for a way to create an image with an exclusion list of kernel =
modules packages.

If I use PACKAGE_EXCLUDE, I see the following:

    Collected errors:
     * calculate_dependencies_for: Cannot satisfy the following dependencie=
s for kernel-modules:

The list of modules that follows are the very kernel module packages I am t=
rying to exclude.

I would prefer not to create a list of every kernel module I wish to includ=
e.

 =20
=20
=20
=20
=20

