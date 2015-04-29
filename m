Return-Path: <urnen81@yahoo.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D67FE009AD; Wed, 29 Apr 2015 06:32:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (urnen81[at]yahoo.es)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.235 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (oliver <urnen81[at]yahoo.es> )
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm13-vm5.bullet.mail.ne1.yahoo.com
	(nm13-vm5.bullet.mail.ne1.yahoo.com [98.138.91.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24C2FE009A5
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 06:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.es; s=s2048;
	t=1430314319; bh=JyxIp6J61uvqQWJrSJWzOVHx0/btgDIIex4quxl7wdY=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=V9drXPABoCNDor8+FQTc/RUhzDdw6Rzmf01TNj/bq3Qt4VOqlhWDnFLNg4+2VkVhDcZHlKn+mikLum2xUHJcQ56T7fmacG9TorpuWinURSpnSon2kns4DzIiERz+mIlCTFaswNR5THcObaBp7nv9lUCAmsJjG0YbNDYnNHmZ39btBOstQfNAhSCFh3aqhHkNIYYmA56NgAuXyOrc0M4a+3ylDlq7k5U50+G1y7tUfGr+300qp1cNAy+FZzLt9YP5/tQAFPoiI3IXAwJEoqtfOc2L5elY8Kv/fVSuYH1iM3q7l1yvwyQnqX2T7mUodARtef1TVj0i4HBxyBSQvnQqXQ==
Received: from [98.138.100.113] by nm13.bullet.mail.ne1.yahoo.com with NNFMP;
	29 Apr 2015 13:31:59 -0000
Received: from [98.138.89.245] by tm104.bullet.mail.ne1.yahoo.com with NNFMP;
	29 Apr 2015 13:31:59 -0000
Received: from [127.0.0.1] by omp1059.mail.ne1.yahoo.com with NNFMP;
	29 Apr 2015 13:31:59 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 280155.94626.bm@omp1059.mail.ne1.yahoo.com
X-YMail-OSG: IVKfDzIVM1mTZUAHcagzP1mqIoEPrA7gPNDCQ4aCGTitqrUx81l91C_UI7WGMLj
	FMdMiyASTxcZL3W2KpJJeiYiNyjo4ZhA1.IpEqpdt279E7fgLXnr6tZADXTJgtWpbfTHzAaUQrQV
	IWGXfcTWHtoL0YYgiDPwXFz.SdrZ4ZKmd4rnoTtz7ZJTZcTdrJ9T_yHLVuO6ENBu4kh0qn8uXVV5
	SA1SWt1Fbm66cU4yBbjTmh1qH0EpuZHHxFVtU2Slnm.d58SDmAcWRDBjl5aMh1PM3O1fxWMc6Qvd
	azPLFwtLKrnAwDKFs27aEGe8ReNsnO58UMvKSQ6Q0DAgBB3fNiZb43d08UUSU46GtsKU6aDxO5TY
	Fy2KHw4NuIqf95I8mf4jg..kCRf9b8hO9kYrXfXfQJ96Ddql8XxqNRWxmIeeAH9w_dFbZ_ZThBgc
	rW4sjNDADAW7IxIGrBgwDWg7QWouAreu7tjD5cxyN2xA5vJ_3ZxxkZAMuczRbtgATiMeaR8uAJPR
	us.k-
Received: by 217.12.9.13; Wed, 29 Apr 2015 13:31:57 +0000 
Date: Wed, 29 Apr 2015 13:30:13 +0000 (UTC)
From: Oliver <urnen81@yahoo.es>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <17420222.681949.1430314213894.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: [meta-raspberrypi] meta-ivi & meta-raspberrypi
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Oliver <urnen81@yahoo.es>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 29 Apr 2015 13:32:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello

I have been working building together the meta-raspberrypi & the meta-ivi layers.
I have been stuck with configuration/compilation of weston(from mata-ivi layer):

1)

You can check the intial thread http://lists.genivi.org/pipermail/genivi-meta-ivi/2015-April/000508.html


egl provided by userlad is not detected as the *.pc files are not deployed
Someone has faced similar problems:

   http://git.buildroot.net/buildroot/commit/?id=2282b93f4248a32de84805456efa352f69b28624

2)
With this I am able to reach the do_compile stage but there are errors related to the undefined type

PFNEGLQUERYWAYLANDBUFFERWL
Hacked this one forcing the inclusion of <weston-egl-ext.h> :-S


3)
At linking time the next trouble is:

/home/oliver/raspberry/build-rpi-ivi/tmp/sysroots/i686-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.1/ld: cannot find -lwayland-egl

IIRC this lib is provided by mesa-gl, but in my build, mesa is configured(--disable-egl (is this ok being provided by userlad?)) which might be the reason why libwayland-egl is not getting deployed in the image?

Any correction to my statements or hint to go further would be appreciated

Best Regards & thanks for your time

Oliver

