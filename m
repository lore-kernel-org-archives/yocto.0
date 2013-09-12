Return-Path: <belen.barros.pena@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75F1EE005B3
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 08:01:57 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 12 Sep 2013 08:01:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,891,1371106800"; d="scan'208";a="394783840"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga001.fm.intel.com with ESMTP; 12 Sep 2013 08:01:54 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.226]) by
	IRSMSX103.ger.corp.intel.com ([163.33.3.157]) with mapi id
	14.03.0123.003; Thu, 12 Sep 2013 16:01:51 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Diego Gonzalez <diego.gonzalez@horus.es>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Hob Question
Thread-Index: AQHOr8kCTFOn5UG53EWRFr+NXZsjGA==
Date: Thu, 12 Sep 2013 15:01:51 +0000
Message-ID: <CE575EB7.323DD%belen.barros.pena@intel.com>
In-Reply-To: <1378983784294065500@horus.es>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.2.130206
x-originating-ip: [10.237.224.163]
MIME-Version: 1.0
Subject: Re: Hob Question
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
X-List-Received-Date: Thu, 12 Sep 2013 15:01:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <B8BF88D1D9B02A4B97FE64AA1D0F58CD@intel.com>
Content-Transfer-Encoding: quoted-printable

On 12/09/2013 12:03, "Diego Gonzalez" <diego.gonzalez@horus.es> wrote:

>Hello,

Hola Diego

>
>I just read this blog
>https://www.yoctoproject.org/blogs/belenbarrospena/2013/saving-your-hob-cu
>stomised-builds-image-recipes , which explains how to save your hob
>customized images . However when it finished to build my image I can't
>save it because there's
> not Save Image recipe button. How I can save it? Why I can't see this
>button?

I am assuming you are building with the Yocto Project master branch: the
feature is not available on the Dylan release.

If you are, the 'Save image recipe' button will display only when you edit
the Yocto Project image recipe you are starting from (I.e. If you add
/remove some packages to / from it). If you build one of the Yocto Project
image recipes as they come, without making any changes to the package
list, the save option will not show.

If you are changing the package list and still cannot see the save option,
something is not working as it should. Can I ask you to open a bug if
that's the case? You can do so at http://bugzilla.yoctoproject.org/

Saludos,

Bel=E9n

>
>
>Diego Gonz=E1lez Gonz=E1lez
>Dpto. de Control Industrial
> =

>HORUS HARDWARE S.A.
>Pol Ind Europolis C/Berna n=BA4
>28232 Las Rozas de Madrid
>diego.gonzalez@horus.es <mailto:enrique.fernandez@horus.es>
>
>

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


