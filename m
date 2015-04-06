Return-Path: <Virgil.Smith@flir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8726DE006E6; Mon,  6 Apr 2015 10:13:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.0.64.244 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from east-edge.flir.com (east-edge.flir.com [208.0.64.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 190B2E003A8
	for <yocto@yoctoproject.org>; Mon,  6 Apr 2015 10:13:40 -0700 (PDT)
Received: from BOS-CH1.zone1.flir.net (10.128.150.52) by EAST-EDGE.flir.com
	(10.128.210.250) with Microsoft SMTP Server (TLS) id 14.3.195.1;
	Mon, 6 Apr 2015 13:18:46 -0400
Received: from BOS-DAG1.zone1.flir.net ([169.254.2.246]) by
	BOS-CH1.zone1.flir.net ([10.128.150.52]) with mapi id 14.03.0224.002;
	Mon, 6 Apr 2015 13:12:59 -0400
From: "Smith, Virgil" <Virgil.Smith@flir.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Kernel Panic: /sbin/init not found
Thread-Index: AdBtJJT1N+XghKcCR/iJRvDjeaehYv//o26A//4//jD//HpMcIAGi48A//95NED//uZcYP/9WiyA//q81xD/85+RgP/kWtfw
Date: Mon, 6 Apr 2015 17:12:59 +0000
Message-ID: <F14AEF751653024287138321000C846AF48138A8@BOS-DAG1.zone1.flir.net>
References: <0E4D391FE2BDEC45AA0B4E32D6BD598A28AF2F@PGSMSX101.gar.corp.intel.com>
	<6493109.qmgxeLPueO@peggleto-mobl.ger.corp.intel.com>
	<F14AEF751653024287138321000C846AF4813599@BOS-DAG1.zone1.flir.net>
	<3830727.44ard1Gu2C@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <3830727.44ard1Gu2C@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.145.10.29]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Yu,
	Chan KitX" <chan.kitx.yu@intel.com>
Subject: Re: Kernel Panic: /sbin/init not found
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
X-List-Received-Date: Mon, 06 Apr 2015 17:13:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


> This is not true in the general case. You definitely can use
> IMAGE_INSTALL_append with a leading space to add items to an image, I jus=
t
> verified that now.
>
> I'm not clear on exactly what happened in the case we're discussing, at l=
east
> initially it sounded like IMAGE_INSTALL =3D rather than IMAGE_INSTALL_app=
end =3D
> was being used, which would definitely account for the behaviour describe=
d.

Digging.... testing.... reading....
I don't know what happened in Chan Kit's case, but it looks like my earlier=
 trouble was using IMAGE_INSTALL +=3D  from inside local.conf.  IMAGE_INSTA=
LL_append isn't applied until after parsing completes.  So here is one (or =
rather the) way to overcome the fact that local.conf is *parsed* too early =
for extending variables/configuration introduced later in the *parsing* cha=
in.

So, my earlier statement that you can't use/rely on IMAGE_INSTALL_append fr=
om local.conf is flat wrong.

> The precedence of bb files and order of application of bbappends is contr=
olled
> primarily by layer priorities; the order that layers appear in bblayers.c=
onf
> shouldn't come into that (although it may if you have layers that have ex=
actly
> the same priority set). The order of layers in bblayers.conf can influenc=
e the
> order in which bbclass and inc files are found *where files of the same n=
ame
> exist across different layers*, since these are found using BBPATH, which=
 is
> prepended or appended to by each layer.conf file and thus the order in wh=
ich
> those files are parsed is significant.

Thanks Paul, I wasn't sure I had the whole story.

________________________________

Notice to recipient: This email is meant for only the intended recipient of=
 the transmission, and may be a communication privileged by law, subject to=
 export control restrictions or that otherwise contains proprietary informa=
tion. If you receive this email by mistake, please notify us immediately by=
 replying to this message and then destroy it and do not review, disclose, =
copy or distribute it. Thank you in advance for your cooperation.

