Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6E72E00BE5; Sun, 18 May 2014 23:03:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga11.intel.com (unknown [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53929E00BD5
	for <yocto@yoctoproject.org>; Sun, 18 May 2014 23:03:52 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 May 2014 23:03:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,865,1392192000"; d="scan'208";a="533984077"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by fmsmga001.fm.intel.com with ESMTP; 18 May 2014 23:03:51 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
	ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Sun, 18 May 2014 23:03:51 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.192]) by
	ORSMSX114.amr.corp.intel.com ([169.254.8.17]) with mapi id
	14.03.0123.003; Sun, 18 May 2014 23:03:51 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, Chris Morgan
	<chmorgan@gmail.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Documentation improvements for gitsm:// fetcher
Thread-Index: AQHPcseAhz6n68E0Dk6SJ+uCHJ9joJtHYT1wgAAJPLA=
Date: Mon, 19 May 2014 06:03:49 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F99000@ORSMSX101.amr.corp.intel.com>
References: <CAAPegz3=+kmfS7DAY2MoFg0jxePeOSeay-4oFFVdB6b6x11xsw@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F98FD5@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F98FD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>
Subject: Re: [PATCH] Documentation improvements for gitsm:// fetcher
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
X-List-Received-Date: Mon, 19 May 2014 06:03:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I can't apply this patch.  It goes beyond the doc files so I need to leave =
it to Richard to apply.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Rifenbark, Scott M
>Sent: Sunday, May 18, 2014 10:34 PM
>To: Chris Morgan; yocto@yoctoproject.org
>Subject: Re: [yocto] [PATCH] Documentation improvements for gitsm://
>fetcher
>
>Hi,
>
>This patch is not coming across to me intact.  The process I use for patch=
es is to
>take the attachment from my Thunderbird account and save it as an .EML fil=
e.
>Then, I mail that .EML file to my Linux box gmail account.  From there I p=
rocess
>the patch using the 'patch' command as normal.  For some reason, the .EML
>file when it arrives to my gmail account has long lines of random characte=
rs
>(gibberish) that the patch program is unable to deal with.  I am unsure if=
 it is a
>problem on my end with my process or with the patch generation.
>
>Scott
>
>>-----Original Message-----
>>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>bounces@yoctoproject.org] On Behalf Of Chris Morgan
>>Sent: Sunday, May 18, 2014 11:29 AM
>>To: yocto@yoctoproject.org
>>Subject: [yocto] [PATCH] Documentation improvements for gitsm://
>>fetcher
>>
>>Rough patch for documentation improvements now that I know how gitsm
>>should work and to help others that might be caught by switching from
>>git:// to gitsm:// URIs.
>>
>>Chris
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

