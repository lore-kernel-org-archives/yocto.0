Return-Path: <desai@uni-bremen.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8401BE00C55; Sun,  2 Dec 2018 02:24:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_MED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.102.50.17 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtp.uni-bremen.de (gabriel-vm-2.zfn.uni-bremen.de
	[134.102.50.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4707AE00C3C
	for <yocto@yoctoproject.org>; Sun,  2 Dec 2018 02:24:49 -0800 (PST)
Received: from webmail.uni-bremen.de (webmail-1.zfn.uni-bremen.de
	[134.102.50.65])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.uni-bremen.de (Postfix) with ESMTPS id F314C2024C
	for <yocto@yoctoproject.org>; Sun,  2 Dec 2018 11:24:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=uni-bremen.de; s=dkim;
	t=1543746288; bh=jRpRM1k6TYowq4lmBkRFH5Ahz78+Vz+mNAcQJ/lXHL8=;
	h=Date:From:To;
	b=Xkl6SFPhRLKcLsljcYwreVHTmpNNN7/evweTStbNBCnlFEOBph5+2Kq+W+bn4+U9o
	NSd7K0w3nhQzJflTOR7iECKKwVzDtMYGU7LP9KcC/rZWvwget0G7lYIgMH56cG+XTK
	uAX3h8h1akghJHNUCHDdbcWt52pruBTK5ZusCA+I=
Received: from uni-bremen.de (webmail-1.zfn.uni-bremen.de [134.102.50.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by webmail.uni-bremen.de (Postfix) with ESMTPSA id DC6F45F8AC
	for <yocto@yoctoproject.org>; Sun,  2 Dec 2018 11:24:47 +0100 (CET)
Received: from galileo-313.wohnheim.uni-bremen.de
	(galileo-313.wohnheim.uni-bremen.de [134.102.106.57]) by
	webmail.uni-bremen.de (Horde Framework) with HTTPS; Sun, 02 Dec 2018
	11:24:47 +0100
Date: Sun, 02 Dec 2018 11:24:47 +0100
Message-ID: <20181202112447.Horde.MWsP8BBkXxF2_p3_oAIAHlU@webmail.uni-bremen.de>
From: Shantanoo Desai <desai@uni-bremen.de>
To: yocto@yoctoproject.org
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Subject: [python] install custom python CLI on target
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
X-List-Received-Date: Sun, 02 Dec 2018 10:24:50 -0000
Content-Type: multipart/alternative; boundary="=_0qtWfOd9C4WiWNDeP-zZHJx"
Content-Transfer-Encoding: 8bit

--=_0qtWfOd9C4WiWNDeP-zZHJx
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
Content-Description: Plaintext Message
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi all,

I have created a python package wherein the setup.py I have  
scripts=[bin/myCli]
I used devtool to make a recipe for my repository and managed to add  
all RDEPENDS_${PN} into it and successfully baked the recipe. However  
I am not sure if I need to do something like do_install() within the  
recipe in order for the cli to be available for me on my target  
hardware?

Any help would be appreciated.

Thanks
  Grüße,

M.Sc. Shantanoo Desai
Wissenschaftlicher Mitarbetier
Informations- und kommunikationstechnische Anwendungen in der Produktion
BIBA- Bremer Institut für Produktion und Logistik GmbH

Raum 1390
Tel: +49 (0)421 218-50138

email: desai@uni-bremen.de

--=_0qtWfOd9C4WiWNDeP-zZHJx
Content-Type: text/html; charset=utf-8
Content-Description: HTML Message
Content-Disposition: inline

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"
"http://www.w3.org/TR/REC-html40/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title></title>
</head>
<body style="font-family:Arial;font-size:14px">
<p>Hi all,<br>
<br>
I have created a python package wherein the <span style="font-family:courier new,courier,monospace;">setup.py</span> I have <span style="font-family:courier new,courier,monospace;">scripts=[bin/myCli]<br>
<span style="font-family:arial,helvetica,sans-serif;">I used devtool to make a recipe for my repository and managed to add all RDEPENDS_${PN} into it and successfully baked the recipe. However I am not sure if I need to do something like do_install() within the recipe in order for the cli to be available for me on my target hardware?<br>
<br>
Any help would be appreciated.<br>
<br>
Thanks</span></span><br>
<br></p>
<div>Gr&uuml;&szlig;e,<br>
<br>
M.Sc. Shantanoo Desai<br>
Wissenschaftlicher Mitarbetier<br>
Informations- und kommunikationstechnische Anwendungen in der Produktion<br>
BIBA- Bremer Institut f&uuml;r Produktion und Logistik GmbH<br>
<br>
Raum 1390<br>
Tel: +49 (0)421 218-50138<br>
<br>
email: <a href="mailto:desai@uni-bremen.de">desai@uni-bremen.de</a></div>
</body>
</html>

--=_0qtWfOd9C4WiWNDeP-zZHJx--
