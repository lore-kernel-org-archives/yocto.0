Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E874DE00A4C; Thu, 10 Oct 2019 08:35:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [62.149.156.101 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd10101.aruba.it (smtpcmd10101.aruba.it [62.149.156.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C8C4E0053F
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 08:35:12 -0700 (PDT)
Received: from [10.0.3.128] ([213.213.6.58])
	by smtpcmd10.ad.aruba.it with bizsmtp
	id BrbB210121F741R01rbBFj; Thu, 10 Oct 2019 17:35:11 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <35d0e6da-7111-9c9f-dbbf-fec0ce0f9afe@faresoftware.it>
Date: Thu, 10 Oct 2019 17:35:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1570721711; bh=Yz2wAOLQPb49QVO1Mt6N5/O/Wu3/rRKIO1l0OjCbP24=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=V3RGl1gxAt3sJvsK/VW4S05diwLw5K2rNktn828HImJ+VN5tF5pljjp0LoIMSnVoU
	kbabimol3WFHdN0QSci8XJtiJPdaWBJPMLCFgvXHQpYyTrx6zZyx5wj/BiEoi9zc9z
	6OWqpMftYYUOvBqfL5RO7loi6EEVUoJYshaBu5S+5H/eQjgLjqqRvcyLa+rnvdu67Z
	kNq1WKn1D6159M4CmnlCFkZqDh3t+1wWsvraBivu0S4CBoB+bT3kPJKpea6PmSMCuO
	BTKqmN0XwsTR8mLkXLLc/EtvkQQi7fiND9/NsHPF+tV1/OCrOg8s0seyato/KHFhAd
	UvTczOo3kvQQA==
Subject: Force do_package_index
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
X-List-Received-Date: Thu, 10 Oct 2019 15:35:13 -0000
Content-Type: multipart/alternative;
	boundary="------------6AA4B3F878D14FA35B9DD618"
Content-Language: it

--------------6AA4B3F878D14FA35B9DD618
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Goodmorning.

How to force the execuction o do_package_index over an image recipe?


MZ


--------------6AA4B3F878D14FA35B9DD618
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-15">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font size="-1">Goodmorning.</font></p>
    <p><font size="-1">How to force the execuction o do_package_index
        over an image recipe?</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">MZ</font><br>
    </p>
  </body>
</html>

--------------6AA4B3F878D14FA35B9DD618--
