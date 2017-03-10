Return-Path: <Richard.Schmitt@commscope.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 724C1E00A26; Fri, 10 Mar 2017 11:11:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.47 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 16276 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Mar 2017 11:11:14 PST
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0047.outbound.protection.outlook.com [104.47.32.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 382F0E00A16
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 11:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=commscope.onmicrosoft.com; s=selector1-commscope-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=4ziKQeo7I0Xcfn6B2plXw6/13zHSg95+UbsC1dXAG9M=;
	b=ieGqARr/ZoI2fbDTopm3DzqX97Tt7dDfoDNWRE65NrSAUdX7hTdu/sGBT+tRxEuUkD3fYz757O/PxG/+wIqLaN4WfbiHifgUMZipZSS6Q1ywRkrRfVTS5L5z5gXFQ2jwy8in8shyCpEGdYhW1Co5G6ivjZZRiE8PedbIhIu+az4=
Received: from BLUPR0601MB1649.namprd06.prod.outlook.com (10.163.212.143) by
	BLUPR0601MB1650.namprd06.prod.outlook.com (10.163.212.144) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.961.17;
	Fri, 10 Mar 2017 14:39:56 +0000
Received: from BLUPR0601MB1649.namprd06.prod.outlook.com ([10.163.212.143]) by
	BLUPR0601MB1649.namprd06.prod.outlook.com ([10.163.212.143]) with
	mapi id 15.01.0947.022; Fri, 10 Mar 2017 14:39:55 +0000
From: "Schmitt, Richard" <Richard.Schmitt@commscope.com>
To: Suneetha Lakshmi G <suneetha.g@tataelxsi.co.in>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] help
Thread-Index: AQHSmaocfmYYVlsi9ECpuAO4fB0U3qGOJFig
Date: Fri, 10 Mar 2017 14:39:55 +0000
Message-ID: <BLUPR0601MB164904682C72D4F0CFE95F9BE6200@BLUPR0601MB1649.namprd06.prod.outlook.com>
References: <mailman.63189.1489153806.15860.yocto@yoctoproject.org>
	<HK2PR0401MB149200CF1FFB30976C65F1C0C6200@HK2PR0401MB1492.apcprd04.prod.outlook.com>
In-Reply-To: <HK2PR0401MB149200CF1FFB30976C65F1C0C6200@HK2PR0401MB1492.apcprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: tataelxsi.co.in; dkim=none (message not signed)
	header.d=none;tataelxsi.co.in; dmarc=none action=none
	header.from=commscope.com;
x-originating-ip: [131.239.32.100]
x-ms-office365-filtering-correlation-id: bd75817f-7ea9-4670-b460-08d467c35204
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:BLUPR0601MB1650; 
x-microsoft-exchange-diagnostics: 1; BLUPR0601MB1650;
	7:b6hljz2b7AAksLnGO2VEiWylN2PrJfEq1EdvejovcY/F4tgeF8lrE4+Jp3H5JaLLG+EghiFdB7jVmd1/G598c8vFXFU2dxR/+XQ/taHJkEKieZwWabZOHGJNPOtjamERsoyDZxSbd3m/3sSuttelOeXEeIeEMkcdfCDIrOeDdj4Z9rZiRbb6A5O4FE34lGxXuQu75DchraHEZXgFVmms20oH2QqrO+AB4+rVcWxvivKDTas2RjVzeD52jzn++yXAAOuXR02oAiqtd5bkNZy2XL9fqxxsW0ksoQxtuqrBkTDt2B2P4cMq8FD8b6bhdKHQ++yo9TxWIcWNRGgK8mxu8w==
x-microsoft-antispam-prvs: <BLUPR0601MB165049A57A9F5AFA4D8D39FBE6200@BLUPR0601MB1650.namprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(189930954265078)(264703809997249)(194151415913766)(21748063052155)(5213294742642)(228905959029699)(159423639760646);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123558025)(20161123564025)(20161123562025)(20161123560025)(20161123555025)(6072148);
	SRVR:BLUPR0601MB1650; BCL:0; PCL:0; RULEID:;
	SRVR:BLUPR0601MB1650; 
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39450400003)(52254002)(377454003)(24454002)(27574002)(53754006)(377424004)(86362001)(7736002)(7906003)(561944003)(38730400002)(74316002)(6246003)(53546006)(6436002)(606005)(229853002)(77096006)(236005)(6506006)(33656002)(53936002)(9686003)(8656002)(25786008)(6306002)(54896002)(55016002)(99286003)(122556002)(66066001)(106116001)(512934002)(2900100001)(7696004)(3846002)(790700001)(6116002)(102836003)(5660300001)(2950100002)(2906002)(8936002)(189998001)(3660700001)(3280700002)(76176999)(2501003)(54356999)(19609705001)(5890100001)(8676002)(81166006)(50986999);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR0601MB1650;
	H:BLUPR0601MB1649.namprd06.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: commscope.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2017 14:39:55.5749 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31472f81-8fe4-49ec-8bc3-fa1c295640d7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0601MB1650
Subject: Re: help
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
X-List-Received-Date: Fri, 10 Mar 2017 19:11:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR0601MB164904682C72D4F0CFE95F9BE6200BLUPR0601MB1649_"

--_000_BLUPR0601MB164904682C72D4F0CFE95F9BE6200BLUPR0601MB1649_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Suneetha Lakshmi G
Sent: Friday, March 10, 2017 8:25 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] help


Hi All,



Im new to yocto and trying to build for my customer device im facing this i=
ssue.


| arm-linux-gnueabi-xgcc: error: unrecognized command line option '-mgenera=
l-regs-only'
| arm-linux-gnueabi-xgcc: error: unrecognized command line option '-mcmodel=
=3Dlarge'
| make: *** [opkg-compare-versions] Error 1
| ERROR: oe_runmake failed

