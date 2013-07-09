Return-Path: <belen.barros.pena@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5804E005B3
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 06:45:05 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 09 Jul 2013 06:45:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1028,1363158000"; d="scan'208";a="362568967"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga001.fm.intel.com with ESMTP; 09 Jul 2013 06:46:04 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.91]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.127]) with mapi id
	14.03.0123.003; Tue, 9 Jul 2013 14:45:02 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] naming .bb files
Thread-Index: AQHOfKqCqOqpcNibyUm3D3F9nwKgCg==
Date: Tue, 9 Jul 2013 13:45:01 +0000
Message-ID: <CE01D0ED.2D874%belen.barros.pena@intel.com>
In-Reply-To: <CANyK_8e+0BLNcfbTcXWt-oHn9-Mh+K+PNddjPfw-Uu+42aWxqA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.2.130206
x-originating-ip: [10.237.224.165]
MIME-Version: 1.0
Subject: Re: naming .bb files
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
X-List-Received-Date: Tue, 09 Jul 2013 13:45:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <40A04384B3592D41BED4CD03C212BE34@intel.com>
Content-Transfer-Encoding: quoted-printable

On 09/07/2013 11:35, "Paul Barker" <paul@paulbarker.me.uk> wrote:

>On 9 July 2013 11:27, Barros Pena, Belen <belen.barros.pena@intel.com>
>wrote:
>> Thanks Ross!
>>
>> I've tried a .bb file name with capital letters and Hob is not liking it
>> at all. So it looks like uppercase might also be a problem.
>>
>
>This is from memory and a month or so back but I think the problem
>with capital letters is that opkg rejects .ipk files with capital
>letters. I didn't have any problems with it when producing .deb files.

It sounds like the safe thing for Hob to do is to reject uppercase letters
in .bb file names (just in case).


Thanks! =



>
>--
>Paul Barker
>
>Email: paul@paulbarker.me.uk
>http://www.paulbarker.me.uk

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


