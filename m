Return-Path: <desai@uni-bremen.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32CB9E00C8F; Fri,  4 Jan 2019 12:32:37 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5E25E00C81
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2019 12:32:35 -0800 (PST)
Received: from webmail.uni-bremen.de (webmail-1.zfn.uni-bremen.de
	[134.102.50.65])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.uni-bremen.de (Postfix) with ESMTPS id 6B53D205B4
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2019 21:32:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=uni-bremen.de; s=dkim;
	t=1546633954; bh=03ejUQSVzBUYeEJ0F9LcLnMF/gHWpCRFAT2GP1B4758=;
	h=Date:From:To;
	b=ybZBVEFldDwv70xP2ckLRWirLRyksgOcIez1hNwOc7ofQeDnmZ7JO+bu2jTO9z9CM
	azp2sruEqh9xfTgTUoz0dT7hPyyue5IaV9/nio1Rf67H7chhduxUW3r7CgXqQ6kiq3
	lY98/mk1eCb41kvFYdc2bUdGJFQEMYBpQ3GSxJGY=
Received: from uni-bremen.de (webmail-1.zfn.uni-bremen.de [134.102.50.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by webmail.uni-bremen.de (Postfix) with ESMTPSA id 434CA5F8B6
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2019 21:32:34 +0100 (CET)
Received: from galileo-313.wohnheim.uni-bremen.de
	(galileo-313.wohnheim.uni-bremen.de [134.102.106.57]) by
	webmail.uni-bremen.de (Horde Framework) with HTTPS; Fri, 04 Jan 2019
	21:32:34 +0100
Date: Fri, 04 Jan 2019 21:32:34 +0100
Message-ID: <20190104213234.Horde.fsWzjSbd2N9UoHJN1Xwu10c@webmail.uni-bremen.de>
From: Shantanoo Desai <desai@uni-bremen.de>
To: yocto@yoctoproject.org
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Subject: Some Guide for CI/CD with Yocto
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
X-List-Received-Date: Fri, 04 Jan 2019 20:32:37 -0000
Content-Type: multipart/alternative; boundary="=_7qAZ22dqG3KJOgzhraszAkF"
Content-Transfer-Encoding: 8bit

--=_7qAZ22dqG3KJOgzhraszAkF
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
Content-Description: Plaintext Message
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi all,

I just have become more comfortable with Yocto for e.g. using  
/devtool  /and basic /bitbake /commands.

I am was successfully able to create some python applications for my  
target board via a layer. I would like to use CI / CD eventually for  
Yocto.
I have seen videos from Linux Foundation but I could not find any  
guide to create some basic CI stuff for Yocto.

Any help or suggestions in this direction would be appreciated.

Regards
  Grüße,

M.Sc. Shantanoo Desai
Wissenschaftlicher Mitarbetier
Informations- und kommunikationstechnische Anwendungen in der Produktion
BIBA- Bremer Institut für Produktion und Logistik GmbH

Raum 1390
Tel: +49 (0)421 218-50138

email: desai@uni-bremen.de

--=_7qAZ22dqG3KJOgzhraszAkF
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
I just have become more comfortable with Yocto for e.g. using <em>devtool&nbsp;</em> and basic <em>bitbake</em> commands.<br>
<br>
I am was successfully able to create some python applications for my target board via a layer. I would like to use CI / CD eventually for Yocto.<br>
I have seen videos from Linux Foundation but I could not find any guide to create some basic CI stuff for Yocto.<br>
<br>
<br>
Any help or suggestions in this direction would be appreciated.<br>
<br>
<br>
Regards</p>
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

--=_7qAZ22dqG3KJOgzhraszAkF--
