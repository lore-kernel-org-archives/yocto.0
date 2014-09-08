Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42906E00848; Mon,  8 Sep 2014 04:09:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id A7234E0056A
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 04:09:00 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.158.1; Mon, 8 Sep 2014
	13:08:58 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 4D5B7288E2C;
	Mon,  8 Sep 2014 13:08:58 +0200 (CEST)
Date: Mon, 8 Sep 2014 13:08:58 +0200
From: "Maxin B. John" <maxin.john@enea.com>
To: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
Message-ID: <20140908110858.GA17378@sestofb10.enea.se>
References: <8b6dc55b042849e3bce4864bf7e7d24d@EPBYMINSA0032.epam.com>
	<20140908081530.GA17564@sestofb10.enea.se>
	<47a8d856d4724e44909e21864d4d7be4@EPBYMINSA0032.epam.com>
MIME-Version: 1.0
In-Reply-To: <47a8d856d4724e44909e21864d4d7be4@EPBYMINSA0032.epam.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX03.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH] Add support for Java SE Embedded
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
X-List-Received-Date: Mon, 08 Sep 2014 11:09:03 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Hi Vladimir,

In that case, let's go ahead with "oracle-jse-ejre.inc" rather than removing
the "LICENSE" file from oracle-jse.inc.

On Mon, Sep 08, 2014 at 10:49:18AM +0000, Vladimir Redzhepov wrote:
> Hi Maxin,
> 
> > -----Original Message-----
> > From: Maxin B. John [mailto:maxin.john@enea.com]
> > Sent: Monday, September 08, 2014 11:16 AM
> > To: Vladimir Redzhepov
> > Cc: yocto@yoctoproject.org; Pavel Shumeika
> > Subject: Re: [meta-oracle-java][PATCH] Add support for Java SE Embedded
> > 
> > Hi Vladimir,
> > 
> > On Fri, Sep 05, 2014 at 03:58:53PM +0000, Vladimir Redzhepov wrote:
> > > >From 783ff400987ec06f41286ffce7e3afc4545d67e5 Mon Sep 17 00:00:00
> > 2001
> > > From: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> > > Date: Fri, 5 Sep 2014 18:13:42 +0300
> > > Subject: [PATCH] Add support for Java SE Embedded
> > >
> > > LICENSE file removed from LIC_FILES_CHKSUM in oracle-jse.inc
> > > because it doesn't exist in ejre.
> > 
> > Can we avoid removing the LICENSE file from oracle-jse.inc ?
> Removing the LICENSE could be avoided by overriding LIC_FILES_CHKSUM in
> oracle-jse-ejre.inc like this
> 
> LIC_FILES_CHKSUM = "\
> 	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb \
> 	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=f3a388961d24b8b72d412a079a878cdb \
> 	"
> In my mind it's better to keep and update all checksums in one place such oracle-jse.inc which is common for all recipes.

Best Regards,
Maxin

