Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26883E00871; Sat, 14 Mar 2015 04:31:16 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4ED1E003FA
	for <yocto@yoctoproject.org>; Sat, 14 Mar 2015 04:31:13 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Mar 2015 04:31:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,399,1422950400"; d="scan'208";a="692079589"
Received: from plaws-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.24.36])
	by fmsmga002.fm.intel.com with ESMTP; 14 Mar 2015 04:31:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
Date: Sat, 14 Mar 2015 11:31:12 +0000
Message-ID: <4517896.19BxCWa6S7@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.7-100.fc20.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3A36BB88@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A36BB88@AZ-FFEXMB01.global.avaya.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Sat, 14 Mar 2015 11:31:16 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Saturday 14 March 2015 10:39:59 Bipnesh, Abhinav wrote:
> I was trying to perform a post install activity as part of the recipe=
 using
> pkg_postinst_PACKAGENAME() but seems it=E2=80=99s not working. Below =
is the sample
> function we have written as part of the recipe
>=20
> pkg_postinst_test (){
>     #!/bin/sh -xe
>     echo " we are calling post install for test"
>     mkdir -p /test/logs/1
>     touch /test/test1/test2/test3/sample.txt
>=20
> }
> testX directory exists as they are created as part of the install act=
ivity.
> When we verify the post install we did find the file being created as=
 below
> is the output
>=20
> ls /test/test1/test2/test3/.txt ls: cannot access
> /test/test1/test2/test3/.txt: No such file or directory

I assume you meant *.txt as .txt wouldn't exist even if the postinstall=
 script=20
had run.

> Also didn't see the echo output on the console when the package is be=
ing
> installed or post installation activity is being performed.

Is the output package that you are installing actually called "test"?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

