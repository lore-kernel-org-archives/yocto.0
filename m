Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3720E00B81; Sat,  4 May 2019 09:19:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A434E00AD5
	for <yocto@yoctoproject.org>; Sat,  4 May 2019 09:19:58 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 44xDjn6FvPz24
	for <yocto@yoctoproject.org>; Sat,  4 May 2019 18:19:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1556986798;
	bh=LZVoCl4JEEg9IyXblKdM9Hhjr+DcfRAOVrAtXlCpQso=;
	h=Date:From:To:Subject:From;
	b=GlWC5Hshba7yjIlmzxIpgzlTjTBY+LERJtEXvnFQky/RKGlBAFpUQREM7RACQYIPW
	MUpcwON8iqu5R7J7mNknJZ3I6Nb8qqIT2lyKwAi6hbqFLoMDDyR/9dlJLJlnP8HwXg
	ARWZfZ8fxNspocrMy1oe5xQotwzBwCDSWxaHZtpa/sDbpBsYkToDmuinE40L34nBPc
	1K8hUV1lG9Su+raBkQkFuGy/tE6HnrubjL78h13aaMizlOrVZ2GRrwQvCO8ml+8Aw6
	nsNJUi8V1PM0X4+RKTxbFJTSyuODzGBLeN9T6NTTLbxO1i5hWqS98M5kVhMr8fSHkW
	QxW8d3nqVc6KLghNNkwtB+k1JRl7IBJRJ0h7UjTmokcLqxuFjFa7HRtuyzV41SBG1G
	8pG9oUR5U0RY6L7QBSWNFgv75LrO6dFFDPuqqnMVG6Prrgv/Jno58CfmWyVoOWdvNX
	5lzs+fwtgOz/LFEASiaXVEar8eFLm9r39YQBvQmYaOyHlXrC1stkN+y0aFFXvGwIod
	FeK0/SmA9yqs11CtcHCe+uCdPcFUFhkwYmYe3U1FY85pTGfZENOk2fHwaPCdLoUvmo
	DCaQpm2X5FMhYR6rb2YEaBOp8ZduIL7vYmmUqi+Byb6jcleM4PzhMEGeLn6tNjwiJO
	kRIB439/HbE1EBlhHBo3CLzY=
Date: Sat, 4 May 2019 19:19:55 +0300
From: Adrian Bunk <bunk@stusta.de>
To: yocto@yoctoproject.org
Message-ID: <20190504161955.GF11633@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: git.yoctoproject.org TLS certificate expired
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
X-List-Received-Date: Sat, 04 May 2019 16:20:00 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

$ git pull
fatal: unable to access 'https://git.yoctoproject.org/git/poky/': server 
certificate verification failed. CAfile: none CRLfile: none
$


Firefox says:
git.yoctoproject.org uses an invalid security certificate. The 
certificate expired on May 4, 2019, 7:53 AM. The current time is May 4, 
2019, 7:16 PM.


cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


