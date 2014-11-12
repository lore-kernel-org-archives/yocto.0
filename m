Return-Path: <andreas2025@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A493E008E3; Wed, 12 Nov 2014 04:03:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andreas2025[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78548E008CA
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 04:02:59 -0800 (PST)
Received: by mail-wg0-f53.google.com with SMTP id b13so13955757wgh.40
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 04:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=8SttmN55h986/2oGA8RJ8GY/3WqcuVLksZQZ03aKXR4=;
	b=IysXfXeRI3MdwOaaIgI2QdllzWFsAO5bdar7X45+HQeiBgTPhDL1RY1GfHE+B6hP9a
	KhRDumtWIHxGwpqGB/J+GrWrhRUT21h/MN8bCzfNbVIJelGuEJm3dd+m2R67rZn4FPy9
	oiyW8UQalPcX2sVHVv2Qq8p6jyfpXgRsENVt1vju9gwsJOve0Cz9Pg/cIvSfiN0yqN4q
	z15z20crnl+cJNzsyr4PZ62tibjjVem/eslzNaLvpCdpCAZTIpx1Qcbkj8+7W1Ey1NFY
	ww81a/qebt6Rgy9+fIk2V1IBGz6ZZ4HXcUeuLbu0rieMNt5/df8BLIW5A/NbLy+0RPzy
	fAag==
MIME-Version: 1.0
X-Received: by 10.194.95.100 with SMTP id dj4mr21377695wjb.48.1415793778031;
	Wed, 12 Nov 2014 04:02:58 -0800 (PST)
Received: by 10.216.203.7 with HTTP; Wed, 12 Nov 2014 04:02:58 -0800 (PST)
Date: Wed, 12 Nov 2014 12:02:58 +0000
Message-ID: <CAAVaN8zpgtbJOet0bmYiHJKFNL9_O4UaL6K-cMUP=xVykY=pCg@mail.gmail.com>
From: Andy Ng <andreas2025@gmail.com>
To: yocto@yoctoproject.org
Subject: Removing old git revisions from the build
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
X-List-Received-Date: Wed, 12 Nov 2014 12:03:03 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I am using Dylan and my kernel recipe has AUTOREV.
Everything works fine and any new kernel changes are checked out and
a new kernel is built. However, I have noticed that the old builds are
not deleted and after a while started having space problems.

Is there any way to have the old git revisions deleted automatically
from the "tmp" area?

Best regards
Andy

