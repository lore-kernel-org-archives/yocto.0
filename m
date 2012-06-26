Return-Path: <jfabernathy@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B201E0070C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 07:52:30 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so3479006vbj.35
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 07:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type; bh=AVKF+FUbrhlrOTGrBAsw8UYPZWlFSiWBrrYEmUhWKMQ=;
	b=nveSWKbbDXLkGviF9IL+E4zw48Xj5v7bARJaMHhEwGGUvvsXw9+CgKRSmtKCQ5jLXQ
	ry/At48V56UKwNIefipZ5B1Y9X9K7ixff2I4sWzlg6/Qtb1IXYcpwYuwA9+rdr4jRP0w
	GSEz58nECA0aMnek8QD/Zuo9xroJmQQrc53qbZW34a9TQ5WF+KE7TylnV3t5auc5B2mt
	5qOdExN8bQiSegUcivbCgXNmGR/EL6d6Hrk3cwdH6TgACm7kp+yCQZAak9J9Rw6TM80Z
	iLFORepQJRb63igww0CLhfJP2oJKQL+XpPCbAKhGLjRrQ8sjpu3Ymrb4ATiMnekxhzuD
	62nw==
Received: by 10.52.27.244 with SMTP id w20mr9268047vdg.67.1340722349205;
	Tue, 26 Jun 2012 07:52:29 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	s10sm55205570vdg.10.2012.06.26.07.52.28 (version=SSLv3 cipher=OTHER);
	Tue, 26 Jun 2012 07:52:28 -0700 (PDT)
Message-ID: <4FE9CCAD.7080003@gmail.com>
Date: Tue, 26 Jun 2012 10:52:29 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto Development Manual Appendix B question
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
X-List-Received-Date: Tue, 26 Jun 2012 14:52:30 -0000
Content-Type: multipart/alternative;
	boundary="------------050309030903070605010005"

--------------050309030903070605010005
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

In the example in The Developement Manual v1.2 in Appendix B Section 
B.1.7, it states that you need to put in the statement:

KSRC_linux_yocto_3_2 ?= "/home/scottrif/linux-yocto-3.2.git"

into the appropriate .bbappend file way now in the poky-extra directory 
structure.  If I look at that file, |linux-yocto_3.2.bbappend| , I seen 
a SRC_URI line, immediately after our inserted KSRC statement, that is 
commented out:

# SRC_URI = 
"git://${KSRC_linux_yocto_3_2};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"

Should that line be uncommented or is the SRC_URI already defaulted 
somewhere to use the newly defined KSRC_linux_yocto_3_2 variable?

Jim A




--------------050309030903070605010005
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    In the example in The Developement Manual v1.2 in Appendix B Section
    B.1.7, it states that you need to put in the statement:<br>
    <br>
    <pre class="literallayout">KSRC_linux_yocto_3_2 ?= "/home/scottrif/linux-yocto-3.2.git"
</pre>
    into the appropriate .bbappend file way now in the poky-extra
    directory structure.&nbsp; If I look at that file, <code
      class="filename">linux-yocto_3.2.bbappend</code> , I seen a
    SRC_URI line, immediately after our inserted KSRC statement, that is
    commented out:<br>
    <br>
    # SRC_URI =
"git://${KSRC_linux_yocto_3_2};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"<br>
    <br>
    Should that line be uncommented or is the SRC_URI already defaulted
    somewhere to use the newly defined KSRC_linux_yocto_3_2 variable?<br>
    <br>
    Jim A<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------050309030903070605010005--
