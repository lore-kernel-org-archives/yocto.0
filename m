Return-Path: <caterwaul@163.com>
Received: from m13-109.163.com (m13-109.163.com [220.181.13.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D622FE0070C
	for <yocto@yoctoproject.org>; Sat, 30 Jun 2012 05:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Subject:Content-Type:
	MIME-Version:Message-ID; bh=YU29nAVl+FhudrQq0hjMuUVz3/2XoRF3Vytk
	HOaMCkk=; b=C5TB+0f+x2d0p2Ty7x0l0Q7ILN8l4EDzx8aiER+UlHRt31EX6sD3
	ZFU1CU0nxKEd+BnysEJKzUqbi0gDCZ+nWcggIVgPU1wqlHSoc27vAnVbaPtrZutX
	IbbTDPFysBn3sRi4O+EY3vHZcquzKuwY9QszJyBy8zJXPe9nlVcO9Vo=
Received: from caterwaul$163.com ( [121.18.126.248] ) by
	ajax-webmail-wmsvr109 (Coremail) ; Sat, 30 Jun 2012 20:45:40 +0800 (CST)
X-Originating-IP: [121.18.126.248]
Date: Sat, 30 Jun 2012 20:45:40 +0800 (CST)
From: caterwaul <caterwaul@163.com>
To: yocto <yocto@yoctoproject.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20120507(18390.4657.4663) Copyright (c) 2002-2012 www.mailtech.cn
	163com
X-CM-CTRLDATA: 9UL19mZvb3Rlcl9odG09MTUxNzo4MQ==
MIME-Version: 1.0
Message-ID: <6402ba57.14975.1383d6cdc9b.Coremail.caterwaul@163.com>
X-CM-TRANSID: bcGowEB5SEb19O5P7hFdAA--.9240W
X-CM-SenderInfo: pfdwv2hzdxzqqrwthudrp/1tbiWAXdJE9o0-THOgABsY
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Kconfig depend problem
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
X-List-Received-Date: Sat, 30 Jun 2012 12:45:44 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_224483_1036610549.1341060340890"

------=_Part_224483_1036610549.1341060340890
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit

Hi Friends,


I failed to merge "MTD_TESTS=m" into my final .config file. I noticed MTD_TESTS depend <choice> as following pasted. But I didn't find any choice definition in that Kconfig. What does that <choice> mean? Did I miss something?


IN menuconfig menu:
Symbol: MTD_TESTS [=m]
Type  : tristate
    Prompt: MTD tests support
  Defined at drivers/mtd/Kconfig:28
      Depends on: MTD [=y] && m && <choice>
  Location:
      -> Device Drivers
         -> Memory Technology Device (MTD) support (MTD [=y])


IN drivers/mtd/Kconfig:
config MTD_TESTS
        tristate "MTD tests support"
        depends on m
        help
          This option includes various MTD tests into compilation. The tests
          should normally be compiled as kernel modules. The modules perform
          various checks and verifications when loaded.


------=_Part_224483_1036610549.1341060340890
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial"><div style="line-height: 1.7; ">Hi Friends,<div><br></div><div>I failed to merge "MTD_TESTS=m" into my final .config file. I noticed MTD_TESTS depend &lt;choice&gt; as following pasted. But I didn't find any choice definition in that Kconfig. What does that &lt;choice&gt; mean? Did I miss something?</div><div><br></div><div><b>IN menuconfig menu:</b></div><div><div>Symbol: MTD_TESTS [=m]</div><div>Type &nbsp;: tristate</div><div>&nbsp; &nbsp; Prompt: MTD tests support</div><div>&nbsp; Defined at drivers/mtd/Kconfig:28</div><div>&nbsp; &nbsp; &nbsp; Depends on: MTD [=y] &amp;&amp; m &amp;&amp; &lt;choice&gt;</div><div>&nbsp; Location:</div><div>&nbsp; &nbsp; &nbsp; -&gt; Device Drivers</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-&gt; Memory Technology Device (MTD) support (MTD [=y])</div></div><div><br></div><div><b>IN drivers/mtd/Kconfig:</b></div><div><div>config MTD_TESTS</div><div>&nbsp; &nbsp; &nbsp; &nbsp; tristate "MTD tests support"</div><div>&nbsp; &nbsp; &nbsp; &nbsp; depends on m</div><div>&nbsp; &nbsp; &nbsp; &nbsp; help</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; This option includes various MTD tests into compilation. The tests</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; should normally be compiled as kernel modules. The modules perform</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; various checks and verifications when loaded.</div></div></div><br style="font-family: arial, verdana, sans-serif; "></div><br><br><span title="neteasefooter"><span id="netease_mail_footer"></span></span>

------=_Part_224483_1036610549.1341060340890--
