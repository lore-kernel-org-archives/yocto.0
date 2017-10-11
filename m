Return-Path: <sancelot@numalliance.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDF3AE00C45; Wed, 11 Oct 2017 06:24:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.numalliance.com (mail.numalliance.com [194.2.198.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36521E00B87;
	Wed, 11 Oct 2017 06:24:31 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by mail.numalliance.com (Postfix) with ESMTP id B109420D0413;
	Wed, 11 Oct 2017 15:24:30 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mail.numalliance.com
Received: from mail.numalliance.com ([127.0.0.1])
	by localhost (mail.numalliance.com [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id zwcBqJOHIofv; Wed, 11 Oct 2017 15:24:22 +0200 (CEST)
Received: from [192.168.0.78] (unknown [192.168.0.78])
	(Authenticated sender: sancelot@numalliance.com)
	by mail.numalliance.com (Postfix) with ESMTPSA id 5EA8220CBF8E;
	Wed, 11 Oct 2017 15:24:22 +0200 (CEST)
To: toaster@yoctoproject.org, yocto <yocto@yoctoproject.org>
From: =?UTF-8?Q?St=c3=a9phane_Ancelot?= <sancelot@numalliance.com>
Message-ID: <0d43684b-22f6-2563-bdcc-2eb4d4ae3870@numalliance.com>
Date: Wed, 11 Oct 2017 15:24:22 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
Subject: pb when building core-image-sato
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
X-List-Received-Date: Wed, 11 Oct 2017 13:24:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable

Hi,

I don't know where it can com from,=C2=A0 but I have following mistake fr=
om=20
toaster when building qemux86-64 core-sato-image :

bash -c "source=20
/var/www/toaster/poky/_toaster_clones/_git___git.yoctoproject.org_poky_ma=
ster/oe-init-build-env=20
/var/www/toaster/poky/build-toaster-6; BITBAKE_UI=3D"knotty"=20
/var/www/toaster/poky/_toaster_clones/_git___git.yoctoproject.org_poky_ma=
ster/bitbake/bin/bitbake=20
--read /var/www/toaster/poky/build-toaster-6/conf/toaster.conf --read=20
/var/www/toaster/poky/build-toaster-6/conf/toaster-bblayers.conf=20
--server-only -t xmlrpc -B 0.0.0.0:0"


bitbake: error: no such option: -t


Regards

S.Ancelot

