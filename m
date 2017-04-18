Return-Path: <sadlife1990@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7BF3E0094C; Mon, 17 Apr 2017 22:41:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sadlife1990[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32592E00839
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 22:41:34 -0700 (PDT)
Received: by mail-vk0-f51.google.com with SMTP id n73so25640795vke.1
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 22:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=YliBhGvmhHbwPODHwoh+xBekl3XkydE6p087QYFJ92Y=;
	b=TY8aSxsRpYsu8AuOamW6fUWs+0aE34yMRQLXpJ050zrwV5Lb4JdOjeuiROXba1BjJH
	3MAve6+YBBQ13/abPzTBVcJ0w/bSPP5g0xhlGkR1rIeLGJyYEzTsluZrHROa4hBST1bZ
	uyKLPYxGVuDS9omwTTuXwnnTdupGWx7vKLPyfs0kx/Ac5cXVEJfl9dAi+XRUYwlAuPRT
	hXBuYjHCxLSuihrhyiMsJIQNgOrU0Z0PkkDsh86cucHI8wCl9jJy8w3KwITppIdgiNCZ
	p2peq8ZfK/QGE4uYB1BcJN7/cfIfPFCoOiNTEP31WMU5vo2u6xX6Eu3hTKBpGWWj8L67
	5RJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=YliBhGvmhHbwPODHwoh+xBekl3XkydE6p087QYFJ92Y=;
	b=TQSwf8gi7gk62zcMYk5WNlBgseMh40tUtRILD26r6oJQYkxs3yDybquopM0JkfaD4w
	MyTTjU1zfZ0yWifsfrhEgM1IU6fXc2WLZRfka4SW13OZynzk5CEOHCprvA/CqaSZcN6p
	6n9z1TEMRzBErYlnV8faJo4iQuftHzUxgHX1RD5VZIAljqI6kRVsK/Yz+Rq8TEpya25G
	l8Asu0WNAYL5Z3HQ2xuMInd6m/RMDBIARfVBOZXgngtA8zfeKa5ys9PpQhJye9KUWM78
	JfO6gAFI6V7iChNaYUavk9Ssd7rp0KE9z2O94OlHVPTil5+9AUm8D00jyaEDcqKjeCyL
	bbYg==
X-Gm-Message-State: AN3rC/4xuiNn0CZyuMj2VJSv0rr9T2LrV9g+aaLyJfRCAvx9mNCuZ0tw
	PoBloDbYQBTgNs+a4TECXuEphSXe4g==
X-Received: by 10.31.124.138 with SMTP id x132mr8213829vkc.120.1492494094195; 
	Mon, 17 Apr 2017 22:41:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.32.105 with HTTP; Mon, 17 Apr 2017 22:41:33 -0700 (PDT)
From: Weng Josn <sadlife1990@gmail.com>
Date: Tue, 18 Apr 2017 08:41:33 +0300
Message-ID: <CAAHuHfziqOC7STraEL91kXudDUy5zc4GEGhnM9vEPAXiSUVXxg@mail.gmail.com>
To: yocto@yoctoproject.org, openembedded-devel@lists.openembedded.org
Subject: cups: 2.1.4 cups-filter build
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
X-List-Received-Date: Tue, 18 Apr 2017 05:41:35 -0000
Content-Type: multipart/alternative; boundary=94eb2c1495d450637a054d6a5c63

--94eb2c1495d450637a054d6a5c63
Content-Type: text/plain; charset=UTF-8

Hello,

I'm testing cups: 2.1.4 I need to serial backend support. How to compile or
enable serial backend support ?

Thanks.

--94eb2c1495d450637a054d6a5c63
Content-Type: text/html; charset=UTF-8

<div dir="ltr">Hello,<br><br>I&#39;m testing cups: 2.1.4 I need to serial backend support. How to compile or enable serial backend support ?<div><br></div><div>Thanks.</div></div>

--94eb2c1495d450637a054d6a5c63--
