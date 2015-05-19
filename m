Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D3CAE009DA; Tue, 19 May 2015 02:49:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.invecas.com (mx2.invecas.com [112.133.222.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1190E009B6
	for <yocto@yoctoproject.org>; Tue, 19 May 2015 02:49:48 -0700 (PDT)
Received: from SOC-EXCH-01.invecas.local (10.0.30.8) by mail.invecas.com
	(10.0.30.132) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Tue, 19 May 2015 15:19:46 +0530
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by
	SOC-EXCH-01.invecas.local (10.0.30.8) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Tue, 19 May 2015 15:19:38 +0530
Received: from SOC-EXCH-02.invecas.local ([::1]) by SOC-EXCH-02.invecas.local
	([fe80::bc3d:32eb:402d:2fae%15]) with mapi id 15.00.0995.028;
	Tue, 19 May 2015 15:19:38 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: "Minchev, Todor" <todor.minchev@intel.com>
Thread-Topic: [yocto] Issue with yocto ADT
Thread-Index: AQHQjvGS80lL5pX7tEePuV/Y1Ag/NZ18xwuAgAATywj///ZkAIAAFVU6///3i4CAABFuWIAEQy9NgACr7wCAABkPjYAA1/wAgAAVlwL///tNgAAGUYQN
Date: Tue, 19 May 2015 09:49:38 +0000
Message-ID: <1432028956512.13945@inedasystems.com>
References: <1431682376634.76952@inedasystems.com> ,
	<1431686123.6150.2.camel@intel.com>
	<1431686858269.81704@inedasystems.com> ,
	<1431688310.6150.4.camel@intel.com>
	<1431689589890.85414@inedasystems.com>
	, <1431691075.6150.6.camel@intel.com>,
	<1431691274788.8264@inedasystems.com>
	<1431925643423.13631@inedasystems.com>,
	<1431966070.3387.3.camel@intel.com>
	<9fb2bdd0aab24dcdaeebd7e73d2dfcb4@SOC-EXCH-02.invecas.local>
	,<1432017834.9202.26.camel@intel.com>
	<1432019239480.90156@inedasystems.com>,
	<1432021461.9202.33.camel@intel.com>
In-Reply-To: <1432021461.9202.33.camel@intel.com>
Accept-Language: en-US, en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.42.88]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Surya Dommeti <Venkatasuryanarayana.Dommeti@inedasystems.com>,
	Ramakrishna Chatram <Ramakrishna.Chatram@inedasystems.com>
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
X-List-Received-Date: Tue, 19 May 2015 09:49:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Todor,=0A=
=0A=
Thank you for your reply.=0A=
=0A=
Now I am able to build the application with my extracted rootfs.=0A=
=0A=
I built the rootfs for our machine.=0A=
=0A=
for launching the qemu from the eclipse,is it required we should build it f=
or qemu?=0A=
=0A=
I have the previously built qemu kernel image and i give it path to the ecl=
ipse's qemu kernel path field.=0A=
=0A=
Qemu is launched but it gives error while switching from kernel to rootfs i=
.e init script execution problem.=0A=
=0A=
Regards,=0A=
Raghavendra.=0A=
________________________________________=0A=
From: Minchev, Todor <todor.minchev@intel.com>=0A=
Sent: Tuesday, May 19, 2015 1:14 PM=0A=
To: Raghavendra Kakarla=0A=
Cc: Surya Dommeti; Ramakrishna Chatram; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Issue with yocto ADT=0A=
=0A=
On Tue, 2015-05-19 at 07:07 +0000, Raghavendra Kakarla wrote:=0A=
> Hi Todor,=0A=
>=0A=
> For not working scenario there is no makefile created.=0A=
>=0A=
> For working scenario using build directory sysroot makefiles are created.=
=0A=
=0A=
So configure fails to create your Makefile. You probably see something=0A=
like this in your config.log:=0A=
=0A=
configure: error: C compiler cannot create executables=0A=
configure: error: C compiler cannot create executables=0A=
See `config.log' for more details=0A=
=0A=
Please have a look at this thread, it explains how to resolve this=0A=
problem:=0A=
=0A=
https://lists.yoctoproject.org/pipermail/yocto/2015-March/024089.html=0A=
=0A=
Cheers,=0A=
Todor=0A=
=0A=
>=0A=
> I attaching the makefile for working scenario.=0A=
>=0A=
> Regards,=0A=
>=0A=
> Raghavendra K.=0A=
> ________________________________________=0A=
> From: Minchev, Todor <todor.minchev@intel.com>=0A=
> Sent: Tuesday, May 19, 2015 12:13 PM=0A=
> To: Raghavendra Kakarla=0A=
> Cc: yocto@yoctoproject.org=0A=
> Subject: Re: [yocto] Issue with yocto ADT=0A=
>=0A=
> On Mon, 2015-05-18 at 16:55 +0000, Raghavendra Kakarla wrote:=0A=
> > Hi Todor,=0A=
> >=0A=
> > I created four more new projects.=0A=
> >=0A=
> > For all the projects I gives error like this only.=0A=
>=0A=
> Is the error message the same as the original one you posted about a=0A=
> missing make `all` target?=0A=
>=0A=
> > Can send those projects make files?=0A=
>=0A=
> Please share both your working and non-working Makefiles.=0A=
>=0A=
> >=0A=
> > But when I give the sysroot path in eclipse to the poky/build/tmp/sysro=
ot/machine it worked properly.=0A=
> >=0A=
> > When we give the extracted sysroot it gives problem.=0A=
> > Regards,=0A=
> > Raghavendra.=0A=
> > ________________________________________=0A=
> > From: Minchev, Todor [todor.minchev@intel.com]=0A=
> > Sent: Monday, May 18, 2015 9:51 PM=0A=
> > To: Raghavendra Kakarla=0A=
> > Cc: yocto@yoctoproject.org=0A=
> > Subject: Re: [yocto] Issue with yocto ADT=0A=
> >=0A=
> > Hello Raghavendra,=0A=
> >=0A=
> > On Mon, 2015-05-18 at 05:07 +0000, Raghavendra Kakarla wrote:=0A=
> > > Hi Todor,=0A=
> > >=0A=
> > > Could you please let me know the cause for the issue.=0A=
> > Please pastebin your Makefile and share the pastebin link.=0A=
> >=0A=
> > Seem like your project is corrupt and the Makefile is not generated=0A=
> > correctly.=0A=
> >=0A=
> > Have you tried to delete the project and create a new one?=0A=
> >=0A=
> > > Thanks in advance.=0A=
> > >=0A=
> > > Regards,=0A=
> > > Raghavendra K.=0A=
> > >=0A=
> > >=0A=
> > > ________________________________________=0A=
> > > From: Raghavendra Kakarla=0A=
> > > Sent: Friday, May 15, 2015 5:31 PM=0A=
> > > To: Minchev, Todor=0A=
> > > Cc: yocto@yoctoproject.org=0A=
> > > Subject: RE: [yocto] Issue with yocto ADT=0A=
> > >=0A=
> > > Hi Todor,=0A=
> > >=0A=
> > > It is provided by the Yocto eclipse plugin itself.=0A=
> > >=0A=
> > > Regards,=0A=
> > > Raghavendra.=0A=
> > > ________________________________________=0A=
> > > From: Minchev, Todor <todor.minchev@intel.com>=0A=
> > > Sent: Friday, May 15, 2015 5:27 PM=0A=
> > > To: Raghavendra Kakarla=0A=
> > > Cc: yocto@yoctoproject.org=0A=
> > > Subject: Re: [yocto] Issue with yocto ADT=0A=
> > >=0A=
> > > On Fri, 2015-05-15 at 11:33 +0000, Raghavendra Kakarla wrote:=0A=
> > > > Hi Todor,=0A=
> > > >=0A=
> > > > It is an autotool based example.=0A=
> > > > It is not generated makefile itself.=0A=
> > > >=0A=
> > >=0A=
> > > Is it an example you created yourself or is it the autotools C Hello=
=0A=
> > > World template provided by the Yocto Eclipse Plug-in.=0A=
> > >=0A=
> > > > I attached the makefile.in and makefile.am file to the paste bin.=
=0A=
> > >=0A=
> > > Could you please paste the Makefile and share the pastebin link?=0A=
> > >=0A=
> > > > Thanks,=0A=
> > > >=0A=
> > > > Raghavendra.=0A=
> > > >=0A=
> > > >=0A=
> > > > ________________________________________=0A=
> > > > From: Minchev, Todor <todor.minchev@intel.com>=0A=
> > > > Sent: Friday, May 15, 2015 4:41 PM=0A=
> > > > To: Raghavendra Kakarla=0A=
> > > > Cc: yocto@yoctoproject.org=0A=
> > > > Subject: Re: [yocto] Issue with yocto ADT=0A=
> > > >=0A=
> > > > Hello Raghavendra,=0A=
> > > >=0A=
> > > > Could you please pastebin the makefile from your project?=0A=
> > > >=0A=
> > > > http://pastebin.com/=0A=
> > > >=0A=
> > > > Cheers,=0A=
> > > > Todor=0A=
> > > >=0A=
> > > > On Fri, 2015-05-15 at 10:47 +0000, Raghavendra Kakarla wrote:=0A=
> > > > > Hi Todor,=0A=
> > > > >=0A=
> > > > > Thank you for your  reply.=0A=
> > > > >=0A=
> > > > > By default we have the setting like this only.=0A=
> > > > >=0A=
> > > > > But we got the error.=0A=
> > > > >=0A=
> > > > > Thanks,=0A=
> > > > > Raghavendra.=0A=
> > > > > ________________________________________=0A=
> > > > > From: Minchev, Todor <todor.minchev@intel.com>=0A=
> > > > > Sent: Friday, May 15, 2015 4:05 PM=0A=
> > > > > To: Raghavendra Kakarla=0A=
> > > > > Cc: yocto@yoctoproject.org=0A=
> > > > > Subject: Re: [yocto] Issue with yocto ADT=0A=
> > > > >=0A=
> > > > > Hello Raghavendra,=0A=
> > > > >=0A=
> > > > > Please try the following:=0A=
> > > > >=0A=
> > > > > Right click on your project - Properties - C/C++ Build - Select t=
he=0A=
> > > > > 'Behavior' tab - untick 'Build on resource save' and remove 'all'=
 from=0A=
> > > > > the 'Build' field=0A=
> > > > >=0A=
> > > > > Cheers,=0A=
> > > > > Todor=0A=
> > > > >=0A=
> > > > > On Fri, 2015-05-15 at 09:32 +0000, Raghavendra Kakarla wrote:=0A=
> > > > > > Hi All,=0A=
> > > > > >=0A=
> > > > > >=0A=
> > > > > > I have problem with the ADT while i am building the autotool ex=
ample=0A=
> > > > > > helloword project which is given in the "yocto ADT autotool pro=
ject".=0A=
> > > > > >=0A=
> > > > > >=0A=
> > > > > > Could you please help me in resolving this issue.=0A=
> > > > > >=0A=
> > > > > >=0A=
> > > > > > I followed the following steps for installing the adt in my=0A=
> > > > > > development PC:=0A=
> > > > > >=0A=
> > > > > >=0A=
> > > > > >=0A=
> > > > > > I built the toolchain using the following command:=0A=
> > > > > >=0A=
> > > > > > $cd ~/poky=0A=
> > > > > > $source ./oe-init-build-env=0A=
> > > > > > $bitbake meta-ide-support=0A=
> > > > > >=0A=
> > > > > >=0A=
> > > > > > Extract the root file system by using the following commands:=
=0A=
> > > > > >=0A=
> > > > > > $cd ~=0A=
> > > > > > $source ~/poky/build/tmp/environment-setup-mips32r2el-poky-linu=
x=0A=
> > > > > > $runqemu-extract-sdk \=0A=
> > > > > >         ~/poky/build/tmp/deploy/images/arqlyn/=0A=
> > > > > > core-image-minimal-dhruwa_ioe-20150511102759.rootfs.tar.bz2\=0A=
> > > > > >         $HOME/arqlyn=0A=
> > > > > >=0A=
> > > > > > I followed the command given in the yocto project dev-manual fo=
r=0A=
> > > > > > installing eclipse and adding yocto plugin to eclipse.=0A=
> > > > > >=0A=
> > > > > > I Gave the following data to the eclipse for configuring the=0A=
> > > > > > cross-compiler options:=0A=
> > > > > >=0A=
> > > > > > 1. I select the "Build System Derived Toolchain"=0A=
> > > > > > 2.point the toolchain path to "home/testuser/poky/build"=0A=
> > > > > > 3.gave sysroot path to /home/testuser/arqlyn=0A=
> > > > > >=0A=
> > > > > > After entered this information I got the my machine-name in the=
=0A=
> > > > > > "select the target architecture" filed.=0A=
> > > > > >=0A=
> > > > > > After this I create a autotool support project and tried to bui=
ld but=0A=
> > > > > > it gives the error.=0A=
> > > > > >=0A=
> > > > > > Regards,=0A=
> > > > > >=0A=
> > > > > > Raghavendra.=0A=
> > > > > >=0A=
> > > > > >=0A=
> > > > > >=0A=
> > > > > >=0A=
> > > > > > _______________________________________________=0A=
> > > > > > yocto mailing list=0A=
> > > > > > yocto@yoctoproject.org=0A=
> > > > > > https://lists.yoctoproject.org/listinfo/yocto=0A=
> > > > >=0A=
> > > >=0A=
> > >=0A=
> >=0A=
>=0A=
=0A=

