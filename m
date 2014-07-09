Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 487D8E00744; Wed,  9 Jul 2014 04:51:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0045]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f51.google.com (mail-qg0-f51.google.com
	[209.85.192.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBA0CE00547
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 04:51:47 -0700 (PDT)
Received: by mail-qg0-f51.google.com with SMTP id z60so6240748qgd.24
	for <yocto@yoctoproject.org>; Wed, 09 Jul 2014 04:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=14ICHMYX1Z8IWdoKRFjIlfkVpPkP1fIcG5RuoYvGuU4=;
	b=NRE2usxl0POkkHzcnQDxD4SG3GgeSsrCuGUPCVUgBhS1M5SI8JEHvQmclKD6X/IDAD
	9GM5kPTNBFUV2kicNPFxn6FdZboTzNJVt4DcbSTWGQxe/5sLxuWefqmsOIfW+9vxdNbI
	T6hm0CkjDUCYhGjkrztJAYuBwV9hT9X2hQLvWWadiY+CUwVyqSydErEMZ8vfQe3kdn4p
	S6Mm2WRh6/oy9UaEUXJ2EuLJ+JrrQynFZJPLH3ncmzHqheFPi1Wl7rpzuV64uQvMG1a2
	+fTpDD11mGi+ekqgCbuxiiHgiAzJXZAslYzkSoYiU6beH8emXEl+Eob3uoHR30UoLhFa
	OLzg==
MIME-Version: 1.0
X-Received: by 10.140.105.163 with SMTP id c32mr65313125qgf.85.1404906706757; 
	Wed, 09 Jul 2014 04:51:46 -0700 (PDT)
Received: by 10.224.37.133 with HTTP; Wed, 9 Jul 2014 04:51:46 -0700 (PDT)
Date: Wed, 9 Jul 2014 17:21:46 +0530
Message-ID: <CAP3RZojDwAcEeaH7DJ_u8QieDSJh93rbLPP9_Hw7TwQ=OWzmwg@mail.gmail.com>
From: jags gediya <jags.gediya@gmail.com>
To: yocto@yoctoproject.org
Subject: delete .git and .repo to check in svn
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
X-List-Received-Date: Wed, 09 Jul 2014 11:51:50 -0000
Content-Type: text/plain; charset=UTF-8

I want to check in yocto sdk on svn. so i am planning to delete all
.git and .repo directory from it. Will it create any problem in new
build after check out from svn?

