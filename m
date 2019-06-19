Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1B3EE00DB7; Wed, 19 Jun 2019 07:43:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.66 listed in list.dnswl.org]
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25598E00DA7
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2019 07:43:17 -0700 (PDT)
Received: by mail-wm1-f66.google.com with SMTP id g135so2111687wme.4
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2019 07:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=dLgNKCU860XuGfF+ASNjUGaZzkF7Y3HOZ09KGabcNBw=;
	b=eEnRSkTYb5Pe65MtnVpTDlOTSA565qTqvKm4YxI/4/SJ/AAApmuuG5J5HxO5aQI4m3
	pK1am5eNEMahZBtyJOJBOAngBcOV4evU9VK0h7dTJzQ84fh2VbdMtYdqHrM8OrEvu+Wu
	zMSxxTJH+E3o7SahpG6wSvsFqCvnkGlcwLI7g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=dLgNKCU860XuGfF+ASNjUGaZzkF7Y3HOZ09KGabcNBw=;
	b=n1UiRf3wi+ilDuE5q6PmIBKSbhG5uxx40SCBYuOgS0pgj2Ej45hYMIVZ16jYeOi2pB
	xnaxFAl0vjB2axM8IA50aleL6olJifSZ5x99mnTnzxn0OdXQBd6L6fu65tQiXQ3emllm
	3Wnzukur6gvsCJxMKZZ0jKGT0pBsc3SV4tmGMuKxoiW1PaSvCOhV8stFVgofR98hpfl7
	9HuJUWQ9+fujhr/owNIUsPdvhe2PiDjBRYnX15jz6nLsB2gtMJxm80u38cZlte2+76ho
	4AmI/bld8nFjMZDbpsLoB/qSgEozo4wyjEzY9TYDGVBFJzwZB53oayKYzgzlMWP7F67k
	QH2g==
X-Gm-Message-State: APjAAAU7N1q8d8614MAmYvys++RLUrc2vwMaW6LhhXTEbdY3HATOLcd5
	K4F5hFUM94YkIW4D+cGmvDk6lJ1THYk=
X-Google-Smtp-Source: APXvYqySFTLQ/xUlkUR007CxXP36sXPTwVXK1muaAqGwjX+va8i8UCThmvaHYydr8lvIpTI4N5U7aA==
X-Received: by 2002:a1c:9a53:: with SMTP id c80mr8247474wme.173.1560955397169; 
	Wed, 19 Jun 2019 07:43:17 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	g11sm15710392wru.24.2019.06.19.07.43.15
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 19 Jun 2019 07:43:15 -0700 (PDT)
Message-ID: <9c91416162466b6f8c7990804a9fd9c6689ad131.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: changqing.li@windriver.com, yocto@yoctoproject.org
Date: Wed, 19 Jun 2019 15:43:14 +0100
In-Reply-To: <1556607386-98960-2-git-send-email-changqing.li@windriver.com>
References: <b36da33b-df9e-2991-5444-cd45a4c3e2d1@windriver.com>
	<1556607386-98960-1-git-send-email-changqing.li@windriver.com>
	<1556607386-98960-2-git-send-email-changqing.li@windriver.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Subject: Re: [update-rc.d][PATCH V3] update-rc.d: support enable/disable options
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
X-List-Received-Date: Wed, 19 Jun 2019 14:43:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-04-30 at 14:56 +0800, changqing.li@windriver.com wrote:
> From: Changqing Li <changqing.li@windriver.com>
> 
> Add support of enable/disable options, refer
> https://manpages.debian.org/wheezy/sysv-rc/update-rc.d.8.en.html
> 
> With support of these options, the usr can never change an existing
> configuration even after upgrading a package. The program will only
> install links if none are present, otherwise, it will keep
> the previous configuration.
> 
> preinst in update-rc.d.bbclass will delete all the links under
> rcrunlevel.d, this behavior now conflicts with enable/disable
> options. so remove preinst from the update-rc.d.bbclass
> 
> [Yocto 12955]
> 
> Signed-off-by: Changqing Li <changqing.li@windriver.com>

Merged, thanks, sorry about the delay.

Richard


