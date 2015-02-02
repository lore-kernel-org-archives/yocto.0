Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C13AE008A6; Mon,  2 Feb 2015 10:05:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 064F0E00824
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 10:05:16 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 02 Feb 2015 09:58:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,507,1418112000"; d="scan'208";a="660430585"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga001.fm.intel.com with ESMTP; 02 Feb 2015 10:05:13 -0800
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 2 Feb 2015 10:05:13 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.77]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.139]) with mapi id
	14.03.0195.001; Mon, 2 Feb 2015 10:05:13 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "Burton, Ross"
	<ross.burton@intel.com>, Christopher Larson <clarson@kergoth.com>, "Gary
	Thomas" <gary@mlbassoc.com>
Thread-Topic: [yocto] sstate management
Thread-Index: AQHQPwdbkFRHcu7K90StvDBfmKPEo5zeGC4AgAAMj4CAAAKwAP//f62g
Date: Mon, 2 Feb 2015 18:05:13 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EA2C71@ORSMSX101.amr.corp.intel.com>
References: <54CFA908.7010507@mlbassoc.com>
	<CABcZANmY5-_wgSZp2xb=20Og27mcDJ_e7_QFZHGnHV67L1vr_g@mail.gmail.com>
	<CAJTo0La5PVoaE=Qyyje3Jqy6i2f15djUYyGwOAks8KG-71NMbA@mail.gmail.com>
	<1497730.Ya5ZGJxmZb@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1497730.Ya5ZGJxmZb@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: sstate management
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
X-List-Received-Date: Mon, 02 Feb 2015 18:05:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

You might want to quickly look through http://www.yoctoproject.org/docs/1.8=
/ref-manual/ref-manual.html#shared-state-cache in the ref-manual before sup=
plying raw documentation information.  This section is our current discours=
e on sstate.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Paul Eggleton
>Sent: Monday, February 02, 2015 9:43 AM
>To: Burton, Ross; Christopher Larson; Gary Thomas
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] sstate management
>
>On Monday 02 February 2015 17:33:23 Burton, Ross wrote:
>> On 2 February 2015 at 16:48, Christopher Larson <clarson@kergoth.com>
>wrote:
>> >   Is there some maintenance to be done on the sstate-cache?
>> >
>> >>   I'm thinking I want to set up a shared cache which might
>> >>   last for a long time and I would like to only keep the bits
>> >>   that are really needed.
>> >
>> > In the past i've either used sstate-cache-management.sh or ensured
>> > that SSTATE_DIR is on a mount with atime enabled and just
>> > periodically wiped anything that hasn't been accessed in over a week.
>>
>> Seconded on this - after doing lots of builds in the last few weeks
>> involving five machines and new eglibc/gcc patches my sstate was
>> 1.2TB.  A quick find -atime -delete did the job.
>
>I don't suppose I can talk one or more of you into writing up some
>documentation for this to add to the manual? (As usual, something raw in t=
he
>form of a wiki page that Scott can then adapt would be ideal.)
>
>Cheers,
>Paul
>
>--
>
>Paul Eggleton
>Intel Open Source Technology Centre
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

