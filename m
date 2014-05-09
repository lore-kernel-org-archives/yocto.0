Return-Path: <fabio@bertux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89746E00B6C; Fri,  9 May 2014 06:41:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [72.5.230.103 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from sender1.zohomail.com (unknown [72.5.230.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EBBCE00B68
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 06:41:31 -0700 (PDT)
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1399642891128108.39469149608306;
	Fri, 9 May 2014 06:41:31 -0700 (PDT)
Date: Fri, 09 May 2014 10:41:31 -0300
From: Fabio Berton <fabio@bertux.com>
To: <yocto@yoctoproject.org>
Message-ID: <145e13456be.3950133930570618240.8865225803247576593@bertux.com>
MIME-Version: 1.0
X-Priority: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Subject: Mesa do_compile fail
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
X-List-Received-Date: Fri, 09 May 2014 13:41:38 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_148399_1059293736.1399642891075"

------=_Part_148399_1059293736.1399642891075
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


Hi!
I'm trying to make a qt4-x11 image and the mesa_9.1.6.bb failed on compile. The log is http://pastebin.com/0Zznjsux
I'm using host build Fedora 20 and dora branch from poky. I tried to use the mesa version 9.1.3 and the same error occurs.

Fabio Berton.


------=_Part_148399_1059293736.1399642891075
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head><meta content="text/html;charset=UTF-8" http-equiv="Content-Type"></head><body ><div style='font-size:10pt;font-family:Verdana,Arial,Helvetica,sans-serif;'><br>Hi!<br>I'm trying to make a qt4-x11 image and the mesa_9.1.6.bb failed on compile. The log is http://pastebin.com/0Zznjsux<br>I'm using host build Fedora 20 and dora branch from poky. I tried to use the mesa version 9.1.3 and the same error occurs.<br><br>Fabio Berton.<br></div></body></html>

------=_Part_148399_1059293736.1399642891075--
