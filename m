Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D38AE00854; Sat, 14 Mar 2015 03:40:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB527E003FA
	for <yocto@yoctoproject.org>; Sat, 14 Mar 2015 03:40:02 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Av0FAFQPBFXGmAcV/2dsb2JhbABbgmQigTDBSogtAoEkTAEBAQEBAX2EEQEBAxJ5ARUVViYBBBsaiA0Bo1SEf6VVAR+PV4NPgRYFkDmGDgWKYo0FI4ICHIFQgjN/AQEB
X-IronPort-AV: E=Sophos;i="5.11,399,1422939600"; d="scan'208";a="107745012"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	14 Mar 2015 06:40:01 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC02.global.avaya.com) ([135.64.58.12])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	14 Mar 2015 06:40:01 -0400
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC02.global.avaya.com ([135.64.58.12]) with mapi id
	14.03.0174.001; Sat, 14 Mar 2015 11:40:00 +0100
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Bitbake recipe Post install script not executed once the
	package is installed
Thread-Index: AdBeQzg+/gx3I/ciSi2jrIWQabI73A==
Date: Sat, 14 Mar 2015 10:39:59 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A36BB88@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.152.73.21]
MIME-Version: 1.0
Subject: Bitbake recipe Post install script not executed once the package is installed
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
X-List-Received-Date: Sat, 14 Mar 2015 10:40:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi All,

I was trying to perform a post install activity as part of the recipe using=
 pkg_postinst_PACKAGENAME() but seems it=92s not working. Below is the samp=
le function we have written as part of the recipe

pkg_postinst_test (){
    #!/bin/sh -xe
    echo " we are calling post install for test"
    mkdir -p /test/logs/1
    touch /test/test1/test2/test3/sample.txt

}
testX directory exists as they are created as part of the install activity.=
 When we verify the post install we did find the file being created as belo=
w is the output

ls /test/test1/test2/test3/.txt ls: cannot access /test/test1/test2/test3/.=
txt: No such file or directory

Also didn't see the echo output on the console when the package is being in=
stalled or post installation activity is being performed.

So any thoughts how to fix this issue as we need to perform some post insta=
ll activity as part of the package installation.

Thanks,
-Abhinav=

