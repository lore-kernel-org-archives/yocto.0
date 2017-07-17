Return-Path: <srsasi@yahoo.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81FD7E00C30; Mon, 17 Jul 2017 07:08:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_MUA_MOZILLA, FREEMAIL_FROM,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srsasi[at]yahoo.co.in)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [106.10.242.110 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic301-47.consmr.mail.sg3.yahoo.com
	(sonic301-47.consmr.mail.sg3.yahoo.com [106.10.242.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1FB6E00BB6
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
	t=1500300525; bh=pUmveiPuZ6g+SqWcTgU5p2hMivcgQzCXVzgPMME2jIA=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=I5L2nfaX+JGeiFsLImpm/pp1IE1kIRA7RoL5pzBT/KDJjwP0vwK8ODXfg8bblOXiB+J1CuQE4nvUyiPJsyyyvlxCLW5TRxZpWnUjEbNAc68b/uxO187XuTBcgqm2mU6xG/Rb7tXAyElD4D5biZe1ibakR4eLzPam2YqICNGSHZRFMKF8q02jtxCyT8DVFMsnwJBUMas5zwBXXHauBv4r/o8qzbtBmg5Ea9Zc8B6+cym0sf4h+B34nwlgQ2NoX5037uELyy6CqmjvbRQR0ct2c0MAPwWxitXLgR+KBVi2rr8kI3N9wvIVGh4KB6oxQIctK9BuS1362+20jgf0UVOsuQ==
X-YMail-OSG: 9lvGxKMVM1nz4zQEtjCZj3xSbX24dN_jgv6_cCnTzpcPdVM99tvQQh0HDMSmLE5
	x.eWSk3KcQGQn7K9mGUGlMARQ_DhHmPWPyXVDiC3ybuqUQJpc0uNHM6TueM9vmUxh_vMZf7kCltm
	nB4wjEACse6krGhZf6F.gXzxLgUD8V0nHWOGRUyXq9IwdKCCE1wu5.zQuCM.r7oGPu.4cdh4CPN1
	RoK2vgHdiLpZZ2WJOS0y4YdAgZmYolZOkzqkGUizNa_HrB1Y41qNIFEkn1VWZR.tPO_YmExMgDvc
	KPuVkWXxdE0mx4Ge7V31pD5rY7T09L4GuKF9S_cmc90s97rkAQRO4xJ1WH3wJ4lhOBoEIxqNAo4.
	Ji3g9C3au4cq8H9MqptUQ4WmD6F_D0pLds6q7E8tD1AA4dcdMp0MBjoNtMlwWVMGL3ZCCS0HpQl0
	bLFjP8RHiZodIoRzmzRzgUP056iBZ5FrWpHY9CY1.DfyK1fGdGrVo0fow7c48dvSyXK6WIUiX5zo
	0dtbioWh0GVrRdVYp9ZFElEDVyCs8
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic301.consmr.mail.sg3.yahoo.com with HTTP;
	Mon, 17 Jul 2017 14:08:45 +0000
Date: Mon, 17 Jul 2017 14:04:39 +0000 (UTC)
From: "S.R.Sasi Kumar" <srsasi@yahoo.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1837083563.2585977.1500300279132@mail.yahoo.com>
MIME-Version: 1.0
References: <1837083563.2585977.1500300279132.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.10092 YahooMailNeo Mozilla/5.0 (Windows NT 6.1)
	AppleWebKit/537.36 (KHTML,
	like Gecko) Chrome/59.0.3071.115 Safari/537.36
Subject: Warning: QA Issue: <sample_Package> requires libc.so.6(GLIBC_2.7), but no providers in its RDEPENDs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: "S.R.Sasi Kumar" <srsasi@yahoo.co.in>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Jul 2017 14:08:49 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2585976_1582747054.1500300279131"

------=_Part_2585976_1582747054.1500300279131
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Greetings!
I am new to Yocto project. I am building a simple sample application using Yocto Project, Krogoth branch. I am getting a warning "do_package_qa: QA Issue: <sample Application> requires libc.so.6(GLIBC_2.7)(64-bit) , bit no providers in <sample Application> (file-rdeps), however the application builds and runs. Can anyone kindly suggest a solution to solve the warning. Thanks.

------=_Part_2585976_1582747054.1500300279131
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div style="color:#000; background-color:#fff; font-family:Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:13px"><div id="yui_3_16_0_ym19_1_1500296252535_25338">Greetings!</div><div id="yui_3_16_0_ym19_1_1500296252535_25329"><br></div><div dir="ltr" id="yui_3_16_0_ym19_1_1500296252535_25331">I am new to Yocto project. I am building a simple sample application using Yocto Project, Krogoth branch. I am getting a warning "do_package_qa: QA Issue: &lt;sample Application&gt; requires libc.so.6(GLIBC_2.7)(64-bit) , bit no providers in &lt;sample Application&gt; (file-rdeps), however the application builds and runs. Can anyone kindly suggest a solution to solve the warning. Thanks.</div></div></body></html>

------=_Part_2585976_1582747054.1500300279131--
