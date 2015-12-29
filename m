Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43F83E00CE2; Tue, 29 Dec 2015 01:49:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2B76E008B5
	for <yocto@yoctoproject.org>; Tue, 29 Dec 2015 01:49:41 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 29 Dec 2015 01:49:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,494,1444719600"; d="scan'208";a="880326989"
Received: from irsmsx105.ger.corp.intel.com ([163.33.3.28])
	by orsmga002.jf.intel.com with ESMTP; 29 Dec 2015 01:49:39 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.22]) by
	irsmsx105.ger.corp.intel.com ([169.254.7.104]) with mapi id
	14.03.0248.002; Tue, 29 Dec 2015 09:49:38 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Mirela Rabulea <mirela.rabulea@nxp.com>, Mirela Rabulea
	<Mirela.Rabulea@freescale.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] using Hob to run images on a custom simulator, other
	than qemu
Thread-Index: AQHRQh47qLsqKzajhEaPl+/oBweBcQ==
Date: Tue, 29 Dec 2015 09:49:38 +0000
Message-ID: <D2A806BE.6E038%belen.barros.pena@intel.com>
References: <CY1PR0301MB11809C718902C817370BAE6E85E10@CY1PR0301MB1180.namprd03.prod.outlook.com>
	<D29D8ACF.6DB8E%belen.barros.pena@intel.com>
	<DBXPR04MB41628675A843378D20C88978FE50@DBXPR04MB416.eurprd04.prod.outlook.com>
	<D2A024CD.6DE42%belen.barros.pena@intel.com>
	<DBXPR04MB416EDBBD82717E2894043018FE70@DBXPR04MB416.eurprd04.prod.outlook.com>
In-Reply-To: <DBXPR04MB416EDBBD82717E2894043018FE70@DBXPR04MB416.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.5.9.151119
x-originating-ip: [10.252.27.131]
MIME-Version: 1.0
Cc: Nicolae Manescu <nicu.manescu@nxp.com>
Subject: Re: using Hob to run images on a custom simulator, other than qemu
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
X-List-Received-Date: Tue, 29 Dec 2015 09:49:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="windows-1254"
Content-ID: <686666ABAFCA3A4CBBBD87E4FD18A0C7@intel.com>
Content-Transfer-Encoding: quoted-printable



On 24/12/2015 18:19, "Mirela Rabulea" <mirela.rabulea@nxp.com> wrote:

>Hi Bel=E9n,
>Thanks for the info on the tests, I'll check on that.
>In the meantime, please find attached my proposal for the new GUI
>options. Basically, if an image is qemu-compatible, already there was a
>"Run image" button displayed. I let the button be named "Run qemu image",
>while if a non qemu-compatible image is selected, the same button shows
>up with the name "Run custom image"

Hi Mirela,

This looks ok to me.

> and besides that, an option shows-up to allow the selection of the
>custom script=20

I guess the only thing I am missing is how do I select the custom script.
Will you present the option in a dialog?

>(by default it points out to runqemu script) to be used for launching
>this custom image.
>I also attached my original versus changed python scripts, for more
>clarity.

Can't comment on those, I'm afraid. I only take care of the pretty
pictures ;)

Cheers

Bel=E9n

