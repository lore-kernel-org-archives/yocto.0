Return-Path: <Fahad_Usman@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 926B5E009C3; Fri, 22 Jan 2016 07:28:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 604 seconds by postgrey-1.32 at yocto-www;
	Fri, 22 Jan 2016 07:28:48 PST
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09C35E00928
	for <yocto@yoctoproject.org>; Fri, 22 Jan 2016 07:28:48 -0800 (PST)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1aMdU1-0007fD-SC from Fahad_Usman@mentor.com ;
	Fri, 22 Jan 2016 07:18:42 -0800
Received: from [137.202.156.162] (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Fri, 22 Jan 2016 15:18:40 +0000
To: <yvanderv@opensource.altera.com>, Khem Raj <raj.khem@gmail.com>,
	<yocto@yoctoproject.org>
From: "Usman, Fahad" <Fahad_Usman@mentor.com>
Message-ID: <56A24847.9030807@mentor.com>
Date: Fri, 22 Jan 2016 20:18:31 +0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
X-Originating-IP: [137.202.0.76]
Subject: Altera Cyclone V u-boot-spl with meta-altera
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
X-List-Received-Date: Fri, 22 Jan 2016 15:28:50 -0000
Content-Type: multipart/alternative;
	boundary="------------040600070103000300000709"

--------------040600070103000300000709
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi, I am using meta-altera layer (https://github.com/kraj/meta-altera) 
to build u-boot for Altera Cyclone V socfpga board. Building the 
u-boot-socfpga_2013.01.01 recipe does generate the u-boot-spl binary, 
but it cannot be directly used on the board as it has to be signed using 
Altera's tool "mkpimage" that comes with Altera's toolset (SoC EDS 
<http://rocketboards.org/foswiki/view/Documentation/AlteraSoCDevelopmentBoardYoctoGettingStarted#SoC_EDS>). 


Is there a way to produce a signed u-boot-spl image during the build, 
that can be used directly on the target without using the EDS?

Thanks,
Fahad.

--------------040600070103000300000709
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi, I am using meta-altera layer
    (<a class="moz-txt-link-freetext" href="https://github.com/kraj/meta-altera">https://github.com/kraj/meta-altera</a>) to build u-boot for Altera
    Cyclone V socfpga board. Building the u-boot-socfpga_2013.01.01
    recipe
    does generate the u-boot-spl binary, but it cannot be directly used
    on the board as it has to be signed using Altera's tool "mkpimage"
    that comes with Altera's toolset (<a
href="http://rocketboards.org/foswiki/view/Documentation/AlteraSoCDevelopmentBoardYoctoGettingStarted#SoC_EDS">SoC

      EDS</a>). <br>
    <br>
    Is there a way to produce a signed u-boot-spl image during the
    build, that can be used directly on the target without using the
    EDS?<br>
    <br>
    Thanks,<br>
    Fahad.<br>
  </body>
</html>

--------------040600070103000300000709--
