Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17C0DE00C91; Thu, 13 Dec 2018 00:15:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.156.86 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd0986.aruba.it (smtpcmd0986.aruba.it [62.149.156.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70F68E0090E
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 00:15:35 -0800 (PST)
Received: from [192.168.24.108] ([87.26.78.158])
	by smtpcmd09.ad.aruba.it with bizsmtp
	id BLFZ1z00V3QvvBK01LFZHB; Thu, 13 Dec 2018 09:15:33 +0100
From: Mauro Ziliani <mauro@faresoftware.it>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <d855ef65-2a33-7361-b7b7-61ab42a40559@faresoftware.it>
Date: Thu, 13 Dec 2018 09:15:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.3
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1544688933; bh=zepSc7qMnO6MrrxCigoLpOnxogXgSShcKOKUCoYsb24=;
	h=From:Subject:To:Date:MIME-Version:Content-Type;
	b=PolM2mrZ4IXdSKlnVn40h8GlZ15DX+W+UrkaqZA9VcB0NVOwOZ52n0pJloOrGt/OA
	WBy8oav+bKk2F9EHZIWdGxKcTlZJ0H/6VBAd5O90s4f4N10o2vDc8zl1e5lppgEBkd
	1BNiDNd35Gw2TfXG0Fp4KduERxJlKDxy1t4N77KTu9lPSYwcF3e4mbiya4Wtanjxja
	IG7+fHR/ElzCRvvzLJaBNEBpqtrIqIrOydQLWj6OY5yz8Yon+C7PTQfl3auiWEBF0x
	D0JSrQhbyavpsvMfZ8BRx8e5rMXz0/UCa6+Y88QNF1bGrI9Jx8xIiklXYFAHB3Y4Bz
	HzJWo4GpjRXwQ==
Subject: Relase or debug by PACKAGECONFIG or MY_APP_VAR?
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
X-List-Received-Date: Thu, 13 Dec 2018 08:15:37 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I have an application made with cmake and qt5 by the recipe my-app.bb


To compile the app in release mode I need set

EXTRA_OECMAKE + = " -DCMAKE_BUILD_TYPE=Release "


while in debug mode I need to set

EXTRA_OECMAKE + = " -DCMAKE_BUILD_TYPE=Debug "


I defined 2 image recipes: one for production (Release) and one for
testing (Debug)

my-system.bb

my-system-debug.bb


Both my-system.bb and my-system-debug.bb have

IMAGE_INSTALL_append = " my-app "


But for my-system-debug.bb I'd like to set CMAKE_BUILD_TYPE=Debug for
my-app.bb


How can I do that?


Now I try to define my-app.bb the variable

...

MY_APP_BUILD_TYPE ?= "Release"

EXTRA_OECMAKE + = " -DCMAKE_BUILD_TYPE=${MY_APP_BUILD_TYPE} "

...


And in my-system-debug.bb I set

MY_APP_BUILD_TYPE = "Debug"


Or I need to use PACKAGECONFIG?


Best regards,

  Mauro





