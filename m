Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D67A7E00851; Fri, 19 Sep 2014 08:14:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
Received: from mail-qc0-f171.google.com (mail-qc0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80872E00819;
	Fri, 19 Sep 2014 08:14:10 -0700 (PDT)
Received: by mail-qc0-f171.google.com with SMTP id x3so3265061qcv.16
	for <multiple recipients>; Fri, 19 Sep 2014 08:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=tJ5QbBbr6KR9WXzg+KMCimgdRoils+6mgy4bgjLmzkk=;
	b=xItI05ThCSJVf4OlV1sG6nV10Bo9yNJuEPZ+DGJlD1wV03GXZY21cDw0/BwZkRg7ql
	+i/F9p703snYXPKGRJF+DQkjjOTFTa4Q98yvQT/4/5aSiqyfNRCdgOid2jmSawpg4goX
	8enLugDCOZRLU4Y+ryZcn+NNvtchWwmeRhu9ENXnVmJCIShz0gyk6nyXrvSu74N4grXG
	3abfydtE0R/1cTH8b/k9LNqoqG/5muWx7dP7ujuwRN5TSS7qIr5A/Pfgipx5tncFO/uk
	iJsueBYQI2YZ7ZI3WYxy8X/fYxp5FlQKVy5mWIh26/Fdvv8i2MmcwDzF9zP2KriXcQeb
	GvRA==
MIME-Version: 1.0
X-Received: by 10.140.101.205 with SMTP id u71mr2115243qge.48.1411139649480;
	Fri, 19 Sep 2014 08:14:09 -0700 (PDT)
Received: by 10.96.151.130 with HTTP; Fri, 19 Sep 2014 08:14:09 -0700 (PDT)
Date: Fri, 19 Sep 2014 20:44:09 +0530
Message-ID: <CAP3RZogedpFsq8r+2yoydjQ3M=jAhCA8Oby02mZaP-=7=K_EZA@mail.gmail.com>
From: jags gediya <jags.gediya@gmail.com>
To: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Start daemon or execute script at boot time
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
X-List-Received-Date: Fri, 19 Sep 2014 15:14:18 -0000
Content-Type: text/plain; charset=UTF-8

Hi All,

If i want to execute some thing or start daemon at boot time, where
can i make changes in yocto source code, so that it reflects in the
file-system?


Thanks,
Jags