Please guide how to progress further.

[ras] please provide what target you are building from, where you got your =
yocto layers from, what bitbake command you are using.  My WAG is that your=
 toolchain is misconfigured, possible because you haven't specified a MACHI=
NE variable.

Regards,
Suneetha


________________________________
From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 <yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>> on=
 behalf of yocto-request@yoctoproject.org<mailto:yocto-request@yoctoproject=
.org> <yocto-request@yoctoproject.org<mailto:yocto-request@yoctoproject.org=
>>
Sent: Friday, March 10, 2017 7:20 PM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: yocto Digest, Vol 78, Issue 45

Send yocto mailing list submissions to
        yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>

To subscribe or unsubscribe via the World Wide Web, visit
        https://lists.yoctoproject.org/listinfo/yocto
or, via email, send a message with subject or body 'help' to
        yocto-request@yoctoproject.org<mailto:yocto-request@yoctoproject.or=
g>

You can reach the person managing the list at
        yocto-owner@yoctoproject.org<mailto:yocto-owner@yoctoproject.org>

When replying, please edit your Subject line so it is more specific
than "Re: Contents of yocto digest..."


Today's Topics:

   1. Re: Raspberry Pi2 Fails to boot into LXDE. (Steve Plant)
   2. Re: update mechanisms (Kristian Amlie)
   3. Proposal: dealing with language-specific build
      tools/dependency management tools (Alexander Kanavin)


----------------------------------------------------------------------

Message: 1
Date: Fri, 10 Mar 2017 13:31:40 +0000
From: Steve Plant <steove@hotmail.com<mailto:steove@hotmail.com>>
To: Gary Thomas <gary@mlbassoc.com<mailto:gary@mlbassoc.com>>
Cc: "yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>" <yocto@yoctopro=
ject.org<mailto:yocto@yoctoproject.org>>
Subject: Re: [yocto] Raspberry Pi2 Fails to boot into LXDE.
Message-ID:
        <SG2PR0301MB20164F99A2AF83AFC01ECDCFD1200@SG2PR0301MB2016.apcprd03.=
prod.outlook.com<mailto:SG2PR0301MB20164F99A2AF83AFC01ECDCFD1200@SG2PR0301M=
B2016.apcprd03.prod.outlook.com>>

Content-Type: text/plain; charset=3D"iso-8859-1"

Thanks Gary,


You where spot on! I have now been able to SSH into the rpi and have posted=
 the Xorg.log file to the mailing list.


I think Xorg is failing to load correctly because it cannot find the evdev =
module. Looking into how to fix this now......


Regards, Steve.


________________________________
From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 <yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>> on=
 behalf of Gary Thomas <gary@mlbassoc.com<mailto:gary@mlbassoc.com>>
Sent: Friday, 10 March 2017 5:42 a.m.
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] Raspberry Pi2 Fails to boot into LXDE.

On 2017-03-10 01:55, Steve Plant wrote:
> OK, I have spent the last day googling my heart out trying to find the Xo=
rg.log file without any luck.
>
>
> The problem is that due to the rpi hanging on boot, the only way I can ac=
cess the SD card to look for the file is place
> it in a USB SD card reader and use my VirtualBox based Debian to "ls" dir=
ectores etc.
>
> Having established that there is no file located at /var/log/Xorg.log (th=
ere isn't a log directory) but there is a
> symbolic link in the var directory - goes nowhere.
>
>
> After goggling I discovered that the file could also be in the ~/.local/s=
hare/xorg/Xorg.0.log, however if I try to look
> there I get "permission denied" and cannot seem to get to the root direct=
ory of the card and I can't find a way around
> this as I'm trying to access this directory through the USB card reader.
>
>
> Looked everywhere with no answers, Is there anyone who could help me here=
??

/var/log is on a volatile file system (i.e. it does not live on the SD card=
)

If you can get into your board via SSH, you can copy the file and send it

> -------------------------------------------------------------------------=
-----------------------------------------------
> *From:* Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
> *Sent:* Wednesday, 8 March 2017 5:17 p.m.
> *To:* Steve Plant
> *Cc:* yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> *Subject:* Re: [yocto] Raspberry Pi2 Fails to boot into LXDE.
>
> On 17-03-08 12:40:51, Steve Plant wrote:
>> Hi All,
>>
>>
>> Very new to all this linux world, and especially Yocto.
>>
>>
>> I'm working on a embedded project at the moment using a raspberry pi2 bo=
ard.
>>
>>
>> I have used toaster with Morty 2.2 to compile an image using"rpi-basic-i=
mage", to this I have added the following bitbake variables:
>>
>> Bitbake variables
>>
>> DISTRO
>> poky
>> DL_DIR
>> /home/steve/poky/downloads
>> IMAGE_FSTYPES
>> ext3 jffs2 tar.bz2 rpi-sdimg
>> IMAGE_INSTALL_append
>> packagegroup-core-x11-base packagegroup-lxde-base connman
>> PACKAGE_CLASSES
>> package_rpm
>> SSTATE_DIR
>> /home/steve/poky/sstate-cache
>>
>> DISABLE_OVERSCAN
>> 1
>> GPU_MEM_1024
>> 512
>>
>> I have dd'ed the image to an SD card increased the sdb2 partition to the=
 max size and powered up the rpi. Everything looks fine to start with, as i=
t displays the four raspberrys in the top left, then the white "Yocto Proje=
ct" splash screen complete with small blue dot to the side appears, the pro=
gress bar moves across to 100 percent, then the screen turns black with a w=
hite
> cursor in the middle and it appears to freeze with only a very dim one se=
cond flash of the "act" led.
>>
>>
>> I have then connected the 7" touchscreen and apart from the added multic=
olored square at the very beginning I get the exact same boot up problem, h=
angs on the black screen with white cursor (good to see its all resized cor=
rectly for the TfT through!!)
>>
>>
>> Before adding the packagegroup-core-x11-base and packagegroup-lxde-base =
I successfully copied over and ran the rpi-basic-image with no problem, end=
ing up with a usable console.
>>
>>
>> Looking for any help here, I'm thinking I've missed adding a package, or=
 some type of local.conf instruction. any suggestions would be appreciated.=
............
>
> Can you send the content of /var/log/Xorg.log file ?


--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.



lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.


-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20170310/74=
aab5d4/attachment-0001.html>

------------------------------

Message: 2
Date: Fri, 10 Mar 2017 14:35:02 +0100
From: Kristian Amlie <kristian.amlie@mender.io<mailto:kristian.amlie@mender=
.io>>
To: Patrick Ohly <patrick.ohly@intel.com<mailto:patrick.ohly@intel.com>>, E=
ystein M?l?y Stenberg
        <eystein@mender.io<mailto:eystein@mender.io>>
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] update mechanisms
Message-ID: <0135756b-1d20-a743-4f82-8f45becea106@mender.io<mailto:0135756b=
-1d20-a743-4f82-8f45becea106@mender.io>>
Content-Type: text/plain; charset=3Dutf-8

