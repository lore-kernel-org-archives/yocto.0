Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4EB6E0076B; Mon, 16 Feb 2015 09:42:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5622BE00757
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 09:42:28 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ah0GALUr4lTGmAcV/2dsb2JhbABcgmQigSwEwA+IGwKBF0MBAQEBAQF8hAwBAQEBAxIoPwwEAgEIDQQEAQEBChQJBzIUCQgBAQQOBQgaiAsBrGWhKgEBAQEBAQEBAQEBAQEBAQEBAQEBAReLDIQ8MQcGgxCBFAWPOJAcjCgig25vAYFDfwEBAQ
X-IronPort-AV: E=Sophos;i="5.09,589,1418101200"; d="scan'208";a="104262929"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	16 Feb 2015 12:42:04 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC01.global.avaya.com) ([135.64.58.11])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	16 Feb 2015 12:42:04 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC01.global.avaya.com ([135.64.58.11]) with mapi id
	14.03.0174.001; Mon, 16 Feb 2015 18:42:02 +0100
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Graceful continue if some recipe has error
Thread-Index: AdBKCsYf2pTmpt72RK6Iy4QiqLwCcgALqx6AAApzMIA=
Date: Mon, 16 Feb 2015 17:42:02 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A351461@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A351435@AZ-FFEXMB01.global.avaya.com>
	<1793194.PUJNIAFybC@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1793194.PUJNIAFybC@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.48]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Graceful continue if some recipe has error
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
X-List-Received-Date: Mon, 16 Feb 2015 17:42:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using python function as below
python __anonymous () {
    origenv =3D d.getVar("BB_ORIGENV", False)
. . .
}

Thanks,
Abhinav

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Monday, February 16, 2015 23:10
To: Bipnesh, Abhinav (Abhinav)
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Graceful continue if some recipe has error

Hi Abhinav,

On Monday 16 February 2015 17:05:32 Bipnesh, Abhinav wrote:
> We have written recipe for our application which reads some=20
> environment variables and follow a path. But if these variables are=20
> not set then recipe parsing results into error. So I was looking if we=20
> can have some way for a graceful continuation. As we want if those=20
> variables are set then it bitbake should continue with rest of=20
> building. So is there way we can achieve the same.

Depends, how are you reading the variables? From python or shell?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

