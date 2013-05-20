Return-Path: <belen.barros.pena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B5A9E01491
	for <yocto@yoctoproject.org>; Mon, 20 May 2013 09:03:42 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 May 2013 09:03:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,707,1363158000"; d="scan'208";a="337080254"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga001.fm.intel.com with ESMTP; 20 May 2013 09:03:42 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 20 May 2013 17:03:39 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.161]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.126]) with mapi id
	14.03.0123.003; Mon, 20 May 2013 17:03:39 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] RFC: templates in Hob 1.5
Thread-Index: AQHOVXOXcDEeE8GQckGqOl9YOLQ+Ng==
Date: Mon, 20 May 2013 16:03:39 +0000
Message-ID: <CDC005AA.2A500%belen.barros.pena@intel.com>
In-Reply-To: <CD80CC7F.26935%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.2.130206
x-originating-ip: [10.252.27.219]
MIME-Version: 1.0
Cc: "jshanab@earthlink.net" <jshanab@earthlink.net>
Subject: Re: RFC: templates in Hob 1.5
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
X-List-Received-Date: Mon, 20 May 2013 16:03:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <3FD0FDA50BDB594D9FD17860E9E4C7B8@intel.com>
Content-Transfer-Encoding: quoted-printable

We have been redesigning the Hob feature that we used to call 'templates'
for implementation during 1.5

If you'd like to have a look at what we are thinking, you can check the
bugzilla feature

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4193

and the document attached to it:

https://bugzilla.yoctoproject.org/attachment.cgi?id=3D1218

Work in progress still, so feedback welcome.

Belen

On 02/04/2013 18:03, "Barros Pena, Belen" <belen.barros.pena@intel.com>
wrote:

>On 02/04/2013 16:50, "Trevor Woerner" <twoerner@gmail.com> wrote:
>
>>On Tue, Apr 2, 2013 at 6:21 AM, Barros Pena, Belen
>><belen.barros.pena@intel.com> wrote:
>>> But it seems to me there is
>>> more interesting stuff buried somewhere in your answer, so I hope it's
>>>ok
>>> if I dig a little deeper.
>>
>>:-D
>>
>>> I think I might have asked the wrong question. Let's forget about the
>>>word
>>> "template" for a moment, and ask something a bit different: of the
>>>stuff
>>> you select / configure when building an image with Hob, what would be
>>> useful to save for reuse? Once we determine that, we can discuss how it
>>> should be called ("template" could be the wrong word).
>>
>>When I use Hob to click on things here and there, I'm usually just
>>playing around; just trying out some things. When I find some
>>combination of things that I like, my instinct would be to
>>compartmentalize that off into a layer: a particular grouping of
>>packages would either be a DISTRO or an image, building something for
>>a particular development board would be a BSP or a MACHINE (etc).
>>
>>In other words I think the "layer" concept completely captures
>>whatever it is you're trying to capture with "templates".
>>
>>:-D
>>
>>If you're looking to integrate this functionality into Hob, maybe you
>>need to look at some way of creating layers? Perhaps a user could save
>>their package configuration as a DISTRO or in an image layer?
>
>I like this answer much more :) Thanks, Trevor! This really helps.
>
>Belen
>
>---------------------------------------------------------------------
>Intel Corporation (UK) Limited
>Registered No. 1134945 (England)
>Registered Office: Pipers Way, Swindon SN3 1RJ
>VAT No: 860 2173 47
>
>This e-mail and any attachments may contain confidential material for
>the sole use of the intended recipient(s). Any review or distribution
>by others is strictly prohibited. If you are not the intended
>recipient, please contact the sender and delete all copies.
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


