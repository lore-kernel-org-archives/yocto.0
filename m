Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 686C7E009DA; Mon, 18 May 2015 09:55:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.invecas.com (mx2.invecas.com [112.133.222.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E09B6E0094C
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 09:55:44 -0700 (PDT)
Received: from SOC-EXCH-01.invecas.local (10.0.30.8) by mail.invecas.com
	(10.0.30.132) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Mon, 18 May 2015 22:25:42 +0530
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by
	SOC-EXCH-01.invecas.local (10.0.30.8) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Mon, 18 May 2015 22:25:38 +0530
Received: from SOC-EXCH-02.invecas.local ([::1]) by SOC-EXCH-02.invecas.local
	([fe80::bc3d:32eb:402d:2fae%15]) with mapi id 15.00.0995.028;
	Mon, 18 May 2015 22:25:38 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: "Minchev, Todor" <todor.minchev@intel.com>
Thread-Topic: [yocto] Issue with yocto ADT
Thread-Index: AQHQjvGS80lL5pX7tEePuV/Y1Ag/NZ18xwuAgAATywj///ZkAIAAFVU6///3i4CAABFuWIAEQy9NgACr7wCAABkPjQ==
Date: Mon, 18 May 2015 16:55:37 +0000
Message-ID: <9fb2bdd0aab24dcdaeebd7e73d2dfcb4@SOC-EXCH-02.invecas.local>
References: <1431682376634.76952@inedasystems.com> ,
	<1431686123.6150.2.camel@intel.com>
	<1431686858269.81704@inedasystems.com> ,
	<1431688310.6150.4.camel@intel.com>
	<1431689589890.85414@inedasystems.com>
	, <1431691075.6150.6.camel@intel.com>,
	<1431691274788.8264@inedasystems.com>
	<1431925643423.13631@inedasystems.com>,
	<1431966070.3387.3.camel@intel.com>
In-Reply-To: <1431966070.3387.3.camel@intel.com>
Accept-Language: en-US, en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [49.204.7.84]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issue with yocto ADT
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
X-List-Received-Date: Mon, 18 May 2015 16:55:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Todor,

I created four more new projects.

For all the projects I gives error like this only.

Can send those projects make files?

But when I give the sysroot path in eclipse to the poky/build/tmp/sysroot/m=
achine it worked properly.

When we give the extracted sysroot it gives problem.

Regards,
Raghavendra.
________________________________________
From: Minchev, Todor [todor.minchev@intel.com]
Sent: Monday, May 18, 2015 9:51 PM
To: Raghavendra Kakarla
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Issue with yocto ADT

Hello Raghavendra,

On Mon, 2015-05-18 at 05:07 +0000, Raghavendra Kakarla wrote:
> Hi Todor,
>
> Could you please let me know the cause for the issue.
Please pastebin your Makefile and share the pastebin link.

Seem like your project is corrupt and the Makefile is not generated
correctly.

Have you tried to delete the project and create a new one?

> Thanks in advance.
>
> Regards,
> Raghavendra K.
>
>
> ________________________________________
> From: Raghavendra Kakarla
> Sent: Friday, May 15, 2015 5:31 PM
> To: Minchev, Todor
> Cc: yocto@yoctoproject.org
> Subject: RE: [yocto] Issue with yocto ADT
>
> Hi Todor,
>
> It is provided by the Yocto eclipse plugin itself.
>
> Regards,
> Raghavendra.
> ________________________________________
> From: Minchev, Todor <todor.minchev@intel.com>
> Sent: Friday, May 15, 2015 5:27 PM
> To: Raghavendra Kakarla
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Issue with yocto ADT
>
> On Fri, 2015-05-15 at 11:33 +0000, Raghavendra Kakarla wrote:
> > Hi Todor,
> >
> > It is an autotool based example.
> > It is not generated makefile itself.
> >
>
> Is it an example you created yourself or is it the autotools C Hello
> World template provided by the Yocto Eclipse Plug-in.
>
> > I attached the makefile.in and makefile.am file to the paste bin.
>
> Could you please paste the Makefile and share the pastebin link?
>
> > Thanks,
> >
> > Raghavendra.
> >
> >
> > ________________________________________
> > From: Minchev, Todor <todor.minchev@intel.com>
> > Sent: Friday, May 15, 2015 4:41 PM
> > To: Raghavendra Kakarla
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] Issue with yocto ADT
> >
> > Hello Raghavendra,
> >
> > Could you please pastebin the makefile from your project?
> >
> > http://pastebin.com/
> >
> > Cheers,
> > Todor
> >
> > On Fri, 2015-05-15 at 10:47 +0000, Raghavendra Kakarla wrote:
> > > Hi Todor,
> > >
> > > Thank you for your  reply.
> > >
> > > By default we have the setting like this only.
> > >
> > > But we got the error.
> > >
> > > Thanks,
> > > Raghavendra.
> > > ________________________________________
> > > From: Minchev, Todor <todor.minchev@intel.com>
> > > Sent: Friday, May 15, 2015 4:05 PM
> > > To: Raghavendra Kakarla
> > > Cc: yocto@yoctoproject.org
> > > Subject: Re: [yocto] Issue with yocto ADT
> > >
> > > Hello Raghavendra,
> > >
> > > Please try the following:
> > >
> > > Right click on your project - Properties - C/C++ Build - Select the
> > > 'Behavior' tab - untick 'Build on resource save' and remove 'all' fro=
m
> > > the 'Build' field
> > >
> > > Cheers,
> > > Todor
> > >
> > > On Fri, 2015-05-15 at 09:32 +0000, Raghavendra Kakarla wrote:
> > > > Hi All,
> > > >
> > > >
> > > > I have problem with the ADT while i am building the autotool exampl=
e
> > > > helloword project which is given in the "yocto ADT autotool project=
".
> > > >
> > > >
> > > > Could you please help me in resolving this issue.
> > > >
> > > >
> > > > I followed the following steps for installing the adt in my
> > > > development PC:
> > > >
> > > >
> > > >
> > > > I built the toolchain using the following command:
> > > >
> > > > $cd ~/poky
> > > > $source ./oe-init-build-env
> > > > $bitbake meta-ide-support
> > > >
> > > >
> > > > Extract the root file system by using the following commands:
> > > >
> > > > $cd ~
> > > > $source ~/poky/build/tmp/environment-setup-mips32r2el-poky-linux
> > > > $runqemu-extract-sdk \
> > > >         ~/poky/build/tmp/deploy/images/arqlyn/
> > > > core-image-minimal-dhruwa_ioe-20150511102759.rootfs.tar.bz2\
> > > >         $HOME/arqlyn
> > > >
> > > > I followed the command given in the yocto project dev-manual for
> > > > installing eclipse and adding yocto plugin to eclipse.
> > > >
> > > > I Gave the following data to the eclipse for configuring the
> > > > cross-compiler options:
> > > >
> > > > 1. I select the "Build System Derived Toolchain"
> > > > 2.point the toolchain path to "home/testuser/poky/build"
> > > > 3.gave sysroot path to /home/testuser/arqlyn
> > > >
> > > > After entered this information I got the my machine-name in the
> > > > "select the target architecture" filed.
> > > >
> > > > After this I create a autotool support project and tried to build b=
ut
> > > > it gives the error.
> > > >
> > > > Regards,
> > > >
> > > > Raghavendra.
> > > >
> > > >
> > > >
> > > >=20
> > > > _______________________________________________
> > > > yocto mailing list
> > > > yocto@yoctoproject.org
> > > > https://lists.yoctoproject.org/listinfo/yocto
> > >
> >
>


