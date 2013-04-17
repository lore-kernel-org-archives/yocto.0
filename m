Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CB82E013CA
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:22:09 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Apr 2013 08:21:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,494,1363158000"; d="scan'208";a="287509829"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by azsmga001.ch.intel.com with ESMTP; 17 Apr 2013 08:21:57 -0700
Received: from orsmsx109.amr.corp.intel.com (10.22.240.7) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 17 Apr 2013 08:21:56 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.124]) by
	ORSMSX109.amr.corp.intel.com ([169.254.2.235]) with mapi id
	14.01.0355.002; Wed, 17 Apr 2013 08:21:57 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] writeup on the mechanics of FILESEXTRAPATHS and
	bbappend files
Thread-Index: AQHOO34K+bG8lIxMMU27WP8RdRdtMZjahlqA
Date: Wed, 17 Apr 2013 15:21:55 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123796FCF66BA@ORSMSX104.amr.corp.intel.com>
References: <alpine.DEB.2.02.1304171022430.10912@oneiric>
	<2155264.hXQStR7GGJ@helios>
	<alpine.DEB.2.02.1304171108430.11390@oneiric>
In-Reply-To: <alpine.DEB.2.02.1304171108430.11390@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: writeup on the mechanics of FILESEXTRAPATHS and bbappend files
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
X-List-Received-Date: Wed, 17 Apr 2013 15:22:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Just a note here regarding which Yocto Project manuals to look at for the m=
ost current information.  Use the 1.4 manuals.  So for the FILESEXTRAPATHS =
variable description you should look at http://www.yoctoproject.org/docs/1.=
4/ref-manual/ref-manual.html#var-FILESEXTRAPATHS entry.  The description in=
 this more recent manual may be lacking as well.  I will try and work on th=
at going forward.

Also, the "poky-ref-manual" part of the name has been changed to a symlink =
for releases 1.3 forward.  This manual path for 1.3 on should direct the us=
er to the manual whose location includes "ref-manual".

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Wednesday, April 17, 2013 8:12 AM
>To: Paul Eggleton
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] writeup on the mechanics of FILESEXTRAPATHS and
>bbappend files
>
>On Wed, 17 Apr 2013, Paul Eggleton wrote:
>
>> On Wednesday 17 April 2013 10:24:42 Robert P. J. Day wrote:
>> >   a while back, i dug into how FILESEXTRAPATHS worked with respect
>to
>> > .bbappend files and i wrote it up, just updated it a bit here:
>> >
>> >
>http://www.crashcourse.ca/wiki/index.php/FILESEXTRAPATHS_and_bbappend_fi
>les
>> >
>> > do i have it about right? it seemed that the underlying details
>> > weren't really explained well in any of the current yocto docs, and
>i
>> > wanted something i could point students at.
>>
>> It looks OK to me although if you're going to point students at it I
>> might suggest moving the "don't look here!" stuff elsewhere ;)
>
>  yes, that's going to be updated with more examples ripped from the
>headlines. :-)
>
>> Also as I believe I mentioned before, FILESEXTRAPATHS adds not just
>> one directory but an "entire list of directories" is it allows
>> bbappend file path behaviour to match that of the recipe itself.
>
>  quite so. the reason i did that writeup is that, as i mentioned, i
>don't think the behaviour of FILESEXTRAPATHS is well explained. for
>example, the entry in the reference manual variable glossary here:
>
>http://www.yoctoproject.org/docs/1.2/poky-ref-manual/poky-ref-
>manual.html#var-FILESEXTRAPATHS
>
>doesn't even *hint* at the underlying behaviour, which i think is
>important to understand.
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

