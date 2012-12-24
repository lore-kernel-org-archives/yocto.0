Return-Path: <huanmateme@163.com>
Received: from m13-120.163.com (unknown [220.181.13.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 230EAE0148A
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2012 23:38:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Subject:Content-Type:
	MIME-Version:Message-ID; bh=7bGUu1l9GgC7yi+gCPWUlrQ6leDxl/BegUh1
	Efx59ps=; b=eRZN1z8HTD9m2K2eR1jxyYaFER5FHd65phAQ3H0tgBzyof4Ohmu+
	6qVaUicj8vFfIEyjyHVtWeolgB95XOVjM/3OKX+8a9wfL1PKQh2lvC0SJovFTV7B
	n5xdwAOALhhKkwtcBRSGQh2YQM0QkhgQoCePUZHSCk25tXZEAVo0rFA=
Received: from huanmateme$163.com ( [61.148.56.138] ) by
	ajax-webmail-wmsvr120 (Coremail) ; Mon, 24 Dec 2012 15:37:34 +0800 (CST)
X-Originating-IP: [61.148.56.138]
Date: Mon, 24 Dec 2012 15:37:34 +0800 (CST)
From: Biao <huanmateme@163.com>
To: yocto <yocto@yoctoproject.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20121210(21001.5125.5051) Copyright (c) 2002-2012 www.mailtech.cn
	163com
MIME-Version: 1.0
Message-ID: <4e4f660f.1086b.13bcbd86279.Coremail.huanmateme@163.com>
X-CM-TRANSID: eMGowEB5OEE+BthQeZ8WAA--.18W
X-CM-SenderInfo: xkxd0z5dwhzvi6rwjhhfrp/xtbBSRKPgE9oteKfagABsQ
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Fails to launch the hob
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
X-List-Received-Date: Mon, 24 Dec 2012 07:38:05 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_249943_435971681.1356334654073"

------=_Part_249943_435971681.1356334654073
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit

Hi all, 


I can not launch hob on my ubun-10.04, it seems saying "no PyGobject" whereas python-object has already been installed. Can anyone kindly give a help?


$ hob
FATAL: Gtk+, PyGtk and PyGobject are required to use Hob,
You have Gtk+ 2.20.1 and PyGtk 2.17.0.


$ sudo apt-get install python-gobject
Reading package lists... Done
Building dependency tree       
Reading state information... Done
python-gobject is already the newest version.


$ uname -a
Linux zb-d 2.6.32-33-generic #72-Ubuntu SMP Fri Jul 29 21:07:13 UTC 2011 x86_64 GNU/Linux


Thanks,
Biao

------=_Part_249943_435971681.1356334654073
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial"><div><div>Hi all,&nbsp;</div><div><br></div><div>I can not launch hob on my ubun-10.04, it seems saying "no PyGobject" whereas python-object has already been installed. Can anyone kindly give a help?</div><div><br></div><div>$ hob</div><div>FATAL: Gtk+, PyGtk and PyGobject are required to use Hob,</div><div>You have Gtk+ 2.20.1 and PyGtk 2.17.0.</div></div><div><br></div><div><div>$ sudo apt-get install python-gobject</div><div>Reading package lists... Done</div><div>Building dependency tree &nbsp; &nbsp; &nbsp;&nbsp;</div><div>Reading state information... Done</div><div>python-gobject is already the newest version.</div></div><div><br></div><div><div>$ uname -a</div><div>Linux zb-d 2.6.32-33-generic #72-Ubuntu SMP Fri Jul 29 21:07:13 UTC 2011 x86_64 GNU/Linux</div></div><div><br></div><div>Thanks,</div><div>Biao</div></div>

------=_Part_249943_435971681.1356334654073--
