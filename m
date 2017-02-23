Return-Path: <mickael@tansorier.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AE36E00A4F; Thu, 23 Feb 2017 01:13:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.216.209.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0066]
X-Greylist: delayed 333 seconds by postgrey-1.32 at yocto-www;
	Thu, 23 Feb 2017 01:13:31 PST
Received: from idris.smile.fr (idris.smile.fr [91.216.209.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93252E0052B
	for <yocto@yoctoproject.org>; Thu, 23 Feb 2017 01:13:31 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by idris.smile.fr (Postfix) with ESMTP id 78B7A1EE20B4
	for <yocto@yoctoproject.org>; Thu, 23 Feb 2017 10:13:30 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at smile.fr
Received: from idris.smile.fr ([127.0.0.1])
	by localhost (bluemind-mta.prod.vitry.intranet [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id mGaoiPPyNiPP for <yocto@yoctoproject.org>;
	Thu, 23 Feb 2017 10:13:30 +0100 (CET)
Received: from [192.168.0.127] (bgn92-6-88-179-202-174.fbx.proxad.net
	[88.179.202.174])
	by idris.smile.fr (Postfix) with ESMTPSA id 4B7141EE20B1
	for <yocto@yoctoproject.org>; Thu, 23 Feb 2017 10:13:30 +0100 (CET)
To: yocto <yocto@yoctoproject.org>
From: =?UTF-8?Q?Micka=c3=abl_Tansorier?= <mickael@tansorier.fr>
Message-ID: <ece33007-8274-ef53-915b-513a3ab8a89a@tansorier.fr>
Date: Thu, 23 Feb 2017 10:13:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Firefox/45.0 Thunderbird/45.7.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 24 Feb 2017 09:11:46 -0800
Subject: Patch for krogoth version
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
X-List-Received-Date: Thu, 23 Feb 2017 09:13:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

I propose a patch for krogoth branch.

It seems that miss a space a the end of line SRC_URI_prepend. This make 
error when two sources are concatenated.

Thank your.

Regards.

-- 
Tansorier Mickaël


