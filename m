Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B55EE00DAF; Thu, 17 Aug 2017 02:27:37 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69322E00D23
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 02:27:34 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Aug 2017 02:27:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,387,1498546800"; d="scan'208";a="1163559154"
Received: from qnguye5-mobl1.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.135.6])
	by orsmga001.jf.intel.com with ESMTP; 17 Aug 2017 02:27:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?Dr=2E_Matthias_Sch=F6pfer?= <Matthias.Schoepfer@ithinx.io>
Date: Thu, 17 Aug 2017 21:27:13 +1200
Message-ID: <2194654.OpPfn0j9vU@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <63EFF8D6B0566D4E82DEBC3D979C491383D8D9F3@SW-VM-02.kelle.grp>
References: <63EFF8D6B0566D4E82DEBC3D979C491383D8D9F3@SW-VM-02.kelle.grp>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: RDEPENDS on package does not include package in rootfs
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
X-List-Received-Date: Thu, 17 Aug 2017 09:27:37 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Matthias,

On Thursday, 17 August 2017 8:43:41 PM NZST Dr. Matthias Sch=F6pfer wrote:
> Here is my problem, maybe I misunderstood something. I have a library
> recipe, lets name it foo, that DEPENDS on mosquitto from
> meta-intel-iot-middleware. I added a RDEPENDS_${PN} +=3D " libmosquitto1
> ", as the mosquitto package adds this extra package for the mosquitto
> library, that library foo depends on. Then I have my app "bar", that
> depends on "foo". "bar" is added to the image recipe. The rootfs is
> missing out the package libmosquitto1, and therefore missing the
> mosquitto library. Workaround is to add libmosquitto explicitly to the
> Image recipe, but as I understand, this should not me necessary.

Something is odd here because if your foo library links to libmosquitto1.so=
=2E1 then it should already get a runtime dependency on the libmosquitto1 p=
ackage without you needing to add it. I would perhaps suggest looking at pk=
gdata -  bitbake -e foo | grep PKGDATA_DIR  and then look in runtime/foo un=
der that and see what RDEPENDS is indicated in there.

Cheers,
Paul


=2D-=20

Paul Eggleton
Intel Open Source Technology Centre

