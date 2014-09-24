Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46B31E007DF; Wed, 24 Sep 2014 00:26:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20BEFE0034C
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 00:26:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 24 Sep 2014 00:20:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,587,1406617200"; d="scan'208";a="578065394"
Received: from pesamara-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.26])
	by orsmga001.jf.intel.com with ESMTP; 24 Sep 2014 00:26:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
Date: Wed, 24 Sep 2014 08:26:36 +0100
Message-ID: <2064454.kM4kxd3gIa@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.16.2-200.fc20.x86_64; KDE/4.14.1; x86_64; ; )
In-Reply-To: <CA+Z6RkUeUs0=EQ3adks8jBYbEQkiA6G8iP+Em8_YzHSGo2124Q@mail.gmail.com>
References: <CA+Z6RkW1D8pPpGCTu_SwF5Q+d0Um-MuYQM3mtube=u2txu0V6A@mail.gmail.com>
	<CAMKF1sqc0+V0V__Ot1T_Qzd-DPpTK4OF9ooAz2EOEEXfT-S-aQ@mail.gmail.com>
	<CA+Z6RkUeUs0=EQ3adks8jBYbEQkiA6G8iP+Em8_YzHSGo2124Q@mail.gmail.com>
MIME-Version: 1.0
Cc: Navani Srivastava <navani.srivastava@lnttechservices.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Integration of custom recipe with SDK
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
X-List-Received-Date: Wed, 24 Sep 2014 07:26:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 24 September 2014 10:26:41 Navani Srivastava wrote:
> I corrected FILES_${PN} and added following in my image recipe-
> QTNAME = "qte"
> QT_DIR_NAME = "qtopia"
> require recipes-qt/meta/meta-toolchain-qt.bb
> 
> but that didn't make any difference related to SDK integration. On
> executing 'bitbake -v <MyImageName>', it is generating rootfs and sdk, in
> which contains rootfs contains qjson libraries but sdk doesn't integrate
> anything.

To generate the SDK you'd need to also do bitbake -c populate_sdk <imagename> 
- you did do that as well after making the changes to the recipe, right ?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

