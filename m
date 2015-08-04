Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E7B3E00A92; Tue,  4 Aug 2015 08:04:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66ECEE009C5
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 08:04:49 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 66BACF811DD; Tue,  4 Aug 2015 09:04:49 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E68E7F811D7;
	Tue,  4 Aug 2015 09:04:48 -0600 (MDT)
Message-ID: <55C0D49B.4070906@mlbassoc.com>
Date: Tue, 04 Aug 2015 09:04:59 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Stale warning?
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
X-List-Received-Date: Tue, 04 Aug 2015 15:04:54 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

While I was fixing the python3 nativesdk recipe, I ran this
step a few times:
   $ bitbake nativesdk-python3 -C compile

After this, I get this warning:
   WARNING: virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-devtools/python/python3_3.4.3.bb.do_compile is tainted from a forced run
which seems quite reasonable.  Once I had the compile errors
fixed, I moved the patches into the recipe and then rebuilt
from scratch (just the nativesdk-python3).  Even though the
package has been completely rebuilt (fetch/patch/...), I still
get this warning, which doesn't seem right to me.  The warning
only goes away if I clean the package:
   $ bitbake nativesdk-python3 -c clean
-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

