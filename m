Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 899CBE00A9C; Tue, 10 Oct 2017 14:19:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44474E006CA
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 14:19:33 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga105.fm.intel.com with ESMTP; 10 Oct 2017 14:19:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,359,1503385200"; d="scan'208";a="161161548"
Received: from anusyirw-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.132.95])
	by fmsmga005.fm.intel.com with ESMTP; 10 Oct 2017 14:19:30 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Ryan Pabis (pabisr)" <pabisr@cisco.com>
Date: Wed, 11 Oct 2017 10:19:28 +1300
Message-ID: <3330954.CpFU6iRKnn@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <9615587B-3637-4ABB-BB94-9C9416352354@cisco.com>
References: <9615587B-3637-4ABB-BB94-9C9416352354@cisco.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Replacing Openssl with a custom version?
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
X-List-Received-Date: Tue, 10 Oct 2017 21:19:33 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Hi Ryan,

On Wednesday, 11 October 2017 7:37:02 AM NZDT Ryan Pabis (pabisr) wrote:
> I=E2=80=99m trying to build, link and install our Cisco version of ssl.  =
And I=E2=80=99ve
> been able to compile and link it, however I don=E2=80=99t understand how =
to install
> our cisco version INSTEAD of openssl.

The easiest way would be to have your recipe add "openssl" (and possibly=20
"openssl10" in master / upcoming 2.5 release) to PROVIDES i.e.

PROVIDES +=3D "openssl openssl10"

Then, in your configuration (distro config or inc file required from there=
=20
typically) you would add this assuming your custom openssl recipe were call=
ed=20
openssl-cisco:

PREFERRED_PROVIDER_openssl =3D "openssl-cisco"
PREFERRED_PROVIDER_openssl10 =3D "openssl-cisco"

Cheers,
Paul

=2D-=20

Paul Eggleton
Intel Open Source Technology Centre

