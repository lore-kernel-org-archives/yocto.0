Return-Path: <alberto@albeus.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC63AE00A10; Mon, 15 Oct 2018 09:25:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [5.144.164.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 584 seconds by postgrey-1.32 at yocto-www;
	Mon, 15 Oct 2018 09:25:06 PDT
Received: from m-r2.th.seeweb.it (m-rb.th.seeweb.it [5.144.164.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43AFEE003D9
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 09:25:06 -0700 (PDT)
Received: from zazen.local.albeus.eu
	(host195-177-dynamic.53-82-r.retail.telecomitalia.it [82.53.177.195])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 7B50E3F2E7
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 18:15:21 +0200 (CEST)
Received: by zazen.local.albeus.eu (Postfix, from userid 1000)
	id 75DA2483C7D; Mon, 15 Oct 2018 18:15:20 +0200 (CEST)
Date: Mon, 15 Oct 2018 18:15:20 +0200
From: Alberto Eusebi <alberto@albeus.eu>
To: yocto@yoctoproject.org
Message-ID: <20181015161520.GA17645@zazen.local.albeus.eu>
MIME-Version: 1.0
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Mailman-Approved-At: Mon, 15 Oct 2018 09:30:16 -0700
Subject: Add python2 as native package in openembedded sdk
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
X-List-Received-Date: Mon, 15 Oct 2018 16:25:06 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,
I need to cross compile python2 packages using openembedded sdk. The sdk
resulting package contains only python 3.5.3 (in older version it contains
python 2.7.3 as well).
  _________________________________________________________________________________
  # ls -l sysroots/x86_64-angstromsdk-linux/usr/bin/python*
    lrwxrwxrwx 1 root root    9 Oct 11 21:39 python3 -> python3.5*
    -rwxr-xr-x 1 root root  267 Oct 11 21:39 python3.5*
    lrwxrwxrwx 1 root root   17 Oct 11 21:39 python3.5-config -> python3.5m-config*
    -rwxr-xr-x 2 root root  15K Oct 11 21:39 python3.5m*
    -rwxr-xr-x 1 root root 3.3K Oct 11 21:39 python3.5m-config*
    -rwxr-xr-x 2 root root  15K Oct 11 21:39 python3.5.real*
    lrwxrwxrwx 1 root root   16 Oct 11 21:39 python3-config -> python3.5-config*__
  _________________________________________________________________________________


Is there a way to add also this native python version to my sdk?

Thanks.

--
Albeus

