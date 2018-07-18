Return-Path: <raphael.kubo.da.costa@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5586EE00E54; Wed, 18 Jul 2018 04:28:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF1EEE00874
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 04:28:29 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Jul 2018 04:28:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,370,1526367600"; d="scan'208";a="67994536"
Received: from rkubodac-desk.ger.corp.intel.com ([10.252.5.122])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jul 2018 04:28:28 -0700
From: Raphael Kubo da Costa <raphael.kubo.da.costa@intel.com>
To: <yocto@yoctoproject.org>
In-Reply-To: <CAN3t-YDrMh-DjVeFWgvggMPVhNF6kGTOahVV8sPo8SsPnrMi5w@mail.gmail.com>
	(Karim Gillani's message of "Tue, 17 Jul 2018 12:16:05 -0700")
Organization: Intel Corporation
References: <CAN3t-YDrMh-DjVeFWgvggMPVhNF6kGTOahVV8sPo8SsPnrMi5w@mail.gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
Date: Wed, 18 Jul 2018 13:28:27 +0200
Message-ID: <87y3e86aw4.fsf@rkubodac-desk.ger.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [meta-raspberrypi] - X11 EGLSV2 Chromium
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
X-List-Received-Date: Wed, 18 Jul 2018 11:28:31 -0000
Content-Type: text/plain

Karim Gillani <karim@gillani.org> writes:
> I am new to yocto and I am trying to build Chromium with userland. I am not sure what I am missing to have userland build libGLESv2.so, libGLESv2.so.2 and libEGL.
>
> All builds great but when I start Chromium, it complains there is no libGLESv2.so.2.

I don't test RPi3 builds myself, but this comment (as well as the rest
of the thread) here might be of interest:
https://github.com/OSSystems/meta-browser/issues/81#issuecomment-405124089

