Return-Path: <radzy@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A090E00C73; Mon, 14 Mar 2016 10:29:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6D03E00C44
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 10:29:30 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u2EHTTDM002062
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 10:29:30 -0700 (PDT)
Received: from ALA-MBA.corp.ad.wrs.com ([169.254.3.21]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0248.002;
	Mon, 14 Mar 2016 10:29:29 -0700
From: "Radzykewycz, T (Radzy)" <radzy@windriver.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Problems building live image
Thread-Index: AQHRfhcPK/hFaskQWEG61T+EZaUpyA==
Date: Mon, 14 Mar 2016 17:29:28 +0000
Message-ID: <33006C99F5A5194A9B7A7715DFA3E383EB853DD8@ALA-MBA.corp.ad.wrs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.216.89]
MIME-Version: 1.0
Subject: Re: Problems building live image
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
X-List-Received-Date: Mon, 14 Mar 2016 17:29:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


________________________________________
> While we're on it...
>=20
> Can anyone explain what a "live" image is intended to be?
>=20
> (I haven't gotten a live image to "work", but I'm not entirely
> sure I know what "work" means for a live image.)
>=20
> Or how hdddirect is intended to be different from hddimg?
>=20
> --rich

Can't say as how I'm anything close to an expert on it, but....

My impression was that a live image was one that

- Booted from removable media

- Did not mount a local hard disk as rootfs, but instead copied
  the rootfs from the boot media

- Optionally, might include an installer to install the image
  onto a local hard disk.

Enjoy!

				-- radzy

