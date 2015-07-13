Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52551E0086E; Mon, 13 Jul 2015 09:39:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE5F4E00474
	for <yocto@yoctoproject.org>; Mon, 13 Jul 2015 09:39:05 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 13 Jul 2015 09:39:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,463,1432623600"; d="scan'208";a="523524367"
Received: from kieranfl-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.30.146])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Jul 2015 09:39:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Pampolini Matteo <matteo.pampolini@selex-es.com>
Date: Mon, 13 Jul 2015 17:38:59 +0100
Message-ID: <10339162.sO6SsRz4fR@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.6-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <1436804334217.6373@selex-es.com>
References: <1436797408174.67011@selex-es.com>
	<22658_1436803637_55A3E234_22658_12077_1_10339148.fJj1pddUcL@peggleto-mobl.ger.corp.intel.com>
	<1436804334217.6373@selex-es.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Which is the best strategy to customize Qt configuration?
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
X-List-Received-Date: Mon, 13 Jul 2015 16:39:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 13 July 2015 16:18:55 Pampolini Matteo wrote:
> It was also my idea to override QT_PHONON variable inside my .bbappend file,
> but the fact is that this does not prevent BitBake from downloading and
> compiling glib/gstreamer.
> 
> In my first hack, when I modified the original qt.inc file, I had to make
> both changes, DEPENDS variable for BitBake and QT_PHONON for Qt itself.
> 
> As I wrote in my answer to Leonardo the issue is: how can I override the
> value of DEPENDS variable in my own layer, if possible?

You can set DEPENDS in the qt4-x11-free bbappend just as with any other 
variable. In this instance you could use the _remove operator e.g.

DEPENDS_remove = "gstreamer gst-plugins-base"

(This will only work here having additionally set QT_PHONON = "-no-phonon" to 
disable the underlying depenendency, of course.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

