Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C0EBE00572; Mon, 14 Jul 2014 15:38:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30887E004FF
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 15:38:17 -0700 (PDT)
Received: by mail-pd0-f174.google.com with SMTP id fp1so2582686pdb.5
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 15:38:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=sBq50dPs4OWRR1zrgmxkCLD0kmtnSjzleawXPoHoGpM=;
	b=J7s9EE21/w1NWbVw8OKWUXmgCKCbI409QW5RJOOPVD5bnX9uKOSfLvjgZwCbwIsTh/
	W7z2JifySCHL32MYbLnfcf3DRZzAXnhkk2pRYY6RrfIWmKWuaPmrIyK8WwCexn3Dx1FN
	OcrQsR3qn8zDyFUHrut6aG31xjKN1CZAOX+s15wm1vOmcIOvIsT15qE140Jo+bbJAGYA
	aeKzkLCpUgnNsuJiU6wIAhnhjoKOWBz9nkSWJoCet8iBkNRPNwaklgzGt7fqtD5dbIyn
	AYarVf871mEREzoqreMLrkukPlYO2m3sCvCaEFmI/D66dXdOuGtSbxpdB3JpEw/Is4lA
	pWJA==
X-Gm-Message-State: ALoCoQmthBCg84CXs2pbrHQE7boT+PuhSw/UitT9ODeHFHEZl5O8xmG10HjVcSYBNCW341iw3M4k
X-Received: by 10.70.109.169 with SMTP id ht9mr11512088pdb.106.1405377497002; 
	Mon, 14 Jul 2014 15:38:17 -0700 (PDT)
Received: from [172.16.1.20] (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	nz7sm15942493pdb.48.2014.07.14.15.38.15 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 14 Jul 2014 15:38:16 -0700 (PDT)
Message-ID: <53C45BD7.1020104@mvista.com>
Date: Mon, 14 Jul 2014 15:38:15 -0700
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: OE-core <openembedded-core@lists.openembedded.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: /etc/os-release
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
X-List-Received-Date: Mon, 14 Jul 2014 22:38:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello all,

I noticed some reference to /etc/os-release in some recipes. Where can I 
find the initial creation of /etc/os-release? If one is not created, 
would there desire to have one?

regards,
Armin

