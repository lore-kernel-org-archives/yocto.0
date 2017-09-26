Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9415E00C62; Tue, 26 Sep 2017 07:05:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=unavailable
	version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f54.google.com (mail-pg0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1BAAE00C3A
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 07:05:57 -0700 (PDT)
Received: by mail-pg0-f54.google.com with SMTP id k193so5957192pgc.8
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 07:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:references:to:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=ChzN/b0qEpqM6olId8rtgplWb748Swku2D4dIA10jsg=;
	b=cRIQAE04aMQ87/8t/zvv5IzH0NZsjK0AECNNChravmdITqMWp3TEIbewlP2eO8Fl92
	z2mePeG5G5RypIlx0jGiVM6fA+GY06WdyB2dsLJRwZQFfgJquoCbE4JCerLWMV/jYuzU
	Hq6kGkKij7XRG7Q0XzsU5LwD7af+ePeWb8Nsg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:references:to:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=ChzN/b0qEpqM6olId8rtgplWb748Swku2D4dIA10jsg=;
	b=TN4U1Iwiy0vOUzrBGAmorw+bJUEQn4tLGAx3UD7JK8lpx0k8KOKloEwA1xTI1xLquZ
	cTWiT6DCql+NtztfEFkzz4B4RYZzR8s7eUz1LpluEKO71THW1DTZ2W9RJreD9flF6KOe
	leaK15MLuRZHbKIhT63emKLVvUw7TYWC33ecxZk8Rr5AqC/h/07q7+Bx25mB1IdUsPHb
	SetASJk8ITZIylMcT/G7DVD5BalLlBsaDYoOa+o9JjP9PEKNYoT8bn81VUTrFPAMU+Y0
	0AkBK81K2vCVupsqSpULbBLBlaTua7bn+CUBeUkwDeZ+PWa0pKUUi0yyZK0yQW0jjkjQ
	tXpA==
X-Gm-Message-State: AHPjjUix8QWVOGuifIf97/ncVmeJJdCSrvmCRm/WYt6rt4Jk/+UhiJWN
	dlMEcU2uWGMzWM/FVfI8vizf0FZz4XM=
X-Google-Smtp-Source: AOwi7QCBApjNo/oe7fdNvitI17Wtvl18cTycVQiXyalWTt4xN0JNa3xZjatBp6yB4QP08TjkDomy4g==
X-Received: by 10.84.238.131 with SMTP id v3mr10961902plk.342.1506434756059;
	Tue, 26 Sep 2017 07:05:56 -0700 (PDT)
Received: from yct-lpt.lan (50-39-175-47.bvtn.or.frontiernet.net.
	[50.39.175.47]) by smtp.gmail.com with ESMTPSA id
	b22sm16340167pfh.175.2017.09.26.07.05.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 26 Sep 2017 07:05:54 -0700 (PDT)
References: <b38b99b3-9090-a99c-06c1-396ce3baab26@linuxfoundation.org>
	<CAJTo0LaTPnKT0mE3PXnb5Z5NN7GAF6-abyPR_VXyUp9umOaYZQ@mail.gmail.com>
To: yocto-infrastructure@yoctoproject.org,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Organization: Linux Foundation
Message-ID: <9c0dc784-95f0-05cc-2020-7dc93eaed21a@linuxfoundation.org>
Date: Tue, 26 Sep 2017 07:05:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaTPnKT0mE3PXnb5Z5NN7GAF6-abyPR_VXyUp9umOaYZQ@mail.gmail.com>
Subject: Re: [infra] git domain name updates
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
X-List-Received-Date: Tue, 26 Sep 2017 14:05:58 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 09/26/2017 03:27 AM, Burton, Ross wrote:
> On 26 September 2017 at 01:17, Michael Halstead
> <mhalstead@linuxfoundation.org <mailto:mhalstead@linuxfoundation.org>>
> wrote:
> 
>     This is all ready to go right now. Please update your remotes.
> 

Read-write users:

While updating your git remotes you may also need to update
configuration in ~/.ssh/config or /etc/ssh/ssh_config with the new
domain name.

If you use several ssh keys or work behind a proxy you probably have
configuration to update.

grep yoctoproject ~/.ssh/config /etc/ssh/ssh_config
/etc/ssh/ssh_config.d/*.conf

If you see git.yoctoproject.org change it to push.yoctoproject.org.

Remember to check for any build accounts you've created as well as your
main account.

-- 
Michael Halstead
Linux Foundation / SysAdmin

