Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFD37E00B58; Fri, 10 May 2019 09:53:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.194 listed in list.dnswl.org]
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96621E00A62;
	Fri, 10 May 2019 09:53:45 -0700 (PDT)
Received: by mail-pl1-f194.google.com with SMTP id w7so3116828plz.1;
	Fri, 10 May 2019 09:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=lPTeRnyhKhl8NxRR1SibyN8wWT/sk7nPHvfC3a9DYt8=;
	b=R/Y9fGeLkmNjd6JCPj56pyJLCmd/URpBbe+fQbP82LQQwymldg/YCU9+JZzl8wD92x
	MqcFE8wgNxgD0OT3LHDaQATvhSIkHH9hHTOW4YRHwQ04mFaKTT0clL4Bv/VFlj/tZIde
	KIA7Gs840N7UsID2biFlxwzCcyJ7yOfchpwEvJCZk8m4LnOQWTQJur6vOSHNQIxTKXBX
	PeAY0PjdwaY4sLH8RoDfqVoykw4ZqlwvrJwNumVKT7G9+AtuRWRiZPi7qysuhNPH4GaE
	7p+YQDTXv6J0Ihqr/RcXBSH6vDcgrk7pkjoI4wWvS9gu5qVHBx7KOumQBMNjNTitdGb5
	BjIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=lPTeRnyhKhl8NxRR1SibyN8wWT/sk7nPHvfC3a9DYt8=;
	b=FxZIHkvfAZMYc2uzDf5lReqcBpR/1rHikFmJ0LS/SAMpor0sSaZjU2Hk2sxPgruaCq
	bR13sk+wzlULZxW8DIgWUIsOe9QC3xi365Oi4nWU/nH1zLhpZ2BuJLxXE2JlXe4frb1D
	5HX/Xk7RUWQHB8nfRfNjm6P7e0GnUL0O/bxbK6Vc/Czv00JKYUpWXJi974k9sOyfTGbI
	knVSiUDSd3l4E1s2U3zklvhoWkTqP4+KAPNqyfOoqw40UR0tUySLp1KYV4Ah6Yx7pdkx
	oL9yck3dtbxHy/TO9PEtUZAisVtU01obQtn+bgRSpLPZd1nD0hWxg0iY6O4HjclXKdwU
	W8NA==
X-Gm-Message-State: APjAAAXfthZsCvBOKgoAslWIh+JIE9aQelAj01FdrLf/CmwrKqLqEdJF
	MpC+mZrIIjU0TO1wnW/hdo7MWkMKNlk=
X-Google-Smtp-Source: APXvYqznYjR7GdXwb1WzKK0aH8NtTFiimBACE2A2vzRZy4EggW76VSXnj+OCUphuXv4MKa7oxBZD/g==
X-Received: by 2002:a17:902:446:: with SMTP id
	64mr14212784ple.322.1557507224399; 
	Fri, 10 May 2019 09:53:44 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:6095:8839:3497:2f69])
	by smtp.gmail.com with ESMTPSA id
	d15sm18499718pfm.186.2019.05.10.09.53.43
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 May 2019 09:53:43 -0700 (PDT)
To: AshishKumar Mishra <ashish.emailaddress@gmail.com>,
	"Mittal, Anuj" <anuj.mittal@intel.com>
References: <CAOe0dAUYH83APXjXi8FiT3492zi0EVcsT4MfT69LJO+nJ5er8w@mail.gmail.com>
	<4823d30b2edfc0eea9fcdec81f68e6e8f113f015.camel@intel.com>
	<CAOe0dAVUf0hJDze4mRbNp-wGCpKMJs-5FQP7rTwiUmopwBQcdw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <4a8c7bbf-e0e9-dd0b-af5f-ed3ff6df5562@gmail.com>
Date: Fri, 10 May 2019 09:53:42 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
MIME-Version: 1.0
In-Reply-To: <CAOe0dAVUf0hJDze4mRbNp-wGCpKMJs-5FQP7rTwiUmopwBQcdw@mail.gmail.com>
Cc: "yocto-bsp@yoctoproject.org" <yocto-bsp@yoctoproject.org>,
	"linux-yocto@yoctoproject.org" <linux-yocto@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Timestamp error between zImage & uname-a [ Yocto-2.6.1 + Qemux86 ]
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
X-List-Received-Date: Fri, 10 May 2019 16:53:46 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 5/10/19 12:10 AM, AshishKumar Mishra wrote:
> HI Anuj ,
> 
> I was building minimal image using $ bitbake core-image-minimal haven't 
> tried full-cmdline.
> 
> Not able to track why kernel "uname" has older  timestamp rather than 
> the one from build/deploy/image
> as seen by "ls -al <build/deploy/image>
> 
> Am i missing any command or sequence here
> 
> 

uname will show the time when it was built, which might be different 
time then the one when it was copied over to deploy.

