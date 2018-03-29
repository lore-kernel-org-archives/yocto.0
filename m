Return-Path: <a.marud@post.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41C34E00B65; Thu, 29 Mar 2018 13:33:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (a.marud[at]post.pl)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 400 seconds by postgrey-1.32 at yocto-www;
	Thu, 29 Mar 2018 13:33:13 PDT
Received: from mx.post.pl (mx.post.pl [89.161.251.250])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8F71E00529
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 13:33:13 -0700 (PDT)
Received: from public-gprs351208.centertel.pl (37.47.3.41) (HELO arek-neon)
	by post.home.pl (212.85.96.51) with SMTP (IdeaSmtpServer 0.83)
	id 0a1eb617b3d6f22d; Thu, 29 Mar 2018 22:26:31 +0200
Date: Thu, 29 Mar 2018 22:26:30 +0200
From: Arek Marud <a.marud@post.pl>
To: yocto@yoctoproject.org
Message-ID: <20180329202630.GA2962@arek-neon>
MIME-Version: 1.0
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Kernel build directory path
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
X-List-Received-Date: Thu, 29 Mar 2018 20:33:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello, 

I'm trying to create a recipe for driver from external company.

Unfortunately compilation process require path to Kernel build
directory. I red "Incorporating Out-of-Tree Modules" chapter in Kernel
Dev Manual, and tried to use module.bbclass. But I only got path to
kernel-build-artifacts, that is not enough for driver compilation.

Is there any way to get Kernel build path in recipe?

Best regards
Arek Marud


