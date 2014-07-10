Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB916E0056A; Thu, 10 Jul 2014 02:10:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17F2AE00559;
	Thu, 10 Jul 2014 02:10:39 -0700 (PDT)
Received: by mail-qc0-f178.google.com with SMTP id i17so3167789qcy.37
	for <multiple recipients>; Thu, 10 Jul 2014 02:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=GYG+l1rk34nO52mhjPd/mEnfStIldeDEAd3IRPy8vWE=;
	b=OCPxYR6xn8y/ko0e7B81W8L8bKLsgHj0igFSJpKN6fWKk0u6ElBjWEqiabs9M03fbL
	3IA80ERHmlob6/IMekHyjLt0btYCJWg929ZOscveiUhv+wmNUywEvVuuvFNyr/PbjqZz
	36bO913NaO7g+LzKUdnanaikP1zYWvsAL51pVeMCjV6SkbODAX+ZmRn0gM9Jj78fOvJG
	w6O/e0K53JKdcsg7YWjMWbbcPyy2UQDzidZR3DcqWS+U9+xsvj81Pvy2i/1boJrffijy
	8OnJkWRz+j2n9GBsbk0S60EsNQxLN/bRLv7dPMmld8VKWWwP7GtQsBRkgiXcptxNJs4F
	Rjiw==
MIME-Version: 1.0
X-Received: by 10.140.105.163 with SMTP id c32mr73830072qgf.85.1404983438736; 
	Thu, 10 Jul 2014 02:10:38 -0700 (PDT)
Received: by 10.224.37.133 with HTTP; Thu, 10 Jul 2014 02:10:38 -0700 (PDT)
Date: Thu, 10 Jul 2014 14:40:38 +0530
Message-ID: <CAP3RZoiejMxU33NE2cwmWN=LxJ7RoieaCJLf5Ch0hQSGABXKcw@mail.gmail.com>
From: jags gediya <jags.gediya@gmail.com>
To: yocto@yoctoproject.org, meta-freescale@yoctoproject.org
Subject: yocto build taking too long time
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
X-List-Received-Date: Thu, 10 Jul 2014 09:10:41 -0000
Content-Type: text/plain; charset=UTF-8

When i run command bitbake core-image-minimalm my build stops at
NOTE: Preparing runqueue
and after taking too long time it continues again.
Is build checks anything at that point?

Thanks,
Jags Gediya

