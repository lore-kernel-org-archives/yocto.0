Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E319FE00C23; Thu, 17 Mar 2016 09:16:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [194.117.213.103 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp.laposte.net (smtpoutz28.laposte.net [194.117.213.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EB96E00929
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 09:16:35 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout016 (Postfix) with ESMTP id 1ED51111CA5
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 17:16:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail1;
	t=1458231394; bh=yXLoapLKMqGNeKFbySArPkkEC0URu8IKZ/sJf2qmMlQ=;
	h=Subject:To:References:Cc:From:Date:In-Reply-To;
	b=aDwP07TVtbbfXQuDaxYKfYl6jW/oKkDTFuNmcRdyto50rAY+GuzFIyL48kl/cJzfO
	WxZAvO7L5kYfIUrn9TcannWt9MCmpl35qT3w5r40su9Wo/tu1tGNRVEHozHCbqOz3S
	U5J7SO5+xnaAePMWLFJt+OAL2Yd0CdvDeQGO/4ejz2MKMi+vNAN3qUCVu3mJpK/jsX
	VZTx/AT5nIC4gAZ6q+FhZfQAYesrTCWOP1z36kasUvLf6eP3ziSUTbbTtQc3zCYLji
	8Df6iKcM0y2g2r3m9EAZcFbqztCEaRLPOep9ONjUT4wdAzgbo4fEmXaQrYvW7waHUy
	zw3wF+cxgKiAQ==
Received: from lpn-prd-vrin003 (lpn-prd-vrin003.laposte [10.128.63.4])
	by lpn-prd-vrout016 (Postfix) with ESMTP id 1AFA2111C63
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 17:16:34 +0100 (CET)
Received: from lpn-prd-vrin003 (localhost [127.0.0.1])
	by lpn-prd-vrin003 (Postfix) with ESMTP id 048F048C3B2
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 17:16:34 +0100 (CET)
Received: from [192.168.1.45] (ARennes-654-1-161-212.w92-139.abo.wanadoo.fr
	[92.139.120.212])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by lpn-prd-vrin003 (Postfix) with ESMTPSA id 9DF1E48C386;
	Thu, 17 Mar 2016 17:16:33 +0100 (CET)
To: Christian Ege <k4230r6@gmail.com>
References: <op.yec9f2hdmnlnty@pc-mls.ecafaros.local>
	<56E913A0.2030603@laposte.net>
	<CAALGJZYWqQGbRMp70LNVyZyWMyd7ac-L5aGrdA4VrWX=Z+BvwA@mail.gmail.com>
	<56E9664F.8000505@laposte.net>
From: idealsim <idealsim@laposte.net>
Message-ID: <56EAD860.4000306@laposte.net>
Date: Thu, 17 Mar 2016 17:16:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <56E9664F.8000505@laposte.net>
X-VR-SrcIP: 92.139.120.212
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeekkedrtdeggdekudcutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhs
X-VR-Cause-3: ucdlqddutddtmdenucfjughrpefuvfhfhffkffgfgggjtgesrgdtrggrtdefjeenucfhrhhomhepihgu
X-VR-Cause-4: vggrlhhsihhmuceoihguvggrlhhsihhmsehlrghpohhsthgvrdhnvghtqeenucffohhmrghinhephiho
X-VR-Cause-5: tghtohhprhhojhgvtghtrdhorhhgpdhgihhthhhusgdrtghomhenucfkphepledvrddufeelrdduvddt
X-VR-Cause-6: rddvuddvnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghloheplgduledvrdduieekrddu
X-VR-Cause-7: rdeghegnpdhinhgvthepledvrddufeelrdduvddtrddvuddvpdhmrghilhhfrhhomhepihguvggrlhhs
X-VR-Cause-8: ihhmsehlrghpohhsthgvrdhnvghtpdhrtghpthhtohepkhegvdeftdhrieesghhmrghilhdrtghomh
X-VR-AvState: No
X-VR-State: 0
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: <DKIM> Re: Qt5.6 new modules
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
X-List-Received-Date: Thu, 17 Mar 2016 16:16:41 -0000
Content-Type: multipart/alternative;
	boundary="------------020505080600070509080505"

--------------020505080600070509080505
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi, i have started a build of the image this master Branch, like you 
said i have an error on qtserialbus :

/WARNING: Failed to fetch URL 
git://github.com/qtproject/qtserialbus.git;name=qtserialbus;branch=5.6;protocol=git, 
attempting MIRRORS if available//
//ERROR: Fetcher failure: Unable to find revision 
6a16281aceedb713676e16c3074e6f7ea1e70b79 in branch 5.6 even from upstream//
//ERROR: Function failed: Fetcher failure for URL: 
'git://github.com/qtproject/qtserialbus.git;name=qtserialbus;branch=5.6;protocol=git'. 
Unable to fetch URL from any source.//
//ERROR: Logfile of failure stored in: 
/media/modjo/data1TO/yocto/seco/udoo-community-bsp/neoBuild/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/qtserialbus/5.5.99+5.6.0-rc+gitAUTOINC+6a16281ace-r0/temp/log.do_fetch.5862//
//ERROR: Task 894 
(/media/modjo/data1TO/yocto/seco/udoo-community-bsp/sources/meta-qt5/recipes-qt/qt5/qtserialbus_git.bb, 
do_fetch) failed with exit code '1'/

This is my /qtserialbus_git.bb :

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
//    file://LICENSE.FDL;md5=6d9f2a9af4c8b8c3c769f6cc1b6aaf7e \//
//file://LICENSE.GPLv2;md5=05832301944453ec79e40ba3c3cfceec \//
//"//
//
//DEPENDS += "qtbase qtserialport"//
//
//SRCREV = "6a16281aceedb713676e16c3074e6f7ea1e70b79"//

/An idea is welcome !

Regards,

Mickaël



Le 16/03/2016 14:57, idealsim a écrit :
> Thanks for the tip. I will try it out and let you know ...
>
> Regards,
>
> Mickaël
>
> Le 16/03/2016 10:17, Christian Ege a écrit :
>> Hi,,
>>
>> 2016-03-16 9:04 GMT+01:00 idealsim <idealsim@laposte.net>:
>>> Hi, we have build an image for udoo neo from meta-qt5 
>>> jansa/master-5.6 and
>>> works fine (thanks to Christian Ege ). The problem is that I'm 
>>> looking for
>>> https://github.com/qtproject/qtquickcontrols2 and
>>> https://github.com/qtproject/qtserialbus. My question is how we can 
>>> add this
>>> modules to our build ?  I add this to our local.conf :
>>>
>>>      "qtquickcontrols2 \
>>>       qtserialbus \
>>>      "
>>> But this modules don't have buildable providers ! If someone can 
>>> help to
>>> said me how to proceed ...
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
>>> regards,
>>>
>>> Mickael
>>>
>>>
>>> -- 
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>


--------------020505080600070509080505
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi, i have started a build of the image this master Branch, like you
    said i have an error on qtserialbus :<br>
    <br>
    <font color="#ff0000"><i>WARNING: Failed to fetch URL
        git://github.com/qtproject/qtserialbus.git;name=qtserialbus;branch=5.6;protocol=git,
        attempting MIRRORS if available</i><i><br>
      </i><i>ERROR: Fetcher failure: Unable to find revision
        6a16281aceedb713676e16c3074e6f7ea1e70b79 in branch 5.6 even from
        upstream</i><i><br>
      </i><i>ERROR: Function failed: Fetcher failure for URL:
        'git://github.com/qtproject/qtserialbus.git;name=qtserialbus;branch=5.6;protocol=git'.
        Unable to fetch URL from any source.</i><i><br>
      </i><i>ERROR: Logfile of failure stored in:
/media/modjo/data1TO/yocto/seco/udoo-community-bsp/neoBuild/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/qtserialbus/5.5.99+5.6.0-rc+gitAUTOINC+6a16281ace-r0/temp/log.do_fetch.5862</i><i><br>
      </i><i>ERROR: Task 894
        (/media/modjo/data1TO/yocto/seco/udoo-community-bsp/sources/meta-qt5/recipes-qt/qt5/qtserialbus_git.bb,
        do_fetch) failed with exit code '1'</i></font><br>
    <br>
    This is my <i>qtserialbus_git.bb :<br>
      <br>
    </i><small><i>require qt5.inc</i><i><br>
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
      </i><i>    <a class="moz-txt-link-freetext" href="file://LICENSE.FDL;md5=6d9f2a9af4c8b8c3c769f6cc1b6aaf7e">file://LICENSE.FDL;md5=6d9f2a9af4c8b8c3c769f6cc1b6aaf7e</a>
        \</i><i><br>
      </i><i>   
        <a class="moz-txt-link-freetext" href="file://LICENSE.GPLv2;md5=05832301944453ec79e40ba3c3cfceec">file://LICENSE.GPLv2;md5=05832301944453ec79e40ba3c3cfceec</a> \</i><i><br>
      </i><i>"</i><i><br>
      </i><i><br>
      </i><i>DEPENDS += "qtbase qtserialport"</i><i><br>
      </i><i><br>
      </i><i>SRCREV = "6a16281aceedb713676e16c3074e6f7ea1e70b79"</i></small><i><br>
      <br>
    </i>An idea is welcome !<br>
    <br>
    Regards,<br>
    <br>
    Mickaël<br>
    <br>
    <br>
    <br>
    <div class="moz-cite-prefix">Le 16/03/2016 14:57, idealsim a écrit :<br>
    </div>
    <blockquote cite="mid:56E9664F.8000505@laposte.net" type="cite">Thanks
      for the tip. I will try it out and let you know ...
      <br>
      <br>
      Regards,
      <br>
      <br>
      Mickaël
      <br>
      <br>
      Le 16/03/2016 10:17, Christian Ege a écrit :
      <br>
      <blockquote type="cite">Hi,,
        <br>
        <br>
        2016-03-16 9:04 GMT+01:00 idealsim <a class="moz-txt-link-rfc2396E" href="mailto:idealsim@laposte.net">&lt;idealsim@laposte.net&gt;</a>:
        <br>
        <blockquote type="cite">Hi, we have build an image for udoo neo
          from meta-qt5 jansa/master-5.6 and
          <br>
          works fine (thanks to Christian Ege ). The problem is that I'm
          looking for
          <br>
          <a class="moz-txt-link-freetext" href="https://github.com/qtproject/qtquickcontrols2">https://github.com/qtproject/qtquickcontrols2</a> and
          <br>
          <a class="moz-txt-link-freetext" href="https://github.com/qtproject/qtserialbus">https://github.com/qtproject/qtserialbus</a>. My question is how
          we can add this
          <br>
          modules to our build ?  I add this to our local.conf :
          <br>
          <br>
               "qtquickcontrols2 \
          <br>
                qtserialbus \
          <br>
               "
          <br>
          But this modules don't have buildable providers ! If someone
          can help to
          <br>
          said me how to proceed ...
          <br>
        </blockquote>
        You can try to add a meta-qt5/recipes-qt/qt5/qtserialbus_git.bb
        and
        <br>
        take for example meta-qt5/recipes-qt/qt5/qtsensors_git.bb as
        reference
        <br>
        <br>
        require qt5.inc
        <br>
        require qt5-git.inc
        <br>
        # There are no LGPLv3-only licensed files in this component.
        <br>
        # There are no GPLv2 licensed files in this component.
        <br>
        LICENSE = "GFDL-1.3 &amp; BSD &amp; (LGPL-2.1 &amp;
        <br>
        The-Qt-Company-Qt-LGPL-Exception-1.1 | LGPL-3.0)"
        <br>
        LIC_FILES_CHKSUM = " \
        <br>
        <a class="moz-txt-link-freetext" href="file://LICENSE.LGPLv21;md5=58a180e1cf84c756c29f782b3a485c29">file://LICENSE.LGPLv21;md5=58a180e1cf84c756c29f782b3a485c29</a> \
        <br>
        <a class="moz-txt-link-freetext" href="file://LICENSE.LGPLv3;md5=b8c75190712063cde04e1f41b6fdad98">file://LICENSE.LGPLv3;md5=b8c75190712063cde04e1f41b6fdad98</a> \
        <br>
        <a class="moz-txt-link-freetext" href="file://LICENSE.GPLv3;md5=40f9bf30e783ddc201497165dfb32afb">file://LICENSE.GPLv3;md5=40f9bf30e783ddc201497165dfb32afb</a> \
        <br>
        <a class="moz-txt-link-freetext" href="file://LGPL_EXCEPTION.txt;md5=9625233da42f9e0ce9d63651a9d97654">file://LGPL_EXCEPTION.txt;md5=9625233da42f9e0ce9d63651a9d97654</a> \
        <br>
        <a class="moz-txt-link-freetext" href="file://LICENSE.FDL;md5=6d9f2a9af4c8b8c3c769f6cc1b6aaf7e">file://LICENSE.FDL;md5=6d9f2a9af4c8b8c3c769f6cc1b6aaf7e</a> \
        <br>
        <a class="moz-txt-link-freetext" href="file://LICENSE.GPLv2;md5=05832301944453ec79e40ba3c3cfceec">file://LICENSE.GPLv2;md5=05832301944453ec79e40ba3c3cfceec</a> \
        <br>
        "
        <br>
        DEPENDS += "qtbase"
        <br>
        <br>
        SRCREV = "71a323e1f12df8d213a4052621027e223eb5a343"
        <br>
        <br>
        The configure step will bail out due to the fact that you have
        wrong
        <br>
        checksums but it will show you the right ones
        <br>
        <br>
        Best,
        <br>
        Christian
        <br>
        <br>
        <br>
        <blockquote type="cite">regards,
          <br>
          <br>
          Mickael
          <br>
          <br>
          <br>
          --
          <br>
          _______________________________________________
          <br>
          yocto mailing list
          <br>
          <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
          <br>
          <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
          <br>
        </blockquote>
        <br>
        <br>
      </blockquote>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------020505080600070509080505--
