Return-Path: <jicheu@gmail.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B763E016AC
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 04:48:06 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id q58so766358wes.17
	for <yocto@yoctoproject.org>; Wed, 09 Oct 2013 04:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=/5x0pmnoONt015Zc+BfwXbucB1z2R6PSuMwTQuV/lM8=;
	b=q78J8oDXF0xXSoMuJDiFZXkKsltu6GhkZPm4fByowu8LlAcvwDvb2RwV8jOopbVbyh
	BhFq208T+YNisrSeIaA2Wfr8fZqVcdwQaNWL6yBOZ9HFOSKIc5Uy9QnfJ5PibRkgjL1k
	xotTQp8i4jC7axO5l94Epqye5rpzatsCRusE1DrMiL/1bobhqFpUmYRCRjibyQwzPQpC
	g6Z5cK9w8v38bA7FkpBaGxADVoocVaLfuG0RgtJ2bFaIpOPRhmLQUvL0lALJkw+ZTDW5
	tJLoU8/ryOGGSb+0IhK5+x1TwlfYQ/VtScj24L28ewCuC4U1q+OpdmFgdLD0OnXW95x8
	+S4A==
X-Received: by 10.194.119.106 with SMTP id kt10mr190660wjb.72.1381319285179;
	Wed, 09 Oct 2013 04:48:05 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94])
	by mx.google.com with ESMTPSA id b7sm14636383wiz.8.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 09 Oct 2013 04:48:03 -0700 (PDT)
Message-ID: <52554271.70306@gmail.com>
Date: Wed, 09 Oct 2013 13:48:01 +0200
From: Jean-Charles <jicheu@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Mailman-Approved-At: Wed, 09 Oct 2013 07:14:49 -0700
Subject: dleyna not building
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
X-List-Received-Date: Wed, 09 Oct 2013 11:48:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Anyone tried to build dleyna recently ? The do_configure invariably 
fails on dylan (with a very long configure log but nothing obvious.. 
however a simple "bitbake media-service-upnp" will lead to the same error.

I suspect the package is somewhat outdate as I had to change the MD5 to 
be able to build it:

-SRC_URI[md5sum] = "9fc4db84b3459bc77232b24bde48b000"
-SRC_URI[sha256sum] = 
"9cdee47bbbfa3de5aaa5cf3fc9e208ccd97e5079f6d8fa84a6d1f24a1b760237"
+SRC_URI[md5sum] = "eb7d58a429184180fdc48330bba9bb45"
+SRC_URI[sha256sum] = 
"979661e4828a23292f05e9b82707d291fe2a63eeddcde0150a2f09c5c060847f"


Regards,
J.


