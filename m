Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 087DEE01822
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 14:29:29 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Nov 2013 14:29:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,654,1378882800"; d="scan'208";a="429693716"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga002.fm.intel.com with ESMTP; 07 Nov 2013 14:29:28 -0800
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 7 Nov 2013 14:29:28 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX158.amr.corp.intel.com ([169.254.10.67]) with mapi id
	14.03.0123.003; Thu, 7 Nov 2013 14:29:27 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>, Scott Rifenbark <srifenbark@gmail.com>
Thread-Topic: [yocto] should yocto filename references start with a leading
	slash?
Thread-Index: AQHO26caKnrzpubPxk6kuwIqjFHMqZoaWeLg
Date: Thu, 7 Nov 2013 22:29:26 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F45204@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311061409480.2880@oneiric>
	<2732208.eD41GxcQ8I@helios>
In-Reply-To: <2732208.eD41GxcQ8I@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: should yocto filename references start with a leading	slash?
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
X-List-Received-Date: Thu, 07 Nov 2013 22:29:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I searched through the YP doc set and removed as many leading slash charact=
ers that were being used in pathnames as possible.  There are a few "~" cha=
racters in some of the very specific examples that I left.  But for the mos=
t part, directory name usage is consistent now.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Paul Eggleton
>Sent: Thursday, November 07, 2013 2:49 AM
>To: Robert P. J. Day; Scott Rifenbark
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] should yocto filename references start with a leading
>slash?
>
>On Wednesday 06 November 2013 14:12:17 Robert P. J. Day wrote:
>>   currently reading ref manual, section 6, and i'm seeing filename
>> references of the form /meta-yocto/conf, /scripts/oe-setup-builddir,
>> and so on.
>>
>>   is it really appropriate for those filenames to begin with a leading
>> slash? it seems unnecessary, and possibly a bit misleading. is there a
>> reason for those leading slashes?
>
>I'd have to agree, there should not be a leading slash. I see there are so=
me
>paths in the reference manual where we use $HOME/poky/ as a prefix, those
>should probably also be removed.
>
>Cheers,
>Paul
>
>--
>
>Paul Eggleton
>Intel Open Source Technology Centre
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

