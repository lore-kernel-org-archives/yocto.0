Return-Path: <andres.sagot@yandex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47DD2E0088C; Wed, 28 Oct 2015 21:21:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_40,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_MIME_NO_HTML_TAG, 
	MIME_HTML_ONLY,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andres.sagot[at]yandex.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [84.201.186.22 listed in list.dnswl.org]
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.3605]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.4 HTML_MIME_NO_HTML_TAG HTML-only message, but there is no HTML tag
X-Greylist: delayed 100 seconds by postgrey-1.32 at yocto-www;
	Wed, 28 Oct 2015 21:21:19 PDT
Received: from forward4h.mail.yandex.net (forward4h.mail.yandex.net
	[84.201.186.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1638E007E1
	for <yocto@yoctoproject.org>; Wed, 28 Oct 2015 21:21:19 -0700 (PDT)
Received: from web22h.yandex.ru (web22h.yandex.ru [84.201.187.156])
	by forward4h.mail.yandex.net (Yandex) with ESMTP id D43B81B20D7A
	for <yocto@yoctoproject.org>; Thu, 29 Oct 2015 07:19:36 +0300 (MSK)
Received: from 127.0.0.1 (localhost [127.0.0.1])
	by web22h.yandex.ru (Yandex) with ESMTP id 6EBCF3C812E5;
	Thu, 29 Oct 2015 07:19:36 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail;
	t=1446092376; bh=hbWGU7J9ADY9CDWgqPZkhx287cVZ00bLbK+u1PLhNwM=;
	h=From:To:Subject:Date;
	b=nZv4kmWURdIyGTFj0yBcLMdbpTc+9nFMIrEk3xgjwmaNBlaq4MTw8aB0WeIRoA3fj
	4PAb3G8MoctpZa26Luw75GCU3zrefEKaajapVlzWyJbFEtwFyg+siiehA6wUm3uRtL
	WUonwYDJon5Pdb/hFmpjsoADxBfPsg0NPr0JP1Ac=
Received: by web22h.yandex.ru with HTTP;
	Thu, 29 Oct 2015 07:19:35 +0300
From: Andres Sagot <andres.sagot@yandex.com>
Envelope-From: andres-sagot@yandex.com
To: yocto@yoctoproject.org
MIME-Version: 1.0
Message-Id: <2413401446092375@web22h.yandex.ru>
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Wed, 28 Oct 2015 21:19:35 -0700
Subject: Kernel Version Dependency in BB Recipe
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
X-List-Received-Date: Thu, 29 Oct 2015 04:21:23 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/html; charset=koi8-r

<div>Hello Yocto Community,</div><div>š</div><div>I did a search and found a great deal about layer dependencies, but I am still not clear on how or if it is possible to add a kernel version dependency to a BB recipe. I would like to bitbake to report an error if it attempts to build my custom package with an unsupported version of Linux.</div><div>š</div><div>Thank you and best regards,</div><div>Andres</div>

