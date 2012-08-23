Return-Path: <belatronix@freenet.de>
Received: from mout3.freenet.de (mout3.freenet.de [195.4.92.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E47EE0140A
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 05:35:14 -0700 (PDT)
Received: from [195.4.92.142] (helo=mjail2.freenet.de)
	by mout3.freenet.de with esmtpa (ID belatronix@freenet.de) (port 25)
	(Exim 4.76 #1) id 1T4Wcy-0003vD-8f
	for yocto@yoctoproject.org; Thu, 23 Aug 2012 14:35:12 +0200
Received: from localhost ([::1]:52002 helo=mjail2.freenet.de)
	by mjail2.freenet.de with esmtpa (ID belatronix@freenet.de) (Exim 4.76
	#1) id 1T4Wcy-0006Ae-3M
	for yocto@yoctoproject.org; Thu, 23 Aug 2012 14:35:12 +0200
Received: from [195.4.92.16] (port=46302 helo=6.mx.freenet.de)
	by mjail2.freenet.de with esmtpa (ID belatronix@freenet.de) (Exim 4.76
	#1) id 1T4Waj-0005SU-2C
	for yocto@yoctoproject.org; Thu, 23 Aug 2012 14:32:53 +0200
Received: from 77-22-19-32-dynip.superkabel.de ([77.22.19.32]:38855
	helo=[10.0.0.1])
	by 6.mx.freenet.de with esmtpsa (ID belatronix@freenet.de)
	(TLSv1:CAMELLIA256-SHA:256) (port 465) (Exim 4.76 #1)
	id 1T4Wai-00069G-RW
	for yocto@yoctoproject.org; Thu, 23 Aug 2012 14:32:53 +0200
Message-ID: <503622F1.8000608@freenet.de>
Date: Thu, 23 Aug 2012 14:32:49 +0200
From: Axel Beierlein <belatronix@freenet.de>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Buggy busybox update 1.94.4 => 1.20.2
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 Aug 2012 12:35:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Two questions from a Newbie on Yocto:

I get compiling Errors in Busybox from a new clone of the Yocto Git Repo.

I have to change the name of the .bbappend File from 1.94.4 to 1.20.2
and also the directory to get a working tree.

And in the 1.94.4.bbappend File. What means ${P} after the THISDIR?
In the Documentation i read something about ${THISDIR}/${PN} and not
${P} is this a mistake or do i understand something wrong?

Regards

Axel

