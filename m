Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16A50E00777; Wed, 11 Mar 2015 01:47:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86A74E00754
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 01:47:37 -0700 (PDT)
Received: by igkb16 with SMTP id b16so37797042igk.1
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 01:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=+VFEYuCLxiUeNLR8qSiD2cRoxZjA+tfEAQQ/KxDfzuA=;
	b=JzmkvI+EcFSpCn+UPGCgx7U1UziZhgFdc88N7l7CKK/3AzU/tLjIx3fFH8tQ9L95rF
	24fcksOGs7VKMxBeFqyeQeMWuegtKuij7vjO2QpUioQTtroAhUTwCUkjGWesFKltLvg4
	PqTuOD4MEjDrH4CvNIQ4GIY2HSBmWJfTRwe8M9Xsm3Esoow3I/N5w5jo4C4A5321V/wN
	aZwiA1imfZAOJnG4whUOnz/nhOqdNEcpOLFgMwXjlQEiOEWftNt84KoYDZs13c5RwO/n
	vQnRPYczQfngOMpvNWBSeC9FBppvNxmgqECPLNTATAW0N3Hfmx172+rqvvM5xthFyhOb
	34qw==
MIME-Version: 1.0
X-Received: by 10.107.6.212 with SMTP id f81mr57865435ioi.37.1426063657408;
	Wed, 11 Mar 2015 01:47:37 -0700 (PDT)
Received: by 10.64.39.16 with HTTP; Wed, 11 Mar 2015 01:47:37 -0700 (PDT)
Date: Wed, 11 Mar 2015 16:47:37 +0800
Message-ID: <CACjDgAN7MoZyR8JY=Y8SFGBFCU7w4ogNimJOJFaoy+2Yx9JRbQ@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Set Default Kernel Version Q
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
X-List-Received-Date: Wed, 11 Mar 2015 08:47:44 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I have set the PREFERRED_VERSION_linux-yocto = "3.17%"  in the

~/porky/build/conf/local.conf but it does not seem to be working.
Where can I set so that the default kernel version is used (currently
is compiling with kernel 3.14 with dizzy).   Thanks.

Regards,
Albert

