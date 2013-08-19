Return-Path: <chgans@googlemail.com>
Received: from mail-pb0-f41.google.com (mail-pb0-f41.google.com
	[209.85.160.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B892E014E4
	for <yocto@yoctoproject.org>; Sun, 18 Aug 2013 19:34:48 -0700 (PDT)
Received: by mail-pb0-f41.google.com with SMTP id rp2so4428187pbb.28
	for <yocto@yoctoproject.org>; Sun, 18 Aug 2013 19:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=FKzAv8sytxdvxGpo/TZpo3IXFhbP5cN3ozTWunDR6NM=;
	b=X6trJW3ZmQ1NE63s/gYOui8n6Whxb9OeKVe5aW8B0IC25kCFmNgaJ4FctsIjrdP+l0
	YOQrOlVmbVNjd9zq4l544oXU6FDKDJBneMV6Z2x5JaL0EXFKO+ZCPzjYqfpJbyONHlaT
	8tjUUGwARijcc/zKh+MIs2b7TrCxBlh2iX9QKx0Ia+KRO6x+e+DD00gUPPER+uWH4kJe
	otmyN+gWMhNZyAOQG3ULyphG1AhObaaLDGEq+tkHQjYB9THJMSI7hyuCACFvWy1f4u1a
	RfvjzeRZ/0o+92JUDEuneMBNC3+4R3gDXxs1q3XqBCAUxwfMc/tObU+JhJ5sTgtxFT+4
	zfhA==
X-Received: by 10.68.223.34 with SMTP id qr2mr10819795pbc.75.1376879687840;
	Sun, 18 Aug 2013 19:34:47 -0700 (PDT)
Received: from [0.0.0.0] ([210.48.94.225])
	by mx.google.com with ESMTPSA id oj6sm12356242pab.9.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 18 Aug 2013 19:34:46 -0700 (PDT)
Sender: Chris Gagneraud <chgans@googlemail.com>
Message-ID: <5211843D.5060805@gna.org>
Date: Mon, 19 Aug 2013 14:34:37 +1200
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: GCC SVN repo too slow?
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
X-List-Received-Date: Mon, 19 Aug 2013 02:34:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I'm having problems with the GCC SVN repo being so slow to checkout, 
that svn failed (and so my build too).
I first suspected the proxy we have here, but i tried a checkout from an 
outside machine (but still in New Zealand) and it seems the problem 
comes from gcc.gnu.org.

I am using the arago layer, which requires 
svn://gcc.gnu.org/svn/gcc/branches;module=gcc-4_5-branch;protocol=http 
for gcc-crosssdk-intermediate.

By slow, I really mean slow: 1 to 2 files are checkout per second!?!

Has anyone encountered the same kind of problems?

Regards,
Chris

