Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 194C9E00C6F; Fri, 18 Mar 2016 02:00:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [178.22.154.200 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (idealsim[at]laposte.net)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp.laposte.net (smtpoutz300.laposte.net [178.22.154.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 880E1E00C64
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 02:00:46 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout012 (Postfix) with ESMTP id E25178A61F
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 10:00:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail1;
	t=1458291644; bh=VPLIjS8zrrZi1+Ob8KFcfJHjGDJ1XE4vD48KpvOBx+U=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=qSvRF84Btnua/9yeL92cg1v/Ix+k/w7NO6Qv0ZehS7rCofxoMpNyDGFuZOrhpFej4
	P2gZI4wHyICi3kcp0V/jD5nzRd2+xfsZ4Iv1jktQyy2FfPzYRGSp5B+V6+lk8NFaCl
	ff++QJkrZMVFJUBc7exc5qEtQu119OaSFUBchoHusqGWsSZWU7zwDyyMtR8C3c1Dgt
	3KjyB0aZeZpHYzmUlCzeWzhaMsYvFyf2zOX9bc9OVeuUs5KjI1r0yyc8IIjYC4MvDh
	C8ovih1ouvIyJbV61mNTiaWMrbNwTwbOYSnteGmzlLLnztUz40cg2DrCUTUFa4az5Q
	2lydVk7tPLHTw==
Received: from lpn-prd-vrin004 (lpn-prd-vrin004.laposte [10.128.63.5])
	by lpn-prd-vrout012 (Postfix) with ESMTP id ABF148B2E3
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 10:00:44 +0100 (CET)
Received: from lpn-prd-vrin004 (localhost [127.0.0.1])
	by lpn-prd-vrin004 (Postfix) with ESMTP id 945D770E255
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 10:00:44 +0100 (CET)
Received: from [192.168.1.45] (ARennes-654-1-161-212.w92-139.abo.wanadoo.fr
	[92.139.120.212])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by lpn-prd-vrin004 (Postfix) with ESMTPSA id 235CF70E23F;
	Fri, 18 Mar 2016 10:00:44 +0100 (CET)
To: Christian Ege <k4230r6@gmail.com>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <op.yec9f2hdmnlnty@pc-mls.ecafaros.local>
	<56E913A0.2030603@laposte.net>
	<CAALGJZYWqQGbRMp70LNVyZyWMyd7ac-L5aGrdA4VrWX=Z+BvwA@mail.gmail.com>
	<56E9664F.8000505@laposte.net> <56EAD860.4000306@laposte.net>
	<CAALGJZaPgvZmpXiwADH0Lvu-KV9GD56XGMVJNWrRwke370xGjA@mail.gmail.com>
From: idealsim <idealsim@laposte.net>
Message-ID: <56EBC3BB.9030105@laposte.net>
Date: Fri, 18 Mar 2016 10:00:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <CAALGJZaPgvZmpXiwADH0Lvu-KV9GD56XGMVJNWrRwke370xGjA@mail.gmail.com>
X-VR-SrcIP: 92.139.120.212
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeekkedrtdehgddufedtucetufdoteggodetrfdotffvucfrrhho
X-VR-Cause-2: fhhilhgvmecunfetrffquffvgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhht
X-VR-Cause-3: shculddquddttddmnecujfgurhepuffvfhfhkffffgggjggtsegrtdgrrgdtfeejnecuhfhrohhmpehi
X-VR-Cause-4: uggvrghlshhimhcuoehiuggvrghlshhimheslhgrphhoshhtvgdrnhgvtheqnecuffhomhgrihhnpeih
X-VR-Cause-5: ohgtthhophhrohhjvggtthdrohhrghdpghhithhhuhgsrdgtohhmnecukfhppeelvddrudefledruddv
X-VR-Cause-6: tddrvdduvdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopegludelvddrudeikedr
X-VR-Cause-7: uddrgeehngdpihhnvghtpeelvddrudefledruddvtddrvdduvddpmhgrihhlfhhrohhmpehiuggvrghl
X-VR-Cause-8: shhimheslhgrphhoshhtvgdrnhgvthdprhgtphhtthhopehkgedvfedtrheisehgmhgrihhlrdgtohhm
X-VR-AvState: No
X-VR-State: 0
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
X-List-Received-Date: Fri, 18 Mar 2016 09:00:53 -0000
Content-Type: multipart/alternative;
	boundary="------------040802080205070806000604"

--------------040802080205070806000604
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi and thank you, now i know where to find SRCREV !
After adjust this variable and LICENSE.FDL the source is fetched. My bb :
/
//require qt5.inc//
//require qt5-git.inc//
//
//# There are no LGPLv3-only licensed files in this component.//
//# There are no GPLv2 licensed files in this component.//
//LICENSE = "GFDL-1.3 & BSD & (LGPL-2.1 & 
The-Qt-Company-Qt-LGPL-Exception-1.1 | LGPL-3.0)"//
//LIC_FILES_CHKSUM = " \//
//file://LICENSE.LGPLv3;md5=b8c75190712063cde04e1f41b6fdad98 \//
//file://LICENSE.GPLv3;md5=40f9bf30e783ddc201497165dfb32afb \//
//    file://LICENSE.FDL;md5=f70ee9a6c44ae8917586fea34dff0ab5 \//
//file://LICENSE.GPLv2;md5=05832301944453ec79e40ba3c3cfceec \//
//"//
//
//DEPENDS += "qtbase qtserialport"//
//
//SRCREV = "92c979c6652d55c30ab9118d45db74d8da96fc3b"/

When i launch bitbake qtserialbus, the process build without error, but 
it seems there is something missing because the compile step is very 
fast and my 
neoBuild/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/qtserialbus/5.5.99+5.6.0-rc+gitAUTOINC+92c979c665-r0/package/ 
folder is empty ! If i take the qtsensors folder, there are this folder 
(in package) :
usr/
     include/
     lib/
     src/

I'm looking to meta-qt5 BSP to find where i can precise to build my new 
recipe but didn't find anything can help. Do you know how to proceed ?

regards,

Le 18/03/2016 08:16, Christian Ege a écrit :
> Hi,
>
> 2016-03-17 17:16 GMT+01:00 idealsim <idealsim@laposte.net>:
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
> The SRCREV is the git SHA1 of the repository qtserialbus. For the 5.6
> Branch the latest one is:
>
> SRCREV = "92c979c6652d55c30ab9118d45db74d8da96fc3b"
>
>
> You can check the SHA1s here:
> https://github.com/qtproject/qtserialbus/commits/5.6
>
> The MD5 Sums will be complained during configure step and bitbake wil
> tell you the right ones.
> Please check if the Licences do match
>
> Regards,
> Christian
>
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
>
>


--------------040802080205070806000604
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi and thank you, now i know where to find SRCREV !<br>
    After adjust this variable and LICENSE.FDL the source is fetched. My
    bb :<br>
    <small><i><br>
      </i><i>require qt5.inc</i><i><br>
      </i><i>require qt5-git.inc</i><i><br>
      </i><i><br>
      </i><i># There are no LGPLv3-only licensed files in this
        component.</i><i><br>
      </i><i># There are no GPLv2 licensed files in this component.</i><i><br>
      </i><i>LICENSE = "GFDL-1.3 &amp; BSD &amp; (LGPL-2.1 &amp;
        The-Qt-Company-Qt-LGPL-Exception-1.1 | LGPL-3.0)"</i><i><br>
      </i><i>LIC_FILES_CHKSUM = " \</i><i><br>
      </i><i>   
        <a class="moz-txt-link-freetext" href="file://LICENSE.LGPLv3;md5=b8c75190712063cde04e1f41b6fdad98">file://LICENSE.LGPLv3;md5=b8c75190712063cde04e1f41b6fdad98</a> \</i><i><br>
      </i><i>   
        <a class="moz-txt-link-freetext" href="file://LICENSE.GPLv3;md5=40f9bf30e783ddc201497165dfb32afb">file://LICENSE.GPLv3;md5=40f9bf30e783ddc201497165dfb32afb</a> \</i><i><br>
      </i><i>    <a class="moz-txt-link-freetext" href="file://LICENSE.FDL;md5=f70ee9a6c44ae8917586fea34dff0ab5">file://LICENSE.FDL;md5=f70ee9a6c44ae8917586fea34dff0ab5</a>
        \</i><i><br>
      </i><i>   
        <a class="moz-txt-link-freetext" href="file://LICENSE.GPLv2;md5=05832301944453ec79e40ba3c3cfceec">file://LICENSE.GPLv2;md5=05832301944453ec79e40ba3c3cfceec</a> \</i><i><br>
      </i><i>"</i><i><br>
      </i><i><br>
      </i><i>DEPENDS += "qtbase qtserialport"</i><i><br>
      </i><i><br>
      </i><i>SRCREV = "92c979c6652d55c30ab9118d45db74d8da96fc3b"</i></small><br>
    <br>
    When i launch bitbake qtserialbus, the process build without error,
    but it seems there is something missing because the compile step is
    very fast and my
    neoBuild/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/qtserialbus/5.5.99+5.6.0-rc+gitAUTOINC+92c979c665-r0/package/
    folder is empty ! If i take the qtsensors folder, there are this
    folder (in package) :<br>
    usr/<br>
        include/<br>
        lib/<br>
        src/<br>
    <br>
    I'm looking to meta-qt5 BSP to find where i can precise to build my
    new recipe but didn't find anything can help. Do you know how to
    proceed ?<br>
    <br>
    regards,<br>
    <br>
    <div class="moz-cite-prefix">Le 18/03/2016 08:16, Christian Ege a
      écrit :<br>
    </div>
    <blockquote
cite="mid:CAALGJZaPgvZmpXiwADH0Lvu-KV9GD56XGMVJNWrRwke370xGjA@mail.gmail.com"
      type="cite">
      <pre wrap="">Hi,

2016-03-17 17:16 GMT+01:00 idealsim <a class="moz-txt-link-rfc2396E" href="mailto:idealsim@laposte.net">&lt;idealsim@laposte.net&gt;</a>:
</pre>
      <blockquote type="cite">
        <pre wrap="">Hi, i have started a build of the image this master Branch, like you said i
have an error on qtserialbus :

WARNING: Failed to fetch URL
git://github.com/qtproject/qtserialbus.git;name=qtserialbus;branch=5.6;protocol=git,
attempting MIRRORS if available
ERROR: Fetcher failure: Unable to find revision
6a16281aceedb713676e16c3074e6f7ea1e70b79 in branch 5.6 even from upstream
ERROR: Function failed: Fetcher failure for URL:
'git://github.com/qtproject/qtserialbus.git;name=qtserialbus;branch=5.6;protocol=git'.
Unable to fetch URL from any source.
ERROR: Logfile of failure stored in:
/media/modjo/data1TO/yocto/seco/udoo-community-bsp/neoBuild/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/qtserialbus/5.5.99+5.6.0-rc+gitAUTOINC+6a16281ace-r0/temp/log.do_fetch.5862
ERROR: Task 894
(/media/modjo/data1TO/yocto/seco/udoo-community-bsp/sources/meta-qt5/recipes-qt/qt5/qtserialbus_git.bb,
do_fetch) failed with exit code '1'

This is my qtserialbus_git.bb :

require qt5.inc
require qt5-git.inc

# There are no LGPLv3-only licensed files in this component.
# There are no GPLv2 licensed files in this component.
LICENSE = "GFDL-1.3 &amp; BSD &amp; (LGPL-2.1 &amp; The-Qt-Company-Qt-LGPL-Exception-1.1
| LGPL-3.0)"
LIC_FILES_CHKSUM = " \
    <a class="moz-txt-link-freetext" href="file://LICENSE.LGPLv3;md5=b8c75190712063cde04e1f41b6fdad98">file://LICENSE.LGPLv3;md5=b8c75190712063cde04e1f41b6fdad98</a> \
    <a class="moz-txt-link-freetext" href="file://LICENSE.GPLv3;md5=40f9bf30e783ddc201497165dfb32afb">file://LICENSE.GPLv3;md5=40f9bf30e783ddc201497165dfb32afb</a> \
    <a class="moz-txt-link-freetext" href="file://LICENSE.FDL;md5=6d9f2a9af4c8b8c3c769f6cc1b6aaf7e">file://LICENSE.FDL;md5=6d9f2a9af4c8b8c3c769f6cc1b6aaf7e</a> \
    <a class="moz-txt-link-freetext" href="file://LICENSE.GPLv2;md5=05832301944453ec79e40ba3c3cfceec">file://LICENSE.GPLv2;md5=05832301944453ec79e40ba3c3cfceec</a> \
