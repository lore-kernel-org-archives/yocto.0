Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12F25E0094C; Thu,  7 May 2015 05:47:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30823E007B6
	for <yocto@yoctoproject.org>; Thu,  7 May 2015 05:47:15 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 07 May 2015 05:47:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,384,1427785200"; d="scan'208";a="706668506"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga001.fm.intel.com with ESMTP; 07 May 2015 05:47:13 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.5]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.145]) with mapi id
	14.03.0224.002; Thu, 7 May 2015 13:47:13 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Issue with toaster
Thread-Index: AQHQiMPwlgqxDyEgoECjGg7s0AKjdQ==
Date: Thu, 7 May 2015 12:47:13 +0000
Message-ID: <D1711C04.5B1A6%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.9.150325
x-originating-ip: [10.237.224.37]
MIME-Version: 1.0
Subject: Re: Issue with toaster
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
X-List-Received-Date: Thu, 07 May 2015 12:47:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <D8211D45231C0B4B9B9E41A2A840B9CF@intel.com>
Content-Transfer-Encoding: quoted-printable


On 07/05/2015 10:18, "Raghavendra Kakarla"
<Raghavendra.Kakarla@inedasystems.com> wrote:

>Hi,
> =20
>I have an issue while importing custom layer in toaster. When i gave the
>all layer information for importing the layer and click on the import
>layer button in toaster it    wont respond.
>Could you please help for resolving this issue.

Hi Raghavendra,

We would need a bit more information to understand what's happening:

* Which branch are you using (fido or master). If you are using master,
which commit?
* Which data are you entering in the import layer form? Keep in mind that
you must provide a git url, a unique layer name and a revision. Without
that information, the "import layer" button will remain stubbornly
inactive and nothing will happen when you click on it.

Cheers

Bel=E9n

>
>
>
>Thanks in advance.
>
>
> Regards,
> Raghavendra K.
>