On 10/03/17 14:02, Patrick Ohly wrote:
> On Wed, 2017-03-01 at 16:35 -0800, Eystein M?l?y Stenberg wrote:
>> On Tue, 2016-12-06 at 10:45 +0100, Patrick Ohly wrote:
>>> On Tue, 2016-12-06 at 10:01 +0100, Stefano Babic wrote:
>>>> Hi Patrick,
>>>>
>>>> On 30/11/2016 15:59, Patrick Ohly wrote:
>>>>> I've started a Wiki page
>>>>> https://wiki.yoctoproject.org/wiki/System_Update - rudimentary at the
>>>>> moment, but might as well be mentioned already now.
>>>>
>>>> I have seen Mariano added an entry for SWUpdate, too, thanks  - I woul=
d
>>>> like to edit for better explanation on some parts. Should I try to edi=
t
>>>> directly the page or is it better to discuss it here ?
>>>
>>> Use your own judgment. If its uncontroversial, the feel free to edit th=
e
>>> page directly, otherwise let's discuss it here.
>>>
>>> If feel that putting information directly into the table is too limitin=
g
>>> (it should be brief), then feel free to start a complete section about
>>> SWUpdate.
>>>
>>> I'll do the same for swupd. Editing the sections should be possible
>>> without conflicts, we just have to be more careful about editing the
>>> table concurrently.
>>
>> I updated the Mender part of the wiki now that the stable version Mender
>> 1.0 is released. These changes should not be controversial, but let me
>> know if you disagree. We are planning to keep the Mender section
>> up-to-date as we release new versions, as I think this is what you expec=
t.
>
> Yes, that's useful.
>
>> Are there any plans for next steps or is the wiki the "final state" in
>> terms of integrating OTA updates in Yocto/OE?
>
> My own conclusion is that it is impossible to integrate a specific OTA
> update into Yocto/OE (because there's no single solution that fits all
> requirements) and/or it would be unfair to those solutions that don't
> get such special testing. In that sense the Wiki page is the final
> result of the investigation. Anyone interested in picking a solution can
> go there, consider the pros and cons, and then make a choice.

Makes sense. We can always revisit this at a later point, if one method
starts to emerge as the preferred option for most people.

> However, I see room for some collaborative work that then can happen in
> Yocto/OE:
>       * carrying local system configuration changes across system
>         updates: I find it promising to investigate the "stateless"
>         concept and have started some exploratory work, see
>         https://wiki.yoctoproject.org/wiki/Stateless#Status_and_goals_for=
_.22stateless.22_in_Yocto (more on that soon)

What's the relation (if any) between this and a read-only rootfs?

Also this may be only vaguely related, but I have it in my queue to
finish the built-in partitioning of rootfs images [1], which will help
divide the filesystem into a stateful and a stateless part. The wic part
is done [2], but ext4 images are not covered yet.

[1] It works by choosing which sub directories of the complete rootfs
you want on each partition.

[2] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10712

>       * supporting UEFI-based machines

Great, this is something we are interested in as well!

--
Kristian


------------------------------

Message: 3
Date: Fri, 10 Mar 2017 15:49:01 +0200
From: Alexander Kanavin <alexander.kanavin@linux.intel.com<mailto:alexander=
.kanavin@linux.intel.com>>
To: openembedded-architecture@lists.openembedded.org<mailto:openembedded-ar=
chitecture@lists.openembedded.org>,   Yocto Project
        <yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>>
Subject: [yocto] Proposal: dealing with language-specific build
        tools/dependency management tools
Message-ID: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com<mailto:37=
d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>>
Content-Type: text/plain; charset=3Dutf-8; format=3Dflowed

Hello all,

*Introduction*

The new generation of programming languages (think node.js, Go, Rust) is
a poor fit for the Yocto build model which follows the traditional Unix
model. In particular, those new development environments have no problem
with 'grabbing random stuff from the Internet' as a part of development
and build process. However, Yocto has very strict rules about the build
steps and what they can and can not do, and also a strict enforcement of
license and version checks for every component that gets built. Those
two models clash, and this is a proposal of how they could be reconciled.

I'll also send a separate email that talks specifically about MEAN stack
and how it could be supported as Yocto - take it as a specific example
for all of the below.

*Background*

The traditional development model on Unix clearly separates installation
of dependencies needed to develop a project from the development process
itself. Typically, when one wants to build some project, first the
project README needs to be inspected, and any required dependencies
installed system-wide using the distribution package management's tool.
When those dependencies change, usually this manifests itself in a
previously unseen build failure which is again manually resolved by
figuring out the missing dependency and installing it. This can be
awkward, but it's how things have been done for decades, and Yocto's
build system (with separate steps for fetching, unpacking, building,
packaging etc.) is built around the assumption that most software can be
built this way.

