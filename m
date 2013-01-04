Return-Path: <huanmateme@163.com>
Received: from m13-24.163.com (unknown [220.181.13.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2890E006F5
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2013 22:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Subject:Content-Type:
	MIME-Version:Message-ID; bh=/uVjbiKnyaRz0rXf4Ag4ONtV9bnDqL3CjUNB
	1S00vBM=; b=XTmQ7bZpg03MSCt+Kkl4n5BmrfZ5sMelKD/CPu5vUboZow75u/gB
	VbpxSCwZTOK5VHhrH0kFZh6ONOHCIF1clOpo6oWbV69koNZrSoGGTAqrZfkjIJ2Y
	ScKgjWU/DN1uDG3K9kMTEokAYATBUzblpnR0/F8T3YtVVcARRAxLpq4=
Received: from huanmateme$163.com ( [61.148.56.138] ) by
	ajax-webmail-wmsvr24 (Coremail) ; Fri, 4 Jan 2013 14:53:14 +0800 (CST)
X-Originating-IP: [61.148.56.138]
Date: Fri, 4 Jan 2013 14:53:14 +0800 (CST)
From: Biao <huanmateme@163.com>
To: yocto <yocto@yoctoproject.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20121219(21170.5156.5150) Copyright (c) 2002-2013 www.mailtech.cn
	163com
MIME-Version: 1.0
Message-ID: <2b77c4be.fa75.13c0455c02d.Coremail.huanmateme@163.com>
X-CM-TRANSID: GMGowGD5oEJafOZQoW0fAA--.16879W
X-CM-SenderInfo: xkxd0z5dwhzvi6rwjhhfrp/xtbBiBqagE9o6u0MZwAAsD
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Where does the 'PN' is set.
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
X-List-Received-Date: Fri, 04 Jan 2013 06:53:45 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_238351_865356997.1357282394156"

------=_Part_238351_865356997.1357282394156
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit

Hi,


In meta/conf/documentation.conf
PN[doc] = "PN holds the name of the package (Package Name). It is gathered from the bitbake-file filename"


I would like to know where does the so-called 'gather' exactly happens?
For example, does it mean the bitbake core get the 'PN = u-boot' by cutting of the name of 'u-boot_2011.03.bb'?


Thanks,
Biao 

------=_Part_238351_865356997.1357282394156
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial"><div>Hi,</div><div><br></div><div>In meta/conf/documentation.conf</div>PN[doc] = "PN holds the name of the package (Package Name). It is gathered from the bitbake-file filename"<div><br></div><div>I would like to know where does the so-called 'gather' exactly happens?</div><div>For example, does it mean the bitbake core get the 'PN = u-boot' by cutting of the name of 'u-boot_2011.03.bb'?</div><div><br></div><div>Thanks,</div><div>Biao&nbsp;</div></div>

------=_Part_238351_865356997.1357282394156--