>Looking forward for your feedback.
>
>And...Merry Christmas :)
>
>Regards,
>Mirela
>
>
>-----Original Message-----
>From: Barros Pena, Belen [mailto:belen.barros.pena@intel.com]
>Sent: Wednesday, December 23, 2015 12:21 PM
>To: Mirela Rabulea <mirela.rabulea@nxp.com>; Mirela Rabulea
><Mirela.Rabulea@freescale.com>; yocto@yoctoproject.org;
>poky@yoctoproject.org
>Cc: Nicolae Manescu <nicu.manescu@nxp.com>; Georgescu, Alexandru C
><alexandru.c.georgescu@intel.com>
>Subject: Re: [yocto] using Hob to run images on a custom simulator, other
>than qemu
>
>
>
>On 22/12/2015 11:35, "Mirela Rabulea" <mirela.rabulea@nxp.com> wrote:
>
>>Hi Bel=E9n,
>>Thanks for the answer. Is there a set of tests that would ensure there
>>are no regressions? Where can it be found?
>
>These are the test cases I can find in Testopia:
>
>https://bugzilla.yoctoproject.org/tr_list_cases.cgi?searchstr=3Dhob&curren=
t_
>t
>ab=3Dcase&summary_type=3Danywordssubstr&summary=3Dhob&field-1-0-0=3Dsummar=
y&type-1
>-
>0-0=3Danywordssubstr&value-1-0-0=3Dhob
>
>Hopefully someone from QA can provide more details on how to run them.
>
>If you want any input on how to present the new options in the UI, let me
>know. I'll be happy to help.
>
>Cheers
>
>Bel=E9n
>
>>
>>Thanks,
>>Mirela
>>
>>-----Original Message-----
>>From: Barros Pena, Belen [mailto:belen.barros.pena@intel.com]
>>Sent: Monday, December 21, 2015 1:26 PM
>>To: Mirela Rabulea <Mirela.Rabulea@freescale.com>;
>>yocto@yoctoproject.org; poky@yoctoproject.org
>>Cc: nicolae.manescu@nxp.com
>>Subject: Re: [yocto] using Hob to run images on a custom simulator,
>>other than qemu
>>
>>
>>
>>On 18/12/2015 16:05, "yocto-bounces@yoctoproject.org on behalf of
>>Mirela Rabulea" <yocto-bounces@yoctoproject.org on behalf of
>>Mirela.Rabulea@freescale.com> wrote:
>>
>>>
>>>
>>>Hello yocto world
>>>J
>>>
>>>=20
>>>
>>>This is my first message on any yocto list, I=B9m not sure which list to
>>>address, so I choose the ones which seemed the most generic and suited
>>>to my purpose. Please redirect me if a more specific list is better
>>>suited to ask this question.
>>>
>>>=20
>>>
>>>The problem I see at present is: there is one single button in Hob,
>>>=B3Run Image=B2, which is active only for qemu images, and it is
>>>triggering the execution of the =B3poky\scripts\runqemu=B2 script. Pleas=
e
>>>scroll down to the picture at end of this email to see what I=B9m talkin=
g
>>>about.
>>>
>>>=20
>>>
>>>The question I want to ask is if it would be acceptable to add more
>>>buttons to the =B3Image details=B2 dialog (or a new dialog to pop-up whe=
n
>>>=B3Run Image=B2 is clicked), in order to allow the customization of the
>>>simulator to be launched, basically to specify the location & command
>>>line of such custom simulator. Who may advise in this matter? I am
>>>willing to contribute with changes.
>>
>>Hi Mirela,
>>
>>I have asked a few people about this, because Hob is pretty much
>>deprecated at this point (it's being replaced by a web interface called
>>Toaster). They replied they would be willing to merge changes to Hob,
>>as long as they can be sure they won't cause any regressions.
>>
>>I hope this helps.
>>
>>Cheers
>>
>>Bel=E9n
>>
>>>
>>>=20
>>>
>>>The changes I anticipate would be necessary are:
>>>
>>>1.     =20
>>>Changes in the GUI, somewhere in the python scripts from
>>>=B3poky\bitbake\lib\bb\ui\crumbs\=B2, especially in imagedetailspage.py,
>>>maybe in builder.py
>>>
>>>2.     =20
>>>Be more permissive with the types of images that are allowed to run.
>>>Currently, there are these restrictions related to the name and
>>>extension of the image in =B3poky\meta\classes\ image_types.bbclass=B2,
>>>these need to be extended/customized:
>>>
>>>RUNNABLE_IMAGE_TYPES ?=3D "ext2 ext3"
>>>
>>>RUNNABLE_MACHINE_PATTERNS ?=3D "qemu"
>>>
>>>
>>>=20
>>>
>>>BTW, here is how Hob =B3Image details=B2 dialog currently looks like, se=
e
>>>attached picture, note that the highlighted =B3Run Image=B2 button shows
>>>up only for qemu images.
>>>=20
>>>
>>>Regards,
>>>
>>>Mirela
>>>
>>>=20
>>>
>>>
>>
>


