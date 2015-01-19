Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA9A1E00717; Mon, 19 Jan 2015 06:38:28 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CD30E00596
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 06:38:25 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 19 Jan 2015 06:34:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,427,1418112000"; d="scan'208";a="664075534"
Received: from rleitch-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.23.131])
	by fmsmga002.fm.intel.com with ESMTP; 19 Jan 2015 06:37:52 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Mon, 19 Jan 2015 14:37:51 +0000
Message-ID: <2824987.9YqDdImYNk@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <AB3518D3-AE10-4889-ADB6-8A662EF8C458@keylevel.com>
References: <60148DA2-CAB2-416A-BDEE-783705B3E24E@keylevel.com>
	<CADkTA4MDLvwaGp_rcuUsOaXEC46_dxd6QH9k0PZmofhnxNLBoQ@mail.gmail.com>
	<AB3518D3-AE10-4889-ADB6-8A662EF8C458@keylevel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Kernel configuration
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
X-List-Received-Date: Mon, 19 Jan 2015 14:38:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Chris,

On Saturday 03 January 2015 00:57:50 Chris Tapp wrote:
> If I change my bbappend to use lines of the form:
> 
>   SRC_URI_valleyisland-64 += " file://enable-R8169.cfg"

Note that this probably doesn't do what you think it does - it'll be _setting_ 
the value to "  file://enable-R8169.cfg" rather than appending to the existing 
value when MACHINE is "valleyisland-64". Overrides and += don't really work 
together because they operate at different times - the += happens immediately 
and then later the override is applied. The correct way to do a conditional 
append with an override is to use _append, e.g.:

  SRC_URI_append_valleyisland-64 = " file://enable-R8169.cfg"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

