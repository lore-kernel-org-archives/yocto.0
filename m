Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3272CE0049D
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 13:57:32 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 12 Sep 2012 13:57:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,413,1344236400"; d="scan'208";a="144375746"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Sep 2012 13:57:28 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 12 Sep 2012 13:57:25 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.116]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.246]) with mapi id
	14.01.0355.002; Wed, 12 Sep 2012 13:57:25 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>, "Zanussi, Tom"
	<tom.zanussi@intel.com>
Thread-Topic: [PATCH 0/1] Fix X issue on crownbay
Thread-Index: AQHNjJT+c4636csDQkO4bthXLQKlhJeEtdOAgAI1QYCAAEG1QIAADCuQ
Date: Wed, 12 Sep 2012 20:57:25 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE21C1058EB@ORSMSX105.amr.corp.intel.com>
References: <cover.1346893078.git.nitin.a.kamble@intel.com>
	<1347320069.25993.16.camel@empanada>
	<ADD6A3980E8C39419A432FF422031B4C15726661@ORSMSX106.amr.corp.intel.com>
In-Reply-To: <ADD6A3980E8C39419A432FF422031B4C15726661@ORSMSX106.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] Fix X issue on crownbay
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
X-List-Received-Date: Wed, 12 Sep 2012 20:57:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Kamble, Nitin A
>Sent: Wednesday, September 12, 2012 1:14 PM
>To: Zanussi, Tom
>Cc: Hart, Darren; yocto@yoctoproject.org
>Subject: Re: [yocto] [PATCH 0/1] Fix X issue on crownbay
>
>FYI While testing on the fishriver platform, I also find that there is no =
X log, and
>looking further found out that xorg executable is not on the image. I thin=
k the
>same thing is also happening on crownbay.

FYI.. I also see the similar issue for Romley. =20
There is no Xlog and X does not comes up.

Thanks
Kishore.

>
>Nitin
>
>
>
>> -----Original Message-----
>> From: Kamble, Nitin A
>> Sent: Wednesday, September 12, 2012 9:18 AM
>> To: Zanussi, Tom
>> Cc: Hart, Darren; yocto@yoctoproject.org
>> Subject: RE: [PATCH 0/1] Fix X issue on crownbay
>>
>> Hi Tom,
>>   Thanks for looking into the matter. I will try to reproduce the issue =
you are
>> seeing with master. And send another pull request with all the fixes.
>>
>> Regards,
>> Nitin
>>
>>
>> > -----Original Message-----
>> > From: Zanussi, Tom
>> > Sent: Monday, September 10, 2012 4:34 PM
>> > To: Kamble, Nitin A
>> > Cc: Hart, Darren; yocto@yoctoproject.org
>> > Subject: Re: [PATCH 0/1] Fix X issue on crownbay
>> >
>> > On Wed, 2012-09-05 at 17:59 -0700, nitin.a.kamble@intel.com wrote:
>> > > From: Nitin A Kamble <nitin.a.kamble@intel.com>
>> > >
>> > > The following changes since commit
>> > 66b516f3d3a287eecbf8804b2221bfc27e36db63:
>> > >
>> > >   README: add info explaining meta-tlk layer purpose (2012-09-06
>> > > 10:36:02 -0500)
>> > >
>> > > are available in the git repository at:
>> > >   git://git.yoctoproject.org/meta-intel-contrib nitin/work
>> > >
>> > > http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=3Dnit=
in
>> > > /w
>> > > ork
>> > >
>> >
>> > I built and tried this, but it still didn't boot into X, and now
>> > there's not even an Xorg.log to look at:
>> >
>> > root@crownbay:/var/log# ls -al
>> > drwxr-xr-x    2 root     root            80 Sep 10 20:15 .
>> > drwxrwxrwt    7 root     root           140 Jan  6  2009 ..
>> > -rw-r--r--    1 root     root         78429 Sep 10 20:17 messages
>> > -rw-rw-r--    1 root     root          4224 Sep 10 20:17 wtmp
>> >
>> > I assume this is a different X problem related to recent changes in ma=
ter.
>> > Can you update the bug report with the commits that you tested with so
>> > I can verify that your patch at least works?
>> >
>> > Thanks,
>> >
>> > Tom
>> >
>> >
>> >
>> > > Nitin A Kamble (1):
>> > >   emgd-driver-bin: Fix package naming issue
>> > >
>> > >  .../xorg-xserver/emgd-driver-bin_1.14.bb           |    8 +++++++-
>> > >  1 files changed, 7 insertions(+), 1 deletions(-)
>> > >
>> >
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

