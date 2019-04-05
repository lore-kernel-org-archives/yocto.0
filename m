Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54816E00CD6; Thu,  4 Apr 2019 22:03:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	URI_HEX autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28D64E009A0
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 22:03:28 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Apr 2019 22:03:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,310,1549958400"; d="scan'208";a="148234024"
Received: from amgroene-mobl.amr.corp.intel.com ([10.252.138.162])
	by orsmga002.jf.intel.com with ESMTP; 04 Apr 2019 22:03:27 -0700
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
From: Tim Orling <timothy.t.orling@linux.intel.com>
In-Reply-To: <875dd72a-7e62-1e74-76da-49de472a110d@mvista.com>
Date: Thu, 4 Apr 2019 22:03:27 -0700
Message-Id: <93E5D185-FC78-4B68-9602-5377443AAF0A@linux.intel.com>
References: <20190328033000.C90DF1C2149@ubuntu1604-ty-1.yocto.io>
	<015AB11D45F2C442929CB2765DAE738634DB02DA@PGSMSX110.gar.corp.intel.com>
	<8322586b16a5bda01770480f7096837c13d26f6b.camel@linuxfoundation.org>
	<015AB11D45F2C442929CB2765DAE738634DC0126@PGSMSX110.gar.corp.intel.com>
	<dd9d4804a3b42d84b0dcac0d35e3d1a1a4f0146a.camel@linuxfoundation.org>
	<5f279a38-ec01-21b5-e683-a9bc3caa8235@gmail.com>
	<913d9791bc9c41137478e4d76ee6131f385ab4cc.camel@linuxfoundation.org>
	<CANx9H-CcTgJg5_H10E0w_waoF-6PKdqJQ2x2ET+apqeA5yQouw@mail.gmail.com>
	<875dd72a-7e62-1e74-76da-49de472a110d@mvista.com>
To: akuster <akuster@mvista.com>
X-Mailer: Apple Mail (2.3445.104.8)
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	Poky Build User <pokybuild@ubuntu1604-ty-1.yocto.io>,
	akuster808 <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.2.rc3)
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
X-List-Received-Date: Fri, 05 Apr 2019 05:03:32 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable



> On Apr 4, 2019, at 8:39 PM, akuster <akuster@mvista.com> wrote:
>=20
>=20
>=20
> On 4/5/19 6:28 AM, Tim Orling wrote:
>> Just curious: all Perl modules in oe-core have ptest enabled, but =
only libxml-parser-perl is included in these test reports. Is it simply =
the only module in that image or is something else afoot?
>=20
> Is this what you are looking for ?
>=20
> <snipped>
> pango              | 12          | 0        | 0        | -
> perl               | 2282        | 3        | 120      | -
> python             | 8331        | 45       | 69       | -
>=20

<snipped>

No. I mean [1]:

Mode	Name=09
-rw-r--r--	liberror-perl_0.17027.bb
-rw-r--r--	libtest-needs-perl_0.002005.bb
-rw-r--r--	liburi-perl_1.74.bb
-rw-r--r--	libxml-parser-perl_2.44.bb
-rw-r--r--	libxml-perl_0.08.bb
-rw-r--r--	libxml-simple-perl_2.25.bb

[1] =
https://git.openembedded.org/openembedded-core/tree/meta/recipes-devtools/=
perl=

