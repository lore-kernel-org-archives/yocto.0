Return-Path: <huanmateme@163.com>
Received: from m13-38.163.com (unknown [220.181.13.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5833E00294
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2012 23:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Subject:Content-Type:
	MIME-Version:Message-ID; bh=zwDJ522vRWmwOBLKHQPhC8gN5xJsiPnqfNua
	kJlp+tw=; b=Y0PsNYwM+eHiICOmtRVPFz8FG8iG3S043J9kghMmkftTgk+8zG4s
	MqV0yaI9Cw67r7Bm52JC7PtWJT8GAtsTeI685QGpdZ2wsJyrrJLAnfPUuU572FPZ
	weV9njxH5JO1P3QKQYjM4zJE5HvYoTk8qbjXVtGg47UmAZD+liOc81E=
Received: from huanmateme$163.com ( [61.148.56.138] ) by
	ajax-webmail-wmsvr38 (Coremail) ; Thu, 20 Dec 2012 15:28:31 +0800 (CST)
X-Originating-IP: [61.148.56.138]
Date: Thu, 20 Dec 2012 15:28:31 +0800 (CST)
From: Biao <huanmateme@163.com>
To: yocto <yocto@yoctoproject.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20121210(21001.5125.5051) Copyright (c) 2002-2012 www.mailtech.cn
	163com
MIME-Version: 1.0
Message-ID: <4eb75b0d.18633.13bb736a9dc.Coremail.huanmateme@163.com>
X-CM-TRANSID: JsGowGAZwEEfvtJQlGoRAA--.11143W
X-CM-SenderInfo: xkxd0z5dwhzvi6rwjhhfrp/xtbBSQmLgE9ota6RTAAAsq
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: An added task is not run by bitbake, why is that ?
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
X-List-Received-Date: Thu, 20 Dec 2012 07:29:04 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_368895_25647912.1355988511196"

------=_Part_368895_25647912.1355988511196
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit

Hi All,


 An added task is not run by bitbake, why is that ?
The meta-test layer setup is ok, you can forget this.


After i issue bitbake dummy, i found that it runs succeed with the tasks in base.bbclass, but my dummy1 is not run, why is that?


meta-test/dummy/dummy.0.0.bb
<pre>
DESCRIPTION = "A simply dummy package"


do_dummy0 () {
        bbnote "Doing Dummy0."
}


do_dummy1 () {
        bbnote "Doing Dummy1."
}


do_dummy2 () {
        bbnote "Doing Dummy2."
}


addtask dummy1 before do_dummy2 after do_dummy0
</pre>


Thanks,
Biao

------=_Part_368895_25647912.1355988511196
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial"><div>Hi All,</div><div><br></div>&nbsp;An added task is not run by bitbake, why is that ?<div>The meta-test layer setup is ok, you can forget this.</div><div><br></div><div>After i issue bitbake dummy, i found that it runs succeed with the tasks in base.bbclass, but my dummy1 is not run, why is that?</div><div><br></div><div>meta-test/dummy/dummy.0.0.bb</div><div>&lt;pre&gt;</div><div><div>DESCRIPTION = "A simply dummy package"</div><div><br></div><div>do_dummy0 () {</div><div>&nbsp; &nbsp; &nbsp; &nbsp; bbnote "Doing Dummy0."</div><div>}</div><div><br></div><div>do_dummy1 () {</div><div>&nbsp; &nbsp; &nbsp; &nbsp; bbnote "Doing Dummy1."</div><div>}</div><div><br></div><div>do_dummy2 () {</div><div>&nbsp; &nbsp; &nbsp; &nbsp; bbnote "Doing Dummy2."</div><div>}</div><div><br></div><div>addtask dummy1 before do_dummy2 after do_dummy0</div><div>&lt;/pre&gt;</div></div><div><br></div><div>Thanks,</div><div>Biao</div></div>

------=_Part_368895_25647912.1355988511196--
