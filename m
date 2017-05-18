Return-Path: <prvs=0311042b42=alan.levy@plextek.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87B01E00961; Thu, 18 May 2017 07:24:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.254.222.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailgate.plextek.co.uk (mailgate.plextek.co.uk [62.254.222.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A22CE00961
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 07:24:10 -0700 (PDT)
Received: from plextek-exch1.plextek.lan ([10.10.0.152]:16577)
	by mailgate.plextek.co.uk with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <alan.levy@plextek.com>)
	id 1dBMLX-0008EA-2n; Thu, 18 May 2017 15:24:07 +0100
Received: from PLEXTEK-EXCH1.plextek.lan (10.10.0.152) by
	PLEXTEK-EXCH1.plextek.lan (10.10.0.152) with Microsoft SMTP Server
	(TLS) id 15.0.847.32; Thu, 18 May 2017 15:24:07 +0100
Received: from PLEXTEK-EXCH1.plextek.lan ([fe80::f852:2da9:3543:6c2f]) by
	PLEXTEK-EXCH1.plextek.lan ([fe80::f852:2da9:3543:6c2f%18]) with mapi id
	15.00.0847.030; Thu, 18 May 2017 15:24:07 +0100
From: Alan Levy <alan.levy@plextek.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Problem using Subversion in Pyro
Thread-Index: AdLPyt4Pb9k/DAD2TOCCDYM1/+ec1gAALnIAAAKX14D///SdAP//6z8g///R4OCAAEwvAP//7GYgAANL8AD//+vnAA==
Date: Thu, 18 May 2017 14:24:06 +0000
Message-ID: <3b5f395df1924690ac37f173ae1e2bed@PLEXTEK-EXCH1.plextek.lan>
References: <c8acbe0804cf48b589fc0672c23fcf93@PLEXTEK-EXCH1.plextek.lan>
	<b1947a14-10dd-ab29-9d60-fe9c000e7f11@linux.intel.com>
	<d0183f1a9e3742bc9dfca1a0b7a300b6@PLEXTEK-EXCH1.plextek.lan>
	<026d9904-42bf-3314-24c9-dff2acc317cb@linux.intel.com>
	<78f915ebf83d4f929690faa344e28b87@PLEXTEK-EXCH1.plextek.lan>
	<8b8f0d88-5a22-1a5a-9980-3db15edc645f@linux.intel.com>
	<91105226e0a74c429a88dfa5b89099b3@PLEXTEK-EXCH1.plextek.lan>
	<80f9f672-6a5e-9259-5b30-889471168956@linux.intel.com>
In-Reply-To: <80f9f672-6a5e-9259-5b30-889471168956@linux.intel.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.12.154]
MIME-Version: 1.0
Subject: Re: Problem using Subversion in Pyro
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
X-List-Received-Date: Thu, 18 May 2017 14:24:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

OK, done that now. Thanks for your assistance

Alan

ALAN LEVY, Lead Consultant, Embedded Systems

Plextek Consulting, The Plextek Building, London Road, Great Chesterford, S=
affron Walden, CB10 1NY, UK
T: +44 (0) 1799 533200    E: alan.levy@plextek.com  W: www.plextek.com





-----Original Message-----
From: Alexander Kanavin [mailto:alexander.kanavin@linux.intel.com]=20
Sent: 18 May 2017 15:12
To: Alan Levy; yocto@yoctoproject.org
Subject: Re: [yocto] Problem using Subversion in Pyro

On 05/18/2017 05:02 PM, Alan Levy wrote:
> Here it is, certain names have been changed to protect the guilty. As=20
> you can see at the bottom svn isn't on the path, so bitbake blows up=20
> when it tries to evaluate SRCPV:
>
> ERROR: ExpansionError during parsing <path>/my_recipe.bb
> | ETA:  0:00:01 Traceback (most recent call last):
> bb.data_smart.ExpansionError: Failure expanding variable SRCPV,=20
> expression was ${@bb.fetch2.get_srcrev(d)} which triggered exception
> FetchError: Fetcher failure: Fetch command export=20
> DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-ykmscGFFM1"; export=
=20
> SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export=20
> PATH=3D"/home/user/project/yocto/build/tmp/sysroots-uninative/x86_64-lin
> ux/usr/bin:/home/user/project/yocto/poky/scripts:/home/user/project/yo
> cto/build/tmp/work/picozed_zynq7-poky-linux-gnueabi/my-recipe/fetchera
> voidrecurse-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi:/h
> ome/user/project/yocto/build/tmp/work/picozed_zynq7-poky-linux-gnueabi
> /my-recipe/fetcheravoidrecurse-r0/recipe-sysroot/usr/bin/crossscripts:
> /home/user/project/yocto/build/tmp/work/picozed_zynq7-poky-linux-gnuea
> bi/my-recipe/fetcheravoidrecurse-r0/recipe-sysroot-native/usr/sbin:/ho
> me/user/project/yocto/build/tmp/work/picozed_zynq7-poky-linux-gnueabi/
> my-recipe/fetcheravoidrecurse-r0/recipe-sysroot-native/usr/bin:/home/u
> ser/project/yocto/build/tmp/work/picozed_zynq7-poky-linux-gnueabi/my-r
> ecipe/fetcheravoidrecurse-r0/recipe-sysroot-native/sbin:/home/user/pro
> ject/yocto/build/tmp/work/picozed_zynq7-poky-linux-gnueabi/my-recipe/f
> etcheravoidrecurse-r0/recipe-sysroot-native/bin:/home/user/project/yoc
> to/poky/bitbake/bin:/home/user/project/yocto/build/tmp/hosttools";
> export HOME=3D"/home/user"; LANG=3DC LC_ALL=3DC /usr/bin/env svn=20
> --non-interactive --trust-server-cert log --limit 1 --no-auth-cache !
> http://server/path/my_module/ failed with exit code 127, output:
> /usr/bin/env: 'svn': No such file or directory
>

Right. This seems to happen way before the fetch task and so does require h=
ost svn, I guess you'll need to take it to bitbake mailing list. It works f=
or git because we are using host's git for the same purpose.

Alex

