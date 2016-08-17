Return-Path: <muellcontainer@6th-dimension.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95232E00EAD; Wed, 17 Aug 2016 06:58:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_40,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [88.198.40.25 listed in list.dnswl.org]
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.3465]
X-Greylist: delayed 245 seconds by postgrey-1.32 at yocto-www;
	Wed, 17 Aug 2016 06:58:05 PDT
Received: from tux111.hoststar.ch (tux111.hoststar.ch [88.198.40.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E80C7E00EA5
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2016 06:58:05 -0700 (PDT)
Received: from webmail.hoststar.ch (webmail.hoststar.ch [78.46.40.20])
	(authenticated bits=0)
	by tux111.hoststar.ch (8.14.9/8.12.11) with ESMTP id u7HDruI8007688
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2016 15:53:57 +0200
MIME-Version: 1.0
Date: Wed, 17 Aug 2016 15:53:56 +0200
From: muellcontainer@6th-dimension.com
To: yocto@yoctoproject.org
Message-ID: <e744d1c929045b0c9e8f33185ece6dfe@6th-dimension.com>
X-Sender: muellcontainer@6th-dimension.com
User-Agent: Hoststar Webmail/0.9.2
X-HS-BS-Header: lnvp0KjWGt4Qae/IiYBO2Q
X-Scanned-By: mimedefang-scanned
Subject: Recipe for rootfs inside a rootfs
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
X-List-Received-Date: Wed, 17 Aug 2016 13:58:09 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

thanks for letting me join the yocto mailing list.
Here is my first question :)

For testing containers, I would like to extract a root file system via a 
yocto recipe into the rootfs.
However, this leads to automatic dependency generation and the resulting 
rpm package cannot be installed during the do_rootfs step.

My recipe downloads the latest arch linux arm and untars it in the 
do_install. You will also notice a lot of options I tried to come to a 
solution, without success. Do you know how I can prevent bitbake from 
generating those dependencies and just install this rootfs into 
"/container" without killing me?

My recipe:





