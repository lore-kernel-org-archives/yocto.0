Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5ED7CE0091A; Tue, 25 Nov 2014 04:57:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	URIBL_BLACK autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [83.145.59.140 listed in list.dnswl.org]
	*  1.7 URIBL_BLACK Contains an URL listed in the URIBL blacklist
	*      [URIs: configure.ac]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from stoexhubfe01.domain01.net (STOEXHUBFE01.domain01.net
	[83.145.59.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33015E008E2
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 04:57:23 -0800 (PST)
Received: from ad.chargestorm.se (83.233.19.145) by stoexhubfe01.domain01.net
	(10.12.10.6) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Tue, 25 Nov 2014 13:57:19 +0100
Date: Tue, 25 Nov 2014 13:56:41 +0100
From: Anders Darander <anders@chargestorm.se>
To: "peterengcomau001@adam.com.au" <peterengcomau001@adam.com.au>
Message-ID: <20141125125640.GB6282@ad.chargestorm.se>
Mail-Followup-To: "peterengcomau001@adam.com.au"
	<peterengcomau001@adam.com.au>, 
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <88560578.M5ZrlhlDIL@peggleto-mobl5.ger.corp.intel.com>
	<fc78ad240caee557791be5969b04f7035cd11718@webmail.adam.com.au>
MIME-Version: 1.0
In-Reply-To: <fc78ad240caee557791be5969b04f7035cd11718@webmail.adam.com.au>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
X-GFI-SMTP-Submission: 1
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New error in 1.7
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
X-List-Received-Date: Tue, 25 Nov 2014 12:57:33 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* peterengcomau001@adam.com.au <peterengcomau001@adam.com.au> [141125 13:44]:
>    This is new territory for me.
>    I have created the following patch
>    diff --git a/configure.ac b/configure.ac
>    --- a/configure.ac
>    +++ b/configure.ac
>    @@ -16 +16 @@ AC_CONFIG_SRCDIR([libop/op_config.h])
>    -AM_INIT_AUTOMAKE
>    +AM_INIT_AUTOMAKE([foreign])

Yep, that's not really a valid patch file (at least not one that can be
applied.

>    Can you direct me to some information that describes the exact syntax
>    for creating patches?

If you want to do it by hand, look at the "Creating patches with diff"
section on http://jungels.net/articles/diff-patch-ten-minutes.html.

If you think you might need to add multiple patches, rework them etc.
I'd recommend using git.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

