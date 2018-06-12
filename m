Return-Path: <kp.pravas@globaledgesoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BFB5E025DE; Tue, 12 Jun 2018 00:16:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [123.63.243.152 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 570 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Jun 2018 00:16:15 PDT
Received: from gesmail.globaledgesoft.com (gesmail.globaledgesoft.com
	[123.63.243.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6CCBE025DB
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 00:16:15 -0700 (PDT)
Received: from mail.globaledgesoft.com (mail.globaledgesoft.com [172.16.2.30])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by gesmail.globaledgesoft.com (Postfix) with ESMTP id A586F7C8067
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 12:31:19 +0530 (IST)
Received: from mail.globaledgesoft.com (localhost [127.0.0.1])
	by mail.globaledgesoft.com (Postfix) with ESMTPS id 261A8B805DC
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 12:38:15 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
	by mail.globaledgesoft.com (Postfix) with ESMTP id 11417B806F0
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 12:38:15 +0530 (IST)
X-Amavis-Modified: Mail body modified (using disclaimer) -
	mail.globaledgesoft.com
Received: from mail.globaledgesoft.com ([127.0.0.1])
	by localhost (mail.globaledgesoft.com [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id XY-5aGOUiOde for <yocto@yoctoproject.org>;
	Tue, 12 Jun 2018 12:38:14 +0530 (IST)
Received: from mail.globaledgesoft.com (mail.globaledgesoft.com [172.16.2.30])
	by mail.globaledgesoft.com (Postfix) with ESMTP id DC197B805DC
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 12:38:14 +0530 (IST)
Date: Tue, 12 Jun 2018 12:38:14 +0530 (IST)
From: Pravas Kumar Panda <kp.pravas@globaledgesoft.com>
To: yocto@yoctoproject.org
Message-ID: <350848357.11286503.1528787294684.JavaMail.zimbra@globaledgesoft.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.2.30]
X-Mailer: Zimbra 8.5.1_GA_3056 (ZimbraWebClient - FF45 (Linux)/8.5.1_GA_3056)
Thread-Topic: Adding a kernel module to core-image-base
Thread-Index: UPv7lzfVKp8DgIoCc/DuHpE5Smg5VQ==
X-Mailman-Approved-At: Fri, 15 Jun 2018 08:25:56 -0700
Subject: Adding a kernel module to core-image-base
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
X-List-Received-Date: Tue, 12 Jun 2018 07:16:17 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_11286502_707425547.1528787294683"

------=_Part_11286502_707425547.1528787294683
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi all, 

I want to know how to add a kernel module using my own layer and recipe in yocto. 
Can someone suggest me the step by step process how to do it. how to edit or add 
new files so that i could build my image and the module should automatically loaded 
at the time of boot.please reply me with the step by step procedure. 

Thanks in advance. 

Regards, 
Pravas Kumar Panda 

Disclaimer:- The information contained in this electronic message and any attachments to this message are intended for the exclusive use of the addressee(s) and may contain proprietary, confidential or privileged information. If you are not the intended recipient, you should not disseminate, distribute or copy this e-mail. Please notify the sender immediately and destroy all copies of this message and any attachments. The views expressed in this E-mail message (including the enclosure/(s) or attachment/(s) if any) are those of the individual sender, except where the sender expressly, and with authority, states them to be the views of GlobalEdge. Before opening any mail and attachments please check them for viruses .GlobalEdge does not accept any liability for virus infected mails.

------=_Part_11286502_707425547.1528787294683
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><body><div style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000"><div>Hi all,<br data-mce-bogus="1"></div><div><br data-mce-bogus="1"></div><div>I want to know how to add a kernel module using my own layer and recipe in yocto.<br data-mce-bogus="1"></div><div>Can someone suggest me the step by step process how to do it. how to edit or add </div><div>new files so that i could build my image and the module should automatically loaded </div><div>at the time of boot.please reply me with the step by step procedure.<br data-mce-bogus="1"></div><div><br data-mce-bogus="1"></div><div>Thanks in advance.<br data-mce-bogus="1"></div><div><br data-mce-bogus="1"></div><div>Regards,<br data-mce-bogus="1"></div><div>Pravas Kumar Panda<br data-mce-bogus="1"></div></div>
<br>
<html><body>Disclaimer:This message is intended only for the designated recipient(s). It may contain confidential or proprietary information and may be subject to other confidentiality protections. If you are not a designated recipient, you may not review, copy or distribute this message. Please notify the sender by e-mail and delete this message. GlobalEdge does not accept any liability for virus infected mails. </body></html>
<br>
</body></html>

------=_Part_11286502_707425547.1528787294683--
