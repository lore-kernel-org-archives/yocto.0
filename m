Return-Path: <surya.n@easyarm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13A2AE00B01; Tue, 28 Mar 2017 05:14:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0357]
X-Greylist: delayed 4297 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 Mar 2017 05:14:22 PDT
Received: from linux8.hostguy.com (linux8.hostguy.com [144.76.114.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A97C6E00A51
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 05:14:22 -0700 (PDT)
Received: from [106.51.36.173] (port=50670 helo=[192.168.1.17])
	by linux8.hostguy.com with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.88) (envelope-from <surya.n@easyarm.com>) id 1csotf-004OQQ-UK
	for yocto@yoctoproject.org; Tue, 28 Mar 2017 16:32:44 +0530
Message-ID: <58DA42CE.4040809@easyarm.com>
Date: Tue, 28 Mar 2017 16:32:38 +0530
From: Surya <surya.n@easyarm.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - linux8.hostguy.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - easyarm.com
X-Get-Message-Sender-Via: linux8.hostguy.com: authenticated_id:
	surya.n@easyarm.com
X-Authenticated-Sender: linux8.hostguy.com: surya.n@easyarm.com
Subject: Copying Static library to libdir of YOCTO
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
X-List-Received-Date: Tue, 28 Mar 2017 12:14:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello ,

I am facing some issues , when trying to copy static libraries like 
libaccess.a  & liblang.a to ${libdir} of rootfs.

I can see those libraries in the  "usr/lib" directory of that particular 
package which is generated in "tmp/work" folder . But somehow these 
libraries are not copied to rootfs "/usr/lib" directory.

I am using below instructions:

         install -d ${D}${libdir}/
         install -m 0755 ${S}/accesslib_new/libaccess.a ${D}${libdir}

         install -d ${D}${libdir}/
         install -m 0755 ${S}/WebServices_LanguageLibrary/liblang.a 
${D}${libdir}


Any suggestion...


Thanks & regards
Surya

