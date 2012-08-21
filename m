Return-Path: <david.c.stewart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AAE5E0027E
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 09:34:56 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by orsmga101.jf.intel.com with ESMTP; 21 Aug 2012 09:21:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,802,1336374000"; d="scan'208";a="136553956"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Aug 2012 09:21:21 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 21 Aug 2012 09:21:20 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.178]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.217]) with mapi id
	14.01.0355.002; Tue, 21 Aug 2012 09:21:20 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Jeff Osier-Mixon <jefro@jefro.net>, aaryak gautam <aaryak.gautam@gmail.com>
Thread-Topic: [yocto] adding packages in my Yocto
Thread-Index: AQHNf6/lLxNp/MZNw0eeIF/tO9QUaJdk4mKA//+P/hA=
Date: Tue, 21 Aug 2012 16:21:20 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D151C8FE203@ORSMSX105.amr.corp.intel.com>
References: <CAMv4DROy+nzU-6ESb2FGQyok33C7e6hV7EoOhN_5sq8PSCTxYA@mail.gmail.com>
	<CA+YB3rYnSio1LLL_awAUM55FaMwdQoxsyanopVTOmmNHmGRqwA@mail.gmail.com>
In-Reply-To: <CA+YB3rYnSio1LLL_awAUM55FaMwdQoxsyanopVTOmmNHmGRqwA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: adding packages in my Yocto
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
X-List-Received-Date: Tue, 21 Aug 2012 16:34:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Good advice. A quick check of openembedded-core shows that gst-ffmpeg appea=
rs to be one of the packages available. Yes, definitely check the hob.

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Jeff Osier-Mixon
>Sent: Tuesday, August 21, 2012 9:01 AM
>To: aaryak gautam
>Cc: Yocto Project
>Subject: Re: [yocto] adding packages in my Yocto
>
>Hi - please take a look at the FAQ here:
>https://wiki.yoctoproject.org/wiki/FAQ
>
>Near the bottom there are some technical answers, one of which is how
>to add a single package:
>
>Q: How can I add a package to my project?
>
>A: As with any complex system, the real answer is it depends, but of
>course that is not very helpful. The simplest method for adding a
>single package to your build is to add a line like this to
>conf/local.conf:
>
>   IMAGE_INSTALL_append +=3D " package"
>
>Use your own package name in place of package. Note the leading space
>before the package name.
>For more information, read this chapter in the Yocto Project
>Development Manual
>(http://www.yoctoproject.org/docs/current/dev-manual/dev-
>manual.html#usingpoky-extend-addpkg).
>
>I also highly recommend trying out the Hob interface, as it makes the
>whole system easier to understand. I like to make changes in the Hob
>and then examine those changes in the resulting configuration files to
>better understand the system at work.
>
>Hope this helps!
>
>On Tue, Aug 21, 2012 at 1:26 AM, aaryak gautam <aaryak.gautam@gmail.com>
>wrote:
>> Hello
>>
>> I am  a hobbyist and quite new to both Linux and Yocto.
>> I had already compiled my Yocto kernel for I.MX23 successfully.
>> But I want to add few packages.
>> Like if i want to have ffmpeg in my yocto,how should I add it?
>> I have gone through the documentation,but could not understand.
>>
>> can you help me out?
>> I am using Bitbake core-image-minimal , not sato.
>>
>>
>> Thank You.
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
>--
>Jeff Osier-Mixon http://jefro.net/blog
>Yocto Project Community Manager @Intel http://yoctoproject.org
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

