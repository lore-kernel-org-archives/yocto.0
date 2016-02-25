Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1D51E00C97; Thu, 25 Feb 2016 05:44:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 487F1E00C87
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 05:44:01 -0800 (PST)
Received: by mail-ig0-f181.google.com with SMTP id y8so13575627igp.1
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 05:44:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=ehf89alAAuIgSm9GrVMHRSGDG+PC2rT/ao04dvpWcxM=;
	b=Q1xWTGMbCaZkLJ/zr+KPBOMO/EF3Fl2JE8KanTL89dJ2ScdxHiewip8E2R4BilyCjB
	Zkt57nq8pBNtEU6KxUtabnB3X7uXU3nO9PUJICs8vhXbPLw0mJBqdtMfvhKDRactqHrE
	yaOV6FqxnaIBGxT9DDfHomHDW6xm5RPUoHhvrYJyaZbpO2BNjgb5GkEFjau8M+jMeR1k
	cAhAuM9NrypOjdF6g7lzqlhiP1+q+Ms+sPI8M4j+zYaQH179YuhMNzzTNc/PllWbS9uf
	0dx9WBHUXbBo60e1BWp80lXU1LYUAMAaByDqDggf5n428LqyD5Hsrj3fTmuM6u8qjkuv
	6Yxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=ehf89alAAuIgSm9GrVMHRSGDG+PC2rT/ao04dvpWcxM=;
	b=gp7/yD59FDzO2n4XZoxuAza362/cjhq/wkrj5j2A1M4udkoZoonIe0Yy6/Ds4Rjo+Z
	hclzWGnQsU99J9ewgXD4+jp15u1+NJbRqvDdWoymfbA63e7niR/fe/I14fEsii+vZo13
	kAarSbOfx17OjGfYJazXVAwCUIR3vkp1izEL5ldk4ftDU0wFirNZgPjvJd56Cixk2oUb
	OqKgDroySts60zK2IuD9btBZuGwk3hjCXMixEbEMqLLVDQ9pzR2aZG4NfXVDXHV01Dmc
	pHdavMcukcSPlTdCeckghHccdlNRIyjuwa+9zE4MaI/6lWgrqLY6dBaGmJZPbqFZWZOY
	QDag==
X-Gm-Message-State: AG10YOS4RPRmxf73hJcQ2N8KipOm+IbrjOjhMtpSvHYUJiyBh69aiUDT5o1UIW7H4xYZ1Q==
X-Received: by 10.50.50.201 with SMTP id e9mr3318252igo.10.1456407841006;
	Thu, 25 Feb 2016 05:44:01 -0800 (PST)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	o201sm3238195ioe.15.2016.02.25.05.43.59 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 25 Feb 2016 05:44:00 -0800 (PST)
To: yocto@yoctoproject.org
References: <1454173548-5806-1-git-send-email-raj.khem@gmail.com>
	<20160223210251.GC10598@ad.chargestorm.se>
	<CALbNGRSLRGvmdTNg6hF8YwGXRPza5Xn8sLLjrcgOrT+B1--+yA@mail.gmail.com>
	<20160224202824.GA5109@ad.chargestorm.se>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <56CF0527.1080909@gmail.com>
Date: Thu, 25 Feb 2016 08:44:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <20160224202824.GA5109@ad.chargestorm.se>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Adjust for libexecdir changes
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
X-List-Received-Date: Thu, 25 Feb 2016 13:44:05 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 02/24/16 15:28, Anders Darander wrote:
> If the rest of the patches in that series is non-controversial, could we
> have them applied? Otherwise, could we have Khem's patch applied, and
> the other series rebased upon that?
>
> We've had the master branch non-building for quite a while now...
>
> I'm just keen to get either of those patches applied to
> meta-raspberrypi. I'd like to avoid having to use a local fork as much
> as possible...

+1

