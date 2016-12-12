Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE4A1E00828; Mon, 12 Dec 2016 11:12:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.37.114 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0114.outbound.protection.outlook.com
	[104.47.37.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12B35E005B9
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 11:12:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=Melink.onmicrosoft.com; s=selector1-melinkcorp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=jdFnzaOdP2C2iyb89G/5ENqsgiZeRLogl+uU7JRN6DM=;
	b=XbaAfcJZz/9gEJ+GNdMHAogb125W7VdLSzXYt1rBluaCKLLUaKTO9a+DVZKfA8rSjchOvkc5jjvP+iuVC6LepZsuMwwmaHHa5SK7dDUCPJ281MHXn2PecJwgnU8E1OCZ3S8BcWyHyoJRMCsL+Uk3eVadmrhKz/wdAaf1DB5OqK8=
Received: from DM5PR05MB2954.namprd05.prod.outlook.com (10.168.176.142) by
	DM5PR05MB2956.namprd05.prod.outlook.com (10.168.176.144) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.771.4; Mon, 12 Dec 2016 19:12:02 +0000
Received: from DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) by
	DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) with mapi id
	15.01.0771.014; Mon, 12 Dec 2016 19:12:02 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Can't enable reverse debugging
Thread-Index: AdJRh7s3U+ajT5gsR0y6A3ueaaSV7AApt/RQAD9Y7oAAU/7XUAAI+XIAAAIbmvA=
Date: Mon, 12 Dec 2016 19:12:02 +0000
Message-ID: <DM5PR05MB29542A221AD62B88529C6937BB980@DM5PR05MB2954.namprd05.prod.outlook.com>
References: <DM5PR05MB29540B30AC5BD787AE4D7310BB840@DM5PR05MB2954.namprd05.prod.outlook.com>
	<DM5PR05MB29547D5AAF9D2D064B8F6DA1BB870@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CAMKF1sqh=VLWPf5-VBSs2dvGwu0XTPuZiLc3WwEGmZ+eOSsY+A@mail.gmail.com>
	<DM5PR05MB2954BB4AB770D47BE6BD3562BB980@DM5PR05MB2954.namprd05.prod.outlook.com>
	<51D706B0-66CE-4F5F-8464-20807CE7006C@gmail.com>
In-Reply-To: <51D706B0-66CE-4F5F-8464-20807CE7006C@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-ms-office365-filtering-correlation-id: e29a4a6b-d472-48d2-8044-08d422c2c103
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:DM5PR05MB2956;
x-microsoft-exchange-diagnostics: 1; DM5PR05MB2956;
	7:xaDs3d6JNeD7bYZav75e33FkM0FYT8m8Jx6hv0/Oc5blyDN4l4gPDp54lr31fvXIbPHM6L6oF+6WBJpXkCopgMMyG+YlHg86ipxSqSN3YNic/rWgV+7DjxbG/zmogpdVC6UZdYt37zZUOVaymlVF0ReahNbemXXjQAXa4lwcFJtbvuyxvnbm1k2zGihsM6jjAocfwWAdC85BokpkdQ90kVhWvFY5/rqG4BFuEVWVIvFUf+aUseioGG+Fjn4OXXdykg2vliMEXynUfRpoe06IUka4KcuKg5WGwTjxN/hFmOPVek2HwKnQLf93bjDO9qnyTnoQYmpk2JmL1XxGFZn9KRjmGIMkY+5QCu3GqRzfI+SJU62kyzJTQ592VKPoMVudBNiRg5ncuLMzGPGNJ9Hb5nC68uLcrNxHNNsGww5iMYbYbJMEvjz4GzzVBfs2K7uQFqxAQuR0tpDHaAyZ0dLnPA==
x-microsoft-antispam-prvs: <DM5PR05MB29562C192B75B7E27DA2216FBB980@DM5PR05MB2956.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123562025)(20161123555025)(20161123560025)(20161123564025)(6072148);
	SRVR:DM5PR05MB2956; BCL:0; PCL:0; RULEID:; SRVR:DM5PR05MB2956; 
