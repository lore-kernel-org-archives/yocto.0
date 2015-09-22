Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83C4DE00E8D; Mon, 21 Sep 2015 19:59:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8FDFE009C5
	for <yocto@yoctoproject.org>; Mon, 21 Sep 2015 19:59:25 -0700 (PDT)
Received: by iofb144 with SMTP id b144so3658413iof.1
	for <yocto@yoctoproject.org>; Mon, 21 Sep 2015 19:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=IKw3y67BgC0LNqBHPp9xTolt7lZHAME6U6SQG3FAsuU=;
	b=RwljBHpO9aZ3Qq9ByQVK11ZJ/X9qVGrazvcSOc4WzkMrLaosVdrRIuEt+5nq4QQkuO
	XRnel+zvKnv3r/uguHDeAsXhjPwcGOaikMlKaesQpROjCot6VzDUzJuBMVJDwyP9kkLN
	KcvJxsSRopl8Vi6I7tBmSUFRsd+8EJ24IL7JpPIpTqn3cUb8Fm7yftXzRA6yjzEVmc1V
	7SUE0ssSmiIiyhl+1YnzoTvIz1ZOqeJvbfdamUbIlUE9QR2earK2otaBF5fcXAlHD3eB
	jOhhMQIeZJydKqn6o8wK7FoZAmzrGtvEAbQPBYTjyOX9nt1/hxkf3ni64By5DTVYlgYl
	A5PQ==
X-Received: by 10.107.135.21 with SMTP id j21mr29273330iod.20.1442890764789;
	Mon, 21 Sep 2015 19:59:24 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	x1sm310691igl.14.2015.09.21.19.59.22
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 21 Sep 2015 19:59:23 -0700 (PDT)
To: =?UTF-8?B?7Iug7YOd7ZiEIChUYWVrIEh5dW4gU2hpbik=?= <thshin@telechips.com>,
	yocto@yoctoproject.org
References: <F4F751F96C54D346898D4C77E196E3DB0F0AB278@telegweb.telechips.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <5600C404.3080503@gmail.com>
Date: Mon, 21 Sep 2015 22:59:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <F4F751F96C54D346898D4C77E196E3DB0F0AB278@telegweb.telechips.com>
Subject: Re: packageconfig for non-autotooled project
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
X-List-Received-Date: Tue, 22 Sep 2015 02:59:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 09/21/15 22:04, 신택현 (Taek Hyun Shin) wrote:
>
> Create a sunxi-mali_git.bbappend file, to see the pc file of the MESA
> Project can be used to manually create a .pc file.
>

Thanks for your reply.

I think this is best fixed in the meta-sunxi layer itself, instead of
requiring users to bbappend this recipe in their layers. I'll be
generating a github pull request to the maintainers shortly.

