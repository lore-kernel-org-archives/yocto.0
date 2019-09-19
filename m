Return-Path: <robert.berger.yocto.user@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 442A4E00C8F; Wed, 18 Sep 2019 23:56:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (robert.berger.yocto.user[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.43 listed in list.dnswl.org]
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21D14E00B9E
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2019 23:56:07 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id l11so1814398wrx.5
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2019 23:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=YQ4GRMwygfkcqKtnJyGXUyEwQPNFrnN72T4w5DLlNYw=;
	b=CgYmg3ISx1aKeiNs5ANUMZGaLs3d9NaRrook3dHgws+qE7LW3oyfeBqfaDtSJ17Phm
	kn+bELdIKxwjFtKc4VYyh7/BO3Ek6MLSzMCDvM6s1sOiESrTqmC/qiKbHxpAHsbC9bcx
	3R92IkHOvK1n4XXsSWk+K47yKh9WpyC12rhzRWGo7f0oySt0QucEUI5IH0S+83eY/mmM
	IaDuxQ9zxy7qORqS2YNAQ+8TNk+Qy/92V4FjkK9qZ5wN3h133nOna5wUEooRF9xwqQ89
	tKQAFVU8BtqgJSyAmFQQ1vBpFfme9tfXKUgOvdOlThShKkU+33zFDl1zeB6a7E8kQs7m
	oFqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=YQ4GRMwygfkcqKtnJyGXUyEwQPNFrnN72T4w5DLlNYw=;
	b=gkqgyorA7fpvx9Zely+RzaH8mOC0zspCxuhQux069w0jFCVeZQnYVF+tArknDJqGLk
	yimXYPmtidRZ5uO8+EfXOpYZJxA9arb0rgBesLrWH6qM5DINNMkPOK/Wd9kxQfwx7SaF
	vRm7c+2dLeE2/+gfRJ7auf8LAnjF4DMP0RTxLZ0Z/B7AS2PUCE4I3invSPjEv+tQnqbo
	Sk+XvvtTm9YORybhq2RjlXwP5H8ps3NVR7HHCoPaSN3g1zSmcGNrSny37+4qJHhVjKKi
	3/pdyqRfPNroniQ2Mow5ePMKQLO9DeNukuAnWQh8MMRGUebQyUtXtIQcDuSo57CGaZ8z
	Oi9w==
X-Gm-Message-State: APjAAAXSu1Da+Ga74mK8E/5TeB+ieKjoQ2R6P8+KE4CA4AGhhu45+tG6
	Eugrub2imUKVEvzCW+NdHSelW9ErtiE=
X-Google-Smtp-Source: APXvYqxCjeYOwvlB6QXsrX2UuwF85qYt+bJH6t1ZY4ZZ1lrEZxZUn10FEGDBHgEDA+xAdANbUPrRLg==
X-Received: by 2002:a05:6000:12d1:: with SMTP id
	l17mr5682135wrx.91.1568876167135; 
	Wed, 18 Sep 2019 23:56:07 -0700 (PDT)
Received: from [192.168.42.52] (business-24-134-70-197.pool2.vodafone-ip.de.
	[24.134.70.197]) by smtp.gmail.com with ESMTPSA id
	o9sm12575109wrh.46.2019.09.18.23.56.06 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Sep 2019 23:56:06 -0700 (PDT)
To: yocto@yoctoproject.org
From: "Robert Berger@yocto.user" <robert.berger.yocto.user@gmail.com>
Message-ID: <8f3933f8-bbad-7dbd-ff9a-afdab91ced3f@gmail.com>
Date: Thu, 19 Sep 2019 08:56:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
Subject: gitlab-runner
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
X-List-Received-Date: Thu, 19 Sep 2019 06:56:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

Does someone happen to have a BitBake recipe for gitlab-runner?[1]

[1] https://gitlab.com/gitlab-org/gitlab-runner

A quick search did not show up anything;)

Regards,

Robert

