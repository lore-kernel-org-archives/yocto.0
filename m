Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E668E015E3
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 14:40:55 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 24 Sep 2013 14:40:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,973,1371106800"; d="scan'208";a="406626731"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga002.fm.intel.com with ESMTP; 24 Sep 2013 14:40:54 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.125]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.85]) with mapi id
	14.03.0123.003; Tue, 24 Sep 2013 14:40:54 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Khem Raj <raj.khem@gmail.com>, Dusty Clark <dclark@mmto.org>
Thread-Topic: [yocto] Problems with the ADT installation
Thread-Index: AQHOuVl5KczfBvtmxE2DQejDXvlj/JnVzGOAgAAK9QCAAAUJgP//jisQ
Date: Tue, 24 Sep 2013 21:40:53 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F3135E@ORSMSX101.amr.corp.intel.com>
References: <CABYvHN7hqRob6p_DxOQNuOjSOHXNft2OH94jApnFWW3fHK09Pg@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73CB48DE@ORSMSX103.amr.corp.intel.com>
	<CABYvHN52zuzjeBrHS_JwnG0MKHz4sRK9n_pRskYFaZ_Y4ms06w@mail.gmail.com>
	<4720EF6E-FA93-4826-8309-A81F0BA59C93@gmail.com>
In-Reply-To: <4720EF6E-FA93-4826-8309-A81F0BA59C93@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems with the ADT installation
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
X-List-Received-Date: Tue, 24 Sep 2013 21:40:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I see the problem... the link has an underscore in it (adt_installer) inste=
ad of adt-installer.  I will fix that for "Current" manuals and republish t=
o the website.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Khem Raj
>Sent: Tuesday, September 24, 2013 2:27 PM
>To: Dusty Clark
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] Problems with the ADT installation
>
>
>On Sep 24, 2013, at 2:09 PM, Dusty Clark <dclark@mmto.org> wrote:
>
>> Hello Jessica,
>>
>> OK, so for plain application development, I don't need eglibc-devel
>library...just the cross-development toolchain and whatever recipes and
>whatnot for my target, yes?
>>
>> For the record, I downloaded the ADT tarball from here:
>> http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/adt-
>installer/
>> The link in the manual is a 404, so I found this one by modifying the
>link location in the browser.
>>
>> Then I browsed around and found what I thought was the closest
>snapshot, and edited the adt_installer.conf as follows:
>>
>> #YOCTOADT_REPO=3D"http://adtrepo-dev.yoctoproject.org//1.4.2-
>d734ab491a30078d43dee5440c03acce2d251425-dylan"
>>
>> #Edit by Dusty 9/24/13, since the original repo target is a 404:
>> YOCTOADT_REPO=3D"http://adtrepo-dev.yoctoproject.org/1.4+snapshot-
>6b4f7e4b26c51f0c1517c0a697031e7bc488b76f-master/"
>>
>> And of course this failed as mentioned. I attach the installer logfile
>for your reference...I tried it twice, once with the bad link and again
>with the edit.
>>
>> Thanks for your help!
>
>
>Looking at your logs
>
> * opkg_download: Failed to download http://adtrepo-
>dev.yoctoproject.org//1.4.2-d734ab491a30078d43dee5440c03acce2d251425-
>dylan/adt-ipk/x86_64-nativesdk/Packages, wget returned 8.
>opkg update process ended...
>
>and return 8 for wget suggests "Server issued an error response."
>
>Does it happens everytime you retry ?
>
>e.g. I did below and it all downloaded ok.
>
>wget http://adtrepo-dev.yoctoproject.org/1.4+snapshot-
>6b4f7e4b26c51f0c1517c0a697031e7bc488b76f-master/adt-ipk/x86_64-
>nativesdk/Packages
>--2013-09-24 14:24:18--  http://adtrepo-
>dev.yoctoproject.org/1.4+snapshot-
>6b4f7e4b26c51f0c1517c0a697031e7bc488b76f-master/adt-ipk/x86_64-
>nativesdk/Packages
>Resolving adtrepo-dev.yoctoproject.org (adtrepo-dev.yoctoproject.org)...
>140.211.169.59
>Connecting to adtrepo-dev.yoctoproject.org (adtrepo-
>dev.yoctoproject.org)|140.211.169.59|:80... connected.
>HTTP request sent, awaiting response... 200 OK
>Length: 2753125 (2.6M)
>Saving to: 'Packages'
>
>100%[=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>] 2,753,125   1.34MB/s   in 2.0s
>
>2013-09-24 14:24:21 (1.34 MB/s) - 'Packages' saved [2753125/2753125]
>
>
>
>
>>
>> Dusty Clark
>> Staff Engineer Sr.
>> MMT Observatory
>> University of Arizona
>> Tucson, AZ 85721
>>
>>
>> On Tue, Sep 24, 2013 at 1:30 PM, Zhang, Jessica
><jessica.zhang@intel.com> wrote:
>> Hi Dusty,
>>
>>
>>
>> The prerequisite for eglibc-devel are for running a yocto build on
>your host. adt-installer is for  setup the cross development environment
>for application development so it's not the tool to install those
>prerequisite packages.
>>
>>
>>
>> As to your adt-installer issues, we've heard similar report from our
>QA engineer as well, so to confirm, are you using the latest built out
>of adt-installer?
>>
>>
>>
>> Thanks,
>>
>> Jessica
>>
>>
>>
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Dusty Clark
>> Sent: Tuesday, September 24, 2013 12:08 PM
>> To: yocto@yoctoproject.org
>> Subject: [yocto] Problems with the ADT installation
>>
>>
>>
>> Reading the Quick Start and ADT manuals, it was recommended to use the
>ADT installer script as the easiest method to get the tools and the
>Eclipse plugin in place. I'm running a Fedora 17 VM as the development
>host, and would like to target Beaglebone and vanilla x86 devices using
>Eclipse. However, I ran into some issues:
>>
>>
>>
>> First, the prerequisites lists a package "eglibc-devel" that does not
>seem to exist as a yum package, although it looks like the poky tarball
>has it inside -- so it should be built from the source tarball during
>installation of poky -- e.g. NOT using the ADT installation? The ADT
>guide warns against mixing installation methods, building ADT from poky
>vs. the ADT installer, etc. So, what is the recommended method for
>having this prerequisite library for Yocto?
>>
>>
>>
>> Second, the ADT installer script is pointing to 404s when getting
>packages: the YOCTOADT_REPO variable is pointing to a repo at
>http://adtrepo-dev.yoctoproject.org//$VERSION that doesn't exist. I
>edited adt_installer.conf to point to what I thought was the appropriate
>master as /1.4+snapshot-$hash-master, but the install script failed with
>a message about wget trying to get the opkg portion of the repo. There
>appears to be no opkg folder at all to be found there...so is the ADT
>installer now deprecated and one should just install poky and build the
>ADT stuff from there on?
>>
>>
>>
>> Thanks for any help!
>>
>>
>>
>>
>> <adt_installer.log>_______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

