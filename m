Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87F0AE004DD
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2011 15:32:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Sep 2011 15:32:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="57268075"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 27 Sep 2011 15:32:08 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 27 Sep 2011 15:32:07 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.109]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.120]) with mapi id
	14.01.0323.003; Tue, 27 Sep 2011 15:32:07 -0700
From: "Liu, Song" <song.liu@intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Thread-Topic: [yocto] Minutes: Yocto Technical Team Meeting - (Tuesday,
	September 20,
	2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMeBwKnmjsDlNMt0qM/SxlN/BbvpVXwZpQgAAC3QCAADvNQIAIfNOA//+gPxCAAijHAP//lB0Q
Date: Tue, 27 Sep 2011 22:32:06 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F29963@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A16F23FE4@ORSMSX101.amr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A16F2402C@ORSMSX101.amr.corp.intel.com>
	<CAEsOVNe=sDsEHP20YbbXpzC2uFOwES20-uFJ+mWBQnea5Lby=g@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A16F24543@ORSMSX101.amr.corp.intel.com>
	<CAEsOVNc4xWAoE4Y0j=0sdqfDZHQu-27q=-j35qgE2LhQhU1d9g@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A16F27CFD@ORSMSX101.amr.corp.intel.com>
	<CAEsOVNes-qkt7Qx7orP+4cNm2GkASBvGQum=_pxxctJ7Ui-3rA@mail.gmail.com>
In-Reply-To: <CAEsOVNes-qkt7Qx7orP+4cNm2GkASBvGQum=_pxxctJ7Ui-3rA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
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
X-List-Received-Date: Tue, 27 Sep 2011 22:32:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thank you, Matthew!

Song

-----Original Message-----
From: McClintock Matthew-B29882 [mailto:B29882@freescale.com]=20
Sent: Tuesday, September 27, 2011 2:58 PM
To: Liu, Song
Cc: McClintock Matthew-B29882; Wold, Saul; yocto@yoctoproject.org
Subject: Re: [yocto] Minutes: Yocto Technical Team Meeting - (Tuesday, Sept=
ember 20, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))

On Mon, Sep 26, 2011 at 3:01 PM, Liu, Song <song.liu@intel.com> wrote:
> Hi Saul/Mark, would you guys please help clarifying this? We also need to=
 document this in the release note.

The conclusion here was that prelink is working in other 64bit
machines, so the powerpc64 issue is specific to that arch. Bug has
been filed to track the issue!

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1531

-M

