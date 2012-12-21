Return-Path: <huanmateme@163.com>
Received: from m13-38.163.com (unknown [220.181.13.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A741E002AB
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2012 21:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Subject:Content-Type:
	MIME-Version:Message-ID; bh=VjcWOCmKpKzuFCyTB3tCtSjM6kTvNEFaQ09r
	mhtfBdU=; b=nd0ZdfIOokJLRTJ0vtoJD+TsF22/s0OY3JQn+q9Lk4ad+KF1S70+
	2f5qZmk74uzWpBTOoDNL4jZOcffJX1qoRjlozAGO6sRol56tQvzqtIZWbDgsq7o2
	lHRPY62eoHnxNc7pL7sMh4rAO6h8tMNQA/FuWzu8i7ev4EKeltJMmgM=
Received: from huanmateme$163.com ( [61.148.56.138] ) by
	ajax-webmail-wmsvr38 (Coremail) ; Fri, 21 Dec 2012 13:50:24 +0800 (CST)
X-Originating-IP: [61.148.56.138]
Date: Fri, 21 Dec 2012 13:50:24 +0800 (CST)
From: Biao <huanmateme@163.com>
To: yocto <yocto@yoctoproject.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20121210(21001.5125.5051) Copyright (c) 2002-2012 www.mailtech.cn
	163com
MIME-Version: 1.0
Message-ID: <3530b094.6a62.13bbc0332d0.Coremail.huanmateme@163.com>
X-CM-TRANSID: JsGowGDZf0Gg+NNQ0o0SAA--.33626W
X-CM-SenderInfo: xkxd0z5dwhzvi6rwjhhfrp/xtbBiBOMgE9o6j6rYQABsv
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Where does the python's output to?
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
X-List-Received-Date: Fri, 21 Dec 2012 05:50:54 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_100881_245604726.1356069024463"

------=_Part_100881_245604726.1356069024463
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit

Hi All,


I have a task in a dum.bb file, after running the task with -vDDD, i can not find where the "I am the python output" goes, it is not in the terminal, not in the log file. Where does the sys.__stdout__.write output to?


/*----code snap begins---*/
python do_dm2 () {
        import sys
        sys.__stdout__.write("I am the python output\n")
}
addtask dm2
/*----code snap ends---*/


Best Regards,
Biao

------=_Part_100881_245604726.1356069024463
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial"><div>Hi All,</div><div><br></div><div>I have a task in a dum.bb file, after running the task with -vDDD, i can not find where the "I am the python output" goes, it is not in the terminal, not in the log file. Where does the sys.__stdout__.write output to?</div><div><br></div><div>/*----code snap begins---*/</div><div>python do_dm2 () {</div><div>&nbsp; &nbsp; &nbsp; &nbsp; import sys</div><div>&nbsp; &nbsp; &nbsp; &nbsp; sys.__stdout__.write("I am the python output\n")</div><div>}</div><div>addtask dm2</div><div>/*----code snap ends---*/</div><div><br></div><div>Best Regards,</div><div>Biao</div></div>

------=_Part_100881_245604726.1356069024463--
