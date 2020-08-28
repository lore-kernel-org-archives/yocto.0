Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.45221.1598627964403248469
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Aug 2020 08:19:25 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: savoirfairelinux.com, ip: 140.211.169.56, mailfrom: sandra.tobajas@savoirfairelinux.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0766E020C2; Fri, 28 Aug 2020 08:19:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,URIBL_RED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88E42E020C0
	for <yocto@yoctoproject.org>; Fri, 28 Aug 2020 08:19:21 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id A7DE69C00B8;
	Fri, 28 Aug 2020 11:19:20 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id LfzOFw3b4a61; Fri, 28 Aug 2020 11:19:20 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 1020B9C0280;
	Fri, 28 Aug 2020 11:19:20 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 7Fiih3_wSKwr; Fri, 28 Aug 2020 11:19:19 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [192.168.48.237])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id E8B1A9C00B8;
	Fri, 28 Aug 2020 11:19:19 -0400 (EDT)
Date: Fri, 28 Aug 2020 11:19:19 -0400 (EDT)
From: "Sandra Tobajas" <sandra.tobajas@savoirfairelinux.com>
To: joseantonio cardenas <JoseAntonio.Cardenas@niko.eu>
Cc: yocto <yocto@yoctoproject.org>
Message-ID: <166614646.1719840.1598627959904.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <PR2PR08MB465127414358B496F9CB6AD98B520@PR2PR08MB4651.eurprd08.prod.outlook.com>
References: <1133236501.1694319.1598534181913.JavaMail.zimbra@savoirfairelinux.com> <PR2PR08MB465127414358B496F9CB6AD98B520@PR2PR08MB4651.eurprd08.prod.outlook.com>
Subject: Re: [yocto] npmsw fetching error: package from npm-shrinkwrap is not downloaded so "Could not install from.../SONStream" as it does not contain a package.json file.
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.15_GA_3945 (ZimbraWebClient - FF77 (Linux)/8.8.15_GA_3928)
Thread-Topic: npmsw fetching error: package from npm-shrinkwrap is not downloaded so "Could not install from.../SONStream" as it does not contain a package.json file.
Thread-Index: G9EVkOUtStCBkFrUHhftRSianmCmH4rPHf3AEwtM9WU=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Jose,=20

I have tested your npm-shrinkwrap.json file with this patch (https://patchw=
ork.openembedded.org/patch/175755/) and it worked.
Can you test it on your machine ?

Regards,
Sandra

Sandra Tobajas
Consultant en logiciel libre | Montr=C3=A9al, Qc
Savoir-Faire Linux
Bureau: (+1) 514-276-5468 # 329

----- Original Message -----
From: "joseantonio cardenas" <JoseAntonio.Cardenas@niko.eu>
To: "Sandra Tobajas" <sandra.tobajas@savoirfairelinux.com>
Cc: "yocto" <yocto@yoctoproject.org>
Sent: Friday, August 28, 2020 9:44:59 AM
Subject: RE: [yocto] npmsw fetching error: package from npm-shrinkwrap is n=
ot downloaded so "Could not install from.../SONStream" as it does not conta=
in a package.json file.

Hi Sandra, thank you by your info. It was very useful to fetch development =
modules from shrinkwrap file.=20

I attach you the shrinkwrap file with no dependencies that I were trying to=
 fetch.=20

Regards.

Jose.

-----Original Message-----
From: Sandra Tobajas <sandra.tobajas@savoirfairelinux.com>=20
Sent: jueves, 27 de agosto de 2020 15:16
To: Cardenas Jose Antonio (JCARDENA) <JoseAntonio.Cardenas@niko.eu>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] npmsw fetching error: package from npm-shrinkwrap is n=
ot downloaded so "Could not install from.../SONStream" as it does not conta=
in a package.json file.

CAUTION: This email originated from outside the organization. Do not click =
on links or open attachments unless you recognize the sender and know the c=
ontent is safe.

Hi Jose,

It seems that all your dependencies are development dependencies tagged wit=
h "dev":true in the npm-shrinkwrap.json file.

If all dependencies are for development purpose and if you want to install =
the package as a development package, you can add:

npmsw://${THISDIR}/${PN}/npm-shrinkwrap.json;dev=3Dtrue

It seems that "npmsw.py" fetching code fails if you are trying to install a=
 npm package with a npm-shrinkwrap.json file with no dependencies (as repor=
ted by Jean-Marie and Randy).
I am currently preparing a patch to solve the problem reported here: https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D13901.

If not, maybe you could send the full npm-shrinkwrap.json file to reproduce=
 exactly the problem.

Regards,

Sandra

Sandra Tobajas
Consultant en logiciel libre | Montr=C3=A9al, Qc Savoir-Faire Linux
Bureau: (+1) 514-276-5468 # 329
