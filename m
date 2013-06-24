Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56339E01408
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 10:01:22 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 24 Jun 2013 10:00:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,929,1363158000"; d="scan'208";a="354960665"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga001.fm.intel.com with ESMTP; 24 Jun 2013 10:01:22 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 24 Jun 2013 10:00:37 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.181]) by
	ORSMSX154.amr.corp.intel.com ([169.254.11.240]) with mapi id
	14.03.0123.003; Mon, 24 Jun 2013 10:00:37 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Philip Balister <philip@balister.org>
Thread-Topic: [yocto] Documenting YP Development Environment in more detail
	- user configuration
Thread-Index: Ac5uWGop+mI2fmjhR1eciv3x50rfAQCNXcvQACJr5oAADJ05QP//tLKAgAAC5oCAAHLvgP//rhYAgAB0e9A=
Date: Mon, 24 Jun 2013 17:00:36 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5155C@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
	<51C8466F.8040808@balister.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514AE@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1306241046210.24762@oneiric>
	<CAJTo0Lb8mXhsma_8XvWp2B68QQ9tcS6PVGj9QWqMENgeCt8h5g@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514E7@ORSMSX101.amr.corp.intel.com>
	<51C87A0C.1050003@balister.org>
In-Reply-To: <51C87A0C.1050003@balister.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail - user configuration
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
X-List-Received-Date: Mon, 24 Jun 2013 17:01:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ok - I was told there was just a single version of oe-init-build-env.  So t=
hat must be not quite right.  What I will likely do is in the supporting te=
xt for the figure get into some detail on just where these pieces are.  Tha=
t would be a good opportunity to maybe present some text around that.

>-----Original Message-----
>From: Philip Balister [mailto:philip@balister.org]
>Sent: Monday, June 24, 2013 9:56 AM
>To: Rifenbark, Scott M
>Cc: Burton, Ross; Robert P. J. Day; yocto@yoctoproject.org
>Subject: Re: [yocto] Documenting YP Development Environment in more
>detail - user configuration
>
>On 06/24/2013 11:08 AM, Rifenbark, Scott M wrote:
>> My figure is for Yocto Project documentation so I am going to show
>that oe-init-build-env gets information from meta-yocto.  I understand
>that OE-Core sample files are in "meta".  There is a single oe-init-
>build-env script and it looks in one of two places.
>
>Actually, the script is in two places, the root level of a poky checkout
>and in the oe-core directory.
>
>Explaining how poky is built up from oe-core + meta-yocto +
>meta-yocto-bsp + some other stuff would be really helpful in reducing
>confusion over what all the pieces are and where they come from.
>
>Philip
>
>>
>> Scott
>>
>>> -----Original Message-----
>>> From: Burton, Ross [mailto:ross.burton@intel.com]
>>> Sent: Monday, June 24, 2013 7:57 AM
>>> To: Robert P. J. Day
>>> Cc: Rifenbark, Scott M; yocto@yoctoproject.org
>>> Subject: Re: [yocto] Documenting YP Development Environment in more
>>> detail - user configuration
>>>
>>> On 24 June 2013 15:47, Robert P. J. Day <rpjday@crashcourse.ca>
>wrote:
>>>> On Mon, 24 Jun 2013, Rifenbark, Scott M wrote:
>>>>
>>>>> What I was trying to convey here is that oe-init-build-env draws on
>>>>> some files in the meta-yocto layer.  The script oe-init-build-env
>is
>>>>> in the poky repository (or refered to as "Source Directory" in the
>>>>> documentation).  The sample files are in the meta-yocto layer.  I
>>>>> thought the meta-yocto layer was needed... maybe I am wrong.  Can I
>>>>> get more clarification on this?
>>>>
>>>>   i regularly build images without any "*yocto*"-named layer, unless
>>>> i'm misunderstanding the issue here.
>>>
>>> meta-yocto is what makes Poky Poky, otherwise it would be just oe-
>core
>>> + bitbake.  oe-init-build-env looks for sample files in
>$TEMPLATECONF,
>>> which is one of the things that get munged as
>>> bitbake+oe-core+meta-yocto becomes poky.
>>>
>>> Ross
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>

