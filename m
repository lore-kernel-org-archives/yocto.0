Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7617E008A6; Mon,  2 Feb 2015 08:46:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28273E00824
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 08:46:40 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AmAFAFupz1TGmAcV/2dsb2JhbABbgmQiUlkEsmKPXYIdhXkCgR5DAQEBAQEBfIQMAQEBAQMSKD8QAgEIDQQEAQEBChQQMh0IAQEEDgUIGogLAbYHoDIBAQEBAQEBAQEBAQEBAQEBAQEBAQEXj0cxB4MWgRMFjwmDTockhQaMCSKCAxuBUG8BgUN+AQEB
X-IronPort-AV: E=Sophos;i="5.09,507,1418101200"; d="scan'208";a="104997377"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	02 Feb 2015 11:46:39 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC03.global.avaya.com) ([135.64.58.13])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	02 Feb 2015 11:46:38 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC03.global.avaya.com ([135.64.58.13]) with mapi id
	14.03.0174.001; Mon, 2 Feb 2015 11:46:37 -0500
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Need help for custom recipe
Thread-Index: AdA+8SkgOgALgmf8QQaX6T3wuY5FbQADZxiAAAIk1xs=
Date: Mon, 2 Feb 2015 16:46:37 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A33DDE8@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A33DC69@AZ-FFEXMB01.global.avaya.com>,
	<1549714.p2uxOlTH7e@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1549714.p2uxOlTH7e@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.152.73.22]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Need help for custom recipe
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
X-List-Received-Date: Mon, 02 Feb 2015 16:46:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

Actually we do have existing scripts which create RPM's for other platform =
i.e. Linux. We would be cross compile the code and want to use the existing=
 scripts for doing it. As the existing RPM spec contain lot of logic for po=
st install, upgrade use case etc. So we can use the current infrastructure =
but it will be a re-work for us.
So we were thinking to use it.

Thanks,
Abhinav
________________________________________
From: Paul Eggleton [paul.eggleton@linux.intel.com]
Sent: Monday, February 02, 2015 10:11 PM
To: Bipnesh, Abhinav (Abhinav)
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Need help for custom recipe

Hi Abhinav,

On Monday 02 February 2015 14:04:49 Bipnesh, Abhinav wrote:
> I am trying to write an custom recipe for one of the application. In the
> do_install() I am using an external script for creating rpm of the
> application. Below is the recipe file which I have written.
>
> SUMMARY =3D "Hello World"
> DESCRIPTION =3D "A recipe for HelloWorld"
>
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D
> file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302<f=
ile:
> ///\\$%7bCOMMON_LICENSE_DIR%7d\MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302=
>
>
> # Upstream names releases after SVN revs
> #SRCREV =3D "100"
> SRCREV =3D "${AUTOREV}"
> PV =3D "r${SRCREV}"
> DEPENDS =3D "boost util-linux curl"
>
> SRC_URI =3D "file://helloworld.c"
> S =3D "${WORKDIR}
>
> do_install () {
>     sh ${WORKDIR}/ build.sh
>
> }
>
> Now as this is a makefile based project. Now when I fire bitbake hellowor=
ld
> I am able to build the RPM of the package using build.sh file.
>
> But when I try to check these RPM under <build_dir>/tmp/deploy it is not
> found.

My first question is why do you need to create the RPMs in a custom manner =
like
this? By doing so you are bypassing quite a lot of well-tested logic that w=
e
have written around packaging.

Cheers,
Paul

--

Paul Eggleton
Intel Open Source Technology Centre

