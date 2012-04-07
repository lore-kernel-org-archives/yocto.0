Return-Path: <caterwaul@163.com>
Received: from m13-63.163.com (m13-63.163.com [220.181.13.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C57B0E006C7
	for <yocto@yoctoproject.org>; Sat,  7 Apr 2012 10:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Message-ID:Subject:
	MIME-Version:Content-Type; bh=t9IHTaa2zjQ3+5Sb7w9QOo1W3q1Wms6xio
	1b0r2ICZY=; b=dVNBmZ8X1TS1Z+dAPnNXnTqONZgvOi+X6xBN4irgua/l/W+qZ7
	MG/wAGrPtxgkxC7gcTzJwoEVWGh+fBfNJvZ/0wulbY35NbN3YnFBtI+mJPqxDsdl
	h/IAWB0PLIz5J6i7sUh25vgXXtm7fpOAi2SgqTwy823wMs7cE9KBI+O+A=
Received: from caterwaul ( [124.193.192.2] ) by ajax-webmail-wmsvr63
	(Coremail) ; Sun, 8 Apr 2012 01:08:52 +0800 (CST)
Date: Sun, 8 Apr 2012 01:08:52 +0800 (CST)
From: caterwaul <caterwaul@163.com>
To: yocto@yoctoproject.org
Message-ID: <9a297b0.eb5a.1368dc7a3a7.Coremail.caterwaul@163.com>
MIME-Version: 1.0
X-Originating-IP: [124.193.192.2]
X-CM-HeaderCharset: GBK
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20120307(17626.4462.4455) Copyright (c) 2002-2012 www.mailtech.cn
	163com
X-CM-CTRLDATA: f3/lUmZvb3Rlcl9odG09MTAwNTo4MQ==
X-CM-TRANSID: P8GowECZOkGldIBP8v5+AA--.3032W
X-CM-SenderInfo: pfdwv2hzdxzqqrwthudrp/1tbiWB2JJE9ozo0rLwAAsI
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Where does this object "d" come from?
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
X-List-Received-Date: Sat, 07 Apr 2012 17:08:56 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_166797_1411912886.1333818532775"

------=_Part_166797_1411912886.1333818532775
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit

Hi,


I'm just start to investigate how bitbake works and need your help about a question. Thank you in advance.


The object "d" in the pasted paragraph is passed down through the following Python scripts. But where does the object "d" come from? and where can I find the its definition?


in the file poky-edison-6.0.1/meta/classes/base.bbclass
......
addtask fetch
do_fetch[dirs] = "${DL_DIR}"
python base_do_fetch() {


src_uri = (bb.data.getVar('SRC_URI', d, True) or "").split()
if len(src_uri) == 0:
return


......
}
......

------=_Part_166797_1411912886.1333818532775
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial"><div>Hi,</div><div><br></div><div>I'm just start to investigate how bitbake works and need your help about a question. Thank you in advance.</div><div><br></div><div>The object "d" in the pasted paragraph is passed down through the following Python scripts. But where does the object "d" come from? and where can I find the its definition?</div><div><br></div><div>in the file poky-edison-6.0.1/meta/classes/base.bbclass</div><div>......</div><div>addtask fetch</div><div>do_fetch[dirs] = "${DL_DIR}"</div><div>python base_do_fetch() {</div><div><br></div><div><span class="Apple-tab-span" style="white-space:pre">	</span>src_uri = (bb.data.getVar('SRC_URI', d, True) or "").split()</div><div><span class="Apple-tab-span" style="white-space:pre">	</span>if len(src_uri) == 0:</div><div><span class="Apple-tab-span" style="white-space:pre">		</span>return</div><div><br></div><div>......
</div><div>}</div><div>......
</div></div><br><br><span title="neteasefooter"><span id="netease_mail_footer"></span></span>

------=_Part_166797_1411912886.1333818532775--
