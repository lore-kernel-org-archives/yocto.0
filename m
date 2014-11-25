Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65070E008FC; Tue, 25 Nov 2014 03:27:26 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63AD4E008E2
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 03:27:25 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Nov 2014 03:27:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,455,1413270000"; d="scan'208";a="627919485"
Received: from ksperera-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.204])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2014 03:27:22 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mahdi Saadat <MahdiS@nimakco.net>
Date: Tue, 25 Nov 2014 11:27:21 +0000
Message-ID: <3268119.JvK3Pbvb9J@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.3-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <003401d00627$b71a7500$254f5f00$@nimakco.net>
References: <003401d00627$b71a7500$254f5f00$@nimakco.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Progress Bar
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
X-List-Received-Date: Tue, 25 Nov 2014 11:27:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Mahdi,

On Saturday 22 November 2014 11:11:16 Mahdi Saadat wrote:
> ] build the image-minimal , and want to add the dialog installer for it with
> progress bar and dialog , when i use install.sh, in the image installation
> on target device the message shows that "dialog and progress could not
> find".
> could you please inform me about the creating progress bar when installing
> th image on dest device

Sorry, I don't understand the question because there isn't enough detail. I'm 
not even sure which part of the system you're using. Which install.sh is this? 
"dialog and progress could not find" - is this exactly how the error message is 
written?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

