Return-Path: <Virgil.Smith@flir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDBDFE01014; Thu,  1 Oct 2015 09:39:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.0.64.244 listed in list.dnswl.org]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 Oct 2015 09:39:43 PDT
Received: from east-edge.flir.com (east-edge.flir.com [208.0.64.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C749E00A3C
	for <yocto@yoctoproject.org>; Thu,  1 Oct 2015 09:39:43 -0700 (PDT)
Received: from BOS-CH1.zone1.flir.net (10.128.150.52) by EAST-EDGE.flir.com
	(10.128.210.250) with Microsoft SMTP Server (TLS) id 14.3.235.1;
	Thu, 1 Oct 2015 12:45:53 -0400
Received: from BOS-DAG1.zone1.flir.net ([169.254.2.207]) by
	BOS-CH1.zone1.flir.net ([10.128.150.52]) with mapi id 14.03.0235.001;
	Thu, 1 Oct 2015 12:38:37 -0400
From: "Smith, Virgil" <Virgil.Smith@flir.com>
To: Gary Thomas <gary@mlbassoc.com>, Yocto Project <yocto@yoctoproject.org>
Thread-Topic: [yocto] Safely cleaning 'downloads'
Thread-Index: AQHQ+3lz7ku1sbiAeUGrlLIzMAbfjJ5W0JoQ
Date: Thu, 1 Oct 2015 16:38:37 +0000
Message-ID: <F14AEF751653024287138321000C846AF48D2103@BOS-DAG1.zone1.flir.net>
References: <560BD1F3.1090907@mlbassoc.com>
In-Reply-To: <560BD1F3.1090907@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.145.10.66]
MIME-Version: 1.0
Subject: Re: Safely cleaning 'downloads'
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
X-List-Received-Date: Thu, 01 Oct 2015 16:39:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The following is roughly the procedure I follow and that works for me.  May=
be someone could chime in with how some of this should be trimmed based on =
yocto/bitbake intent/design.
Even so I'd probably stick with this level of extremism because without a k=
nown good backup of your downloads(sources) you may be incapable of (tweaki=
ng and) rebuilding your products if anything happens to your build server.

The only reason I've seen that simply deleting the downloads folder causes =
problems is that external servers/content go away, violate their git histor=
y, or replace files with non-identical contents.


Warning: The following does not maintain PR server information, so automati=
c upgrading of your own packages could break.  If you rely on this work out=
 how to extract that information (and back it up regularly).

1. rename/move your current downloads folder and create a new one.
2. for all of your product build configurations empty out the following fol=
ders
2.1 cache
2.2 state-cache
2.3 tmp
3. build (bitbake) all your product images with all appropriate configurati=
on variances
4. run the following command to extract the unexpanded sources from downloa=
ds
find -H downloads -maxdepth 1 \
     -not -type d   -and   -not -name "*.done" \
     -exec cp -L {} sources-tmp \;

You now have everything you *currently* need for a sources mirror in the so=
urces-tmp folder.

5. move sources-tmp to wherever/whatever backs your SOURCE_MIRROR_URL.
6. Check those contents into some form of revision control (even if that is=
 just a manual set of backup folders/media).


Yes this is costs time and space, you just have to decide how much your ima=
ges and how much being able to reproduce them (with or without 'small' chan=
ges) is worth.


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Gary Thomas
> Sent: Wednesday, September 30, 2015 7:14 AM
> To: Yocto Project
> Subject: [yocto] Safely cleaning 'downloads'
>
> Over time, I tend to build in the same build tree many, many times.  This=
 leads to
> some really big trees as many things are duplicated, especially in the 'd=
ownloads'
> directory.
>
> I use local mirrors and hence my 'downloads' directory is _mostly_ popula=
ted
> with symbolic links.  However, there are also expanded SCM packages, e.g.
> git2/xxx
>
> How can I safely clean up the 'downloads' directory?  I already copy any =
created
> tarballs (I use BB_GENERATE_MIRROR_TARBALLS=3D"1"
> to preclude unneeded downloads) to my mirror, but I'd like to periodicall=
y clean
> out the whole directory (without disturbing my builds of course).  I've f=
ound out
> the hard way that just emptying seems to be unsafe, at least for some rec=
ipes
> like the [RaspberryPi] Linux kernel recipe which once built seems to expe=
ct the
> expanded git2/xxx tree to remain.
>
> Just trying to find ways to recover my lost GB...
>
> Thanks for any ideas
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

________________________________

Notice to recipient: This email is meant for only the intended recipient of=
 the transmission, and may be a communication privileged by law, subject to=
 export control restrictions or that otherwise contains proprietary informa=
tion. If you receive this email by mistake, please notify us immediately by=
 replying to this message and then destroy it and do not review, disclose, =
copy or distribute it. Thank you in advance for your cooperation.

