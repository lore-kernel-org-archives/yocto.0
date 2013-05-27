Return-Path: <lizhijian@cn.fujitsu.com>
Received: from song.cn.fujitsu.com (unknown [222.73.24.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2A61E013A0
	for <yocto@yoctoproject.org>; Sun, 26 May 2013 22:39:58 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.87,748,1363104000"; 
   d="scan'208";a="7376182"
Received: from unknown (HELO tang.cn.fujitsu.com) ([10.167.250.3])
	by song.cn.fujitsu.com with ESMTP; 27 May 2013 13:36:59 +0800
Received: from fnstmail02.fnst.cn.fujitsu.com (tang.cn.fujitsu.com [127.0.0.1])
	by tang.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id r4R5dnI4031837
	for <yocto@yoctoproject.org>; Mon, 27 May 2013 13:39:49 +0800
Received: from [127.0.0.1] ([10.167.226.197])
	by fnstmail02.fnst.cn.fujitsu.com (Lotus Domino Release 8.5.3)
	with ESMTP id 2013052713381795-1550866 ;
	Mon, 27 May 2013 13:38:17 +0800 
Message-ID: <51A2F1DC.6010307@cn.fujitsu.com>
Date: Mon, 27 May 2013 13:40:44 +0800
From: Li Zhijian <lizhijian@cn.fujitsu.com>
Organization: fnst-ulinux
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:17.0) Gecko/20130509 Thunderbird/17.0.6
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-MIMETrack: Itemize by SMTP Server on mailserver/fnst(Release 8.5.3|September
	15, 2011) at 2013/05/27 13:38:18,
	Serialize by Router on mailserver/fnst(Release 8.5.3|September 15,
	2011) at 2013/05/27 13:38:23,
	Serialize complete at 2013/05/27 13:38:23
Subject: How to modify SRC_URI[md5sum] if there are mutil remote files
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
X-List-Received-Date: Mon, 27 May 2013 05:39:59 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=Shift_JIS

Hi,

I modified as follows ,but it don't work.

--- a/meta-oe/recipes-support/ntp/ntp.inc
+++ b/meta-oe/recipes-support/ntp/ntp.inc
@@ -20,6 +20,9 @@ SRC_URI = "http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-4.2/ntp-${PV}.tar.g
file://ntpdate.default \
file://ntp.keys \
"
+SRC_URI[md5sum] = "00df80a84ec9528fcfb09498075525bc"
+SRC_URI[sha256sum] = "d6ab8371f9d31e594eb6922823d5ccd03dcc4e9d84b0e23ea25ac1405432f91c"
+SRC_URI += "http://jaist.dl.sourceforge.net/project/ictom/ntpstat-0.2.tar.gz "
+SRC_URI[md5sum] += "516847d99a772305cab711339998f9ea"
+SRC_URI[sha256sum] += "486fdfceb38590a9ff52ab8de1cc1ec4fc696f2e94da992e9ccf30157c32f01e"


Any help or ideas?


-- 
Best regards.
Li Zhijian 



