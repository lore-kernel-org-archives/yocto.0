Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46E04E00950; Tue, 30 Oct 2018 07:13:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.158.131 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd04131.aruba.it (smtpcmd04131.aruba.it [62.149.158.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85770E008D7
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 07:13:42 -0700 (PDT)
Received: from [10.0.3.142] ([78.6.3.122])
	by smtpcmd04.ad.aruba.it with bizsmtp
	id tqDg1y00L2dwwGE01qDgj5; Tue, 30 Oct 2018 15:13:41 +0100
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <40261230-160a-83b8-b0f2-eb996ab1fd7b@faresoftware.it>
Date: Tue, 30 Oct 2018 15:13:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1540908821; bh=Ktw8NZMAwd6L7bdFFw+roQNRzODudRgo8Ti/NiO5AKU=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=DzyWVTXXOCEZHLLq8iIcwLIHrXzwlTQa0yVtC1/1S2LCjtpbN0wBEu5Q0jQBChqRq
	vHaW3lkKVlHrPskihGpX8gYc0nXGlD0wkcfmMRL9J9NwjgbO6RFmwo059p/80YSexB
	nXsk6ABiHwVQ4UaTNIQFdltrc2ZGakDoaBgbgjCle95p5VFVEpE7LInMKqE76QtqqS
	4b2GcktbW1VJ+ZTc9WLlwXfJ+BqHmxUX9of9M4jWPwE38fIvrTE1OBzEORg0I2yA6A
	cxnjUa2kQB412PZn0kG43ZAjTF/hfTyH0fMxBZvgOUDxZySsG8Pu0pzOQ8m5LDvVjD
	zsAJHwpTFEqXA==
Subject: Yocto and Debian package repositories
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
X-List-Received-Date: Tue, 30 Oct 2018 14:13:44 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I often work with Debian and I build my own repository accessible with apt.

I look that when I build the image recipe many deb pacakages are
produced with Packages and Release ready.

How can I use this pakcages to upload all packages to a Debian customer
server?

Best regards,

  MZ

