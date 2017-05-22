Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28F28E00B57; Mon, 22 May 2017 07:53:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,HEXHASH_WORD
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5089E00B0B
	for <yocto@yoctoproject.org>; Mon, 22 May 2017 07:53:48 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id CE18368A019; Mon, 22 May 2017 15:53:46 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 512B368A019;
	Mon, 22 May 2017 15:53:46 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id EC9B867403CA;
	Mon, 22 May 2017 16:53:45 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <31a2d863-b928-df06-8e86-78b939469614@mlbassoc.com>
Date: Mon, 22 May 2017 16:53:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
Subject: sstate-cache question
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
X-List-Received-Date: Mon, 22 May 2017 14:53:52 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I have a build where I've never manually removed anything from
the sstate-cache and this same build has been used for hundreds
of builds over the last 18 months.  I just tried to find out why
gcc-cross-arm had to be rebuilt (it seems to happen almost every
time I update my Poky/Yocto tree (master)).  Here's what I got:

$ bitbake-diffsigs -t gcc-cross-arm compile
Hash for dependent task gcc/gcc-cross_6.3.bb.do_configure changed from 208373dd9ae01101a26a9412eb50b110 to 
d65095d4b9aff89f6990bd17c0ab210b
Unable to find matching sigdata for /local/poky-cutting-edge/meta/recipes-devtools/gcc/gcc-cross_6.3.bb.do_configure 
with hashes 208373dd9ae01101a26a9412eb50b110 or d65095d4b9aff89f6990bd17c0ab210b

So if I didn't remove those files, where did they go?  Am I doing
something wrong running this tool?  (running the same command for
qemu-native seemed to work correctly)

Thanks for any ideas

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

