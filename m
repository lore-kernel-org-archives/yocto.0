Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB517E008CC; Wed, 11 Feb 2015 02:48:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A050EE00815
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 02:48:28 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 11 Feb 2015 02:48:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,558,1418112000"; d="scan'208";a="676269629"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
	by fmsmga002.fm.intel.com with ESMTP; 11 Feb 2015 02:48:26 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.8]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.84]) with mapi id
	14.03.0195.001; Wed, 11 Feb 2015 10:48:25 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Wood, Michael G" <michael.g.wood@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [error-report-web] New errors-report-web
Thread-Index: AQHQRehCy2Zl39mRuUO6d2WhgTY/xQ==
Date: Wed, 11 Feb 2015 10:48:24 +0000
Message-ID: <D100E3D2.53F21%belen.barros.pena@intel.com>
References: <54DA151D.4080500@intel.com>
In-Reply-To: <54DA151D.4080500@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.7.141117
x-originating-ip: [10.237.224.33]
MIME-Version: 1.0
Subject: Re: [error-report-web] New errors-report-web
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
X-List-Received-Date: Wed, 11 Feb 2015 10:48:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <62F0E0C819E6F44490E7517B7AF4B5A8@intel.com>
Content-Transfer-Encoding: quoted-printable

Thanks for all the work on this, Michael!

Bel=E9n

On 10/02/2015 14:26, "Michael Wood" <michael.g.wood@intel.com> wrote:

>Hi,
>
>I've updated the errors.yoctoproject.org site with the latest version of
>error-report-web [1] that myself and Bel=E9n have been working on.
>
>error-report-web is a project to provide a web service that can be used
>to collect and display build error reports. Error report generation can
>be enabled in your build's local.conf [2]
>
>Here are some of the highlights for the latest version:
>
>     - Option to have a JSON response on error report submission
>     - Optional "Special submitter" allowing an extra tab in the UI for
>quick access to a defined submitter (e.g "autobuilder")
>     - Filtering and ordering on columns
>     - Searching improved to allow search of the contents of error
>reports and other useful fields
>     - Improved page loading speed
>     - Non blocking graph generation
>     - Unit tests
>     - Update to Django 1.7
>     - Add support for Django migrations
>     - View errors by build
>     - Many UI tweaks
>     - Better error handling
>     - Simpler url structure
>
>Thanks,
>
>Michael
>
>[1] http://git.yoctoproject.org/cgit/cgit.cgi/error-report-web/
>[2]=20
>http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.html#using-th
>e-error-reporting-tool
>
>
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


