Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 1E893E0070B
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 07:20:28 -0700 (PDT)
Received: from [172.16.140.132] (172.16.140.132) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.2.247.3;
	Wed, 30 May 2012 16:20:26 +0200
Message-ID: <4FC62CB6.8060004@enea.com>
Date: Wed, 30 May 2012 16:20:38 +0200
From: =?UTF-8?B?RGF2aWQgTnlzdHLDtm0=?= <david.nystrom@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Originating-IP: [172.16.140.132]
Subject: ALT_SRC_URI ?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 30 May 2012 14:20:29 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Since meta-fsl-ppc:s git daemon(git://git.freescale.com) was down, I 
experimented with adding the http reference as a mirror.

MIRRORS_prepend = "\
git://git.freescale.com/ppc/sdk/linux.git 
git://git.freescale.com/git/cgit.cgi/ppc/sdk/linux.git;protocol=http \n "

Which failed and gave me:
http://pastebin.com/5sTQ0eMC

It shows bitbake trying to fetch something assumed to be created as a 
bitbake mirror, mangling the name.

How would I go about doing above ?, getting it to failover to my own 
specified link ?

I'm on denzil.

Br,
David




