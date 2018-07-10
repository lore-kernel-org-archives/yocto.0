Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4C9DE00DEF; Tue, 10 Jul 2018 01:40:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,RCVD_IN_RP_RNBL
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.3 RCVD_IN_RP_RNBL RBL: Relay in RNBL,
	*      https://senderscore.org/blacklistlookup/
	*      [87.81.244.161 listed in bl.score.senderscore.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72FDCE009B9
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 01:40:36 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w6A8eQii018685
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 10 Jul 2018 09:40:29 +0100
Message-ID: <0c6dfc5e97f24bd90f6b3ff573a637eb2ec12915.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Aaron Chan <aaron.chun.yew.chan@intel.com>, yocto@yoctoproject.org,
	ross.burton@intel.com, paul.eggleton@intel.com
Date: Tue, 10 Jul 2018 09:40:26 +0100
In-Reply-To: <1531193077-10652-1-git-send-email-aaron.chun.yew.chan@intel.com>
References: <1531193077-10652-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: [PATCH] [yocto-autobuilder] init: Fix the import module yoctoabb & yocto_console_view
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
X-List-Received-Date: Tue, 10 Jul 2018 08:40:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2018-07-10 at 11:24 +0800, Aaron Chan wrote:
> This patch is to fix the inconsistency in loading custom module
> yoctoabb & yocto_console_view during Buildbot Master startup.
> 
> Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
> ---
>  __init__.py                    | 0
>  yocto_console_view/__init__.py | 0
>  2 files changed, 0 insertions(+), 0 deletions(-)
>  create mode 100644 __init__.py
>  create mode 100644 yocto_console_view/__init__.py

I think this means you're using python2 and we really should be using
python3 as I don't want to support both...

Cheers,

Richard

