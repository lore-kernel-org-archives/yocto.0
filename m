Return-Path: <Virgil.Smith@flir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4836BE0095F; Fri,  3 Apr 2015 08:33:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [208.0.64.244 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Fri, 03 Apr 2015 08:32:58 PDT
Received: from east-edge.flir.com (east-edge.flir.com [208.0.64.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1CB6E0095C
	for <yocto@yoctoproject.org>; Fri,  3 Apr 2015 08:32:58 -0700 (PDT)
Received: from BOS-CH1.zone1.flir.net (10.128.150.52) by EAST-EDGE.flir.com
	(10.128.210.250) with Microsoft SMTP Server (TLS) id 14.3.195.1;
	Fri, 3 Apr 2015 11:37:09 -0400
Received: from BOS-DAG1.zone1.flir.net ([169.254.2.246]) by
	BOS-CH1.zone1.flir.net ([10.128.150.52]) with mapi id 14.03.0224.002;
	Fri, 3 Apr 2015 11:31:58 -0400
From: "Smith, Virgil" <Virgil.Smith@flir.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Yu, Chan KitX"
	<chan.kitx.yu@intel.com>
Thread-Topic: [yocto] Kernel Panic: /sbin/init not found
Thread-Index: AdBtJJT1N+XghKcCR/iJRvDjeaehYv//o26A//4//jD//HpMcIAGi48A//95NED//uZcYP/9WiyA//q81xA=
Date: Fri, 3 Apr 2015 15:31:06 +0000
Message-ID: <F14AEF751653024287138321000C846AF4813599@BOS-DAG1.zone1.flir.net>
References: <0E4D391FE2BDEC45AA0B4E32D6BD598A28AF2F@PGSMSX101.gar.corp.intel.com>
	<551E3B3C.9080306@windriver.com>
	<0E4D391FE2BDEC45AA0B4E32D6BD598A28B087@PGSMSX101.gar.corp.intel.com>
	<6493109.qmgxeLPueO@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <6493109.qmgxeLPueO@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.145.10.29]
MIME-Version: 1.0
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
X-List-Received-Date: Fri, 03 Apr 2015 15:33:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> > OK, it turned out that prepending the space before lib32-connman does
> > not do any good. However, commenting out the line which contains the
> > IMAGE_INSTALL_append does. That begs the question; what does
> > lib32-connman do?
>
> It's not lib32-connman that's the problem. The problem is that you were
> effectively setting the value of IMAGE_INSTALL to something and the defau=
lt in
> core-image.bbclass is being set with ?=3D , and because it's already set =
at the time
> the ?=3D is parsed, the defaults (including the chain leading to
> sysvinit/systemd) are not being added, among many other packages. If you =
use
> IMAGE_INSTALL_append rather than IMAGE_INSTALL (or use a proper image
> recipe instead of appending to IMAGE_INSTALL from local.conf) you shouldn=
't
> have a problem.

You can't use IMAGE_INSTALL_append from local.conf (as you already confirme=
d).  You will have to "use a proper image recipe" (as Paul Eggleton also su=
ggested).  I too ran afoul of this recently.

The Yocto layer/configuration composition is non-intuitive.  It is easy to =
expect items in local.conf to 'override/extend' the configuration resulting=
 from your layer selections in bblayers.conf, but this is not what happens.=
  I'd personally prefer local.conf to be processed AFTER the conf/layer.con=
f and conf/machine/some-name.conf files, but at the very least bb needs to =
know the selected machine first.  So to tune/tweak things you need a file u=
p front (local.conf) and a file at the other end (a custom recipe and/or la=
yer).

Also, don't think that the ordering of layers in your bblayers.conf file (a=
lone) determines the overlaying/replacement of matching bb/bbappend, inc, o=
r source/patch files.


________________________________

Notice to recipient: This email is meant for only the intended recipient of=
 the transmission, and may be a communication privileged by law, subject to=
 export control restrictions or that otherwise contains proprietary informa=
tion. If you receive this email by mistake, please notify us immediately by=
 replying to this message and then destroy it and do not review, disclose, =
copy or distribute it. Thank you in advance for your cooperation.

