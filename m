Return-Path: <max.oss.09@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40CF6E00BC2; Sun, 18 Nov 2018 03:11:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (max.oss.09[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.54 listed in list.dnswl.org]
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0700E00BBF
	for <yocto@yoctoproject.org>; Sun, 18 Nov 2018 03:11:37 -0800 (PST)
Received: by mail-ed1-f54.google.com with SMTP id 14so13881747eds.8
	for <yocto@yoctoproject.org>; Sun, 18 Nov 2018 03:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=qb1JElOa9yf8iGfKssU+Ml5lNSzVGg7BamHEgKF+tGk=;
	b=Bq2R+yGM4T6ce77ynqHh+RKdY93IzKMJx2/QmqBVHIqIZRPtQIbAMsVgEA3tk5WNN9
	pwfOEDTE4nflnMiuwsD85kGiczv/TFnsKeX7pUitaoDZOUdoHmIbsjL8g6KCIAA/Xd6s
	D7Gj92yt+wed3lVt/MIfxUo3C7WIyUlJ3V8FHs1jPvHjLmSRv3T1ViXA7VcY3d1gWdgz
	Iu7iVseC/HPKhmKzAxJxanUNGYF+q9eJcj/M+jutqZcuIniAWo203nYUdjnc2gd7p9pM
	lvVZAOGVBti69ZRNT2l209rHrwNs6nVn+dlSBMhHQLiZl1cmMP95Y2vYqR0/rB96HquN
	DQdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=qb1JElOa9yf8iGfKssU+Ml5lNSzVGg7BamHEgKF+tGk=;
	b=knAC3/ALSbW2kqUg/M3U30T6lWtcXgFyz/TXzMrqEPETETmAhxITheZiXeWLRRvK9d
	H9GAM8O/rgQiaVnYHgBxrb5EPQBdJkOdW+kU3+2CRzVgs5d4QK1MV6/kIjmREx1Yyd6m
	JIH7NTS8e9NnriMALUucs6VVoWfhPh2hvSDmHvPb/kkRnYSo3yDPdAshArqo3wC0s8+F
	L7GMTc5ha6MjofZNreyMTs/ywsbJXQICnCNKTtVGFCUHvPqZJ41mnFc5NZphfxQVfa0P
	OzSXMUIVdXMvS+TMivcNjCkpHF1rwSTR2LAkKaps3uYhXAI/B6oa7K/dG6HMXVwnj9Ys
	ByHw==
X-Gm-Message-State: AGRZ1gLueq6ANXe7vOSTD5PE+KFZeaaMDDIt19riP92cgbDUTjTOP2cT
	K7cIMFB15y5c8ocaBYB2v1Y=
X-Google-Smtp-Source: AJdET5dVyjuDKO+HAen88ltN+udriFh1LluFkT/xI6b7bJ0/Kb76w2Fhy7G50RdF5QE49vUJlr9D2g==
X-Received: by 2002:a17:906:16ca:: with SMTP id
	t10-v6mr13573770ejd.200.1542539496567; 
	Sun, 18 Nov 2018 03:11:36 -0800 (PST)
Received: from Saturn.local.all ([195.48.14.138])
	by smtp.gmail.com with ESMTPSA id q4sm6090012eda.50.2018.11.18.03.11.35
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Sun, 18 Nov 2018 03:11:35 -0800 (PST)
Message-ID: <1542539495.3707.2.camel@gmail.com>
From: Max Krummenacher <max.oss.09@gmail.com>
To: akuster808 <akuster808@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Sun, 18 Nov 2018 12:11:35 +0100
In-Reply-To: <545a7e8a-5ccd-c8b8-6b88-0b6f1723f794@gmail.com>
References: <545a7e8a-5ccd-c8b8-6b88-0b6f1723f794@gmail.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
Subject: Re: Yocto layers missing thud branches
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
X-List-Received-Date: Sun, 18 Nov 2018 11:11:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi

Am Samstag, den 17.11.2018, 15:50 -0800 schrieb akuster808:
> Can the maintainers of meta-qt3, meta-qt4, meta-selinux, and meta-cgl
> please add a "Thud" branch
> 
While at it, the following patches declaring thud compatibility are not
yet applied:
https://lists.yoctoproject.org/pipermail/yocto/2018-October/042780.html
https://lists.yoctoproject.org/pipermail/yocto/2018-October/042922.html
https://lists.yoctoproject.org/pipermail/yocto/2018-October/042923.html

Thanks.
Max

