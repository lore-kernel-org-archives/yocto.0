Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84A0DE00524; Wed, 25 Jun 2014 07:13:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A165E003FA
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 07:13:03 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 Jun 2014 07:13:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,546,1400050800"; d="scan'208";a="560776963"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.121.119])
	by fmsmga002.fm.intel.com with ESMTP; 25 Jun 2014 07:13:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Bollinger, Seth" <Seth.Bollinger@digi.com>
Date: Wed, 25 Jun 2014 15:12:59 +0100
Message-ID: <1746880.Dvn3uyFT8K@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.8-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <CFD03993.963D%seth.bollinger@digi.com>
References: <CFCD80D1.95CB%seth.bollinger@digi.com>
	<CFD02FD0.962B%seth.bollinger@digi.com>
	<CFD03993.963D%seth.bollinger@digi.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: File system for alternate partition
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
X-List-Received-Date: Wed, 25 Jun 2014 14:13:11 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wednesday 25 June 2014 13:33:46 Bollinger, Seth wrote:
> >It looks like the POSTPROCESS commands are run too early.  Subsequen=
t
> >actions depend on that directory structure (pre-linking, etc.).  It =
looks
> >like I would need some way to hook _cleanup() in the RootFS subclass=
.
>=20
> Actually scratch the above comment.  I wasn=B9t reading the log spew
> correctly.  The problem comes in at the image process.  So, I was abl=
e to
> add an IMAGE_POSTPROCESS_COMMAND and that works.

Are you sure? IMAGE_POSTPROCESS_COMMAND runs after all of the image fil=
es have=20
been created; at that time, the contents of the image has already been=20=

compressed or otherwise combined into the final output file(s), so I wo=
uld think=20
that would be too late to modify the contents.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

