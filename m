Return-Path: <info@denisgottardello.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C683E00B8E; Tue,  8 May 2018 13:40:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.158.130 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Tue, 08 May 2018 13:40:04 PDT
Received: from smtpweb130.aruba.it (smtpweb130.aruba.it [62.149.158.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4903FE0084D
	for <yocto@yoctoproject.org>; Tue,  8 May 2018 13:40:04 -0700 (PDT)
Received: from tomcat.localnet ([95.234.242.232])
	by smtpcmd03.ad.aruba.it with bizsmtp
	id jwf01x00651ZgWP01wf0Fo; Tue, 08 May 2018 22:39:00 +0200
From: Denis <info@denisgottardello.it>
To: yocto@yoctoproject.org
Date: Tue, 08 May 2018 22:38:59 +0200
Message-ID: <1831367.lNj4jCPAXG@tomcat>
User-Agent: KMail/5.2.3 (Linux/4.9.0-6-amd64; KDE/5.28.0; x86_64; ; )
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1525811940; bh=CoILj5HiY/1Wk4TfmFNI54BOhcYyVKLQwExu50RYpr8=;
	h=From:To:Subject:Date:MIME-Version:Content-Type;
	b=hS7KlYS/qk/N64Kxdn61ePNjdKj16FYddCyclVpWaxpC2PDsacWUfM/49OFts615e
	ajOdZME+kkt72DOnDvS8MXNgqOVTrxklRpIZbc8SotPCIaNk/IinzC8fnO54bL/Tgp
	OfFboiTKmhZad+kG2Lq8g8WiddOdnfksLMRYAzhSKADtYcQVtw4XQJZF2WclhVi0y6
	PV1SoFxUVlgaJS5dr9qqv0bDQDyFTofCbcCkr6EB+Pc0FZrmRXtxz+wI+JdzCSQewG
	eikHmjtqIcVrWjHLjJeVRAFzZmMpYQ1ElxBkZbtBnujMzS2iHGhxaFXmMSmwBQhOC5
	N8CavcTDcRcvA==
Subject: How to create a build for ARM Cortex-A8, S5PV210
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
X-List-Received-Date: Tue, 08 May 2018 20:40:06 -0000
Content-Type: multipart/alternative; boundary="nextPart3041323.YTm0Ceentz"
Content-Transfer-Encoding: 7Bit

--nextPart3041323.YTm0Ceentz
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi. I'm new to yocto. So I have followed a tutorial and now I have crewated my first yocto 
distro for i386.
Now I need to create a build for my device. It is a Samsung S5PV210 device, Cortex A8.
Here there is a description
http://www.friendlyarm.net/products/mini210

Can someone suggest me how to setup the yocto build for this target?

Regards.


+39.347.4070897
www.labcsp.com[1] 
www.denisgottardello.it[2] 
GMT+1
Skype: mrdebug

--------
[1] http://www.labcsp.com
[2] http://www.denisgottardello.it

--nextPart3041323.YTm0Ceentz
Content-Transfer-Encoding: 7Bit
Content-Type: text/html; charset="us-ascii"

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Noto Sans'; font-size:10pt; font-weight:400; font-style:normal;">
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Hi. I'm new to yocto. So I have followed a tutorial and now I have crewated my first yocto distro for i386.</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Now I need to create a build for my device. It is a Samsung S5PV210 device, Cortex A8.</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Here there is a description</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">http://www.friendlyarm.net/products/mini210</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Can someone suggest me how to setup the yocto build for this target?</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Regards.</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br />-- </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">+39.347.4070897</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><a href="http://www.labcsp.com"><span style=" text-decoration: underline; color:#2980b9;">www.labcsp.com</span></a> </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><a href="http://www.denisgottardello.it"><span style=" text-decoration: underline; color:#2980b9;">www.denisgottardello.it</span></a> </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">GMT+1</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Skype: mrdebug</p></body></html>

--nextPart3041323.YTm0Ceentz--
