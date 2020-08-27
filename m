Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.18817.1598534636314015293
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Aug 2020 06:23:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: savoirfairelinux.com, ip: 140.211.169.56, mailfrom: sandra.tobajas@savoirfairelinux.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7284E020A7; Thu, 27 Aug 2020 06:23:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 449 seconds by postgrey-1.32 at yocto-www; Thu, 27 Aug 2020 06:23:54 PDT
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDB47E0206A
	for <yocto@yoctoproject.org>; Thu, 27 Aug 2020 06:23:54 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id A94E59C04AF;
	Thu, 27 Aug 2020 09:16:23 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id adGW6yoaUSAC; Thu, 27 Aug 2020 09:16:22 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 8F2E89C04CE;
	Thu, 27 Aug 2020 09:16:22 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id Wx0mfVID-2Ud; Thu, 27 Aug 2020 09:16:22 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [192.168.48.237])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 738199C04AF;
	Thu, 27 Aug 2020 09:16:22 -0400 (EDT)
Date: Thu, 27 Aug 2020 09:16:21 -0400 (EDT)
From: sandra.tobajas@savoirfairelinux.com
To: joseantonio.cardenas@niko.eu
Cc: yocto@yoctoproject.org
Message-ID: <1133236501.1694319.1598534181913.JavaMail.zimbra@savoirfairelinux.com>
Subject: Re: [yocto] npmsw fetching error: package from npm-shrinkwrap is not downloaded so "Could not install from.../SONStream" as it does not contain a package.json file.
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.15_GA_3945 (ZimbraWebClient - FF77 (Linux)/8.8.15_GA_3928)
Thread-Index: G9EVkOUtStCBkFrUHhftRSianmCmHw==
Thread-Topic: npmsw fetching error: package from npm-shrinkwrap is not downloaded so "Could not install from.../SONStream" as it does not contain a package.json file.
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Jose,

It seems that all your dependencies are development dependencies tagged wit=
h "dev":true in the npm-shrinkwrap.json file.

If all dependencies are for development purpose and if you want to install =
the package as a development package, you can add:

npmsw://${THISDIR}/${PN}/npm-shrinkwrap.json;dev=3Dtrue

It seems that "npmsw.py" fetching code fails if you are trying to install a=
 npm package with a npm-shrinkwrap.json file with no dependencies (as repor=
ted by Jean-Marie and Randy).=20
I am currently preparing a patch to solve the problem reported here: https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D13901.

If not, maybe you could send the full npm-shrinkwrap.json file to reproduce=
 exactly the problem.

Regards,

Sandra

Sandra Tobajas
Consultant en logiciel libre | Montr=C3=A9al, Qc
Savoir-Faire Linux
Bureau: (+1) 514-276-5468 # 329
