Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9596DE009F8; Fri, 31 Jul 2015 06:33:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E882CE009E5
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 06:33:46 -0700 (PDT)
Received: by qgeu79 with SMTP id u79so45611025qge.1
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 06:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:user-agent:mime-version
	:content-type; bh=k71xSJbysYIyfoWOtp6z6KJXFBaBS21YHShjyvtDQA4=;
	b=d/7z2s2ymaoJ64rStsr7746nbrMWOUiVj8vpJpe4TXp8XzcGXqG5v/UP8sX82Uxe7R
	l7KptmnrShraMvevGCaNh+G3cigmYRx4OwidZDDIBrYN/jJjAHUPY7Xw1kJtId3Klric
	jUk6VEzH8rMucSNCkH3SXLXxxwanleFF4DZPABwnYfV0IkO5DwMbY0q/xodaJ7kcDcBa
	Y4o9nc08IapPUkVF9+ftIjABUfOW1/QN9cMV+jboEDUsJL016zQyB/nKujafvvPohXx6
	P/2FQH6BRL4znvCM8Oj9l4O9OFPYVcuTPupIRTWfRTqcC06KhcW6ryzi6NgSjycoGoBY
	qRKw==
X-Received: by 10.140.218.139 with SMTP id o133mr4390455qhb.69.1438349625858; 
	Fri, 31 Jul 2015 06:33:45 -0700 (PDT)
Received: from email.parenteses.org.gmail.com (email.parenteses.org.
	[198.199.72.94]) by smtp.gmail.com with ESMTPSA id
	z73sm2207961qkg.44.2015.07.31.06.33.45 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 31 Jul 2015 06:33:45 -0700 (PDT)
Sender: Mario Domenech Goulart <mario.goulart@gmail.com>
From: Mario Domenech Goulart <mario@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Fri, 31 Jul 2015 13:33:44 +0000
Message-ID: <87vbd0xxhj.fsf@email.parenteses.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
Subject: [meta-oracle-java] oracle-jse-jre fetch issue
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
X-List-Received-Date: Fri, 31 Jul 2015 13:33:47 -0000
Content-Type: text/plain

Hi,

I started a build of oracle-jse-jre with an empty $DL_DIR and noticed
do_fetch fails due to checksum mismatch.

The downloaded file
(ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz_bad-checksum_b72400960629e7403c4b579dada2a804)
is actually an HTML file which contains a page indicating a login
failure.

Is this a known issue?

Best wishes.
Mario
-- 
http://www.ossystems.com.br

