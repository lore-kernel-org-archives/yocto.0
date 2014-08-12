Return-Path: <prvs=294a5627f=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B525E0079A; Tue, 12 Aug 2014 05:20:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A28FE00796
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 05:20:47 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ap4EAAIG6lOsEApK/2dsb2JhbABahDq1bqA6d4RENDMUNE4uiCzFAReJf4VqhDYFjwqDDoogh1GRDIIy
X-IPAS-Result: Ap4EAAIG6lOsEApK/2dsb2JhbABahDq1bqA6d4RENDMUNE4uiCzFAReJf4VqhDYFjwqDDoogh1GRDIIy
Date: Tue, 12 Aug 2014 14:20:43 +0200
From: Richard Leitner <richard.leitner@skidata.com>
To: <yocto@yoctoproject.org>
Message-ID: <20140812142043.31d6766f@lxbuild.skidata.net>
Organization: SKIDATA AG
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
Subject: Force recipe to provide specific file
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
X-List-Received-Date: Tue, 12 Aug 2014 12:20:59 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

Hello folks,
is there a possibility to force a recipe to provide a specific file?

My problem is that my own recipe is providing a file which is already provided
by another recipe. I don't want to change that other recipe and the rootfs
should include both package but only the specified file from my package.

The following message is produced by bitbake:

WARNING: The recipe ghostscript is trying to install files into a shared area
when those files already exist. Those files and their manifest location are:
   /opt/yocto/poky/build_2.2/tmp/sysroots/board/usr/lib/cups/filter/gstopxl
   Matched in manifest-board-cups-filters.populate_sysroot
   /opt/yocto/poky/build_2.2/tmp/sysroots/board/usr/lib/cups/filter/gstoraster
   Matched in manifest-board-cups-filters.populate_sysroot
Please verify which package should provide the above files.

The only solution which came to my mind is to remove the file from the original
recipe using a bbappend, but I think this isn't a really "clean" way.

Does anybody have another/better idea how to solve this "problem"?

Thanks!

regards,
richard

P.S.: I hope I'm on the correct mailing list, if not please drop me a line!

