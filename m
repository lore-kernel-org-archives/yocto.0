Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.211.1591811351452767708
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jun 2020 10:49:12 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@aruba.it header.s=a1 header.b=aUCbx+zt;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 140.211.169.56, mailfrom: mauro@faresoftware.it)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9B73E01CC1; Wed, 10 Jun 2020 10:49:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [62.149.156.56 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd0756.aruba.it (smtpcmd0756.aruba.it [62.149.156.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A730DE01CBF
	for <yocto@yoctoproject.org>; Wed, 10 Jun 2020 10:49:07 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd07.ad.aruba.it with bizsmtp
	id pVp5220012wfazh01Vp5Un; Wed, 10 Jun 2020 19:49:05 +0200
To: yocto@yoctoproject.org
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: Strange error
Message-ID: <6831ffcc-263f-99cb-2859-e265fa04f770@faresoftware.it>
Date: Wed, 10 Jun 2020 19:48:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1591811345; bh=dX7IgheVH4g4awtJvNNquiqZ7CA2AKr0mYyPYC51fuc=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=aUCbx+zt4DEjsf6Dh8MWas8mRHFgXmvrK086L3KFRci+j7DkRL10OzUyTOsvlXJNL
	 wH7GDzgoUFvm+nJEMj083+hXSQ47QwAPZKV7ZNre+OSTqH6qiuIIN2jOdKh7UK0fgz
	 F+/TTggbgjtBZcDd3Tix3a7CU6kR/PMmPWlz7ZmlKoExNG2dTs3w63ewSeAp8+Bywz
	 kkSLiy7BkLKCtdfkuvYUU9kx1PfpHocyDdItPQ8sY5Q8LRBB9NkYF9SknoUWHArKxS
	 UA6xcXiDR7Dgx4hQ9gDSHQdEdWpWJKqehzEfAtUxuirBGbhcjF8W2wHu94kMX04oN2
	 z0vOQTQWlEJzQ==
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Language: it
Content-Transfer-Encoding: quoted-printable

Hi all.

This error

NOTE: Executing RunQueue Tasks
ERROR: When reparsing <recipe_of_image>.do_rootfs, the basehash value=20
changed from 7419bfc242fa2eee9ce87b18ebf40d25 to=20
5b2654046d2ac406f3484b3286de0acd. The metadata is not deterministic and=20
this needs to be fixed.


Why?


Best regards,

 =A0 MZ

