Return-Path: <belen.barros.pena@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6D5BE00715
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 03:27:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Jul 2013 03:27:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1027,1363158000"; d="scan'208";a="367053472"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga002.jf.intel.com with ESMTP; 09 Jul 2013 03:27:35 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.91]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.35]) with mapi id
	14.03.0123.003; Tue, 9 Jul 2013 11:27:32 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] naming .bb files
Thread-Index: AQHOe/OjqOqpcNibyUm3D3F9nwKgCplcJe6A
Date: Tue, 9 Jul 2013 10:27:32 +0000
Message-ID: <CE0199EC.2D583%belen.barros.pena@intel.com>
In-Reply-To: <CAJTo0LaoiT4=q2f51NH3UFt50c7D5-gVLZJcjs91vaGGNDRG5Q@mail.gmail.com>
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
X-List-Received-Date: Tue, 09 Jul 2013 10:27:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <06A9BEFB230DB74EBB8C53B4A5A84744@intel.com>
Content-Transfer-Encoding: quoted-printable

Thanks Ross!

I've tried a .bb file name with capital letters and Hob is not liking it
at all. So it looks like uppercase might also be a problem.

Belen

On 08/07/2013 16:37, "Burton, Ross" <ross.burton@intel.com> wrote:

>On 8 July 2013 16:02, Barros Pena, Belen <belen.barros.pena@intel.com>
>wrote:
>> There seem to be certain rules regarding .bb files naming, but
>>apparently
>> those are not written anywhere. Some of those rules seem to be:
>>
>> * No spaces
>> * Underscores can only by used to separate name and version
>> * No ASCII special characters
>> * No non-ASCII characters
>> * No uppercase letters
>>
>> Does anybody know of any others we should be aware of?
>
>I wasn't aware of any restrictions on uppercase, but the recipe name
>part is probably restricted to ASCII alphanumeric (a-z, 0-9) and ASCII
>hyphens, then a underscore for the version separator, which is
>alphanumeric and periods.
>
>Ross
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


