Return-Path: <dwinn@trellisware.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39EABE00E3C; Tue, 12 Apr 2016 13:24:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0007]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Apr 2016 13:24:49 PDT
Received: from mail.trellisware.com (mail.trellisware.com [67.52.137.189])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 847EAE00C62
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 13:24:49 -0700 (PDT)
Received: from TWHQ-MAIL2.trellisware.com ([fe80::2144:f72b:6748:e86a]) by
	TWHQ-MAIL1.trellisware.com ([fe80::1df7:bb6b:f7e8:b34c%15]) with mapi
	id 14.03.0266.001; Tue, 12 Apr 2016 13:23:44 -0700
From: David Winn <dwinn@trellisware.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Issues toaster and devtool together
Thread-Index: AdGU+TW7BcoJ5h/DTEiOHYr0yFgAfA==
Date: Tue, 12 Apr 2016 20:23:43 +0000
Message-ID: <D85DF636754686499AE75C7EA009AA8E839861F7@TWHQ-MAIL2.trellisware.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.3.100]
MIME-Version: 1.0
Subject: Issues toaster and devtool together
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
X-List-Received-Date: Tue, 12 Apr 2016 20:24:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,=0A=
I was recently part of the Yocto Dev Day event, and learned a lot of good t=
ools for working with OE. I then got home and wanted to fold many of them i=
nto our development process. Unfortunately I've hit a problem; toaster and =
devtool don't seem to run in the same working copy.=0A=
=0A=
Here's what I'm doing:=0A=
> git clone ...poky poky=0A=
> cd poky=0A=
> git checkout jethro=0A=
> source oe-init-build-env=0A=
> source toaster start=0A=
> devtool modify -x which scratch/which=0A=
ERROR: Only one copy of bitbake should be run against a build directory=0A=
=0A=
My intent was to use devtool to do my development and then use toaster to b=
rowse what happened in the working copy. Is this working for anyone else? A=
ny tips to fix the error above?=0A=
=0A=
Thanks,=0A=
David=

