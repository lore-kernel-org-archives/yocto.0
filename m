Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7A2AE008DB; Tue, 11 Nov 2014 05:53:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	URIBL_DBL_ABUSE_REDIR,URIBL_DBL_REDIR autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 URIBL_DBL_ABUSE_REDIR Contains an abused redirector URL listed in
	*      the DBL blocklist *      [URIs: goo.gl]
	*  0.0 URIBL_DBL_REDIR Contains a URL listed in the DBL as a spammed
	*      redirector domain *      [URIs: goo.gl]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01B8AE008B4
	for <yocto@yoctoproject.org>; Tue, 11 Nov 2014 05:53:24 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Nov 2014 05:53:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,361,1413270000"; d="scan'208";a="630140027"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga002.fm.intel.com with ESMTP; 11 Nov 2014 05:53:22 -0800
Received: from irsmsx155.ger.corp.intel.com (163.33.192.3) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Tue, 11 Nov 2014 13:53:21 +0000
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.3]) by
	IRSMSX155.ger.corp.intel.com ([169.254.14.70]) with mapi id
	14.03.0195.001; Tue, 11 Nov 2014 13:53:21 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Richard Schmitt <richard.schmitt@freescale.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Making Hob better.
Thread-Index: AQHP/bbabx7bQV45akubzW4tuKn3nA==
Date: Tue, 11 Nov 2014 13:53:20 +0000
Message-ID: <D087C161.4DC2F%belen.barros.pena@intel.com>
References: <CAByxTR_jmYDr4QUAtXg20UBV_FXZ-yUk=WEJ3LTA1wkaRAx6Yw@mail.gmail.com>
	<D08793BD.4DAD5%belen.barros.pena@intel.com>
	<4b71e65f9d0949928a7575be01750a68@BN1PR0301MB0641.namprd03.prod.outlook.com>
In-Reply-To: <4b71e65f9d0949928a7575be01750a68@BN1PR0301MB0641.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.5.141003
x-originating-ip: [10.237.224.33]
MIME-Version: 1.0
Cc: John Unland <opensourcejohn2112@gmail.com>
Subject: Re: Making Hob better.
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
X-List-Received-Date: Tue, 11 Nov 2014 13:53:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <61F1E965CCFBDF4189530BD6112F2817@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi Richard,

On 11/11/2014 12:58, "Richard Schmitt" <richard.schmitt@freescale.com>
wrote:

>We also are looking to update Hob.

It is great to see so much interest in Hob: for a while we thought nobody
was using it! But I should probably be clear about the project plans in
relation to Hob. The final goal is to replace it with Toaster. Hob is
still being maintained, but no new features are planned for it.

You are of course free to take Hob and add to it if you feel that's the
tool that better suits your needs. However:

* I cannot guarantee that Hob will be included in future releases of the
Yocto Project.

* Having been very involved in both Hob and Toaster, I must say that
Toaster will be much more powerful, easier to extend with new features
like the ones you suggest below, and in general way nicer to use.

I am not sure how much you know about the Toaster project, or if there is
anything in it that makes it unfit for your needs. But I would be happy to
have a chat about it all, answer any questions you may have, and demo it
if you'd like to see it.

>In particular, adding kernel feature support.  Branding would be nice
>too. =20

A kernel configuration module for Toaster is something that we'd like to
see at some point. And the branding one I agree it would be great to have.
Feel free to open Bugzilla entries for both.

Cheers

Bel=E9n

>
>Rich
>
>-----Original Message-----
>From: yocto-bounces@yoctoproject.org
>[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Barros Pena, Belen
>Sent: Tuesday, November 11, 2014 4:37 AM
>To: John Unland; yocto@yoctoproject.org
>Subject: Re: [yocto] Making Hob better.
>
>Hi John,
>
>Thanks for your feedback on Hob: I agree with everything you said.
>
>We are currently moving towards web-based interfaces for the Yocto
>Project tools, and are working on something called Toaster that
>eventually will do what Hob does. You can get more information on Toaster
>at
>
>https://www.yoctoproject.org/documentation/toaster-manual-17
>
>On 10/11/2014 23:58, "John Unland" <opensourcejohn2112@gmail.com> wrote:
>
>>Lastly, I would really love to help with development as well.
>> I
>>haven't really gotten into programming that much but I have worked with
>>the Fedora Server Special Interest Group doing QA for Alpha and Beta
>>release. So if anyone can put me in the right direction I can certainly
>>help YP out.
>
>Contributions are very welcome! :) You can get involved in both
>development and QA work. To get started, you can subscribe to the Toaster
>mailing list:
>
>https://lists.yoctoproject.org/listinfo/toaster
>
>You can have a look at the features we are currently working on in the
>Yocto Project Bugzilla instance
>
>http://goo.gl/KncliQ
>
>There is information on how to contribute at
>
>https://wiki.yoctoproject.org/wiki/Contribute_to_Toaster
>
>We also have a weekly call that happens on Wednesdays at 4pm GMT. If you
>would like to join the call, let me know.
>
>All the best,
>
>Bel=E9n
>
>
>>
>>Thank you.
>>--
>>_______________________________________________
>>yocto mailing list
>>yocto@yoctoproject.org
>>https://lists.yoctoproject.org/listinfo/yocto
>
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


