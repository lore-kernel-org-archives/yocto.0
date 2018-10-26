Return-Path: <matt.office@impsoftware.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D521E00AB9; Fri, 26 Oct 2018 13:51:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [69.89.23.142 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 2395 seconds by postgrey-1.32 at yocto-www;
	Fri, 26 Oct 2018 13:51:15 PDT
Received: from gproxy4-pub.mail.unifiedlayer.com
	(gproxy4-pub.mail.unifiedlayer.com [69.89.23.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A57E5E00A4F
	for <yocto@yoctoproject.org>; Fri, 26 Oct 2018 13:51:15 -0700 (PDT)
Received: from cmgw15.unifiedlayer.com (unknown [10.9.0.15])
	by gproxy4.mail.unifiedlayer.com (Postfix) with ESMTP id F30FA1785B8
	for <yocto@yoctoproject.org>; Fri, 26 Oct 2018 14:00:50 -0600 (MDT)
Received: from host194.hostmonster.com ([74.220.207.194]) by cmsmtp with ESMTP
	id G8HqgSuezj0soG8Hqg2kCo; Fri, 26 Oct 2018 14:00:50 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=impsoftware.org; s=default;
	h=Content-Type:MIME-Version:Date:Message-ID:
	Subject:From:Reply-To:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=lHJvz826yEcBK61TM4/qm2R0zpPdvxfBaWXbGS+qGuA=;
	b=iHa+eD4tVvniaCIfWwaT8sFAdO
	NIxIrEFyU6+DObfAhQ/f3RBqOqNOaVPO39B8Uka17N/nHOA+xMxAPrtw91ZFKRZBOlfFRWhZbHKwJ
	B9FJUr4YSWGPw4DZlF6mEheez;
Received: from [63.140.26.14] (port=50064 helo=[192.168.112.60])
	by host194.hostmonster.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
	(envelope-from <matt.office@impsoftware.org>) id 1gG8Hq-003YjC-My
	for yocto@yoctoproject.org; Fri, 26 Oct 2018 14:00:50 -0600
To: yocto@yoctoproject.org
From: Matt Ervin <matt.office@impsoftware.org>
Organization: imp software
Message-ID: <5c997a41-6069-1579-27d3-72975ab195a6@impsoftware.org>
Date: Fri, 26 Oct 2018 13:00:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - host194.hostmonster.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - impsoftware.org
X-BWhitelist: no
X-Source-IP: 63.140.26.14
X-Source-L: No
X-Exim-ID: 1gG8Hq-003YjC-My
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.112.60]) [63.140.26.14]:50064
X-Source-Auth: matt.office@impsoftware.org
X-Email-Count: 1
X-Source-Cap: aW1wc29mdHc7aW1wc29mdHc7aG9zdDE5NC5ob3N0bW9uc3Rlci5jb20=
X-Local-Domain: yes
Subject: NVIDIA or AMD accelerated graphics on x86 or x86-64 machine architecture
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: matt@impsoftware.org
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 26 Oct 2018 20:51:16 -0000
Content-Type: multipart/alternative;
	boundary="------------D854016E0CF58B42028B3778"
Content-Language: en-US

--------------D854016E0CF58B42028B3778
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I’m creating a poky (sumo branch) based OS image for x86_64 PC hardware. 
It’s an embedded device that is essentially a desktop PC in a box with 
additional features. My device requires accelerated graphics (either 
NVIDIA or AMD, not Intel) and I’m having difficulty identifying which 
layer and recipe to use for either device. Are there any recipes that 
encapsulate the NVIDIA Linux desktop binary drivers for x86? If not then 
are there any consultants willing to sell me some time to help me create 
one, or to create one for me? I did some google searching and found a 
layer from OakLabs, but it doesn’t work (at least not with the sumo 
branch). The README file in the recipe also states that it’s likely to 
break the build, and it did produce errors for me. I’m not familiar with 
AMD on Linux so I don’t know if the xf86-video-ati recipe in the meta-oe 
layer provides accelerated desktop drivers or, if it does, which AMD 
devices it supports. I’m obviously very new to Yocto so any guidance is 
greatly appreciated.

- Matt


--------------D854016E0CF58B42028B3778
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p> </p>
    <p style="margin-bottom: 0in; line-height: 100%">I’m creating a
      poky (sumo branch) based OS image for x86_64 PC hardware. It’s an
      embedded device that is essentially a desktop PC in a box with
      additional features. My device requires accelerated graphics
      (either
      NVIDIA or AMD, not Intel) and I’m having difficulty identifying
      which layer and recipe to use for either device. Are there any
      recipes that encapsulate the NVIDIA Linux desktop binary drivers
      for
      x86? If not then are there any consultants willing to sell me some
      time to help me create one, or to create one for me? I did some
      google searching and found a layer from OakLabs, but it doesn’t
      work (at least not with the sumo branch). The README file in the
      recipe also states that it’s likely to break the build, and it did
      produce errors for me. I’m not familiar with AMD on Linux so I
      don’t know if the xf86-video-ati recipe in the meta-oe layer
      provides accelerated desktop drivers or, if it does, which AMD
      devices it supports. I’m obviously very new to Yocto so any
      guidance is greatly appreciated.<br>
      <br>
      - Matt<br>
    </p>
    <p>
      <style type="text/css">p { margin-bottom: 0.1in; line-height: 115%; }</style></p>
  </body>
</html>

--------------D854016E0CF58B42028B3778--
