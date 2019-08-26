Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2335AE00D59; Mon, 26 Aug 2019 01:02:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [213.33.87.20 listed in list.dnswl.org]
X-Greylist: delayed 2221 seconds by postgrey-1.32 at yocto-www;
	Mon, 26 Aug 2019 01:02:55 PDT
Received: from bsmtp8.bon.at (bsmtp8.bon.at [213.33.87.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FBC1E008E3
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 01:02:55 -0700 (PDT)
Received: from bsmtp7.bon.at (unknown [192.168.181.108])
	by bsmtp8.bon.at (Postfix) with ESMTPS id 46H3Sz19cvz5v5N
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 09:25:55 +0200 (CEST)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp7.bon.at (Postfix) with ESMTPSA id 46H3Sx4xTNz5tl9;
	Mon, 26 Aug 2019 09:25:53 +0200 (CEST)
Date: Mon, 26 Aug 2019 09:25:52 +0200
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <20190826072552.7qwzfy2t6amkoflf@qschulz>
References: <58fb31a5-8271-0645-f72a-4658e13ca988@faresoftware.it>
MIME-Version: 1.0
In-Reply-To: <58fb31a5-8271-0645-f72a-4658e13ca988@faresoftware.it>
User-Agent: NeoMutt/20180716
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Conditional include in image recipe.
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
X-List-Received-Date: Mon, 26 Aug 2019 08:02:57 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Mauro,

On Sat, Aug 24, 2019 at 12:19:08PM +0200, Mauro Ziliani wrote:
> Hi all
> 
> I working on a image recipe.
> 
> If I include the layer meta-raspberrypi layer  I'd like to include
> recipes-code/images/rpi-basic-image-bb.
> 
> While if i not include meta-raspberrypi layer I don't include
> rpi-basic-image.
> 

Or you can just safely ignore if the file does not exist (for Yocto,
which most likely means that the layer is not included).

You have two "include" mechanisms for non-class files:
 * require
 * include

"Require" requires the file to be there and fails otherwise while
"include" tries to include the file, if it's not there, it continues.

https://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#include-directive
https://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#require-inclusion

Quentin
-- 
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
quentin.schulz@streamunlimited.com, www.streamunlimited.com

