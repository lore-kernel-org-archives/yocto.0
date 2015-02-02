Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04255E008A6; Mon,  2 Feb 2015 08:33:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D917E00824
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 08:33:32 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id AE2F2F811D7; Mon,  2 Feb 2015 09:33:31 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id C6F89F811D7;
	Mon,  2 Feb 2015 09:33:30 -0700 (MST)
Message-ID: <54CFA6DA.60103@mlbassoc.com>
Date: Mon, 02 Feb 2015 09:33:30 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: bitbake-whatchanged error
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
X-List-Received-Date: Mon, 02 Feb 2015 16:33:36 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Every time I run the 'bitbake-whatchanged' script, I get an
error like this:
   ERROR: Bitbake's cached basehash does not match the one we just generated (/home/local/poky-cutting-edge/meta-imx6/packages/images/imx6-demo-image.bb.do_rootfs)!
   ERROR: The mismatched hashes were e48dfde9772b0a567b5327087c9e2d44 and 3c3447f08ef4da61b814bff5fb909bff

What causes this and should I be worried?  Does it affect
the actual results which are shown?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

