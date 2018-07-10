Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0E7FE00AAB; Tue, 10 Jul 2018 15:16:42 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAD36E00929
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 15:16:41 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w6AMGauW018236
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 10 Jul 2018 23:16:37 +0100
Message-ID: <e93986c0d370dee8918b51d0743907ef8c34ce28.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Burton, Ross"
	<ross.burton@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>
Date: Tue, 10 Jul 2018 23:16:36 +0100
In-Reply-To: <AA9B40170ABA1047B45E714CB2B866B7068FF63C@PGSMSX103.gar.corp.intel.com>
References: <1531193077-10652-1-git-send-email-aaron.chun.yew.chan@intel.com>
	,<0c6dfc5e97f24bd90f6b3ff573a637eb2ec12915.camel@linuxfoundation.org>
	<AA9B40170ABA1047B45E714CB2B866B7068FF63C@PGSMSX103.gar.corp.intel.com>
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
X-List-Received-Date: Tue, 10 Jul 2018 22:16:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2018-07-10 at 10:47 +0000, Chan, Aaron Chun Yew wrote:
> [Richard] I think this means you're using python2 and we really
> should be using
>                 python3 as I don't want to support both...
> 
> [Reply] This error/bug was found during buildbot startup meaning this
> is out of my control.

No, it is not out of your control.

>             Maybe you have a fix for this, otherwise I do suggest to
> add in __init__.py in places where we need to source custom modules.
> 
> $ buildbot start ~/yocto-controller
> $ cat -n 100 ~/yocto-controller/twistd.log

Try using virtualenv:

$ python --version
Python 2.7.15rc1

$ virtualenv -p python3 test
Already using interpreter /usr/bin/python3
Using base prefix '/usr'
New python executable in /media/build1/test/bin/python3
Also creating executable in /media/build1/test/bin/python
Installing setuptools, pkg_resources, pip, wheel...done.

$ . ./test/bin/activate

(test) richard@dax:/media/build1/$ python --version
Python 3.6.5


If you start buildbot within the virtualenv, you should see it using
python3.

Cheers,

Richard

