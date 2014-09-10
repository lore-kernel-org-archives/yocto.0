Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2360CE00566; Tue,  9 Sep 2014 21:51:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0121CE0054C
	for <yocto@yoctoproject.org>; Tue,  9 Sep 2014 21:51:28 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Sep 2014 21:44:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,495,1406617200"; d="scan'208";a="600645799"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga002.jf.intel.com with ESMTP; 09 Sep 2014 21:51:02 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Tue, 9 Sep 2014 21:51:02 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.117]) by
	ORSMSX112.amr.corp.intel.com ([169.254.12.46]) with mapi id
	14.03.0195.001; Tue, 9 Sep 2014 21:51:02 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>, Nemicolopterus Crypticus
	<ncrypticus@gmail.com>
Thread-Topic: [yocto] EXTERNALSRC
Thread-Index: AQHPzHhrZT9KgjMMA0+gRIaHv8YWN5v6McWA//+agnA=
Date: Wed, 10 Sep 2014 04:51:01 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FE8C08@ORSMSX101.amr.corp.intel.com>
References: <CAMSG=xW13=_vydq4ytYT_G2FTz+RH9EoTYpQqf667QO1mb_=pg@mail.gmail.com>
	<CAP71WjzYhpLsxEYHb+4OvfHYAMx7X+1oUMzX=3ySeH_M91==RA@mail.gmail.com>
In-Reply-To: <CAP71WjzYhpLsxEYHb+4OvfHYAMx7X+1oUMzX=3ySeH_M91==RA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: EXTERNALSRC
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
X-List-Received-Date: Wed, 10 Sep 2014 04:51:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

This is an error in the manual.  I have been formatting the user-supplied p=
ortions of examples now in an italisized font.  This one needs to be fixed.

Thanks,=20
Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Nicolas Dechesne
>Sent: Tuesday, September 09, 2014 8:53 PM
>To: Nemicolopterus Crypticus
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] EXTERNALSRC
>
>On Tue, Sep 9, 2014 at 11:51 PM, Nemicolopterus Crypticus
><ncrypticus@gmail.com> wrote:
>> What else do I need to do in order to correctly set the source directory=
?
>> The dev manual recommends this:
>>
>> EXTERNALSRC_pn-myrecipe =3D "/some/path/to/your/source/tree"
>>
>>
>> How literal is "pn-myrecipe"? If I have a recipe called "banana.bb",
>> should I have "EXTERNALSRC_banana-banana.bb" in my local.conf?
>
>
>it needs to be EXTERNALSRC_pn-banana and EXTERNALSRC_BUILD_pn-
>banana
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

