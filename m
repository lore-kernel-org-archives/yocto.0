Return-Path: <menschel-d@posteo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88018E00BB6; Mon, 10 Jul 2017 09:52:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.67.36.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Mon, 10 Jul 2017 09:52:19 PDT
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E79BE00B76
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 09:52:19 -0700 (PDT)
Received: from submission (posteo.de [89.146.220.130]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 3A8A720E28
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 18:51:10 +0200 (CEST)
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 3x5rnn4KG2z10HY
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 18:51:09 +0200 (CEST)
From: Dennis Menschel <menschel-d@posteo.de>
To: yocto@yoctoproject.org
Message-ID: <c8e75209-3fd2-925c-9245-3db1876b8bdc@posteo.de>
Date: Mon, 10 Jul 2017 18:51:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
Subject: New software layer for the barebox bootloader
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
X-List-Received-Date: Mon, 10 Jul 2017 16:52:21 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi all!

I have created a new software layer named meta-barebox that provides
support for the barebox bootloader.

The layer has already been added to the OpenEmbedded Layer Index:
https://layers.openembedded.org/layerindex/branch/master/layer/meta-barebox/

The layer features its own reference manual that describes the interface
of meta-barebox and provides a usage example.
Last but not least, it also answers the question why I have created a
separate layer for the barebox bootloader.
The reference manual can be found here:
https://github.com/menschel-d/meta-barebox/blob/master/doc/ref-manual.md

Have fun!

Best regards,
Dennis Menschel