Unfortunately, this situation is changing. The new development
environments, such as Go, Rust or node.js see this approach as
cumbersome and getting-in-the-way for developers. They want projects'
setup to be as quick and automatic as possible - and it should also be
cross-platform. So each such environment comes with a specialized tool
which handles installation of dependencies and bypasses the distribution
package management altogether. Typically these dependencies are fetched
from the Internet and installed into the project tree. The details are
hidden; it's assumed that developers don't want to know or care. In
particular, specific versions of dependencies can be only weakly
specified or ignored altogether (that is, the latest commit is always
fetched), licensing is totally overlooked, a list of what was installed
cannot be trivially obtained, and repeating the procedure the next day
may result in a different set of code being pulled in, because someone
somewhere added a commit to their github repo.

This does not work well in Yocto context. Yocto project prides itself on
being specific and exact about what gets build, how it gets built and
what license is attached to each component. So we need to somehow
enforce that with the new model, and avoid the situation where separate,
incompatible, and difficult to grasp solutions are developed for each
language environment.

*Design considerations*

1. I would like recipes to remain short and sweet and clear. In
particular, node.js projects can pull in hundreds of dependencies; I
want to keep their metadata out of the recipe and somewhere else, for
readability, clarity, and maintainability.

2. I don't want to implement custom fetchers, or otherwise re-implement
(poorly) those language-specific build and dependency management tools.
Let's use npm, cargo and go as much as we possibly can and let them do
their job - yes, that also includes them fetching things from the
internet for us.

3. When things need to be updated to a new version, manual editing of
metadata should be avoided: when there are hundreds of dependencies, a
tool should modify the metadata, and human should only inspect the changes.

*How do we deal with this?*

By introducing a lockdown file that lives next to the recipe. The
concept is already implemented in npm, but needs to be made generic and
come with a common API that is using the file to verify the build.

*What is a lockdown file?*

The file captures all of the recipe dependencies that are pulled in by
the build tool. For each such dependency the following information is
provided (this is really similar to what is in recipes, and that is on
purpose:

- name
- description (optional)
- verification data (this is specific to each language, but can be
version, git commit id, a checksum and so on). The only requirement is
that it maps to a unique set of code.
- license string
- license file path
- license checksum

*How is the lockdown file used?*

1. It needs to be generated in the first place when adding a new recipe.
For example:

bitbake -c generate_lockdown recipe

would fetch and unpack the recipe code, then run npm/cargo/go to pull in
the dependencies, then walk the project tree and generate the lockdown
metadata. Sometimes the tools can help here somewhat, but other times
they can be used only for fetching, and verification data has to be
figured out by inspecting the tree with our custom-written code. This is
the hard part that we have to deal with.

2. It can be used to perform a 'loose' build of the recipe that does not
guarantee reproducibility.

We have to accept this: some projects just don't care about it, and
offer no support to those who want reproducibility. We should at least
provide a way to build such projects in Yocto. The information in
lockdown file is not enforced; it's merely compared against the actual
build and any differences presented to the user as warnings. This is a
recipe setting.

3. It can also be used to perform a 'strict' build of the recipe that
enforces what is in the lockdown file.

The information in the lockdown file is given to the language-specific
tool to help it fetch the right things (whenever the tool makes it
possible), and then is used to compare to what was fetched, but this
time any mismatches stop the build. Exactly how this happens is specific
to each language, and again, it is the hard bit that we need to deal with.

4. When a recipe is updated to a new version, the lockdown file needs to
be updated as well.

One possibility is to generate a new lockdown file (as in point 1), and
then a human can compare that against the old lockdown file.

bitbake -c update_lockdown recipe

5. Packaging

Go by default is compiling everything into a static executable, so there
are no separate packages. All dependencies' licenses should be rolled
into the package: lockdown file tells what they are and where they are
in the build tree.

Other environments do install the dependencies somewhere in the system,
so those should be packaged separately: lockdown file is used to get a
list of them and attach licenses to them. Installation paths (things
that FILES_ is set to) should typically be easy to figure out from
dependency names.

*Conclusion*

This is only a preliminary idea: I understand that the devil is in the
details, and there are plenty of details where things may not work out
as planned, or there's something else I didn't think of that should be
accounted for. So flame away!



------------------------------

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto


End of yocto Digest, Vol 78, Issue 45
*************************************

--_000_BLUPR0601MB164904682C72D4F0CFE95F9BE6200BLUPR0601MB1649_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:"Segoe UI Light";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> yocto-bounces@yoctoproject.org=
 [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Suneetha Lakshmi G<br>
<b>Sent:</b> Friday, March 10, 2017 8:25 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] help<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div id=3D"divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">H=
i All,<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">I=
m new to yocto and trying&nbsp;to build for my&nbsp;customer device im faci=
ng this issue.<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">| arm-linux-gnueabi-xgcc: error: unrecognized command li=
ne option '-mgeneral-regs-only'<br>
| arm-linux-gnueabi-xgcc: error: unrecognized command line option '-mcmodel=
=3Dlarge'<br>
| make: *** [opkg-compare-versions] Error 1<br>
| ERROR: oe_runmake failed<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Please guide how to progress further.<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">[ras] please provide what target you are building f=
rom, where you got your yocto layers from, what bitbake command you are usi=
ng.&nbsp; My WAG is that your toolchain is misconfigured,
 possible because you haven&#8217;t specified a MACHINE variable.<o:p></o:p=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Regards,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,sans-serif;color:black">Suneetha<o:p></o:p></span=
></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,sans-serif;color:black"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"x_divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:black">From:</span></b><span style=3D"font-=
size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">
<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoprojec=
t.org</a> &lt;<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounc=
es@yoctoproject.org</a>&gt; on behalf of
<a href=3D"mailto:yocto-request@yoctoproject.org">yocto-request@yoctoprojec=
t.org</a> &lt;<a href=3D"mailto:yocto-request@yoctoproject.org">yocto-reque=
st@yoctoproject.org</a>&gt;<br>
<b>Sent:</b> Friday, March 10, 2017 7:20 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Subject:</b> yocto Digest, Vol 78, Issue 45</span><span style=3D"font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:black">
<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">&nbsp;<o:p></o:p></span></p>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black">Send yocto mailing list submissions to<=
br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"mailto:yocto@yoctopro=
ject.org">yocto@yoctoproject.org</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"https://lists.yoctopr=
oject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>=
<br>
or, via email, send a message with subject or body 'help' to<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"mailto:yocto-request@=
yoctoproject.org">yocto-request@yoctoproject.org</a><br>
<br>
You can reach the person managing the list at<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"mailto:yocto-owner@yo=
ctoproject.org">yocto-owner@yoctoproject.org</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of yocto digest...&quot;<br>
<br>
<br>
Today's Topics:<br>
<br>
&nbsp;&nbsp; 1. Re: Raspberry Pi2 Fails to boot into LXDE. (Steve Plant)<br=
>
&nbsp;&nbsp; 2. Re: update mechanisms (Kristian Amlie)<br>
&nbsp;&nbsp; 3. Proposal: dealing with language-specific build<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tools/dependency management tools (Alexander=
 Kanavin)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Fri, 10 Mar 2017 13:31:40 &#43;0000<br>
From: Steve Plant &lt;<a href=3D"mailto:steove@hotmail.com">steove@hotmail.=
com</a>&gt;<br>
To: Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com<=
/a>&gt;<br>
Cc: &quot;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a>&gt;<br>
Subject: Re: [yocto] Raspberry Pi2 Fails to boot into LXDE.<br>
Message-ID:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;<a href=3D"mailto:SG2PR0301M=
B20164F99A2AF83AFC01ECDCFD1200@SG2PR0301MB2016.apcprd03.prod.outlook.com">S=
G2PR0301MB20164F99A2AF83AFC01ECDCFD1200@SG2PR0301MB2016.apcprd03.prod.outlo=
ok.com</a>&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>
<br>
Thanks Gary,<br>
<br>
<br>
You where spot on! I have now been able to SSH into the rpi and have posted=
 the Xorg.log file to the mailing list.<br>
<br>
<br>
I think Xorg is failing to load correctly because it cannot find the evdev =
module. Looking into how to fix this now......<br>
<br>
<br>
Regards, Steve.<br>
<br>
<br>
________________________________<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> &lt;<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto=
-bounces@yoctoproject.org</a>&gt; on behalf of Gary Thomas &lt;<a href=3D"m=
ailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;<br>
Sent: Friday, 10 March 2017 5:42 a.m.<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] Raspberry Pi2 Fails to boot into LXDE.<br>
<br>
On 2017-03-10 01:55, Steve Plant wrote:<br>
&gt; OK, I have spent the last day googling my heart out trying to find the=
 Xorg.log file without any luck.<br>
