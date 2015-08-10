Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89DEBE00A7F; Mon, 10 Aug 2015 08:30:40 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8B87E00A7B
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 08:30:37 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 10 Aug 2015 08:30:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,646,1432623600"; d="scan'208";a="780558835"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.12.59])
	by fmsmga002.fm.intel.com with ESMTP; 10 Aug 2015 08:30:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto yocto <yoctomailinglist@gmail.com>
Date: Mon, 10 Aug 2015 16:30:34 +0100
Message-ID: <1801888.vlNrr9kKlZ@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.8-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <CACTu1LiQvOk76S+QiO=e+5h0gGosOySd_Ntf-grWEWfPr-7P-w@mail.gmail.com>
References: <CACTu1LiQvOk76S+QiO=e+5h0gGosOySd_Ntf-grWEWfPr-7P-w@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Disable "Warning: X, set to be excluded, is excluded [...]"
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
X-List-Received-Date: Mon, 10 Aug 2015 15:30:40 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 10 August 2015 13:19:48 yocto yocto wrote:
> I am building my own yocto image based on the intel edison image. For that
> reason i created my own layer so that I do not have to touch the official
> intel sources. Each change is done in my own layer.
> 
> Hence, to remove packages that are added within the intel edison
> configuration I use PACKAGE_EXCLUDE in my own "layer.conf".
> 
> E.g.:
> PACKAGE_EXCLUDE = "pwr-button-handler"
> 
> Result:
> 
> "Warning: Package pwr-button-handler, set to be excluded, is in myown-image
> PACKAGE_INSTALL (*here follows a list with all recipes included*)."
> 
> So this warning is 100% correct: I am removing a package which has been
> added before. But is it possible to avoid this warning? I only found this:
> 
> "PACKAGE_EXCLUDE is a mechanism for preventing packages from being
> installed at all.  If the package is in the PACKAGE_INSTALL or
>  ACKAGE_INSTALL_ATTEMPTONLY it will be filtered out, and a warning issued."
> (http://comments.gmane.org/gmane.comp.handhelds.openembedded.core/41490)

This isn't how PACKAGE_EXCLUDE was really intended to be used. It's telling 
you that you've effectively explicitly said "install this thing" then you've 
said "don't install this thing". PACKAGE_EXCLUDE was meant to remove (or at 
least error) a package implicitly installed through dependencies.

I have to be honest and say I think that image recipes are a special case and 
should be more or less disposable - if you need to modify them, rather than 
using a bbappend, just copy and modify as needed.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

