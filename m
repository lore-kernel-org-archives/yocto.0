Return-Path: <jaap.dejong@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B89C0E00524; Tue,  4 Apr 2017 01:23:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [213.160.213.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp4.nedap.com (smtp4.nedap.com [213.160.213.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C01DE00349
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 01:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1491294222; x=1522830222;
	h=to:from:subject:message-id:date:mime-version:
	content-transfer-encoding;
	bh=LsBWeHBkyoMdg7mpT09k463vOgDezCH6Ky86Pzd2tls=;
	b=Rkg3LMqHT1YVOrNb2jQ0EjZwk9817YtlqpJPmlXBtihjLJ23itmpFVg4
	NZDVLQkXdVExTqiJJo8Hk8wyhlx9ihljubWXE6f7L771Ee0pEFqvFtJD4
	W9TqV6r4Q25+Zer4WNhOZvb/BT8xlgOUpKEXbL7vmok1F5LTS6CN/Dk+F c=;
Received: from nvc2354.nedap.local (HELO [10.2.16.86]) ([10.2.16.86])
	by smtp4.nedap.com with ESMTP; 04 Apr 2017 10:23:38 +0200
To: yocto@yoctoproject.org
From: Jaap de Jong <jaap.dejong@nedap.com>
Message-ID: <2c388f10-f905-a412-ffa0-08965058b531@nedap.com>
Date: Tue, 4 Apr 2017 10:23:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
Subject: Custom conf files
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
X-List-Received-Date: Tue, 04 Apr 2017 08:23:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm just wondering what the best practise is for configuration files 
that I want to change for a specific image.

F.i. a simple one: /etc/issue

I could create a bbappend for the responsible recipe. Or I could add a 
ROOTFS_POSTPROCESS_COMMAND and patch in my changes

Are there other options?

What is the best practice?

Thanks!
Jaap


