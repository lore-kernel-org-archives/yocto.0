Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14441E013DE
	for <yocto@yoctoproject.org>; Mon, 13 May 2013 05:04:36 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 13 May 2013 05:04:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,662,1363158000"; d="scan'208";a="240739056"
Received: from fmsmsx105.amr.corp.intel.com ([10.19.9.36])
	by AZSMGA002.ch.intel.com with ESMTP; 13 May 2013 05:04:32 -0700
Received: from fmsmsx152.amr.corp.intel.com ([169.254.6.6]) by
	FMSMSX105.amr.corp.intel.com ([169.254.5.226]) with mapi id
	14.01.0355.002; Mon, 13 May 2013 05:04:32 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, "Zanussi, Tom"
	<tom.zanussi@intel.com>
Thread-Topic: [yocto] couple questions about kernel dev manual, section 2
Thread-Index: AQHOOFqJ+AvpgMmSNUqfNzZcKnJxlZjUzEoAgABGS4CALiA/kA==
Date: Mon, 13 May 2013 12:04:32 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF35E10@fmsmsx152.amr.corp.intel.com>
References: <alpine.DEB.2.02.1304131112290.9253@oneiric>
	<1365870464.10664.17.camel@empanada>
	<alpine.DEB.2.02.1304131321520.10291@oneiric>
In-Reply-To: <alpine.DEB.2.02.1304131321520.10291@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: couple questions about kernel dev manual, section 2
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
X-List-Received-Date: Mon, 13 May 2013 12:04:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I updated the section http://www.yoctoproject.org/docs/1.5/kernel-dev/kerne=
l-dev.html#creating-the-append-file to better word this situation and to us=
e the proper FILESEXTRAPATHS example with "_prepend". =20

Thanks,=20
Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Saturday, April 13, 2013 1:39 PM
>To: Zanussi, Tom
>Cc: Yocto discussion list
>Subject: Re: [yocto] couple questions about kernel dev manual, section 2
>
>On Sat, 13 Apr 2013, Tom Zanussi wrote:
>
>> On Sat, 2013-04-13 at 11:20 -0400, Robert P. J. Day wrote:
>> > some oddities in section 2.2.1 of the current kernel dev manual.
>> > first, there's:
>> >
>> > "The append file should initially contain the following text:
>> >
>> >      FILESEXTRAPATHS :=3D "${THISDIR}/${PN}"
>> >
>> >   i was under the impression that the standard line would be:
>> >
>> >      FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>> >
>> > would it not? to make sure you can support potential layers on top
>of
>> > layers, no?  if you absolutely *know* that won't happen, then, sure,
>> > that will work, but i think the wording above is unnecessarily
>> > restrictive.
>>
>> Right, that should be changed to match the recommendation in the Poky
>> Reference manual.
>>
>> >   also, right underneath that, one reads:
>> >
>> > "If you add any new files that modify the kernel recipe, you need to
>> > place them in your layer in the following area:
>> >
>> >      <your-layer>/recipes-kernel/linux/linux-yocto/"
>> >
>> > IIRC, you *can* put them there but you don't *need* to. in fact, tom
>> > zanussi's kernel labs place extra files simply under a "files/"
>> > subdirectory (after setting FILESEXTRAPATHS to pick up that
>> > directory). so, again, some wording that is unnecessarily strong and
>> > somewhat misleading.
>> >
>> >   thoughts?
>> >
>>
>> That text assumes you've used (the corrected) from the paragraph
>above:
>>
>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>
>  that may be true, but it's not clear from the text that that claim
>is based on the earlier (corrected) setting.  i just get itchy when i
>see inappropriately strong claims.
>
>> which means you do need to put the files in the linux-yocto/ subdir
>(for
>> a linux-yocto bbappend), since we're dealing with a .bbappend here.
>>
>> If we were talking about a recipe, then yes, we wouldn't *need* to put
>> them there but could also put them in any of the default subdirs such
>as
>> files/.  There's a little more discussion about it here:
>>
>> https://lists.yoctoproject.org/pipermail/yocto/2013-
>February/014419.html
>>
>> Seems like it might be good to explicitly explain all this or at least
>> point out the difference and help avoid the confusion...
>
>  once upon a time, i dug into this whole FILESEXTRAPATHS issue and i
>was surprised to find how it worked, which i documented:
>
>http://www.crashcourse.ca/wiki/index.php/FILESEXTRAPATHS_and_bbappend_fi
>les
>
>it may be that i have to revisit that to make sure that page is up to
>date, but i don't think any of the documentation makes it abundantly
>clear how FILESEXTRAPATHS truly works -- that it adds an entire *set*
>of additional directories to FILESPATH:
>
>http://www.crashcourse.ca/wiki/index.php/FILESEXTRAPATHS_and_bbappend_fi
>les#Examining_FILESPATH.2C_and_how_FILESEXTRAPATHS_works
>
>certainly, the variable glossary doesn't seem to mention that:
>
>http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-
>FILESEXTRAPATHS
>
>
>unless, of course, i've misunderstood this completely.
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

