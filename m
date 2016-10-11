Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8797BE00B7A; Tue, 11 Oct 2016 13:30:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [178.22.154.198 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1357 seconds by postgrey-1.32 at yocto-www;
	Tue, 11 Oct 2016 13:30:16 PDT
Received: from smtp.laposte.net (smtpoutz298.laposte.net [178.22.154.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A464E00A1A
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 13:30:16 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout010 (Postfix) with ESMTP id 5B09B45B279
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 22:07:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1476216457; bh=CwlHRMBFAoMeOESz1v5agDCzZkBfO/ajGaVi5DZURJo=;
	h=To:From:Subject:Date;
	b=c1JXErIZxR51aOZzzvHNppZVwOk/5Dj+KSSlTUi873AhR32pnzy8l+C4Xpgjm93hm
	U/897xdWVdnwzbjd+Hkqm4V/lLkcL/NojEG2VrVY+yN4g8+7bhex8tC7TKzVzUKy2Y
	IVHk715W5iKCoKfG5CoO/r5P2jvbkkgxsuKpUlbIbuukhTc20JAv2ZDk9Ng8did8Is
	QropuGL04GfgSC/Gr6p3olQ4qbuxqc7X0Kgp5mAVKaM+o+t4MY0YG1hz13uo47fo1h
	+MrVf9HWX+kEtHb8V5rCaU3mfXsNFcQWmnqQYMWpsINURVkXopyb0FBhJw+JX1z/jr
	9wDkONlDrQHdQ==
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout010 (Postfix) with ESMTP id 4B55145B2C4
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 22:07:37 +0200 (CEST)
Received: from lpn-prd-vrin004 (lpn-prd-vrin004.laposte [10.128.63.5])
	by lpn-prd-vrout010 (Postfix) with ESMTP id 45E4E45B279
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 22:07:37 +0200 (CEST)
Received: from lpn-prd-vrin004 (localhost [127.0.0.1])
	by lpn-prd-vrin004 (Postfix) with ESMTP id 361B971027D
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 22:07:37 +0200 (CEST)
Received: from [192.168.1.45] (ARennes-654-1-178-136.w92-135.abo.wanadoo.fr
	[92.135.1.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by lpn-prd-vrin004 (Postfix) with ESMTPSA id 0B845710266
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 22:07:36 +0200 (CEST)
To: Yocto list discussion <yocto@yoctoproject.org>
From: idealsim <idealsim@laposte.net>
Message-ID: <a7473d31-3363-37fa-32af-cd69cc950fbb@laposte.net>
Date: Tue, 11 Oct 2016 22:07:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
X-VR-SrcIP: 92.135.1.136
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeelvddrfeelgddugeekucetufdoteggodetrfdotffvucfrrhho
X-VR-Cause-2: fhhilhgvmecunfetrffquffvgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhht
X-VR-Cause-3: shculddquddttddmnecujfgurhepvffhuffkffgfgggtsegrtderredtfeejnecuhfhrohhmpehiuggv
X-VR-Cause-4: rghlshhimhcuoehiuggvrghlshhimheslhgrphhoshhtvgdrnhgvtheqnecuffhomhgrihhnpeguvghj
X-VR-Cause-5: rghvuhdqfhhonhhtshdrohhrghdpghhithhhuhgsrdgtohhmnecukfhppeelvddrudefhedruddrudef
X-VR-Cause-6: ieenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopegludelvddrudeikedruddrgeeh
X-VR-Cause-7: ngdpihhnvghtpeelvddrudefhedruddrudefiedpmhgrihhlfhhrohhmpehiuggvrghlshhimheslhgr
X-VR-Cause-8: phhoshhtvgdrnhgvthdprhgtphhtthhopeihohgtthhoseihohgtthhophhrohhjvggtthdrohhrgh
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
Subject: add dejavu-fonts to image
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
X-List-Received-Date: Tue, 11 Oct 2016 20:30:20 -0000
Content-Type: multipart/alternative;
	boundary="------------24732C2BD708974A9610C349"

--------------24732C2BD708974A9610C349
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi, i have build an image for an imx6 card (secoA62) based on this good 
layer https://github.com/graugans/meta-udoo (krogoth branch). All work 
fine but since the last version of qt 5.7, qtbase-font is not provided 
and now i have this error when i deploy an app :

/QFontDatabase: Cannot find font directory /usr/lib/fonts.//
//Note that Qt no longer ships fonts. Deploy some (from 
//http://dejavu-fonts.org//for example) or switch to fontconfig./

Apparently we need to provide fonts with yocto now. Can you advise me 
how i can add ttf-dejavu to the image. I have tried to add it to my 
local.conf like this :

IMAGE_INSTALL_append = "\

             ttf-dejavu \

"

but i have an error during the build of the image rootfs !

Can you help please ?

Mickaël LE STEPHAN


--------------24732C2BD708974A9610C349
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Hi, i have build an image for an imx6 card (secoA62) based on
      this good layer <a class="moz-txt-link-freetext" href="https://github.com/graugans/meta-udoo">https://github.com/graugans/meta-udoo</a> (krogoth
      branch). All work fine but since the last version of qt 5.7,
      qtbase-font is not provided and now i have this error when i
      deploy an app :</p>
    <p><i>QFontDatabase: Cannot find font directory /usr/lib/fonts.</i><i><br>
      </i><i>
        Note that Qt no longer ships fonts. Deploy some (from </i><i><a
          href="http://dejavu-fonts.org">http://dejavu-fonts.org</a></i><i>
        for example) or switch to fontconfig.</i></p>
    <p>Apparently we need to provide fonts with yocto now. Can you
      advise me how i can add ttf-dejavu to the image. I have tried to
      add it to my local.conf like this :</p>
    <p>IMAGE_INSTALL_append = "\</p>
    <p>            ttf-dejavu \</p>
    <p>"</p>
    <p>but i have an error during the build of the image rootfs !</p>
    <p>Can you help please ?</p>
    <p>Mickaël LE STEPHAN<br>
    </p>
  </body>
</html>

--------------24732C2BD708974A9610C349--
