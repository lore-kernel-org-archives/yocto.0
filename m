Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA853E00D99; Fri, 13 Sep 2019 01:54:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd0641.aruba.it (smtpcmd0641.aruba.it [62.149.156.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1F61E00D8A
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2019 01:54:03 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd06.ad.aruba.it with bizsmtp
	id 0wu12100t2wfazh01wu1uw; Fri, 13 Sep 2019 10:54:02 +0200
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <4d558acc-dd18-55b1-24f1-d8d04ea83cca@faresoftware.it>
Date: Fri, 13 Sep 2019 10:54:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1568364842; bh=YBAp76RuHztBqh2PDlACa+Ok4v8LoLtQkuF6s6kOIDQ=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=Mn0XJRGtHNo8ZKC5jrEC94wM80odt0nZi7apkZqxgjrfQyYjgSqnfycSHce7Uxc96
	Fo08IUs9R4rbzRPFaRXPZCT4jPxPV2w7yroGd9rcOrtZSPyU8nyyMwMXMa47xLvHUn
	Ud1qMN2/ZLUkfrHIulvVNPflWkJhm9m2AQnpB5X+KhS/oQBtRungRyom7CVtX2Fl61
	SZMSRhpWhWGtVEeaYqaJCZCJ04dSFHGlaJQi5/0FsPHwt+veQ0pe0ft7vUe4w5uv72
	hK96yqMs1dFeCZVGLpJ+2hvl3Z+WBCU4F449BJF3qN3lloN9lQx/eSRGPI54AcMzex
	gru5b3ueLDWiw==
Subject: Image for sassive test for Qt QML
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
X-List-Received-Date: Fri, 13 Sep 2019 08:54:05 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I need to check a small diversion on qt5-qtdeclarative package.

I disable SSE2 check feature for qv8engine.


There  is a way to execute a massive test of all QtQuick QML features 
over final platform?


MZ


