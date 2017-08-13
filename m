Return-Path: <brendan.ta@jacques.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56DF2E00CF4; Sun, 13 Aug 2017 15:57:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.70.89.155 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 414 seconds by postgrey-1.32 at yocto-www;
	Sun, 13 Aug 2017 15:57:27 PDT
Received: from cal1-mh745b.smtproutes.com (cal1-mh745b.smtproutes.com
	[208.70.89.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8ED8E00B8D
	for <yocto@yoctoproject.org>; Sun, 13 Aug 2017 15:57:27 -0700 (PDT)
X-Katharion-ID: 1502664619.72993.cal1-mh745
Received: from jacquessvr.jacques.com.au ([110.143.100.131]) by 
	cal1-mh745.smtproutes.com [(192.69.16.67)] with ESMTP via TCP 
	(TLSv1/TLS_RSA_WITH_AES_128_CBC_SHA); 13 Aug 2017 22:50:19 +0000
Received: from [192.168.100.58] (192.168.100.58) by mail.jacques.com.au
	(192.168.100.155) with Microsoft SMTP Server (TLS) id 8.2.255.0;
	Mon, 14 Aug 2017 08:48:11 +1000
To: <yocto@yoctoproject.org>
From: Brendan Ta <brendan.ta@jacques.com.au>
Message-ID: <9ad6c122-a6a4-be78-d767-b6299de00020@jacques.com.au>
Date: Mon, 14 Aug 2017 08:50:19 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
Subject: Possible to rename file when using KERNEL_DEVICETREE_APPEND?
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
X-List-Received-Date: Sun, 13 Aug 2017 22:57:28 -0000
Content-Type: multipart/alternative;
	boundary="------------7C628D3A183065734CB20654"
Content-Language: en-AU

--------------7C628D3A183065734CB20654
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit


As the title states, I am including my modified device tree using 
KERNEL_DEVICETREE_APPEND= and I was wondering if there was the 
possibility where I could rename the file here?

I understand that IMAGE_BOOT_FILES has the option of:
IMAGE_BOOT_FILES = "oldname;newname" which uses the OpenEmbedded Image 
Creator; wic.

Is it possible to easily rename the included device tree file using 
KERNEL_DEVICETREE_APPEND= ?

Thanks


--------------7C628D3A183065734CB20654
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-signature">
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
      As the title states, I am including my modified device tree using
      KERNEL_DEVICETREE_APPEND= and I was wondering if there was the
      possibility where I could rename the file here?  <br>
      <br>
      I understand that IMAGE_BOOT_FILES has the option of:<br>
      IMAGE_BOOT_FILES = "oldname;newname" which uses the OpenEmbedded
      Image Creator; wic.<br>
      <br>
      Is it possible to easily rename the included device tree file
      using KERNEL_DEVICETREE_APPEND= ?<br>
      <br>
      Thanks<br>
      <br>
      <font face="Calibri"><span
          style="font-size:9.0pt;color:#1F497D;mso-fareast-language:EN-AU"></span></font>
    </div>
  </body>
</html>

--------------7C628D3A183065734CB20654--
