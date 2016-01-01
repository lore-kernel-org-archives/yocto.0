Return-Path: <mirela.rabulea@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B52BE00D15; Fri,  1 Jan 2016 08:53:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.62 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0062.outbound.protection.outlook.com [157.55.234.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68A97E0033E
	for <yocto@yoctoproject.org>; Fri,  1 Jan 2016 08:53:35 -0800 (PST)
Received: from VI1PR0401MB1789.eurprd04.prod.outlook.com (10.165.234.151) by
	AM2PR04MB0897.eurprd04.prod.outlook.com (10.161.70.148) with Microsoft
	SMTP Server (TLS) id 15.1.361.13; Fri, 1 Jan 2016 16:19:33 +0000
Received: from VI1PR0401MB1789.eurprd04.prod.outlook.com ([10.165.234.151]) by
	VI1PR0401MB1789.eurprd04.prod.outlook.com ([10.165.234.151]) with
	mapi id 15.01.0361.006; Fri, 1 Jan 2016 16:19:32 +0000
From: Mirela Rabulea <mirela.rabulea@nxp.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>, Mirela Rabulea
	<Mirela.Rabulea@freescale.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] using Hob to run images on a custom simulator, other
	than qemu
Thread-Index: AQHRO+JQkjs3VfaAnke6FvA1yts7QJ7W4STQgAF+aQCAAgTukIAHYDYAgAUifIY=
Date: Fri, 1 Jan 2016 16:19:32 +0000
Message-ID: <VI1PR0401MB178995FB0D126B354C49120D8FFF0@VI1PR0401MB1789.eurprd04.prod.outlook.com>
References: <CY1PR0301MB11809C718902C817370BAE6E85E10@CY1PR0301MB1180.namprd03.prod.outlook.com>
	<D29D8ACF.6DB8E%belen.barros.pena@intel.com>
	<DBXPR04MB41628675A843378D20C88978FE50@DBXPR04MB416.eurprd04.prod.outlook.com>
	<D2A024CD.6DE42%belen.barros.pena@intel.com>
	<DBXPR04MB416EDBBD82717E2894043018FE70@DBXPR04MB416.eurprd04.prod.outlook.com>,
	<D2A806BE.6E038%belen.barros.pena@intel.com>
In-Reply-To: <D2A806BE.6E038%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mirela.rabulea@nxp.com; 
x-originating-ip: [213.233.84.200]
x-microsoft-exchange-diagnostics: 1; AM2PR04MB0897;
	5:Uy/o8dUYq5lUTHbqsJ7ro9UMEsx/ULEIJ7yB8beqK4uRkgMt0z9iiTwp2sSICrPkq6kZ+YIAihO1nv+NbkuCqaUlRp/5XhQly7QMX+PXB1cGxEeDjIx0kLmlvpTWMN+WlpjsYmVGKWIhY0A8WQoLig==;
	24:dmD3yeXYC5LbfdjHGMeCuH6p0iG/ISXfnSYO56+qwNVPF+LTeg+tYWLXwxDFTQ68K95NRiRBbdZdBZPTpSqijTzWNjhuHjZTOsul2vh0JGQ=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AM2PR04MB0897;
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AM2PR04MB0897A620D7D5DD8A7E9FF6A98FFF0@AM2PR04MB0897.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(185117386973197)(101931422205132);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(520078)(5005006)(8121501046)(10201501046)(3002001);
	SRVR:AM2PR04MB0897; BCL:0; PCL:0; RULEID:; SRVR:AM2PR04MB0897; 
x-forefront-prvs: 0808323E97
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(189002)(51914003)(43544003)(24454002)(164054003)(53484002)(13464003)(199003)(479174004)(377454003)(469094003)(55674003)(5004730100002)(40100003)(54356999)(76176999)(66066001)(77096005)(93886004)(50986999)(2900100001)(106116001)(15975445007)(2501003)(105586002)(101416001)(33656002)(86362001)(561944003)(3846002)(92566002)(5890100001)(106356001)(5001960100002)(189998001)(2950100001)(5003600100002)(19580405001)(122556002)(5002640100001)(76576001)(87936001)(97736004)(10400500002)(5001770100001)(6116002)(5008740100001)(4326007)(19580395003)(102836003)(1096002)(74316001)(1220700001)(81156007)(586003)(7059030);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM2PR04MB0897;
	H:VI1PR0401MB1789.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jan 2016 16:19:32.1423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM2PR04MB0897
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
X-List-Received-Date: Fri, 01 Jan 2016 16:53:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="windows-1254"
Content-Transfer-Encoding: quoted-printable

Hi Belen,
Regarding the selection of the custom script, there is a "change" button, w=
hen pressed it shows up a file chooser dialog. I just reused it from the ex=
isting scripts. There was an option to add filters for the filename and ext=
ension, but I did not use any filter.

Thanks,
Mirela

Sent using OWA for iPhone
________________________________________
From: Barros Pena, Belen <belen.barros.pena@intel.com>
Sent: Tuesday, December 29, 2015 11:49:38 AM
To: Mirela Rabulea; Mirela Rabulea; yocto@yoctoproject.org
Cc: Nicolae Manescu
Subject: Re: [yocto] using Hob to run images on a custom simulator, other t=
han qemu

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
>custom script

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
>>>
>>>
>>>This is my first message on any yocto list, I=B9m not sure which list to
>>>address, so I choose the ones which seemed the most generic and suited
>>>to my purpose. Please redirect me if a more specific list is better
>>>suited to ask this question.
>>>
>>>
>>>
>>>The problem I see at present is: there is one single button in Hob,
>>>=B3Run Image=B2, which is active only for qemu images, and it is
>>>triggering the execution of the =B3poky\scripts\runqemu=B2 script. Pleas=
e
>>>scroll down to the picture at end of this email to see what I=B9m talkin=
g
>>>about.
>>>
>>>
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
>>>
>>>
>>>The changes I anticipate would be necessary are:
>>>
>>>1.
>>>Changes in the GUI, somewhere in the python scripts from
>>>=B3poky\bitbake\lib\bb\ui\crumbs\=B2, especially in imagedetailspage.py,
>>>maybe in builder.py
>>>
>>>2.
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
>>>
>>>
>>>BTW, here is how Hob =B3Image details=B2 dialog currently looks like, se=
e
>>>attached picture, note that the highlighted =B3Run Image=B2 button shows
>>>up only for qemu images.
>>>
>>>
>>>Regards,
>>>
>>>Mirela
>>>
>>>
>>>
>>>
>>
>


