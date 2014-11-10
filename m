Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02286E0085F; Mon, 10 Nov 2014 03:09:29 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E587E007C2
	for <yocto@yoctoproject.org>; Mon, 10 Nov 2014 03:09:24 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Nov 2014 03:09:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,352,1413270000"; d="scan'208";a="629470494"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga002.fm.intel.com with ESMTP; 10 Nov 2014 03:09:23 -0800
Received: from irsmsx105.ger.corp.intel.com (163.33.3.28) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 10 Nov 2014 11:09:23 +0000
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.3]) by
	IRSMSX105.ger.corp.intel.com ([169.254.7.56]) with mapi id
	14.03.0195.001; Mon, 10 Nov 2014 11:09:22 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Lei, Maohui" <leimaohui@cn.fujitsu.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] question about toaster in yocto 1.7
Thread-Index: AQHP/NbHWilKIe9i7Uu2an/eiFsTyQ==
Date: Mon, 10 Nov 2014 11:09:22 +0000
Message-ID: <D0864728.4D9D1%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.5.141003
x-originating-ip: [10.237.224.37]
MIME-Version: 1.0
Subject: Re: question about toaster in yocto 1.7
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
X-List-Received-Date: Mon, 10 Nov 2014 11:09:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <565A28B36C37B24CA2B416AB0AE2CD87@intel.com>
Content-Transfer-Encoding: quoted-printable

On 10/11/2014 10:23, "Lei, Maohui" <leimaohui@cn.fujitsu.com> wrote:

>Hi all
>
>   I have read the "Toaster Manual 1.7" and have a question :
>   The toaster still can't launch a build in yocto 1.7 ?

Hi Lei,

No, I am afraid Toaster still cannot launch builds in Yocto Project 1.7.
We are working on it though, so Toaster should be able to launch builds in
Yocto Project 1.8. If you want to help us make it happen (contributions
sorely needed), let me know.

Cheers

Bel=E9n

>
>Thanks,
>
>Lei Maohui
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


