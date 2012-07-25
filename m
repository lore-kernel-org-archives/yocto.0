Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37A15E01304
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 14:29:14 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Jul 2012 14:29:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="186205949"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 25 Jul 2012 14:29:13 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 25 Jul 2012 14:29:13 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.93]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.166]) with mapi id
	14.01.0355.002; Wed, 25 Jul 2012 14:29:12 -0700
From: "Liu, Song" <song.liu@intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Thread-Topic: [yocto] Minutes: Yocto Project Technical Team Meeting -
	Tuesday, July 24, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US &
	Canada).
Thread-Index: AQHNafINPnasMs39yUCDdKQBMxLVVpc5jbOA//+MUbCAAdYBgP//lK3w
Date: Wed, 25 Jul 2012 21:29:13 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A484D1A18@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A484D0C2F@ORSMSX101.amr.corp.intel.com>
	<CAEsOVNfabpUDqQakX23OTh51bYmm4H_8n6rnKaa1-gd0ZD-O0g@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A484D0D25@ORSMSX101.amr.corp.intel.com>
	<CAEsOVNfeq61YK2v14OC5pGEDQv4KXzC0Xfaz4wQsx5cm-DZH6Q@mail.gmail.com>
In-Reply-To: <CAEsOVNfeq61YK2v14OC5pGEDQv4KXzC0Xfaz4wQsx5cm-DZH6Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Project Technical Team Meeting - Tuesday, July 24, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 25 Jul 2012 21:29:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Matthew, thanks for bring this up. Which build (minimal, sato, sdk or cu=
stomized?) did you run on Fedora 17? I'll check with QA to see whether they=
 used sstate-cache.

Song

-----Original Message-----
From: McClintock Matthew-B29882 [mailto:B29882@freescale.com]=20
Sent: Wednesday, July 25, 2012 1:52 PM
To: Liu, Song
Cc: McClintock Matthew-B29882; yocto@yoctoproject.org
Subject: Re: [yocto] Minutes: Yocto Project Technical Team Meeting - Tuesda=
y, July 24, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).

On Tue, Jul 24, 2012 at 6:50 PM, Liu, Song <song.liu@intel.com> wrote:
> Hi Matthew,
>
> We have tested these distros for the release:
>
> Fedora 17, OpenSuse 12.1 and Ubuntu 12.04
>
> You can also see it here in the full test report:=20
> https://wiki.yoctoproject.org/wiki/Yocto_1.1.2_Test_Report

Song,

I don't think this release builds on Fedora 17... I think testing was using=
 sstate-cache and not actually building the release on this distro.

-M

>
> Thanks,
> Song
>
> -----Original Message-----
> From: McClintock Matthew-B29882 [mailto:B29882@freescale.com]
> Sent: Tuesday, July 24, 2012 4:43 PM
> To: Liu, Song
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Minutes: Yocto Project Technical Team Meeting - Tues=
day, July 24, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
>
> On Tue, Jul 24, 2012 at 6:14 PM, Liu, Song <song.liu@intel.com> wrote:
>>   - Micahel: working on 1.1.2, working on releasing that, should be out =
today. Log aggregation. Working on optimizing backups. Cutting out what we =
don't need. Improve efficiency. Oscon, meet yocto team f2f, continue to pla=
n for the future upgrade rack to be able to use more electricity without pa=
ying more.
>
> I have more questions about what 1.1.2 was tested on.... sorry I have not=
 made these calls recently. But, what distro's was it tested against?
>
> -M
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

