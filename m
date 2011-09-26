Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 285B9E004E9
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2011 13:01:07 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 26 Sep 2011 13:01:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,446,1312182000"; d="scan'208";a="20841097"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Sep 2011 13:01:06 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 26 Sep 2011 13:01:05 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.109]) by
	ORSMSX152.amr.corp.intel.com ([10.22.226.39]) with mapi id
	14.01.0323.003; Mon, 26 Sep 2011 13:01:04 -0700
From: "Liu, Song" <song.liu@intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>, "Wold, Saul"
	<saul.wold@intel.com>
Thread-Topic: [yocto] Minutes: Yocto Technical Team Meeting - (Tuesday,
	September 20,
	2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMeBwKnmjsDlNMt0qM/SxlN/BbvpVXwZpQgAAC3QCAADvNQIAIfNOA//+gPxA=
Date: Mon, 26 Sep 2011 20:01:04 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F27CFD@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A16F23FE4@ORSMSX101.amr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A16F2402C@ORSMSX101.amr.corp.intel.com>
	<CAEsOVNe=sDsEHP20YbbXpzC2uFOwES20-uFJ+mWBQnea5Lby=g@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A16F24543@ORSMSX101.amr.corp.intel.com>
	<CAEsOVNc4xWAoE4Y0j=0sdqfDZHQu-27q=-j35qgE2LhQhU1d9g@mail.gmail.com>
In-Reply-To: <CAEsOVNc4xWAoE4Y0j=0sdqfDZHQu-27q=-j35qgE2LhQhU1d9g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Technical Team Meeting - (Tuesday, September 20, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Sep 2011 20:01:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Saul/Mark, would you guys please help clarifying this? We also need to d=
ocument this in the release note.

Song

-----Original Message-----
From: McClintock Matthew-B29882 [mailto:B29882@freescale.com]=20
Sent: Monday, September 26, 2011 11:42 AM
To: Liu, Song
Cc: McClintock Matthew-B29882; Hatle, Mark; yocto@yoctoproject.org
Subject: Re: [yocto] Minutes: Yocto Technical Team Meeting - (Tuesday, Sept=
ember 20, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))

On Wed, Sep 21, 2011 at 11:08 AM, Liu, Song <song.liu@intel.com> wrote:
> Matthew, I believe Mark fixed this problem.
>
> Mark, would you please confirm that?

prelinking is not working on powerpc64 currently. Is it known to be
working well on other 64bit machines?

-M

