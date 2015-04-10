Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FBFFE0091A; Fri, 10 Apr 2015 02:38:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E720EE0049A
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 02:38:00 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 10 Apr 2015 02:37:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,556,1422950400"; d="scan'208";a="479272375"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by FMSMGA003.fm.intel.com with ESMTP; 10 Apr 2015 02:37:59 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.83]) by
	IRSMSX104.ger.corp.intel.com ([169.254.3.49]) with mapi id
	14.03.0224.002; Fri, 10 Apr 2015 10:37:58 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Timur Aydin <ta@taydin.org>, =?iso-8859-1?Q?yocto__=A7?=
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] toaster configuration variables
Thread-Index: AQHQc3IH8X+9X4zyc0SiUA+JiC/NkQ==
Date: Fri, 10 Apr 2015 09:37:58 +0000
Message-ID: <D14D576E.5929C%belen.barros.pena@intel.com>
References: <55267AB3.1000304@taydin.org>
In-Reply-To: <55267AB3.1000304@taydin.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.8.150116
x-originating-ip: [10.237.224.80]
MIME-Version: 1.0
Subject: Re: toaster configuration variables
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
X-List-Received-Date: Fri, 10 Apr 2015 09:38:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <66D1693EA0750E49A47FF9D1EF7B4B69@intel.com>
Content-Transfer-Encoding: quoted-printable



On 09/04/2015 14:12, "Timur Aydin" <ta@taydin.org> wrote:

>Hi,
>
>I am using yocto version 1.6.2 Daisy branch to build a linux
>distribution for the imx6 processor.
>
>I have started the toaster prior to the build and after the build is
>done, I have examined the bitbake configuration variables. It looks like
>the variable values displayed by the toaster are different from the
>variable values displayed when using bitbake -e myimage > a.txt
>
>The variable I am seeing different is the DISTRO_FEATURES variable. The
>value that toaster displays seems to be the default value of this
>variable, whereas the bitbake -e output shows the correct actual value.
>
>Also the IMAGE_INSTALL variable does not exist in the toaster user
>interface, whereas it does exist in the bitbake -e output.

Hi Timur,=20

Currently Toaster only shows the output of 'bitbake -e' (i.e. the global
context), not the output of 'bitbake -e recipe_name' (i.e. the recipe
context).=20


>
>What could be the problem? Is toaster experimental at this time?

I wouldn't call it 'experimental', just 'young' :)

Cheers

Bel=E9n

>
>--=20
>Timur
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