&gt;<br>
&gt;<br>
&gt; The problem is that due to the rpi hanging on boot, the only way I can=
 access the SD card to look for the file is place<br>
&gt; it in a USB SD card reader and use my VirtualBox based Debian to &quot=
;ls&quot; directores etc.<br>
&gt;<br>
&gt; Having established that there is no file located at /var/log/Xorg.log =
(there isn't a log directory) but there is a<br>
&gt; symbolic link in the var directory - goes nowhere.<br>
&gt;<br>
&gt;<br>
&gt; After goggling I discovered that the file could also be in the ~/.loca=
l/share/xorg/Xorg.0.log, however if I try to look<br>
&gt; there I get &quot;permission denied&quot; and cannot seem to get to th=
e root directory of the card and I can't find a way around<br>
&gt; this as I'm trying to access this directory through the USB card reade=
r.<br>
&gt;<br>
&gt;<br>
&gt; Looked everywhere with no answers, Is there anyone who could help me h=
ere??<br>
<br>
/var/log is on a volatile file system (i.e. it does not live on the SD card=
)<br>
<br>
If you can get into your board via SSH, you can copy the file and send it<b=
r>
<br>
&gt; ----------------------------------------------------------------------=
--------------------------------------------------<br>
&gt; *From:* Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gm=
ail.com</a>&gt;<br>
&gt; *Sent:* Wednesday, 8 March 2017 5:17 p.m.<br>
&gt; *To:* Steve Plant<br>
&gt; *Cc:* <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
&gt; *Subject:* Re: [yocto] Raspberry Pi2 Fails to boot into LXDE.<br>
&gt;<br>
&gt; On 17-03-08 12:40:51, Steve Plant wrote:<br>
&gt;&gt; Hi All,<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Very new to all this linux world, and especially Yocto.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I'm working on a embedded project at the moment using a raspberry =
pi2 board.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I have used toaster with Morty 2.2 to compile an image using&quot;=
rpi-basic-image&quot;, to this I have added the following bitbake variables=
:<br>
&gt;&gt;<br>
&gt;&gt; Bitbake variables<br>
&gt;&gt;<br>
&gt;&gt; DISTRO<br>
&gt;&gt; poky<br>
&gt;&gt; DL_DIR<br>
&gt;&gt; /home/steve/poky/downloads<br>
&gt;&gt; IMAGE_FSTYPES<br>
&gt;&gt; ext3 jffs2 tar.bz2 rpi-sdimg<br>
&gt;&gt; IMAGE_INSTALL_append<br>
&gt;&gt; packagegroup-core-x11-base packagegroup-lxde-base connman<br>
&gt;&gt; PACKAGE_CLASSES<br>
&gt;&gt; package_rpm<br>
&gt;&gt; SSTATE_DIR<br>
&gt;&gt; /home/steve/poky/sstate-cache<br>
&gt;&gt;<br>
&gt;&gt; DISABLE_OVERSCAN<br>
&gt;&gt; 1<br>
&gt;&gt; GPU_MEM_1024<br>
&gt;&gt; 512<br>
&gt;&gt;<br>
&gt;&gt; I have dd'ed the image to an SD card increased the sdb2 partition =
to the max size and powered up the rpi. Everything looks fine to start with=
, as it displays the four raspberrys in the top left, then the white &quot;=
Yocto Project&quot; splash screen complete with
 small blue dot to the side appears, the progress bar moves across to 100 p=
ercent, then the screen turns black with a white<br>
&gt; cursor in the middle and it appears to freeze with only a very dim one=
 second flash of the &quot;act&quot; led.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I have then connected the 7&quot; touchscreen and apart from the a=
dded multicolored square at the very beginning I get the exact same boot up=
 problem, hangs on the black screen with white cursor (good to see its all =
resized correctly for the TfT through!!)<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Before adding the packagegroup-core-x11-base and packagegroup-lxde=
-base I successfully copied over and ran the rpi-basic-image with no proble=
m, ending up with a usable console.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Looking for any help here, I'm thinking I've missed adding a packa=
ge, or some type of local.conf instruction. any suggestions would be apprec=
iated.............<br>
&gt;<br>
&gt; Can you send the content of /var/log/Xorg.log file ?<br>
<br>
<br>
--<br>
------------------------------------------------------------<br>
Gary Thomas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; Consulting for the<br>
MLB Associates&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; Embedded world<br>
------------------------------------------------------------<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoc=
toproject.org/listinfo/yocto</a><br>
yocto Info Page&lt;<a href=3D"https://lists.yoctoproject.org/listinfo/yocto=
">https://lists.yoctoproject.org/listinfo/yocto</a>&gt;
<o:p></o:p></span></p>
<div style=3D"margin-bottom:15.0pt;overflow:auto" id=3D"LPBorder_GT_1489155=
8257900.5653661391592557">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"90%" style=3D"width:90.0%;background:white;border-top:dotte=
d #C8C8C8 1.0pt;border-left:none;border-bottom:dotted #C8C8C8 1.0pt;border-=
right:none">
<tbody>
<tr>
<td valign=3D"top" style=3D"border:none;padding:0in 0in 0in 0in">
<div id=3D"LPTitle_14891558257890.9284501004393335">
<p class=3D"MsoNormal" style=3D"margin-top:15.0pt;mso-line-height-alt:15.75=
pt"><span style=3D"font-size:16.0pt;font-family:&quot;Segoe UI Light&quot;,=
sans-serif;color:#0078D7"><a href=3D"https://lists.yoctoproject.org/listinf=
o/yocto" target=3D"_blank"><span style=3D"text-decoration:none">yocto
 Info Page</span></a><o:p></o:p></span></p>
</div>
<div style=3D"margin-top:7.5pt;margin-bottom:12.0pt" id=3D"LPMetadata_14891=
558257890.14947739357936807">
<p class=3D"MsoNormal" style=3D"margin-top:15.0pt;line-height:10.5pt"><span=
 style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;colo=
r:#666666">lists.yoctoproject.org<o:p></o:p></span></p>
</div>
<div id=3D"LPDescription_14891558257900.873178865644606">
<p class=3D"MsoNormal" style=3D"margin-top:15.0pt;line-height:15.0pt"><span=
 style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;colo=
r:#666666">Discussion of all things about the Yocto Project. Read our Commu=
nity Guidelines or learn more about how to participate
 in other community discussions.<o:p></o:p></span></p>
</div>
</td>
</tr>
</tbody>
</table>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black"><br>
<br>
lists.yoctoproject.org<br>
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
<br>
<br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20170310/74aab5d4/attachment-0001.html">http://lists.yoctoproject.org/pi=
permail/yocto/attachments/20170310/74aab5d4/attachment-0001.html</a>&gt;<br=
>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Fri, 10 Mar 2017 14:35:02 &#43;0100<br>
From: Kristian Amlie &lt;<a href=3D"mailto:kristian.amlie@mender.io">kristi=
an.amlie@mender.io</a>&gt;<br>
To: Patrick Ohly &lt;<a href=3D"mailto:patrick.ohly@intel.com">patrick.ohly=
@intel.com</a>&gt;, Eystein M?l?y Stenberg<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;<a href=3D"mailto:eystein@me=
nder.io">eystein@mender.io</a>&gt;<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] update mechanisms<br>
Message-ID: &lt;<a href=3D"mailto:0135756b-1d20-a743-4f82-8f45becea106@mend=
er.io">0135756b-1d20-a743-4f82-8f45becea106@mender.io</a>&gt;<br>
Content-Type: text/plain; charset=3Dutf-8<br>
<br>
On 10/03/17 14:02, Patrick Ohly wrote:<br>
&gt; On Wed, 2017-03-01 at 16:35 -0800, Eystein M?l?y Stenberg wrote:<br>
&gt;&gt; On Tue, 2016-12-06 at 10:45 &#43;0100, Patrick Ohly wrote:<br>
&gt;&gt;&gt; On Tue, 2016-12-06 at 10:01 &#43;0100, Stefano Babic wrote:<br=
>
&gt;&gt;&gt;&gt; Hi Patrick,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On 30/11/2016 15:59, Patrick Ohly wrote:<br>
&gt;&gt;&gt;&gt;&gt; I've started a Wiki page<br>
&gt;&gt;&gt;&gt;&gt; <a href=3D"https://wiki.yoctoproject.org/wiki/System_U=
pdate">https://wiki.yoctoproject.org/wiki/System_Update</a> - rudimentary a=
t the<br>
&gt;&gt;&gt;&gt;&gt; moment, but might as well be mentioned already now.<br=
>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I have seen Mariano added an entry for SWUpdate, too, than=
ks&nbsp; - I would<br>
&gt;&gt;&gt;&gt; like to edit for better explanation on some parts. Should =
I try to edit<br>
&gt;&gt;&gt;&gt; directly the page or is it better to discuss it here ?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Use your own judgment. If its uncontroversial, the feel free t=
o edit the<br>
&gt;&gt;&gt; page directly, otherwise let's discuss it here.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; If feel that putting information directly into the table is to=
o limiting<br>
&gt;&gt;&gt; (it should be brief), then feel free to start a complete secti=
on about<br>
&gt;&gt;&gt; SWUpdate.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I'll do the same for swupd. Editing the sections should be pos=
sible<br>
&gt;&gt;&gt; without conflicts, we just have to be more careful about editi=
ng the<br>
&gt;&gt;&gt; table concurrently.<br>
&gt;&gt;<br>
&gt;&gt; I updated the Mender part of the wiki now that the stable version =
Mender <br>
&gt;&gt; 1.0 is released. These changes should not be controversial, but le=
t me <br>
&gt;&gt; know if you disagree. We are planning to keep the Mender section <=
br>
&gt;&gt; up-to-date as we release new versions, as I think this is what you=
 expect.<br>
&gt; <br>
&gt; Yes, that's useful.<br>
&gt; <br>
&gt;&gt; Are there any plans for next steps or is the wiki the &quot;final =
state&quot; in <br>
&gt;&gt; terms of integrating OTA updates in Yocto/OE?<br>
&gt; <br>
&gt; My own conclusion is that it is impossible to integrate a specific OTA=
<br>
&gt; update into Yocto/OE (because there's no single solution that fits all=
<br>
&gt; requirements) and/or it would be unfair to those solutions that don't<=
br>
&gt; get such special testing. In that sense the Wiki page is the final<br>
&gt; result of the investigation. Anyone interested in picking a solution c=
an<br>
&gt; go there, consider the pros and cons, and then make a choice.<br>
<br>
Makes sense. We can always revisit this at a later point, if one method<br>
starts to emerge as the preferred option for most people.<br>
<br>
&gt; However, I see room for some collaborative work that then can happen i=
n<br>
&gt; Yocto/OE:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * carrying local system configurat=
ion changes across system<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; updates: I find it pro=
mising to investigate the &quot;stateless&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; concept and have start=
ed some exploratory work, see<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"https://wik=
i.yoctoproject.org/wiki/Stateless#Status_and_goals_for_.22stateless.22_in_Y=
octo">
https://wiki.yoctoproject.org/wiki/Stateless#Status_and_goals_for_.22statel=
ess.22_in_Yocto</a> (more on that soon)<br>
<br>
What's the relation (if any) between this and a read-only rootfs?<br>
<br>
Also this may be only vaguely related, but I have it in my queue to<br>
finish the built-in partitioning of rootfs images [1], which will help<br>
divide the filesystem into a stateful and a stateless part. The wic part<br=
>
is done [2], but ext4 images are not covered yet.<br>
<br>
[1] It works by choosing which sub directories of the complete rootfs<br>
you want on each partition.<br>
<br>
[2] <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10712">h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10712</a><br>
<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * supporting UEFI-based machines<b=
r>
<br>
Great, this is something we are interested in as well!<br>
<br>
-- <br>
Kristian<br>
<br>
<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Fri, 10 Mar 2017 15:49:01 &#43;0200<br>
From: Alexander Kanavin &lt;<a href=3D"mailto:alexander.kanavin@linux.intel=
.com">alexander.kanavin@linux.intel.com</a>&gt;<br>
To: <a href=3D"mailto:openembedded-architecture@lists.openembedded.org">ope=
nembedded-architecture@lists.openembedded.org</a>,&nbsp;&nbsp; Yocto Projec=
t<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;<a href=3D"mailto:yocto@yoct=
oproject.org">yocto@yoctoproject.org</a>&gt;<br>
Subject: [yocto] Proposal: dealing with language-specific build<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tools/dependency management tool=
s<br>
Message-ID: &lt;<a href=3D"mailto:37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linu=
x.intel.com">37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com</a>&gt;<b=
r>
Content-Type: text/plain; charset=3Dutf-8; format=3Dflowed<br>
<br>
Hello all,<br>
<br>
*Introduction*<br>
<br>
The new generation of programming languages (think node.js, Go, Rust) is <b=
r>
a poor fit for the Yocto build model which follows the traditional Unix <br=
>
model. In particular, those new development environments have no problem <b=
r>
with 'grabbing random stuff from the Internet' as a part of development <br=
>
and build process. However, Yocto has very strict rules about the build <br=
>
steps and what they can and can not do, and also a strict enforcement of <b=
r>
license and version checks for every component that gets built. Those <br>
two models clash, and this is a proposal of how they could be reconciled.<b=
r>
<br>
I'll also send a separate email that talks specifically about MEAN stack <b=
r>
and how it could be supported as Yocto - take it as a specific example <br>
for all of the below.<br>
<br>
*Background*<br>
<br>
The traditional development model on Unix clearly separates installation <b=
r>
of dependencies needed to develop a project from the development process <b=
r>
itself. Typically, when one wants to build some project, first the <br>
project README needs to be inspected, and any required dependencies <br>
installed system-wide using the distribution package management's tool. <br=
>
When those dependencies change, usually this manifests itself in a <br>
previously unseen build failure which is again manually resolved by <br>
figuring out the missing dependency and installing it. This can be <br>
awkward, but it's how things have been done for decades, and Yocto's <br>
build system (with separate steps for fetching, unpacking, building, <br>
packaging etc.) is built around the assumption that most software can be <b=
r>
built this way.<br>
<br>
Unfortunately, this situation is changing. The new development <br>
environments, such as Go, Rust or node.js see this approach as <br>
cumbersome and getting-in-the-way for developers. They want projects' <br>
setup to be as quick and automatic as possible - and it should also be <br>
cross-platform. So each such environment comes with a specialized tool <br>
which handles installation of dependencies and bypasses the distribution <b=
r>
package management altogether. Typically these dependencies are fetched <br=
>
from the Internet and installed into the project tree. The details are <br>
hidden; it's assumed that developers don't want to know or care. In <br>
particular, specific versions of dependencies can be only weakly <br>
specified or ignored altogether (that is, the latest commit is always <br>
fetched), licensing is totally overlooked, a list of what was installed <br=
>
cannot be trivially obtained, and repeating the procedure the next day <br>
may result in a different set of code being pulled in, because someone <br>
somewhere added a commit to their github repo.<br>
<br>
This does not work well in Yocto context. Yocto project prides itself on <b=
r>
being specific and exact about what gets build, how it gets built and <br>
what license is attached to each component. So we need to somehow <br>
enforce that with the new model, and avoid the situation where separate, <b=
r>
incompatible, and difficult to grasp solutions are developed for each <br>
language environment.<br>
<br>
*Design considerations*<br>
<br>
1. I would like recipes to remain short and sweet and clear. In <br>
particular, node.js projects can pull in hundreds of dependencies; I <br>
want to keep their metadata out of the recipe and somewhere else, for <br>
readability, clarity, and maintainability.<br>
<br>
2. I don't want to implement custom fetchers, or otherwise re-implement <br=
>
(poorly) those language-specific build and dependency management tools. <br=
>
Let's use npm, cargo and go as much as we possibly can and let them do <br>
their job - yes, that also includes them fetching things from the <br>
internet for us.<br>
<br>
3. When things need to be updated to a new version, manual editing of <br>
metadata should be avoided: when there are hundreds of dependencies, a <br>
tool should modify the metadata, and human should only inspect the changes.=
<br>
<br>
*How do we deal with this?*<br>
<br>
By introducing a lockdown file that lives next to the recipe. The <br>
concept is already implemented in npm, but needs to be made generic and <br=
>
come with a common API that is using the file to verify the build.<br>
<br>
*What is a lockdown file?*<br>
<br>
The file captures all of the recipe dependencies that are pulled in by <br>
the build tool. For each such dependency the following information is <br>
provided (this is really similar to what is in recipes, and that is on <br>
purpose:<br>
<br>
- name<br>
- description (optional)<br>
- verification data (this is specific to each language, but can be <br>
version, git commit id, a checksum and so on). The only requirement is <br>
that it maps to a unique set of code.<br>
- license string<br>
- license file path<br>
- license checksum<br>
<br>
*How is the lockdown file used?*<br>
<br>
1. It needs to be generated in the first place when adding a new recipe. <b=
r>
For example:<br>
<br>
bitbake -c generate_lockdown recipe<br>
<br>
would fetch and unpack the recipe code, then run npm/cargo/go to pull in <b=
r>
the dependencies, then walk the project tree and generate the lockdown <br>
metadata. Sometimes the tools can help here somewhat, but other times <br>
they can be used only for fetching, and verification data has to be <br>
figured out by inspecting the tree with our custom-written code. This is <b=
r>
the hard part that we have to deal with.<br>
<br>
2. It can be used to perform a 'loose' build of the recipe that does not <b=
r>
guarantee reproducibility.<br>
<br>
We have to accept this: some projects just don't care about it, and <br>
offer no support to those who want reproducibility. We should at least <br>
provide a way to build such projects in Yocto. The information in <br>
lockdown file is not enforced; it's merely compared against the actual <br>
build and any differences presented to the user as warnings. This is a <br>
recipe setting.<br>
<br>
3. It can also be used to perform a 'strict' build of the recipe that <br>
enforces what is in the lockdown file.<br>
<br>
The information in the lockdown file is given to the language-specific <br>
tool to help it fetch the right things (whenever the tool makes it <br>
possible), and then is used to compare to what was fetched, but this <br>
time any mismatches stop the build. Exactly how this happens is specific <b=
r>
to each language, and again, it is the hard bit that we need to deal with.<=
br>
<br>
4. When a recipe is updated to a new version, the lockdown file needs to <b=
r>
be updated as well.<br>
<br>
One possibility is to generate a new lockdown file (as in point 1), and <br=
>
then a human can compare that against the old lockdown file.<br>
<br>
bitbake -c update_lockdown recipe<br>
<br>
5. Packaging<br>
<br>
Go by default is compiling everything into a static executable, so there <b=
r>
are no separate packages. All dependencies' licenses should be rolled <br>
into the package: lockdown file tells what they are and where they are <br>
in the build tree.<br>
<br>
Other environments do install the dependencies somewhere in the system, <br=
>
so those should be packaged separately: lockdown file is used to get a <br>
list of them and attach licenses to them. Installation paths (things <br>
that FILES_ is set to) should typically be easy to figure out from <br>
dependency names.<br>
<br>
*Conclusion*<br>
<br>
This is only a preliminary idea: I understand that the devil is in the <br>
details, and there are plenty of details where things may not work out <br>
as planned, or there's something else I didn't think of that should be <br>
accounted for. So flame away!<br>
<br>
<br>
<br>
------------------------------<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoc=
toproject.org/listinfo/yocto</a><br>
<br>
<br>
End of yocto Digest, Vol 78, Issue 45<br>
*************************************<o:p></o:p></span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BLUPR0601MB164904682C72D4F0CFE95F9BE6200BLUPR0601MB1649_--
