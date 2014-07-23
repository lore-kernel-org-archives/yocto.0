Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20CF3E0078F; Wed, 23 Jul 2014 03:45:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D79E4E00572
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 03:45:16 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Jul 2014 03:45:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,716,1400050800"; d="scan'208";a="574139574"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga002.fm.intel.com with ESMTP; 23 Jul 2014 03:45:12 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 23 Jul 2014 11:45:11 +0100
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.192]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.139]) with mapi id
	14.03.0123.003; Wed, 23 Jul 2014 11:45:11 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Anooj Gopi <anoojgopi@gmail.com>
Thread-Topic: [yocto] Fwd: How to find the bb file from package name
Thread-Index: AQHPpmMt9yT7bLPB/EeKh7mKuxWV/w==
Date: Wed, 23 Jul 2014 10:45:11 +0000
Message-ID: <CFF54F4A.48684%belen.barros.pena@intel.com>
References: <CALkREYCJARja3TPwPR4Ck6wLrPa1Wmb2un3LBeKjt4PTszKo4Q@mail.gmail.com>
	<CAJTo0LYgQWCXJY1L7EhdP72oOyxVkigx1z8cdGoGBXOpWqcd1w@mail.gmail.com>
	<CALkREYBqgZpGr-wkFX2Qiw0kanTtg0mEGfq2cJ9=KfG4CrBC0A@mail.gmail.com>
	<CALkREYC-GA3RbBmrrkJZ4rX0Dn-Ss9LrdOwx14vxw5eBDYmZzw@mail.gmail.com>
	<CAGM0ZdRVPGNS-tJ__x4XeaivHmC-_wxq9Kj+NGt3ds0FZBD-OA@mail.gmail.com>
	<CALkREYCbBe5uN50SkPco2S=rAwc8hPTYackHWSnL5VSKWB2+7A@mail.gmail.com>
	<CAGM0ZdQvq4=mXtOeVo7KXO_8STNV_2wQ=+ua_X-8sp64QA0d7g@mail.gmail.com>
	<CALkREYAev_TTa4haNPK1Ok8_aRFzJbs3AouNRck45qPEXdYX6A@mail.gmail.com>
In-Reply-To: <CALkREYAev_TTa4haNPK1Ok8_aRFzJbs3AouNRck45qPEXdYX6A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.3.140616
x-originating-ip: [10.237.224.82]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to find the bb file from package name
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
X-List-Received-Date: Wed, 23 Jul 2014 10:45:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <35A43A6B86F7E04C9ABE023BE6CAE3C2@intel.com>
Content-Transfer-Encoding: quoted-printable



On 22/07/2014 18:08, "Anooj Gopi" <anoojgopi@gmail.com> wrote:

>Hello Bharath,
>
>This is already known to me. The confusion mainly here was because of the
>name of the rpm package. From the recipe expected name was
>"nativesdk-qtbase-tools-dev-5.2.1-r1.i686_nativesdk.rpm" but generated
>package name is "nativesdk-libqt5core-dev-5.2.1-r1.i686_nativesdk.rpm"
> which confused me.
>
>
>As Mr. Burton mentioned in his last mail, this was done by
>"debian.bbclass", which makes our life more difficult. So I feel a tool
>to track this relations is really necessary, and I guess yocto has done
>this in Yocto 1.6 with "toaster
><https://www.yoctoproject.org/documentation/toaster-manual>"
> (I still have to use it and see).

Yes, Toaster tells you about the name change.

