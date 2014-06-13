Return-Path: <marek.andrus@wp.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D72C4E00AFD; Fri, 13 Jun 2014 08:20:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.andrus[at]wp.pl)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.77.101.10 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx3.wp.pl (mx3.wp.pl [212.77.101.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4A4CE0073D
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 08:19:57 -0700 (PDT)
Received: (wp-smtpd smtp.wp.pl 18989 invoked from network);
	13 Jun 2014 17:19:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
	t=1402672795; bh=fto/s0uQxEmc2VuJhiWjNCCYbPRV1unywUhVQrD7Duo=;
	h=From:To:Subject;
	b=ZKSSz2hBfNGUSkiPXqFXbOHBnJKKsdPLzZmGQwvWEn/bBFh+KU2jLG7SLo5Y11gWQ
	jSZQrYiGqmo6OQps2+9nInyTiy7RjNv+5rLfgHjNiX2AJDwATYdiV5oudRREqM4zDX
	p4XptoWdXkX7bJB4/1xPmTFWp04O9sEqj7EAvBoo=
Received: from unknown (HELO [62.159.77.164]) (marek.andrus@[62.159.77.164])
	(envelope-sender <marek.andrus@wp.pl>)
	by smtp.wp.pl (WP-SMTPD) with AES128-SHA encrypted SMTP
	for <yocto@yoctoproject.org>; 13 Jun 2014 17:19:55 +0200
Message-ID: <539B169A.7010903@wp.pl>
Date: Fri, 13 Jun 2014 17:19:54 +0200
From: Marek Andrus <marek.andrus@wp.pl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Icedove/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-WP-AV: skaner antywirusowy poczty Wirtualnej Polski S. A.
X-WP-SPAM: NO 0000000 [EfNE]                               
Subject: PROVIDES now always working (populate_sdk)?
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
X-List-Received-Date: Fri, 13 Jun 2014 15:20:11 -0000
Content-Type: multipart/alternative;
	boundary="------------030703080000030205020206"

--------------030703080000030205020206
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I use external toolchain and 'm trying to do populate_sdk. I get a 
strage output. First bitbake tells me, that:

DEBUG: providers for eglibc are: ['eglibc']
DEBUG: sorted runtime providers for eglibc are: 
['/home/marek/yocto/poky/meta/recipes-core/eglibc/eglibc_2.19.bb']

(it is not the only one)

Then it says:

ERROR: Multiple .bb files are due to be built which each provide eglibc 
(/home/marek/yocto/poky/meta-marek-toolchain/recipes-devtools/external-marek-toolchain/external-marek-toolchain.bb 
/home/marek/yocto/poky/meta/recipes-core/eglibc/eglibc_2.19.bb).

Of course external-marek-toolchain.bb provides eglibc (and is set as 
preffered provider). What can be the cause?

BR,
Marek

--------------030703080000030205020206
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi,<br>
    <br>
    I use external toolchain and 'm trying to do populate_sdk. I get a
    strage output. First bitbake tells me, that:<br>
    <br>
    <font face="monospace">DEBUG: providers for eglibc are: ['eglibc']<br>
      DEBUG: sorted runtime providers for eglibc are:
      ['/home/marek/yocto/poky/meta/recipes-core/eglibc/eglibc_2.19.bb']</font><br>
    <br>
    (it is not the only one)<br>
    <br>
    Then it says:<br>
    <br>
    <font face="monospace">ERROR: Multiple .bb files are due to be built
      which each provide eglibc (/home/marek/yocto/poky/meta-</font><font
      face="monospace"><font face="monospace">marek</font>-toolchain/recipes-devtools/external-</font><font
      face="monospace"><font face="monospace">marek</font>-toolchain/external-</font><font
      face="monospace"><font face="monospace">marek</font>-toolchain.bb
      /home/</font><font face="monospace"><font face="monospace">marek</font>/yocto/poky/meta/recipes-core/eglibc/eglibc_2.19.bb).</font><br>
    <br>
    Of course <font face="monospace"><font face="sans-serif">external-marek-toolchain.bb
        provides eglibc (and is set as preffered provider). What can be
        the cause?<br>
        <br>
        BR,<br>
        Marek<br>
      </font></font>
  </body>
</html>

--------------030703080000030205020206--
