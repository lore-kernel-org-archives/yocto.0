Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 346B7E00D72; Sun, 15 May 2016 14:17:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 146ABE00D49
	for <yocto@yoctoproject.org>; Sun, 15 May 2016 14:17:30 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id xk12so58138533pac.0
	for <yocto@yoctoproject.org>; Sun, 15 May 2016 14:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=ccp/x/OQbrFIcYyQNHlS1tJr+5OQhwkJTE5636gx+LE=;
	b=G6bPIoTuD7Mj16k15VBt1bH8LakDORU/VCBJqoTWdKfBFB474JyIKkpEj9pf3kDFrZ
	izJRcI+vN94bhYoQlVcFvMt/i6ZyDIP72M693BTfav2dHCG3b91fzPDfihBIjU5VOAYb
	/e697XNlGc5sJ4HzcsEp7Zb1Izt95uRj5+eUzAW2tfcOax4EkHlQnVyWwmxPnE/0hdjZ
	XUbiVHynQQk0G8lWof9vEuFm+SAszKLsI80FEgkLTECbYWpbYFEn6hLjesBoP84e4O5d
	OI2aWKe6eSXs5QWN2TbSxqTraKqtanZ/yJmQTcnxeMV4hPYu0lZ7rUOJyr8JyPEqPUb7
	NpUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=ccp/x/OQbrFIcYyQNHlS1tJr+5OQhwkJTE5636gx+LE=;
	b=O7CGeEq7wZls12bBsE4xIgRoTnleqhmIU1lTBJmtWs8SOkQpEOq9HJituUWY3EBjlz
	bm9Qx9FTuu/apiQp6KZ8TqRbWuU9p68SepszBD2Yt4zy3/f4bEM9DdqEU49v1M2OC7W3
	iUXgCBq4MMjFwQiWXDo8klRtoqzn3oAnTg9teA6cvdjTWUWm5MjCSl26z/4u5IsYoTZs
	1YeWISgAIpzNb9JZGpteu6PICGbqj2AyJGX2h1E8tY8TNaTU+LRP/btulVzTekVru+KE
	mPIlCaayJ3Iwh5Az3o8hdXegWZl4t846F9OIZiqWZ1Ytuwm+pjYb4F6mAQDuqRjUn0uY
	WLBg==
X-Gm-Message-State: AOPr4FXWyb74OIx/mQ+C2RFBXKkEDPC+JnwqoWjPz2oO3N6nXQSPHepG4Lx6b6qhmKquhw==
X-Received: by 10.66.166.78 with SMTP id ze14mr40028734pab.149.1463347050406; 
	Sun, 15 May 2016 14:17:30 -0700 (PDT)
Received: from Akusters-laptop.local ([2601:202:4000:1239:dbe:7d87:91a1:c605])
	by smtp.googlemail.com with ESMTPSA id
	q70sm42292237pfj.81.2016.05.15.14.17.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 15 May 2016 14:17:28 -0700 (PDT)
To: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
From: akuster808 <akuster808@gmail.com>
Message-ID: <0aebe0be-53fd-76ed-261b-0ea19b2215db@gmail.com>
Date: Sun, 15 May 2016 14:17:26 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.0
MIME-Version: 1.0
Subject: https://layers.openembedded.org/
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
X-List-Received-Date: Sun, 15 May 2016 21:17:35 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Is the layer index down?


- armin




