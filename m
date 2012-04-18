Return-Path: <caterwaul@163.com>
Received: from m13-50.163.com (m13-50.163.com [220.181.13.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A7BDE01404
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 04:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Message-ID:Subject:
	MIME-Version:Content-Type; bh=+RePIED5VlaR+c2ubZRfBE47QRvrCuBjkA
	cLI57xsq4=; b=Rk4ZwImNBr511axZZcErR6LjIo4ErGrNVgtRAr/6q4QuCxudAr
	058ArVWYbzGJGZG208lAqCgXKk4nQsujUxq8whxXBQrZm+xym621M+FLLBCsRbu9
	e/b6ojEEk0Jsa/JGAabZ1JQOn/fE9fdJvPfbnMzJsyTRPujGhPmGENmZQ=
Received: from caterwaul ( [124.127.130.250] ) by ajax-webmail-wmsvr50
	(Coremail) ; Wed, 18 Apr 2012 19:29:20 +0800 (CST)
Date: Wed, 18 Apr 2012 19:29:20 +0800 (CST)
From: caterwaul <caterwaul@163.com>
To: yocto <yocto@yoctoproject.org>
Message-ID: <24d96cc9.1a1d6.136c536bdf4.Coremail.caterwaul@163.com>
MIME-Version: 1.0
X-Originating-IP: [124.127.130.250]
X-CM-HeaderCharset: GBK
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20120307(17626.4462.4455) Copyright (c) 2002-2012 www.mailtech.cn
	163com
X-CM-CTRLDATA: Fp5+GmZvb3Rlcl9odG09MTYwODo4MQ==
X-CM-TRANSID: MsGowGD5oUORpY5Poh15AA--.5825W
X-CM-SenderInfo: pfdwv2hzdxzqqrwthudrp/1tbiKAyUJE9oyzdAXQAAsS
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: problem about package and subpackage
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
X-List-Received-Date: Wed, 18 Apr 2012 11:29:25 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_282456_71836591.1334748560883"

------=_Part_282456_71836591.1334748560883
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit

Hi,


I wanted to add dhcp(4.2.0) into my image. And I added "dhcp" into IMAGE_INSTALL of my image's bb file. After I runing bitbake, the dhcp package is normally fetched and compiled and so on. But during do_rootfs bitbake reported as follow:
Processing dhcp...
Unable to find package dhcp (dhcp)!
ERROR: Function 'do_rootfs' failed


I note that in /meta/recipes-connectivity/dhcp/dhcp4.inc the dhcp package is split into 4 subpackages(PACKAGES += "dhcp-server dhcp-client dhcp-relay dhcp-omshell"). Now If I remove "dhcp" from IMAGE_INSTALL and add these 4 subpackages' name into IMAGE_INSTALL and run bitbake AGAIN, they can be normally added into my final image.


I've tried to modify last part of dhcp4.inc as follow: But bitbake still reported "Unable to find package dhcp"
FILES_${PN} = ""
FILES_${PN} += "${sbindir}/dhcpd ${sysconfdir}/init.d/dhcp-server ${sysconfdir}/default/dhcp-server ${sysconfdir}/dhcp/dhcpd.conf"
FILES_${PN} += "${sbindir}/dhcrelay ${sysconfdir}/init.d/dhcp-relay ${sysconfdir}/default/dhcp-relay"
FILES_${PN} += "${base_sbindir}/dhclient ${base_sbindir}/dhclient-script ${sysconfdir}/dhcp/dhclient.conf"
FILES_${PN} += "${bindir}/omshell"
RDEPENDS_${PN} = "bash"


So How should I config bitbake to get my image with dhcp by running bitbake ONLY ONCE?


Thank you.

------=_Part_282456_71836591.1334748560883
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial">Hi,<div><br></div><div>I wanted to add dhcp(4.2.0) into my image. And I added "dhcp" into IMAGE_INSTALL of my image's bb file. After I runing bitbake, the dhcp package is normally fetched and compiled and so on. But during do_rootfs bitbake reported as follow:</div><div><div>Processing dhcp...</div><div>Unable to find package dhcp (dhcp)!</div></div><div>ERROR: Function 'do_rootfs' failed</div><div><br></div><div>I note that in /meta/recipes-connectivity/dhcp/dhcp4.inc the dhcp package is split into 4 subpackages(PACKAGES += "dhcp-server dhcp-client dhcp-relay dhcp-omshell"). Now If I remove "dhcp" from IMAGE_INSTALL and add these 4 subpackages' name into IMAGE_INSTALL and run bitbake AGAIN, they can be normally added into my final image.</div><div><br></div><div>I've tried to modify last part of dhcp4.inc as follow: But bitbake still reported "Unable to find package dhcp"</div><div><div>FILES_${PN} = ""</div><div>FILES_${PN} += "${sbindir}/dhcpd ${sysconfdir}/init.d/dhcp-server ${sysconfdir}/default/dhcp-server ${sysconfdir}/dhcp/dhcpd.conf"</div><div>FILES_${PN} += "${sbindir}/dhcrelay ${sysconfdir}/init.d/dhcp-relay ${sysconfdir}/default/dhcp-relay"</div><div>FILES_${PN} += "${base_sbindir}/dhclient ${base_sbindir}/dhclient-script ${sysconfdir}/dhcp/dhclient.conf"</div><div>FILES_${PN} += "${bindir}/omshell"</div><div>RDEPENDS_${PN} = "bash"</div></div><div><br></div><div>So How should I config bitbake to get my image with dhcp by running bitbake ONLY ONCE?</div><div><br></div><div>Thank you.</div></div><br><br><span title="neteasefooter"><span id="netease_mail_footer"></span></span>

------=_Part_282456_71836591.1334748560883--
