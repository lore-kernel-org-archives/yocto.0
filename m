Return-Path: <prvs=2525e0611=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31744E0054C; Tue,  1 Jul 2014 07:07:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82F93E00342
	for <yocto@yoctoproject.org>; Tue,  1 Jul 2014 07:07:05 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ap4EAFDAslOsEApK/2dsb2JhbABahDnHJHWERGcUNE6IWshDF488hC0FmmSHM5AVgi4
X-IPAS-Result: Ap4EAFDAslOsEApK/2dsb2JhbABahDnHJHWERGcUNE6IWshDF488hC0FmmSHM5AVgi4
Date: Tue, 1 Jul 2014 16:06:45 +0200
From: Richard Leitner <richard.leitner@skidata.com>
To: <yocto@yoctoproject.org>
Message-ID: <20140701160645.5d7ba9d1@lxbuild.skidata.net>
Organization: SKIDATA AG
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
Subject: nscd: missing configuration and initscript
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
X-List-Received-Date: Tue, 01 Jul 2014 14:07:15 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

Hello folks,
currently I'm trying to add nscd to my image. This works quite fine using IMAGE_INSTALL += "nscd".

The problem is that the nscd package lacks a configuration and a initscript.
I've searched through the recipes and the web but I can't find any hints on it.

Is there a way to add a "complete nscd" installation (with config & initscript) without writing my own recipe?
What is the preferred way for this? Am I overlooking something?

thanks & regards,
richard

