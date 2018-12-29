Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB02BE00CD6; Sat, 29 Dec 2018 02:53:40 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48097E00C92
	for <yocto@yoctoproject.org>; Sat, 29 Dec 2018 02:53:38 -0800 (PST)
Received: from [192.168.24.172] ([79.2.65.198])
	by smtpcmd09.ad.aruba.it with bizsmtp
	id Hmtc1z00T4GeqKz01mtdxj; Sat, 29 Dec 2018 11:53:37 +0100
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <4db4a85f-0c98-9215-6dfb-a8dfa0dcba86@faresoftware.it>
Date: Sat, 29 Dec 2018 11:53:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.3
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1546080817; bh=jNoZ5GJWaO7/fVvHsTI96YEY/gVGF2lAxIvAeX0wzRc=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=cGNpUIrxoREDeW1mruVdggHxm4k8YkFvZRWin1Hh+nRGH+kCOMNLPzEz71npquIsZ
	1kIOzh2Q2ncy13++rLex1RzcwnSF8anJhL5UAPs4MNllGxUIjwT0/Ov6VcBzIU1G8G
	qfkNVjy33av3PmolSKSBR9sImGUiUzX9pdrd0wb/P/iiCyZWz8iQL+q8BkS9cTs0rV
	CreCPKrORSNB56VnyrEbf9FkA+deQE9jb8r4I/VU+/l4TorSdXGiy8iESKOoSBlj5d
	0HPHBdDuq+nxxL75o4t0iL3AjGLfnYc9y6zaUAXly6H+QxLnDsmWOw2tiCXqaSXerK
	OaTm1EGZbbR+w==
Subject: Disable SIMD extensions for Geode LX800
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
X-List-Received-Date: Sat, 29 Dec 2018 10:53:40 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I need to build Thud for Geode LX800, porting a old application with Yocto.

I need to remove SIMD extensions for qt5 and other libraries that could 
use SIMD extensions (sse2 mmx and so on)


How can I disable the SIMD extension globally for BSP?

I think to use TUNE_FEATURES variable.

Is the right way?


Best regards,

   MZ


