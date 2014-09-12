Return-Path: <arunkr.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F326E00799; Fri, 12 Sep 2014 12:42:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (arunkr.linux[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5459E006DB
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 12:42:23 -0700 (PDT)
Received: by mail-pd0-f174.google.com with SMTP id v10so1873476pde.5
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 12:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=2B8yTC9nAsc1xuMGrxFXHQTiMk/uZhImNGFJhYRgSqY=;
	b=pagsZgOs5o9xNaV7Q/+YYTsfyI6PrmlEcs5KX15YhyVgOQOCXfgbGhbawSX7vDCASH
	dy6SWtjEpw+3hhUqzcuP6nrEPs+KMSj4P3Cvj1S4Gmj6EzOTkbeAcbx+4Z7xPuZRaMX0
	hnFrmG1IbFjiQyoF8423/bnWY7VzjeYW41nHK9VV1j8bwEDHOmLdeSQq/NBHJsTf6ayL
	ncjirqzvuwafYO0PEbO0uDBNiR3lHStQEVXwznpUHWTH6gSmZ1AlcyejLkKoA6MsuAWS
	scEXvy6sRR2PUItcMxvzTNFwcNyaSscAYjbLkIgwpd/UX6H9m5s1zCG1w6QDa/wi47vn
	JcIg==
X-Received: by 10.68.89.36 with SMTP id bl4mr15609691pbb.17.1410550942438;
	Fri, 12 Sep 2014 12:42:22 -0700 (PDT)
Received: from [192.168.0.103] ([175.100.138.33])
	by mx.google.com with ESMTPSA id pd7sm4814715pac.33.2014.09.12.12.42.19
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 12 Sep 2014 12:42:21 -0700 (PDT)
Message-ID: <54134C92.3080208@gmail.com>
Date: Sat, 13 Sep 2014 01:12:10 +0530
From: Arun Kumar <arunkr.linux@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Yocto Project Mailing List <yocto@yoctoproject.org>
Subject: Basic build fails
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
X-List-Received-Date: Fri, 12 Sep 2014 19:42:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi all,

    I am new to the yocto project and was following the steps given in the quick start guide. I made a slight change as given in the superuser section.

I used the "fetchall" option to get all the packages first and then started the build, now when i use this command

"bitbake -k core-image-sato" i get the following error

/------------------------------------------------------------------------------------
ERROR: Task 595 (/home/arun/Documents/Dev/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.9.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2729 tasks of which 1784 didn't need to be rerun and 1 failed.
No currently running tasks (2729 of 5634)

Summary: 1 task failed:
  /home/arun/Documents/Dev/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.9.bb, do_compile
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
/------------------------------------------------------------------------------------

any idea or hint where i might be going wrong?


