Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2D47E00871; Sat, 14 Mar 2015 04:38:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	RDNS_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from p-us1-iereast-outbound.us1.avaya.com (unknown [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A3B4E003FA
	for <yocto@yoctoproject.org>; Sat, 14 Mar 2015 04:38:06 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AgAGADAdBFXGmAcV/2dsb2JhbABbgmQigSwEwUqILQKBHkwBAQEBAQF9hA8BAQEBAgESZwULAgEIDQQEAQEBCiQyHQgBAQQOBQgaiAUIAahcpUUBAQEBAQEBAQEBAQEBAQEBAQEBAQEXixeEQDEHgxeBFgWQOYYOBYpijQUjggIcFIE8bwGBQ38BAQE
X-IronPort-AV: E=Sophos;i="5.11,400,1422939600"; d="scan'208";a="111010855"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	14 Mar 2015 07:37:53 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC02.global.avaya.com) ([135.64.58.12])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	14 Mar 2015 07:37:52 -0400
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC02.global.avaya.com ([135.64.58.12]) with mapi id
	14.03.0174.001; Sat, 14 Mar 2015 12:37:51 +0100
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Bitbake recipe Post install script not executed once
	the package is installed
Thread-Index: AdBeQzg+/gx3I/ciSi2jrIWQabI73AAKK6IA//+9pi4=
Date: Sat, 14 Mar 2015 11:37:51 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A36DBD4@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A36BB88@AZ-FFEXMB01.global.avaya.com>,
	<4517896.19BxCWa6S7@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <4517896.19BxCWa6S7@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.152.73.21]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe Post install script not executed once the package is installed
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
X-List-Received-Date: Sat, 14 Mar 2015 11:38:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Yes, Basically I did install manually using below command
rpm -i test.rpm

One thing to add here is we are running Busybox on which I am trying to per=
form the installation.

Cheers,
Abhinav
________________________________________
From: Paul Eggleton [paul.eggleton@linux.intel.com]
Sent: Saturday, March 14, 2015 5:01 PM
To: Bipnesh, Abhinav (Abhinav)
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Bitbake recipe Post install script not executed once t=
he package is installed

On Saturday 14 March 2015 10:39:59 Bipnesh, Abhinav wrote:
> I was trying to perform a post install activity as part of the recipe usi=
ng
> pkg_postinst_PACKAGENAME() but seems it=92s not working. Below is the sam=
ple
> function we have written as part of the recipe
>
> pkg_postinst_test (){
>     #!/bin/sh -xe
>     echo " we are calling post install for test"
>     mkdir -p /test/logs/1
>     touch /test/test1/test2/test3/sample.txt
>
> }
> testX directory exists as they are created as part of the install activit=
y.
> When we verify the post install we did find the file being created as bel=
ow
> is the output
>
> ls /test/test1/test2/test3/.txt ls: cannot access
> /test/test1/test2/test3/.txt: No such file or directory

I assume you meant *.txt as .txt wouldn't exist even if the postinstall scr=
ipt
had run.

> Also didn't see the echo output on the console when the package is being
> installed or post installation activity is being performed.

Is the output package that you are installing actually called "test"?


Cheers,
Paul

--

Paul Eggleton
Intel Open Source Technology Centre

