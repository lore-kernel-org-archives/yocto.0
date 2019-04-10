Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5DECE00D0F; Wed, 10 Apr 2019 02:48:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.158.131 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Wed, 10 Apr 2019 02:48:49 PDT
Received: from smtpcmd04131.aruba.it (smtpcmd04131.aruba.it [62.149.158.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C7EEE00C1E
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2019 02:48:49 -0700 (PDT)
Received: from [10.0.3.121] ([78.6.3.122])
	by smtpcmd04.ad.aruba.it with bizsmtp
	id yZni1z00f2dwwGE01ZniBb; Wed, 10 Apr 2019 11:47:43 +0200
To: yocto@yoctoproject.org
References: <015AB11D45F2C442929CB2765DAE738634DD053D@PGSMSX110.gar.corp.intel.com>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <72b7a5a1-3297-9011-67e8-f2a5a943f086@faresoftware.it>
Date: Wed, 10 Apr 2019 11:47:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634DD053D@PGSMSX110.gar.corp.intel.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1554889663; bh=4GAg1BZUXGNT2xUlAdeSrOakNsgEhSIb5eyyfpUNDU0=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=fZxtyKeFIUXRLlVRl1BztzkkNBR0K6uIOuoSTiiLE+FqWYPcJDllCWJC8nPPhx2ct
	z6LKtb8k5R86o//od2cqQhjc5YyQnb/5nbLr31AT5FKhnQRl51rd0en+Ap1FT/mLid
	TQr7h4l8L2DP+lOhiQoBLkiLkkDl7r2BiRHeSAWUe+Pe195uArooiSeIclVqgVJyiU
	rWGQzBd4gGWlwYLaxSW8+K694UmuAJOa4n3+mUnheyP94QPRcIA6cHiFa0R65AEr6D
	fFxa8OAjtZbzXOcdOPg4SeZOUq8ouojzESj7ivPd9D13lF5cj524TDpbgq62y6nBPG
	6cIBoApDctQGA==
Subject: Changing IMAGE_NAME [yocto krogoth]
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
X-List-Received-Date: Wed, 10 Apr 2019 09:48:51 -0000
Content-Type: multipart/alternative;
	boundary="------------87F043DDA9C7686BA08A5EFD"
Content-Language: it

--------------87F043DDA9C7686BA08A5EFD
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Hi all.

I need to change the default IMAGE_NAME of my image recipe.

I make my image recipe as mysystem-image_1.0.bb and I'd like to produce
and image (tar) with the name

mysystem-image-1.0-<datetime>.tar


So I setup

IMAGE_NAME := "{IMAGE_BASENAME}-${PV}-${DATETIME}"


I made some compilation of mysystem with the default IMAGE_NAME.

Than I update the value of IMAGE_NAME.


Now when I rebuild the image bitbke tell me

ERROR: When reparsing mysystem-image_1.0.do_roots, the basehash value
change from .... to ....

If i restore the IMAGE_NAME to the default value this message disappear


How can I change the IMAGE_NAME as I need and avoi this message?


Best regards,

  MZ


--------------87F043DDA9C7686BA08A5EFD
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi all.</p>
    <p>I need to change the default IMAGE_NAME of my image recipe.</p>
    <p>I make my image recipe as mysystem-image_1.0.bb and I'd like to
      produce and image (tar) with the name</p>
    <p>mysystem-image-1.0-&lt;datetime&gt;.tar</p>
    <p><br>
    </p>
    <p>So I setup</p>
    <p>IMAGE_NAME := "{IMAGE_BASENAME}-${PV}-${DATETIME}"</p>
    <p><br>
    </p>
    <p>I made some compilation of mysystem with the default IMAGE_NAME.</p>
    <p>Than I update the value of IMAGE_NAME.</p>
    <p><br>
    </p>
    <p>Now when I rebuild the image bitbke tell me</p>
    <p><font color="#3366ff">ERROR: When reparsing
        mysystem-image_1.0.do_roots, the basehash value change from ....
        to ....</font></p>
    <p>If i restore the IMAGE_NAME to the default value this message
      disappear</p>
    <p><br>
    </p>
    <p>How can I change the IMAGE_NAME as I need and avoi this message?</p>
    <p><br>
    </p>
    <p>Best regards,</p>
    <p>  MZ<br>
    </p>
  </body>
</html>

--------------87F043DDA9C7686BA08A5EFD--
