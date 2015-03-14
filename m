Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35575E00854; Sat, 14 Mar 2015 05:25:16 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2F65E003FA
	for <yocto@yoctoproject.org>; Sat, 14 Mar 2015 05:25:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 14 Mar 2015 05:25:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,400,1422950400"; d="scan'208";a="665224604"
Received: from plaws-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.24.36])
	by orsmga001.jf.intel.com with ESMTP; 14 Mar 2015 05:25:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
Date: Sat, 14 Mar 2015 12:25:11 +0000
Message-ID: <3223905.orkmv4beBJ@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.7-100.fc20.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3A36DBD4@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A36BB88@AZ-FFEXMB01.global.avaya.com>
	<4517896.19BxCWa6S7@peggleto-mobl5.ger.corp.intel.com>
	<F38A866CD026F746A3BF0928A84397BE3A36DBD4@AZ-FFEXMB01.global.avaya.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe Post install script not executed once the package is installed
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
X-List-Received-Date: Sat, 14 Mar 2015 12:25:16 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Saturday 14 March 2015 11:37:51 Bipnesh, Abhinav wrote:
> Paul Eggleton wrote:
> > On Saturday 14 March 2015 10:39:59 Bipnesh, Abhinav wrote:
> > > I was trying to perform a post install activity as part of the re=
cipe
> > > using pkg_postinst_PACKAGENAME() but seems it=E2=80=99s not worki=
ng. Below is
> > > the sample function we have written as part of the recipe
> > >=20
> > > pkg_postinst_test (){
> > >=20
> > >     #!/bin/sh -xe
> > >     echo " we are calling post install for test"
> > >     mkdir -p /test/logs/1
> > >     touch /test/test1/test2/test3/sample.txt
> > >=20
> > > }
> > > testX directory exists as they are created as part of the install=

> > > activity.
> > > When we verify the post install we did find the file being create=
d as
> > > below is the output
> > >=20
> > > ls /test/test1/test2/test3/.txt ls: cannot access
> > > /test/test1/test2/test3/.txt: No such file or directory
> >=20
> > I assume you meant *.txt as .txt wouldn't exist even if the postins=
tall
> > script had run.
> >=20
> > > Also didn't see the echo output on the console when the package i=
s being
> > > installed or post installation activity is being performed.
> >=20
> > Is the output package that you are installing actually called "test=
"?
>
> Yes, Basically I did install manually using below command
> rpm -i test.rpm

I meant at the build system end. Is there a "test" directory under pack=
ages-
split under the workdir for the recipe? You can find the workdir by run=
ning:

 bitbake -e recipename | grep ^WORKDIR=3D

Just checking, is DISTRO or MACHINE set to "test"? Does "test" appear a=
nywhere=20
in the value of OVERRIDES? You can check by running:

 bitbake -e | grep ^OVERRIDES=3D

> One thing to add here is we are running Busybox on which I am trying =
to
> perform the installation.

That shouldn't matter.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