"

DEPENDS += "qtbase qtserialport"

SRCREV = "6a16281aceedb713676e16c3074e6f7ea1e70b79"
</pre>
      </blockquote>
      <pre wrap="">The SRCREV is the git SHA1 of the repository qtserialbus. For the 5.6
Branch the latest one is:

SRCREV = "92c979c6652d55c30ab9118d45db74d8da96fc3b"


You can check the SHA1s here:
<a class="moz-txt-link-freetext" href="https://github.com/qtproject/qtserialbus/commits/5.6">https://github.com/qtproject/qtserialbus/commits/5.6</a>

The MD5 Sums will be complained during configure step and bitbake wil
tell you the right ones.
Please check if the Licences do match

Regards,
Christian

</pre>
      <blockquote type="cite">
        <pre wrap="">
An idea is welcome !

Regards,

Mickaël



Le 16/03/2016 14:57, idealsim a écrit :

Thanks for the tip. I will try it out and let you know ...

Regards,

Mickaël

Le 16/03/2016 10:17, Christian Ege a écrit :

Hi,,

2016-03-16 9:04 GMT+01:00 idealsim <a class="moz-txt-link-rfc2396E" href="mailto:idealsim@laposte.net">&lt;idealsim@laposte.net&gt;</a>:

Hi, we have build an image for udoo neo from meta-qt5 jansa/master-5.6 and
works fine (thanks to Christian Ege ). The problem is that I'm looking for
<a class="moz-txt-link-freetext" href="https://github.com/qtproject/qtquickcontrols2">https://github.com/qtproject/qtquickcontrols2</a> and
<a class="moz-txt-link-freetext" href="https://github.com/qtproject/qtserialbus">https://github.com/qtproject/qtserialbus</a>. My question is how we can add this
modules to our build ?  I add this to our local.conf :

     "qtquickcontrols2 \
      qtserialbus \
     "
