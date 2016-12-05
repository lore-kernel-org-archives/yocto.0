Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A388FE009BF; Sun,  4 Dec 2016 22:59:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07B14E0097C
	for <yocto@yoctoproject.org>; Sun,  4 Dec 2016 22:59:50 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id a197so81898289wmd.0
	for <yocto@yoctoproject.org>; Sun, 04 Dec 2016 22:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=nJtKQ2JFUqhfikdbMN8RYww5HfJiwqunA8N2P/I92PU=;
	b=T8s6QtHNPdUf7RwL1VDxBJZcLJ1A7Az4H8VjFjIPuuti8FCaTa1o5bGc6V7Tc9JiAn
	GfHt/Z2bsitLCQ+4QTDvS06ekBqL3L5RpiKe3QeKdyM9RJjJePUk1feZ/X534WnRatey
	IiaplO16333PIkTMuzZE5IjeDghK7lW/QX80TetOtgoRPzipy1xqSkUT1MjurDhkOLPk
	MffnK3pa3DfPc+7pE/tpdeCu8wIOsdZmGLTYpWjPs9VF2k3wLl36OP7ZTNE7DIg9+14W
	zgVWVXDbZlyl3cR0oblFwrIgRNw35h7D5efDCBG+gho5prgG19mPnKCXvblf2orffgc6
	p+mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=nJtKQ2JFUqhfikdbMN8RYww5HfJiwqunA8N2P/I92PU=;
	b=L6M7QGiqQcMqGYA0Za/YK2jX7RvkE7Vw5cpU9huIIVyMlY7EggAjdJQ6vA84oX45cB
	tUqSE3KUqJTk5BFOpSXR4bsnMEJZpgEvwfhW1WfB/BcjorVf146nZ5GYPWZLZj61L/a7
	N6MAvwXIVPbij1P+F1k0nZAXZ6DwlP2fYFTBUnJ5oKWW0fEW60emMEuDeIu4ChyPmIfd
	w2BasSY7l7sHqqDPo9YD9JdzCLIvHaOQb95m12R8ESDObc5skmP7XT/JGb/op26rU8/e
	6T9Z5x6iZomj1LuwZSFHwXwptMnSwVHiHO4BSKFv4u+48/kItAqxybyKb9hQKl/4NRBS
	S6HA==
X-Gm-Message-State: AKaTC00r9GPKe31pk5+O9vrthHxdBBuy9SxzUr5OdRjKuGPuAh+YN3eBbQiUhirQY8iV1xLV054AAYOvC6AM2Q==
X-Received: by 10.46.1.93 with SMTP id 90mr24151368ljb.30.1480921189163; Sun,
	04 Dec 2016 22:59:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.19.164 with HTTP; Sun, 4 Dec 2016 22:59:48 -0800 (PST)
From: Paulo Neves <ptsneves@gmail.com>
Date: Mon, 5 Dec 2016 06:59:48 +0000
Message-ID: <CAJO0J4i-G+PxwaSqZzx0ovj2g-ZMR=Uy9RSnk2b=oji1sTX5gw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Using files from package dependencies
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
X-List-Received-Date: Mon, 05 Dec 2016 06:59:53 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I have a recipe which depends on another package's file to do it's
job. How can I arbitrarily access a file from another package which my
recipe depends on?

I searched for this kind of problem but did not find it

Best regards
Paulo Neves