>
>
>Regards,
>Anooj
>
>
>
>On Tue, Jul 22, 2014 at 6:37 PM, Bharath Chandra
><ellurubharath29@gmail.com> wrote:
>
>Hi,
>
>
>you can find it under .inc file here
>https://github.com/meta-qt5/meta-qt5/blob/daisy/recipes-qt/qt5/nativesdk-q
>tbase.inc
>PACKAGES =3D "${PN}-tools-dbg ${PN}-tools-dev ${PN}-tools-staticdev
>${PN}-tools"
>
>Thanks,
>Bharath
>
>
>
>On Tue, Jul 22, 2014 at 11:19 AM, Anooj Gopi
><anoojgopi@gmail.com> wrote:
>
>
>
>Oh sorry the link I sent was wrong. The correct one is
>https://github.com/meta-qt5/meta-qt5/blob/daisy/recipes-qt/qt5/nativesdk-q
>tbase_5.2.1.bb=20
><https://github.com/meta-qt5/meta-qt5/blob/daisy/recipes-qt/qt5/nativesdk-
>qtbase_5.2.1.bb>
>
>
>Manually searching the bb/inc file did not help until this point.
>
>
>Now I enabled the build history (INHERIT +=3D "buildhistory"
>BUILDHISTORY_FEATURES =3D "image package sdk") and built the packages once
>again. Then searched for the package name as shown below
>
>cd build/buildhistory/packages
>grep -nri nativesdk-libqt5core-dev .
>./i686-nativesdk-oesdk-linux/nativesdk-qtbase/nativesdk-qtbase-tools-dev/l
>atest:3:PKG =3D nativesdk-libqt5core-dev
>
>
>which shows that the yocto package is "nativesdk-qtbase-tools-dev", which
>is provided by "nativesdk-qtbase_5.2.1.bb
><http://nativesdk-qtbase_5.2.1.bb>".
>
>
>But I'm still not able to find out where in yocto PKG variable is
>configured (which changes this rpm file name from the default one).
>
>
>
>
>
>On Tue, Jul 22, 2014 at 5:50 PM, Bharath Chandra
><ellurubharath29@gmail.com> wrote:
>
>Hi Anooj,
>
>I guess you are looking at a wrong version of the recipe file, you have
>to look into version number 5.2.1 and revision r1 as your package name is
>suggesting but the link which you have mentioned is for 5.3.1 . Kindly,
>have a look into correct version number
> of recipe file and if you do not find any package name in the recipe
>file then you can search in
>.inc files which are included in that recipe file.
>
>for eg :=20
>require qt5-${PV}.inc
>
>You have to check in qt5-5.2.1.inc file and see if any package is
>included with the name which you are searching for.
>
>Thanks & Regards,
>Bharath Chandra Elluru
>
>
>
>On Tue, Jul 22, 2014 at 6:52 AM, Anooj Gopi <anoojgopi@gmail.com> wrote:
>
>
>
>
>
>Yes I am trying to track down the recipe from the rpm file. In my project
>yocto builds the rpm package
>"nativesdk-libqt5core-dev-5.2.1-r1.i686_nativesdk.rpm" (by
>https://github.com/meta-qt5/meta-qt5) but it is not included in my sdk
>sysroot image. So I would like to see how I could include this into my
>sdk. For that I am tracing back the recipe which
> generated the rpm.
>
>
>
>I tried as you said:
>
From the source package name I can see it is from "Source RPM  :
>nativesdk-qtbase-5.2.1-r1.src.rpm", which means bb file is
>
>https://github.com/meta-qt5/meta-qt5/blob/master/recipes-qt/qt5/nativesdk-
>qtbase_5.3.1.bb=20
><https://github.com/meta-qt5/meta-qt5/blob/master/recipes-qt/qt5/nativesdk
>-qtbase_5.3.1.bb>
>
>Now this from the bb file content I can see this file provides multiple
>packages, (for eg. nativesdk-qtbase-tools-dbg nativesdk-qtbase-tools-dev
>nativesdk-qtbase-tools-staticdev nativesdk-qtbase-tool) but I still could
>not find where it is configured to
> generate the package
>"nativesdk-libqt5core-dev-5.2.1-r1.i686_nativesdk.rpm".
>
>
>As Belen in his last mail, the tools like "Toaster" could confirm this
>(by listing the packages generated from a bb file), but is there any way
>I can do it in Yocto Project 1.5?
>
>
>
>Regards,
>Anooj
>
>
>
>
>On Tue, Jul 22, 2014 at 11:15 AM, Burton, Ross
><ross.burton@intel.com> wrote:
>
>On 21 July 2014 16:39, Anooj Gopi <anoojgopi@gmail.com> wrote:
>> Could some one help me to understand how we could find the bb file which
>> generated particular package (rpm package for eg.)?
>> (In some cases the name of the package and recipe name differ
>>drastically)
>>
>> Also is there any way to list packages (rpm) generated by particular
>>recipe
>> (yocto package) easily. (without looking into the PACKAGES variable).
>
>
>
>It's probably best if you explain exactly what you want to do.
>
>If you want to work backwards from a RPM to the recipe, then binary
>RPMs have a Source RPM metadata field and the srpm is named after the
>recipe:
>
>$ rpm -qpi connman-tests-1.24-r0.15.corei7_64.rpm | grep Source
>Source RPM  : connman-1.24-r0.15.src.rpm
>
>Ross
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
>
>
>
>--=20
>Thanks & Regards,
>Bharath Chandra Elluru.
>Contact Number:785-979-4875 <tel:785-979-4875>.
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>--=20
>Thanks & Regards,
>Bharath Chandra Elluru.
>Contact Number:785-979-4875 <tel:785-979-4875>.
>
>
>
>
>
>
>
>
>


