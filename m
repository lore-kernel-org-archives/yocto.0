Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAC56E0096A; Mon,  2 Feb 2015 09:34:52 -0800 (PST)
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
X-Greylist: delayed 70 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 Feb 2015 09:34:51 PST
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 743F6E00982
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 09:34:51 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ao8FAKezz1SHCzIm/2dsb2JhbABbgmQigSsEwj+IFgKBHkMBAQEBAQF8hAwBAQEBAxIoOgUQAgEIDQQEAQELFAkHMhQJCAEBBAENBQgaiAsBtgGgPAEBAQEBAQEBAQEBAQEBAQEBAQEBARePRzEHgxaBEwWPCYo8hTyITIM9IoNubwGBQ34BAQE
X-IronPort-AV: E=Sophos;i="5.09,507,1418101200"; d="scan'208";a="102328394"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by co300216-co-outbound.net.avaya.com with ESMTP;
	02 Feb 2015 12:33:39 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC01.global.avaya.com) ([135.64.58.11])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	02 Feb 2015 12:33:39 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC01.global.avaya.com ([135.64.58.11]) with mapi id
	14.03.0174.001; Mon, 2 Feb 2015 18:33:38 +0100
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "Burton, Ross" <ross.burton@intel.com>, "paul.eggleton@linux.intel.com"
	<paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Need help for custom recipe
Thread-Index: AdA+8SkgOgALgmf8QQaX6T3wuY5FbQADZxiAAAIk1xv///I6gIAABdeAgAAUumg=
Date: Mon, 2 Feb 2015 17:33:37 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A33DE3F@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A33DC69@AZ-FFEXMB01.global.avaya.com>
	<1549714.p2uxOlTH7e@peggleto-mobl5.ger.corp.intel.com>
	<F38A866CD026F746A3BF0928A84397BE3A33DDE8@AZ-FFEXMB01.global.avaya.com>
	<2901044.jggIWX4TSM@peggleto-mobl5.ger.corp.intel.com>,
	<CAJTo0LZwp_hAjjSw3Lae+3jHuEdh_Oz_XQH6FnCVd_ASNy7U_w@mail.gmail.com>
In-Reply-To: <CAJTo0LZwp_hAjjSw3Lae+3jHuEdh_Oz_XQH6FnCVd_ASNy7U_w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.152.73.21]
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
X-List-Received-Date: Mon, 02 Feb 2015 17:34:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks for providing input. I would need to evaluate the modification requi=
red to override such thing. One quick query in the do_install() can we have=
 the check as we do normally in the RPM spec file.
I mean to say %file and some logic like if this exist then execute a partic=
ular block. A post and prerun section. As what I can understand is that do_=
install or internally do_package generate its own SPEC file and create RPM.
Sorry for ask such thing as I am not able to find a document reference or a=
n example which shows how we can achieve the same.

Thanks,
Abhinav
________________________________________
From: Burton, Ross [ross.burton@intel.com]
Sent: Monday, February 02, 2015 10:44 PM
To: Bipnesh, Abhinav (Abhinav)
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Need help for custom recipe

On 2 February 2015 at 16:54, Paul Eggleton <paul.eggleton@linux.intel.com<m=
ailto:paul.eggleton@linux.intel.com>> wrote:
I'd have to say this is something we don't support. If you want to do this =
you
would need to disable the current packaging tasks and stage the package fil=
es
yourself, but that's going to take almost as much work as converting over y=
our
postinstall scripts to be specified within the recipe. You would also lose =
all
of the package QA checks that we currently run.

If you *really* want to do this then you'll probably need a custom do_packa=
ge to put the RPMs you've generated in the place that bitbake expects them,=
 or maybe a custom do_deploy.  At this point you're subverting the system s=
o you'll have to look at the default tasks to work out how they operate and=
 how to replace them.

Ross

