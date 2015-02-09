Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA3B1E00964; Mon,  9 Feb 2015 08:43:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C8B2E00945
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 08:43:32 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AkkFAE7j2FTGmAcV/2dsb2JhbABcgmQiUloEwE+IFwKBGUMBAQEBAQF8hAwBAQEBAgESZwUHBAIBCA0EBAEBAQodByERFAkIAQEEDgUIEweHdwMJCAGnOppuDYUwAQEBAQEBAQEBAQEBAQEBAQEBAQEBEwSNToF5MQcGgxCBFAWPG4dlAYJehT6GGoJCgz4ig25vgUR+AQEB
X-IronPort-AV: E=Sophos;i="5.09,544,1418101200"; d="scan'208";a="106076709"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	09 Feb 2015 11:43:31 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC04.global.avaya.com) ([135.64.58.14])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	09 Feb 2015 11:43:30 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC04.global.avaya.com ([135.64.58.14]) with mapi id
	14.03.0174.001; Mon, 9 Feb 2015 17:43:29 +0100
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: Anders Darander <anders@chargestorm.se>
Thread-Topic: [yocto] Multiple packages from single recipe file
Thread-Index: AdBEVmdYTHj4lBUISYySWRMx3zG2rgAC9HOAAAIoToD///62gIAAOB5S
Date: Mon, 9 Feb 2015 16:43:28 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A34C71F@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A34C510@AZ-FFEXMB01.global.avaya.com>
	<CAK5mtew20WE6O2rAuNNTqMpFU2jydOBoHYVnqzRxODD5EAGvAw@mail.gmail.com>
	<F38A866CD026F746A3BF0928A84397BE3A34C5C7@AZ-FFEXMB01.global.avaya.com>,
	<20150209141335.GC12554@ad.chargestorm.se>
In-Reply-To: <20150209141335.GC12554@ad.chargestorm.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.152.73.22]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Multiple packages from single recipe file
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
X-List-Received-Date: Mon, 09 Feb 2015 16:43:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

We have done on similar line for one of the package. We have to write anoth=
er recipe for a package in which we need to just create packages and delive=
ry it.
But we need to do it for couple of directories i.e. let say 10 directories.
Previously we have an script which perform some conversion and then create =
package in loop i.e. creating RPM in loop for such package.
Now we want to achieve the same using a recipe.
One of the solution is to write 10 such recipe and creating a package, But =
it means we need to check-out 10 times the code and then create the package=
.
But we are looking for some optimize way to do so as below
1. Check out all 10 directories in one shot.
2. Write small shell script code and call do_install() passing ${S} and ${D=
} as argument to create the package. Here we are also looking for package n=
ame for each such call different say package-1-ro.rpm package-2.r0.rpm etc.
3. Also avoid calling do_compile() as there is no makefile its plain file r=
epo which need to be packaged.

So any thoughts how to do such job.

Thanks,
Abhinav
________________________________________
From: Anders Darander [anders@chargestorm.se]
Sent: Monday, February 09, 2015 7:43 PM
To: Bipnesh, Abhinav (Abhinav)
Cc: Victor Rodriguez; yocto@yoctoproject.org
Subject: Re: [yocto] Multiple packages from single recipe file

* Bipnesh, Abhinav (Abhinav) <abhinavbipnesh@avaya.com> [150209 14:26]:
> In case of writing the spec file for RPM we need to create first the
> directory layout and then putting the files using cp or other commands
> and then perform %file etc. stuff. But when I take a look to some of
> the recipe file present under poky sometime I see FILES_${PN} and it
> didn=92t specify from where to pick the files.

> May be the case is that these project use Auto tools for building. But
> in our case we have plain Makefile for building and then collecting
> files from different location and putting in package.  So I was
> thinking can be use such shortcut method for such job.

In your case, add a do_install() function and make install all your
files into ${D}. See e.g. the setserial recipe:
https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__git.openembedded.org_=
openembedded-2Dcore_tree_meta_recipes-2Dbsp_setserial_setserial-5F2.17.bb&d=
=3DAwIFaQ&c=3DBFpWQw8bsuKpl1SgiZH64Q&r=3DgeJ1wB7xRIMmteYB2Fo8esL32BOWvwP1Hm=
Y0YuLEB4E&m=3DaZjRWREP73CkvukWYDIq6EBYm-V9PXDui-fbP3IIRjI&s=3DjDlPZCpV9O0A6=
xPnqSw-Ee2XPHnFTU1O_vV-YNexwKk&e=3D

Cheers,
Anders


> -----Original Message-----
> From: Victor Rodriguez [mailto:vm.rod25@gmail.com]
> Sent: Monday, February 09, 2015 18:46
> To: Bipnesh, Abhinav (Abhinav)
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Multiple packages from single recipe file

> On Mon, Feb 9, 2015 at 4:51 AM, Bipnesh, Abhinav (Abhinav) <abhinavbipnes=
h@avaya.com> wrote:
> > Hi,



> > I was looking further into the document to find a way to define
> > multiple packages from a single recipe file. As in current recipe I
> > have written a
> > do_install() function for putting files in particular directories. So
> > it copies files from ${S} to ${D}.

> > But some of the documents talk about multiple package something as
> > below



> > FILES_${PN} =3D "\

> >     ${bindir}/* \

> >     ${sbindir}/* \

> >     ${libexecdir}/* \

> >     ${libdir}/lib*.so.* \

> >     ${sysconfdir} \

> >     ${sharedstatedir} \

> >     ${localstatedir} \

> >     /bin/* \

> >     /sbin/* \

> >     /lib/*.so* \

> >     ${datadir}/${PN} \

> >     ${libdir}/${PN}/* \

> >     ${datadir}/pixmaps \

> >     ${datadir}/applications \

> >     ${datadir}/idl \

> >     ${datadir}/omf \

> >     ${datadir}/sounds \

> >     ${libdir}/bonobo/servers"



> > FILES_${PN}-dbg =3D "\

> >     ${bindir}/.debug \

> >     ${sbindir}/.debug \

> >     ${libexecdir}/.debug \

> >     ${libdir}/.debug \

> >     /bin/.debug \

> >     /sbin/.debug \

> >     /lib/.debug \

> >     ${libdir}/${PN}/.debug"



> > But I am not getting how the source for such file will be determine as
> > in our project files will be present in different directories and need
> > to be placed in some predefined paths.



> > So how we can achieve the same.



> > Thanks,

> > Abhinav
--
Anders Darander
ChargeStorm AB / eStorm AB

