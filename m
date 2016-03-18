Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94D20E00C70; Fri, 18 Mar 2016 06:28:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [194.117.213.104 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp.laposte.net (smtpoutz29.laposte.net [194.117.213.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04623E00C6B
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 06:27:59 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout017 (Postfix) with ESMTP id 5E68CA01782
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 14:27:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail1;
	t=1458307677; bh=mIMGRkUiyyjwRXsv46w7W2wwafFgcX2sRQHaJvrutj8=;
	h=Subject:References:To:Cc:From:Date:In-Reply-To;
	b=PE1wv8ll2h3xs9H20VCfsFz2oWqWIuhk47G0fscHd2PHqJtZktjWYLuY4Hv3F/7S8
	P3w+52sFumDd2nWmHnSExGOev26+ej3xRNPRMaNJCK8K/BCDbw/UkfSxQ+yz4pyBld
	itQ5y7eqQ/bdiN9SgRcvi6zXBIuqFU7FuL22bSm7TkXeEEnbtvhl3qSldbgr1DO6hy
	zc7bUu9ICIab4j3QbWY5oqwfO7bCXvJ3DUV/7GT+p7hIodEXek99ZVn9pSuSVt/qmD
	5xjk5I/u543dx9o661XA3nxf/oxSExl1twFif4ZEPOTpG/x+snwt5gLe2VxXDlRy8U
	QruLVniE4K8TQ==
Received: from lpn-prd-vrin001 (lpn-prd-vrin001.prosodie [10.128.63.2])
	by lpn-prd-vrout017 (Postfix) with ESMTP id 5B61AA013C1
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 14:27:57 +0100 (CET)
Received: from lpn-prd-vrin001 (localhost [127.0.0.1])
	by lpn-prd-vrin001 (Postfix) with ESMTP id 4742E365404
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 14:27:57 +0100 (CET)
Received: from [192.168.1.45] (ARennes-654-1-161-212.w92-139.abo.wanadoo.fr
	[92.139.120.212])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by lpn-prd-vrin001 (Postfix) with ESMTPSA id 048223653F2;
	Fri, 18 Mar 2016 14:27:56 +0100 (CET)
References: <op.yec9f2hdmnlnty@pc-mls.ecafaros.local>
	<56E913A0.2030603@laposte.net>
	<CAALGJZYWqQGbRMp70LNVyZyWMyd7ac-L5aGrdA4VrWX=Z+BvwA@mail.gmail.com>
	<56E9664F.8000505@laposte.net> <56EAD860.4000306@laposte.net>
	<CAALGJZaPgvZmpXiwADH0Lvu-KV9GD56XGMVJNWrRwke370xGjA@mail.gmail.com>
	<56EBC3BB.9030105@laposte.net>
	<CAALGJZbxs3obBWw=iejAYgdoJtwwDqat+GSPMcK+VmCc=rWFGw@mail.gmail.com>
To: Christian Ege <k4230r6@gmail.com>
From: idealsim <idealsim@laposte.net>
Message-ID: <56EC025C.2000208@laposte.net>
Date: Fri, 18 Mar 2016 14:27:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <CAALGJZbxs3obBWw=iejAYgdoJtwwDqat+GSPMcK+VmCc=rWFGw@mail.gmail.com>
X-VR-SrcIP: 92.139.120.212
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeekkedrtdehgddukeefucetufdoteggodetrfdotffvucfrrhho
X-VR-Cause-2: fhhilhgvmecunfetrffquffvgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhht
X-VR-Cause-3: shculddquddttddmnecujfgurhepufhfvffhkffffgggjggtgfesthekrgdttdefjeenucfhrhhomhep
X-VR-Cause-4: ihguvggrlhhsihhmuceoihguvggrlhhsihhmsehlrghpohhsthgvrdhnvghtqeenucffohhmrghinhep
X-VR-Cause-5: hihotghtohhprhhojhgvtghtrdhorhhgpdhgihhthhhusgdrtghomhenucfkphepledvrddufeelrddu
X-VR-Cause-6: vddtrddvuddvnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghloheplgduledvrdduieek
X-VR-Cause-7: rddurdeghegnpdhinhgvthepledvrddufeelrdduvddtrddvuddvpdhmrghilhhfrhhomhepihguvggr
X-VR-Cause-8: lhhsihhmsehlrghpohhsthgvrdhnvghtpdhrtghpthhtohepkhegvdeftdhrieesghhmrghilhdrtgho
X-VR-Cause-9: mh
X-VR-AvState: No
X-VR-State: 0
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: <DKIM> Re: <DKIM> Re: Qt5.6 new modules
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
X-List-Received-Date: Fri, 18 Mar 2016 13:28:02 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

It seems that they have a problem with c++11, see QTBUG-51655, change 
comit 
https://github.com/qtproject/qtserialbus/commit/04b75569f36eec14662505a08bf8c1d565cb10fe

The SRCREV is now 04b75569f36eec14662505a08bf8c1d565cb10fe

Seems to work ! compil the lib ...

Continue to build the master image now

Mickaël

Le 18/03/2016 11:39, Christian Ege a écrit :
> Hi,
>
> 2016-03-18 10:00 GMT+01:00 idealsim <idealsim@laposte.net>:
>> Hi and thank you, now i know where to find SRCREV !
>> After adjust this variable and LICENSE.FDL the source is fetched. My bb :
>>
>> require qt5.inc
>> require qt5-git.inc
>>
>> # There are no LGPLv3-only licensed files in this component.
>> # There are no GPLv2 licensed files in this component.
>> LICENSE = "GFDL-1.3 & BSD & (LGPL-2.1 & The-Qt-Company-Qt-LGPL-Exception-1.1
>> | LGPL-3.0)"
>> LIC_FILES_CHKSUM = " \
>>      file://LICENSE.LGPLv3;md5=b8c75190712063cde04e1f41b6fdad98 \
>>      file://LICENSE.GPLv3;md5=40f9bf30e783ddc201497165dfb32afb \
>>      file://LICENSE.FDL;md5=f70ee9a6c44ae8917586fea34dff0ab5 \
>>      file://LICENSE.GPLv2;md5=05832301944453ec79e40ba3c3cfceec \
>> "
>>
>> DEPENDS += "qtbase qtserialport"
>>
>> SRCREV = "92c979c6652d55c30ab9118d45db74d8da96fc3b"
>>
>> When i launch bitbake qtserialbus, the process build without error, but it
>> seems there is something missing because the compile step is very fast and
>> my
>> neoBuild/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/qtserialbus/5.5.99+5.6.0-rc+gitAUTOINC+92c979c665-r0/package/
>> folder is empty ! If i take the qtsensors folder, there are this folder (in
>> package) :
>> usr/
>>      include/
>>      lib/
>>      src/
>>
>> I'm looking to meta-qt5 BSP to find where i can precise to build my new
>> recipe but didn't find anything can help. Do you know how to proceed ?
> You can execute a bitbake with option -v so You'll see the output. But
> When the package was previously build you should clean stuff before
>
> bitbake -ccleansstate qtserialbus
> bitbake -v qtserialbus
>
> Best,
> Christian
>> regards,
>>
>> Le 18/03/2016 08:16, Christian Ege a écrit :
>>
>> Hi,
>>
>> 2016-03-17 17:16 GMT+01:00 idealsim <idealsim@laposte.net>:
>>
>> Hi, i have started a build of the image this master Branch, like you said i
>> have an error on qtserialbus :
>>
>> WARNING: Failed to fetch URL
>> git://github.com/qtproject/qtserialbus.git;name=qtserialbus;branch=5.6;protocol=git,
>> attempting MIRRORS if available
>> ERROR: Fetcher failure: Unable to find revision
>> 6a16281aceedb713676e16c3074e6f7ea1e70b79 in branch 5.6 even from upstream
>> ERROR: Function failed: Fetcher failure for URL:
>> 'git://github.com/qtproject/qtserialbus.git;name=qtserialbus;branch=5.6;protocol=git'.
>> Unable to fetch URL from any source.
>> ERROR: Logfile of failure stored in:
>> /media/modjo/data1TO/yocto/seco/udoo-community-bsp/neoBuild/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/qtserialbus/5.5.99+5.6.0-rc+gitAUTOINC+6a16281ace-r0/temp/log.do_fetch.5862
>> ERROR: Task 894
>> (/media/modjo/data1TO/yocto/seco/udoo-community-bsp/sources/meta-qt5/recipes-qt/qt5/qtserialbus_git.bb,
>> do_fetch) failed with exit code '1'
>>
>> This is my qtserialbus_git.bb :
>>
>> require qt5.inc
>> require qt5-git.inc
>>
>> # There are no LGPLv3-only licensed files in this component.
>> # There are no GPLv2 licensed files in this component.
>> LICENSE = "GFDL-1.3 & BSD & (LGPL-2.1 & The-Qt-Company-Qt-LGPL-Exception-1.1
>> | LGPL-3.0)"
>> LIC_FILES_CHKSUM = " \
>>      file://LICENSE.LGPLv3;md5=b8c75190712063cde04e1f41b6fdad98 \
>>      file://LICENSE.GPLv3;md5=40f9bf30e783ddc201497165dfb32afb \
>>      file://LICENSE.FDL;md5=6d9f2a9af4c8b8c3c769f6cc1b6aaf7e \
>>      file://LICENSE.GPLv2;md5=05832301944453ec79e40ba3c3cfceec \
>> "
>>
>> DEPENDS += "qtbase qtserialport"
>>
>> SRCREV = "6a16281aceedb713676e16c3074e6f7ea1e70b79"
>>
>> The SRCREV is the git SHA1 of the repository qtserialbus. For the 5.6
>> Branch the latest one is:
>>
>> SRCREV = "92c979c6652d55c30ab9118d45db74d8da96fc3b"
>>
>>
>> You can check the SHA1s here:
>> https://github.com/qtproject/qtserialbus/commits/5.6
>>
>> The MD5 Sums will be complained during configure step and bitbake wil
>> tell you the right ones.
>> Please check if the Licences do match
>>
>> Regards,
>> Christian
>>
>> An idea is welcome !
>>
>> Regards,
>>
>> Mickaël
>>
>>
>>
>> Le 16/03/2016 14:57, idealsim a écrit :
>>
>> Thanks for the tip. I will try it out and let you know ...
>>
>> Regards,
>>
>> Mickaël
>>
>> Le 16/03/2016 10:17, Christian Ege a écrit :
>>
>> Hi,,
>>
>> 2016-03-16 9:04 GMT+01:00 idealsim <idealsim@laposte.net>:
>>
>> Hi, we have build an image for udoo neo from meta-qt5 jansa/master-5.6 and
>> works fine (thanks to Christian Ege ). The problem is that I'm looking for
>> https://github.com/qtproject/qtquickcontrols2 and
>> https://github.com/qtproject/qtserialbus. My question is how we can add this
>> modules to our build ?  I add this to our local.conf :
>>
>>       "qtquickcontrols2 \
>>        qtserialbus \
>>       "
>> But this modules don't have buildable providers ! If someone can help to
>> said me how to proceed ...
>>
>> You can try to add a meta-qt5/recipes-qt/qt5/qtserialbus_git.bb and
>> take for example meta-qt5/recipes-qt/qt5/qtsensors_git.bb as reference
>>
>> require qt5.inc
>> require qt5-git.inc
>> # There are no LGPLv3-only licensed files in this component.
>> # There are no GPLv2 licensed files in this component.
>> LICENSE = "GFDL-1.3 & BSD & (LGPL-2.1 &
>> The-Qt-Company-Qt-LGPL-Exception-1.1 | LGPL-3.0)"
>> LIC_FILES_CHKSUM = " \
>> file://LICENSE.LGPLv21;md5=58a180e1cf84c756c29f782b3a485c29 \
>> file://LICENSE.LGPLv3;md5=b8c75190712063cde04e1f41b6fdad98 \
>> file://LICENSE.GPLv3;md5=40f9bf30e783ddc201497165dfb32afb \
>> file://LGPL_EXCEPTION.txt;md5=9625233da42f9e0ce9d63651a9d97654 \
>> file://LICENSE.FDL;md5=6d9f2a9af4c8b8c3c769f6cc1b6aaf7e \
>> file://LICENSE.GPLv2;md5=05832301944453ec79e40ba3c3cfceec \
>> "
>> DEPENDS += "qtbase"
>>
>> SRCREV = "71a323e1f12df8d213a4052621027e223eb5a343"
>>
>> The configure step will bail out due to the fact that you have wrong
>> checksums but it will show you the right ones
>>
>> Best,
>> Christian
>>
>>
>> regards,
>>
>> Mickael
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
>>
>>
>>
>>
>
>


