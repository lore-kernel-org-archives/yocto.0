Return-Path: <surya.n@easyarm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3818BE00D35; Mon, 28 Dec 2015 22:16:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from linux8.hostguy.com (ns16.hostguy.com [144.76.114.219])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5B8CE0097F
	for <yocto@yoctoproject.org>; Mon, 28 Dec 2015 22:16:27 -0800 (PST)
Received: from [106.51.36.173] (port=57806 helo=[192.168.1.40])
	by linux8.hostguy.com with esmtpsa (TLSv1:DHE-RSA-CAMELLIA256-SHA:256)
	(Exim 4.85) (envelope-from <surya.n@easyarm.com>) id 1aDnZv-002tbs-3A
	for yocto@yoctoproject.org; Tue, 29 Dec 2015 11:46:24 +0530
Message-ID: <5682252D.2090603@easyarm.com>
Date: Tue, 29 Dec 2015 06:16:13 +0000
From: Surya <surya.n@easyarm.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - linux8.hostguy.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - easyarm.com
X-Get-Message-Sender-Via: linux8.hostguy.com: authenticated_id:
	surya.n@easyarm.com
Subject: gstreamer problem in yocto
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
X-List-Received-Date: Tue, 29 Dec 2015 06:16:32 -0000
Content-Type: multipart/alternative;
	boundary="------------030602050403000000050509"

--------------030602050403000000050509
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello ,

I am trying to build Qt5.3.2 in yocto(1.7,dizzy) .Everything builded 
properly,but i am getting only "libqtmedia_audioengine.so" in 
/usr/lib/qt5/plugins/mediaservices .But i need to generate
  "libgstmediaplayer.so" , "libgstmediacapture.so" 
,"libgstaudiodecoder.so"  libraries in 
/usr/lib/qt5/plugins/mediaservices.  How can i get these libraries.



Thanks

Surya



--------------030602050403000000050509
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello ,<br>
    <br>
    I am trying to build Qt5.3.2 in yocto(1.7,dizzy) .Everything builded
    properly,but i am getting only
    <meta http-equiv="content-type" content="text/html;
      charset=ISO-8859-1">
    <span style="color: rgb(38, 40, 42); font-family: 'Open Sans',
      sans-serif; font-size: 16px; font-style: normal; font-variant:
      normal; font-weight: normal; letter-spacing: normal; line-height:
      26px; orphans: auto; text-align: left; text-indent: 0px;
      text-transform: none; white-space: normal; widows: auto;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255); display: inline !important;
      float: none;">"libqtmedia_audioengine.so"</span> in
    /usr/lib/qt5/plugins/mediaservices .But i need to generate <br>
    &nbsp;"libgstmediaplayer.so" , "libgstmediacapture.so"
    ,"libgstaudiodecoder.so"&nbsp; libraries in
    /usr/lib/qt5/plugins/mediaservices.&nbsp; How can i get these libraries.<br>
    <br>
    <br>
    <br>
    Thanks<br>
    <br>
    Surya<br>
    <br>
    <br>
  </body>
</html>

--------------030602050403000000050509--