But this modules don't have buildable providers ! If someone can help to
said me how to proceed ...

You can try to add a meta-qt5/recipes-qt/qt5/qtserialbus_git.bb and
take for example meta-qt5/recipes-qt/qt5/qtsensors_git.bb as reference

require qt5.inc
require qt5-git.inc
# There are no LGPLv3-only licensed files in this component.
# There are no GPLv2 licensed files in this component.
LICENSE = "GFDL-1.3 &amp; BSD &amp; (LGPL-2.1 &amp;
The-Qt-Company-Qt-LGPL-Exception-1.1 | LGPL-3.0)"
LIC_FILES_CHKSUM = " \
<a class="moz-txt-link-freetext" href="file://LICENSE.LGPLv21;md5=58a180e1cf84c756c29f782b3a485c29">file://LICENSE.LGPLv21;md5=58a180e1cf84c756c29f782b3a485c29</a> \
<a class="moz-txt-link-freetext" href="file://LICENSE.LGPLv3;md5=b8c75190712063cde04e1f41b6fdad98">file://LICENSE.LGPLv3;md5=b8c75190712063cde04e1f41b6fdad98</a> \
<a class="moz-txt-link-freetext" href="file://LICENSE.GPLv3;md5=40f9bf30e783ddc201497165dfb32afb">file://LICENSE.GPLv3;md5=40f9bf30e783ddc201497165dfb32afb</a> \
<a class="moz-txt-link-freetext" href="file://LGPL_EXCEPTION.txt;md5=9625233da42f9e0ce9d63651a9d97654">file://LGPL_EXCEPTION.txt;md5=9625233da42f9e0ce9d63651a9d97654</a> \
<a class="moz-txt-link-freetext" href="file://LICENSE.FDL;md5=6d9f2a9af4c8b8c3c769f6cc1b6aaf7e">file://LICENSE.FDL;md5=6d9f2a9af4c8b8c3c769f6cc1b6aaf7e</a> \
<a class="moz-txt-link-freetext" href="file://LICENSE.GPLv2;md5=05832301944453ec79e40ba3c3cfceec">file://LICENSE.GPLv2;md5=05832301944453ec79e40ba3c3cfceec</a> \
"
DEPENDS += "qtbase"

SRCREV = "71a323e1f12df8d213a4052621027e223eb5a343"

The configure step will bail out due to the fact that you have wrong
checksums but it will show you the right ones

Best,
Christian


regards,

Mickael


--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>





</pre>
      </blockquote>
      <pre wrap="">


</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------040802080205070806000604--
