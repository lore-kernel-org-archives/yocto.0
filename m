Return-Path: <magiczna_dupa@tuta.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECE21E00D89; Mon,  8 Feb 2016 05:49:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_50,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.3.6.162 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4960]
X-Greylist: delayed 583 seconds by postgrey-1.32 at yocto-www;
	Mon, 08 Feb 2016 05:49:39 PST
Received: from w1.tutanota.de (w1.tutanota.de [81.3.6.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEFBDE00D86
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 05:49:39 -0800 (PST)
Received: from localhost (unknown [127.0.0.1])
	by w1.tutanota.de (Postfix) with ESMTP id B7388FA8292
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 13:39:44 +0000 (UTC)
Received: from w1.tutanota.de ([127.0.0.1])
	by localhost (w1.tutanota.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S_oB08nG7gYX for <yocto@yoctoproject.org>;
	Mon,  8 Feb 2016 13:39:42 +0000 (UTC)
Received: from w1.tutanota.de (unknown [127.0.0.1])
	by w1.tutanota.de (Postfix) with ESMTP id B93DFFA8340
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 13:37:00 +0000 (UTC)
Date: Mon, 8 Feb 2016 13:37:00 +0000 (UTC)
From: <magiczna_dupa@tuta.io>
To: <yocto@yoctoproject.org>
Message-ID: <KA05MxT--3-0@tuta.io>
MIME-Version: 1.0
Subject: [Build dependencies]
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
X-List-Received-Date: Mon, 08 Feb 2016 13:49:42 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_8156_1497531570.1454938620753"

------=_Part_8156_1497531570.1454938620753
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello,

I am trying to use some things from one recipe in another the things what I 
did:

Defined default package with files the next step I added in another recipe 
dependencies field.
So as I check defaul .rpms was generated with proper contain. But when I look 
to my child recipe there is no files nor in root system path. I dont know 
what to do please help


------=_Part_8156_1497531570.1454938620753
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
Hello,<br /><br />I am trying to use some things from one recipe in another the things what I did:<br /><br />Defined default package with files the next step I added in another recipe dependencies field.<br />So as I check defaul .rpms was generated with proper contain. But when I look to my child recipe there is no files nor in root system path. I dont know what to do please help<br /><br />  </body>
</html>

------=_Part_8156_1497531570.1454938620753--