x-forefront-prvs: 0154C61618
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(39450400003)(189002)(13464003)(377454003)(24454002)(199003)(6506006)(2950100002)(4326007)(81156014)(81166006)(38730400001)(86362001)(7736002)(2906002)(102836003)(6436002)(3846002)(92566002)(229853002)(189998001)(97736004)(77096006)(39060400001)(93886004)(6116002)(2900100001)(76576001)(33656002)(68736007)(101416001)(74316002)(9686002)(3660700001)(3280700002)(5660300001)(7696004)(110136003)(122556002)(8936002)(76176999)(54356999)(99286002)(305945005)(105586002)(6916009)(50986999)(66066001)(8676002)(106356001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR05MB2956;
	H:DM5PR05MB2954.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2016 19:12:02.0662 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR05MB2956
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't enable reverse debugging
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
X-List-Received-Date: Mon, 12 Dec 2016 19:12:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Khem,

> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: Monday, December 12, 2016 12:48 PM
> To: Bryan Evenson <bevenson@melinkcorp.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Can't enable reverse debugging
>=20
>=20
> > On Dec 12, 2016, at 6:59 AM, Bryan Evenson <bevenson@melinkcorp.com>
> wrote:
> >
> > Khem,
> >
> >> -----Original Message-----
> >> From: Khem Raj [mailto:raj.khem@gmail.com]
> >> Sent: Saturday, December 10, 2016 4:26 PM
> >> To: Bryan Evenson <bevenson@melinkcorp.com>
> >> Cc: yocto@yoctoproject.org
> >> Subject: Re: [yocto] Can't enable reverse debugging
> >>
> >> On Fri, Dec 9, 2016 at 8:43 AM, Bryan Evenson
> >> <bevenson@melinkcorp.com>
> >> wrote:
> >>> I tried a few other things, see below.
> >>>
> >>>> -----Original Message-----
> >>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >>>> bounces@yoctoproject.org] On Behalf Of Bryan Evenson
> >>>> Sent: Thursday, December 08, 2016 2:50 PM
> >>>> To: yocto@yoctoproject.org
> >>>> Subject: [yocto] Can't enable reverse debugging
> >>>>
> >>>> I'm on poky/dizzy and I'm getting a segementation fault in my
> >>>> application that I think may be related to a buffer overflow.  I'm
> >>>> using the Eclipse
> >> plug-in
> >>>> (on Eclipse Kepler) to debug on the hardware with GDB.  I'm trying
> >>>> to
> >> enable
> >>>> reverse debugging but I have not had any success and I'm looking
> >>>> for
> >> some
> >>>> help.
> >>>>
> >>>> My target processor is an SAM9G25 (ARM926EJ-S core).  I have been
> >>>> able
> >> to
> >>>> debug through Eclipse on the target hardware without issue.  I
> >>>> tried
> >> enabling
> >>>> Reverse Debugging by going to Window->Customize Perspective...-
> >>>>> Command Groups Availability and selecting "Reverse Debugging".
> >>>>> Now
> >>>> there is a "Reverse Toggle" button on my toolbar, but it is always
> >>>> grayed
> >> out
> >>>> whether I have a debug session running or not.  I have also tried
> >>>> entering
> >> the
> >>>> command "record" from the GDB console after my program breaks at
> >> main.
> >>>> When I run the program, I get the error message "Process record:
> >>>> failed
> >> to
> >>>> record execution log".
> >>>
> >>> I tried first running my application, pausing the debugger and then
> >>> sending
> >> the "record" command.  When I continued debugging, I got the
> >> following GDB error:
> >>>
> >>> ....x86_64-nativesdk-pokysdk-linux/gdb-cross-canadian-arm/7.7.1-r0/g
> >>> db-
> >> 7.7.1/gdb/utils.c:1073: internal-error: virtual memory exhausted.
> >>> A problem internal to GDB has been detected, further debugging may
> >>> prove unreliable.
> >>>
> >>> I did some looking around and I couldn't see any reasonable answer
> >>> to why
> >> this would happen.  I also just noticed that for the Debug
> >> Configurations under Eclipse, the debugger settings tab doesn't have
> >> "Enable Reverse Debugging at startup" option listed for the C/C++
> >> Remote Application debugging type.  Is this option just not available =
to me
> with my environment?
> >>
> >> This could mean many things but one area I know is troublesome is
> >> python support. Sometimes there are issues between fundamental
> types,
> >> can you check if the error happens when gdb is running some pythonic
> >> stuff.
> >
> > Could you explain how to do this?  I don't use Python so I'm not sure i=
f I'm
> doing a valid test.  I tried to debug a Python script with GDB through Ec=
lipse
> and I wasn't successful.  I then went through the command line and was ab=
le
> to remotely run a simple Python script (print "Hello, Python" once per
> second) through GDB.  If I issued a "record" command through GDB first,
> then when I tried to debug the Python script I'd immediately get a
> segmentation fault.
> >
> > Is there something specific you'd like me to try?  If you think the Pyt=
hon
> support may be the issue, is there something I should be verifying is pre=
sent
> or is at a certain version?
> >
>=20
> Disable python support in gdb and compile it e.g.

I rebuilt gdb.  I used the --configure option to verify that my previous gd=
b did have the "--with-python" option present and that my newly built gdb d=
id not have that option anymore.  I no longer can produce the " internal-er=
ror: virtual memory exhausted" error, but whenever I try to record I still =
get the "Process record: failed to record execution log" when I run the app=
lication.  If it helps, here's the configuration output from GDB:

This GDB was configured as follows:
   configure --host=3Dx86_64-linux --target=3Darm-poky-linux-gnueabi
             --with-auto-load-dir=3D$debugdir:$datadir/auto-load
             --with-auto-load-safe-path=3D$debugdir:$datadir/auto-load
             --with-expat
             --with-gdb-datadir=3D~/poky/poky-build/tmp/sysroots/x86_64-lin=
ux/usr/share/gdb-arm926ejste-poky-linux-gnueabi/gdb (relocatable)
             --with-jit-reader-dir=3D~/poky/poky-build/tmp/sysroots/x86_64-=
linux/usr/lib/arm-poky-linux-gnueabi/gdb (relocatable)
             --without-libunwind-ia64
             --without-lzma
             --with-separate-debug-dir=3D~/poky/poky-build/tmp/sysroots/x86=
_64-linux/usr/lib/arm-poky-linux-gnueabi/debug (relocatable)
             --with-zlib
             --without-babeltrace

Any additional suggestions would be appreciated.

Thanks,
Bryan

>=20
> > Thanks,
> > Bryan


