Return-Path: <enellessen@phoenixcontact.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 445FBE00A6A; Wed,  9 May 2018 08:40:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [62.157.123.121 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 615 seconds by postgrey-1.32 at yocto-www;
	Wed, 09 May 2018 08:40:45 PDT
Received: from mail2.phoenixcontact.com (mail2.phoenixcontact.com
	[62.157.123.121])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B6C5E00948
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 08:40:45 -0700 (PDT)
Received: from home.innominate.com ([149.208.95.240])
	by de-nice01.europe.phoenixcontact.com
	with ESMTP id 2018050917302770-1180750 ;
	Wed, 9 May 2018 17:30:27 +0200 
Received: from localhost (localhost.localdomain [127.0.0.1])
	by home.innominate.com (Postfix) with ESMTP id 8C67121D3
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 17:30:27 +0200 (CEST)
Received: from home.innominate.com ([127.0.0.1])
	by localhost (innominate.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NuzqWBuSZnUq for <yocto@yoctoproject.org>;
	Wed,  9 May 2018 17:30:27 +0200 (CEST)
Received: from [10.1.0.58] (unknown [10.1.0.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by home.innominate.com (Postfix) with ESMTPS id 69CB521AA
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 17:30:27 +0200 (CEST)
To: yocto@yoctoproject.org
From: Erik Nellessen <enellessen@phoenixcontact.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
X-TNEFEvaluated: 1
Message-ID: <44454e21-7c6f-8337-f7e3-caf4674052f4@phoenixcontact.com>
Date: Wed, 9 May 2018 17:30:27 +0200
Subject: Excluding ptest packages from image build
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
X-List-Received-Date: Wed, 09 May 2018 15:40:47 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US

I would like to exclude some ptest packages from an image build.

To include ptest packages in general, my image recipe contains the 
following line:
IMAGE_FEATURES_append =3D =22 ptest-pkgs=22

As a first step, I tried to exclude the acl-ptest package. To do so, I 
added the following to my image recipe:
PACKAGE_EXCLUDE_COMPLEMENTARY =3D =22acl-ptest=22

I thought that this would exclude the acl-ptest package as described in 
the project reference: 
https://www.yoctoproject.org/docs/2.4.2/ref-manual/ref-manual.html#var-PA=
CKAGE_EXCLUDE_COMPLEMENTARY
=22Prevents specific packages from being installed when you are installin=
g 
complementary packages.

You might find that you want to prevent installing certain packages when 
you are installing complementary packages. For example, if you are using 
IMAGE_FEATURES to install dev-pkgs, you might not want to install all 
packages from a particular multilib. If you find yourself in this 
situation, you can use the PACKAGE_EXCLUDE_COMPLEMENTARY variable to 
specify regular expressions to match the packages you want to exclude.=
=22

Anyhow this did not result in an image without the acl-ptest package, as 
I could validate by having a look at the image=27s manifest file.

When I changed the image recipe to contain the regular expression =22acl=
=22, i.e
PACKAGE_EXCLUDE_COMPLEMENTARY =3D =22acl=22
all three acl packages (acl, acl-lic, acl-ptest) were excluded from the 
image.

And to really start the confusion, when changed the regular expression 
to =22acl.=22, i.e.
PACKAGE_EXCLUDE_COMPLEMENTARY =3D =22acl.=22
all three packages were also excluded.

Now I am really confused. My expectation was that =22acl-ptest=22 and =
=22acl=22 
would match the acl-ptest package name and =22acl.=22 would not match the=
 
acl package name.

Does anybody see what I am missing here=3F

Thanks in advance,
Erik




