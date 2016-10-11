Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23ACCE00B7A; Tue, 11 Oct 2016 12:59:41 -0700 (PDT)
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
	*      [194.117.213.101 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp.laposte.net (smtpoutz26.laposte.net [194.117.213.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 685D3E00A61
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 12:59:39 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout014 (Postfix) with ESMTP id 99D8E121323
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 21:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1476215977; bh=iO/zH6KAzfzA+kZ+uiu83K8KrNvJrBAZuITd707nZ7A=;
	h=To:From:Subject:Date;
	b=fSYeOkBM/MyH1tHfheabfO1WoqpbQCnu5cz7JLX1H0WI5ptJ0pD5Qt4scY8S2huXn
	kbIpX2TQ0pDTmxiM5o2g6FZFIChn0S41VqTOkOSoF8VLfVhFSisiM/0+/kyCq+lyuD
	EbrczvK1c+rh+SH3qXaa841+O69J8kGAUu1xgiysnSuL2F/xiv2mJOvcs1x3LbJ89S
	FqKDfeVT3FtQ9afmqfu3CwYa8QGjxd/tAb43Mdm7DdfLt6sYrOhVFZzMRgBLmzALiS
	xvDkLCUd/T0/vVvJFM4Wx8+F7zZnY8oDcPKEuket8g3VgZuw3V/trlKV/X7rF4R/X7
	BUyQ/+UsZQ1HA==
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout014 (Postfix) with ESMTP id 8D1EF12137F
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 21:59:37 +0200 (CEST)
Received: from lpn-prd-vrin001 (lpn-prd-vrin001.prosodie [10.128.63.2])
	by lpn-prd-vrout014 (Postfix) with ESMTP id 88D93121323
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 21:59:37 +0200 (CEST)
Received: from lpn-prd-vrin001 (localhost [127.0.0.1])
	by lpn-prd-vrin001 (Postfix) with ESMTP id 75026366D1E
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 21:59:37 +0200 (CEST)
Received: from [192.168.1.45] (ARennes-654-1-178-136.w92-135.abo.wanadoo.fr
	[92.135.1.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by lpn-prd-vrin001 (Postfix) with ESMTPSA id 4390D366D19
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 21:59:37 +0200 (CEST)
To: Yocto list discussion <yocto@yoctoproject.org>
From: idealsim <idealsim@laposte.net>
Message-ID: <392440e3-86b4-090a-47bd-7edda9f190d9@laposte.net>
Date: Tue, 11 Oct 2016 21:59:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
X-VR-SrcIP: 92.135.1.136
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeelvddrfeelgddugeeiucetufdoteggodetrfdotffvucfrrhho
X-VR-Cause-2: fhhilhgvmecunfetrffquffvgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhht
X-VR-Cause-3: shculddquddttddmnecujfgurhepvffhuffkffgfgggtsegrtderredtfeejnecuhfhrohhmpehiuggv
X-VR-Cause-4: rghlshhimhcuoehiuggvrghlshhimheslhgrphhoshhtvgdrnhgvtheqnecuffhomhgrihhnpehgihht
X-VR-Cause-5: hhhusgdrtghomhenucfkphepledvrddufeehrddurddufeeinecurfgrrhgrmhepmhhouggvpehsmhht
X-VR-Cause-6: phhouhhtpdhhvghloheplgduledvrdduieekrddurdeghegnpdhinhgvthepledvrddufeehrddurddu
X-VR-Cause-7: feeipdhmrghilhhfrhhomhepihguvggrlhhsihhmsehlrghpohhsthgvrdhnvghtpdhrtghpthhtohep
X-VR-Cause-8: hihotghtoheshihotghtohhprhhojhgvtghtrdhorhhg
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
Subject: problem with developer sdk
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
X-List-Received-Date: Tue, 11 Oct 2016 19:59:41 -0000
Content-Type: multipart/alternative;
	boundary="------------C45D2F1260B1C38A8117A64F"

--------------C45D2F1260B1C38A8117A64F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi, i have rebuild an image of yocto krogoth with qt 5.6.2 (lasted 
release). The problem is now i have a problem with developer sdk. The 
problem is when i use it with a host machine (after install the script 
and configure qt creator), i obtain this error when i want to deploy an 
app :

/|/usr/bin/ld: cannot find -lQt5Widgets
|/

/|/usr/bin/ld: cannot find -lQt5Gui
|/

/|/usr/bin/ld: cannot find -lQt5SerialPort
|/

/|/usr/bin/ld: cannot find -lQt5Core
|/

/|/usr/bin/ld: cannot find -lGLESv2
|/

/|collect2: error: ld returned 1 exit status make: *** [terminal] Error 1|/

That is strange is that when i use an old sdk (qt5.6.1), it works !

That i see on qtcreator/tools/options/qtversions and details about the 
kit (see this post for more details : 
https://github.com/graugans/meta-udoo/issues/20) is that mkspec for 
qt5.6.2 is different than for the qt5.6.1 kit :

qt5.6.2 : mkspec = linux-g++

qt5.6.1: mkspec=linux-oe-g++

If someone can help, it would be very useful !

regards,

--------------C45D2F1260B1C38A8117A64F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Hi, i have rebuild an image of yocto krogoth with qt 5.6.2
      (lasted release). The problem is now i have a problem with
      developer sdk. The problem is when i use it with a host machine
      (after install the script and configure qt creator), i obtain this
      error when i want to deploy an app :</p>
    <p><i><code>/usr/bin/ld: cannot find -lQt5Widgets <br>
        </code></i></p>
    <p><i><code>/usr/bin/ld: cannot find -lQt5Gui <br>
        </code></i></p>
    <p><i><code>/usr/bin/ld: cannot find -lQt5SerialPort <br>
        </code></i></p>
    <p><i><code>/usr/bin/ld: cannot find -lQt5Core <br>
        </code></i></p>
    <p><i><code>/usr/bin/ld: cannot find -lGLESv2 <br>
        </code></i></p>
    <p><i><code>collect2: error: ld returned 1 exit status make: ***
          [terminal] Error 1</code></i></p>
    <p>That is strange is that when i use an old sdk (qt5.6.1), it works
      !</p>
    <p>That i see on qtcreator/tools/options/qtversions and details
      about the kit (see this post for more details : <a
        class="moz-txt-link-freetext"
        href="https://github.com/graugans/meta-udoo/issues/20">https://github.com/graugans/meta-udoo/issues/20</a>)
      is that mkspec for qt5.6.2 is different than for the qt5.6.1 kit :</p>
    <p>qt5.6.2 : mkspec = linux-g++</p>
    <p>qt5.6.1: mkspec=linux-oe-g++</p>
    <p>If someone can help, it would be very useful !</p>
    regards,
  </body>
</html>

--------------C45D2F1260B1C38A8117A64F--
