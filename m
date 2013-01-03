Return-Path: <belen.barros.pena@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27827E002AB
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2013 08:47:53 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 03 Jan 2013 08:47:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,403,1355126400"; d="scan'208";a="187407736"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Jan 2013 08:47:50 -0800
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.151]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.13]) with mapi id
	14.01.0355.002; Thu, 3 Jan 2013 16:47:31 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Biao <huanmateme@163.com>, Mihai Lindner <mihaix.lindner@linux.intel.com>
Thread-Topic: [yocto] Fails to launch the hob
Thread-Index: AQHN6dIPjkAsLgfmeUSKd6tEMe4zWQ==
Date: Thu, 3 Jan 2013 16:47:48 +0000
Message-ID: <CD0B6407.1EB06%belen.barros.pena@intel.com>
In-Reply-To: <28832c0.77c6.13bd0b4afab.Coremail.huanmateme@163.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.5.121010
x-originating-ip: [10.252.21.11]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fails to launch the hob
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
X-List-Received-Date: Thu, 03 Jan 2013 16:47:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <76E270DC90D5294E91955DACF4CA019A@intel.com>
Content-Transfer-Encoding: quoted-printable

Any chance we could change the content of the error message to provide bett=
er indication of what the problem is? The idea would be adding version numb=
ers and printing only what's causing trouble.

So, from:

$ hob
FATAL: Gtk+, PyGtk and PyGobject are required to use Hob,
You have Gtk+ 2.20.1 and PyGtk 2.17.0.

To something like:

$ hob
FATAL: Hob requires Gtk+ 2.20.0 or higher, PyGtk 2.21.0 or higher and PyGob=
ject [insert minimum version here] or higher
You have PyGtk 2.17.0.

Would this be possible?

We should probably also add a paragraph listing essential packages to the H=
ob manual page on the website (https://www.yoctoproject.org/documentation/h=
ob-manual). If someone tells me what's the minimum version of PyGobject req=
uired I could probably edit the page myself.

Thanks!

Belen



From: Biao <huanmateme@163.com<mailto:huanmateme@163.com>>
Date: Tuesday, 25 December 2012 06:16
To: Mihai Lindner <mihaix.lindner@linux.intel.com<mailto:mihaix.lindner@lin=
ux.intel.com>>
Cc: "yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>" <yocto@yoctopro=
ject.org<mailto:yocto@yoctoproject.org>>
Subject: Re: [yocto] Fails to launch the hob


At 2012-12-24 20:37:26,"Mihai Lindner" <mihaix.lindner@linux.intel.com<mail=
to:mihaix.lindner@linux.intel.com>> wrote:
>On Mon, 2012-12-24 at 14:23 +0200, Mihai Lindner wrote:
>> On Mon, 2012-12-24 at 15:37 +0800, Biao wrote:
>> > Hi all,
>> >
>> >
>> > I can not launch hob on my ubun-10.04, it seems saying "no PyGobject" =
whereas python-object has already been installed. Can anyone kindly give a =
help?
>> >
>Oh, forgot to mention here, that you should probably be using Denzil,
>instead of Danny or 'master'.

Thanks for the kindly reminder.
>> >
>> > $ hob
>> > FATAL: Gtk+, PyGtk and PyGobject are required to use Hob,
>> > You have Gtk+ 2.20.1 and PyGtk 2.17.0.
>> >
>> >
>> > $ sudo apt-get install python-gobject
>> > Reading package lists... Done
>> > Building dependency tree
>> > Reading state information... Done
>> > python-gobject is already the newest version.
>> >
>> Python-gobject seems fine, Gtk seems fine (you have 2.20.1, Hob wants
>> higher than 2.20.0), which leaves python-gtk2 version 2.17.0 on your
>> system. Hob wants a version higher than 2.21.0.

Thanks for this information, it seems the prompt message on the environment=
 checking is not so clear.  Where are the hob users supposed to get such ki=
nd of information from?

I did not found this information from the hob manual.

>>
>> --Mihai
>> >
>> > $ uname -a
>> > Linux zb-d 2.6.32-33-generic #72-Ubuntu SMP Fri Jul 29 21:07:13 UTC 20=
11 x86_64 GNU/Linux
>> >
>> >
>> > Thanks,
>> > Biao
>> > _______________________________________________ yocto mailing list yoc=
to@yoctoproject.org<mailto:yocto@yoctoproject.org> https://lists.yoctoproje=
ct.org/listinfo/yocto
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
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


