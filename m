Return-Path: <raphael.kubo.da.costa@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8631BE00460; Mon,  3 Sep 2018 05:14:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDE33E003D9
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2018 05:14:29 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Sep 2018 05:14:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,324,1531810800"; d="scan'208";a="259436916"
Received: from rkubodac-desk.ger.corp.intel.com ([10.252.25.41])
	by fmsmga005.fm.intel.com with ESMTP; 03 Sep 2018 05:14:28 -0700
From: Raphael Kubo da Costa <raphael.kubo.da.costa@intel.com>
To: "Pandey\, Kamal" <Kamal.Pandey@ifm.com>
In-Reply-To: <fc50e40975134a01920906aad4ab0e75@ifm.com> (Kamal Pandey's
	message of "Tue, 21 Aug 2018 13:28:03 +0000")
Organization: Intel Corporation
References: <fc50e40975134a01920906aad4ab0e75@ifm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
Date: Mon, 03 Sep 2018 14:14:27 +0200
Message-ID: <878t4ikcbg.fsf@rkubodac-desk.ger.corp.intel.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: chromium is compiling but is not able to add in the image
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
X-List-Received-Date: Mon, 03 Sep 2018 12:14:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

"Pandey, Kamal" <Kamal.Pandey@ifm.com> writes:

> I tried adding chromium package via the meta-browser layer. It is
> compiling when I run $ bitbake chromium . But when I run $bitbake
> core-image-minimal-pdm3. It=E2=80=99s not adding chromium to the image and
> throwing errors as shown below:

"chromium" is currently just a shorthand for "chromium-x11". Does it
work if you pass the latter to bitbake?

