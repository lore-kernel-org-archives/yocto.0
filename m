Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A47CE00C62; Tue, 26 Sep 2017 07:19:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=unavailable
	version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f48.google.com (mail-pg0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FB95E00C3A
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 07:19:46 -0700 (PDT)
Received: by mail-pg0-f48.google.com with SMTP id 7so5973105pgd.13
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 07:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=R5JCz7i2y8NTnFyPnLnWOofFz095Ca7/z+WIqRE7jkE=;
	b=X7MJhPaRjo3LSHIQ9iCBmv9ksfNFqVZRV51UxMfE0kerxt2l+B0/NKySE/48EpRcfu
	jNzzAHHOoEtVG7sahLgqOEM4f36NE6vmSqJADhmpsROi2aKr33rC/6xb+MWU1HYY6xeJ
	OT5nN7ch2jkXhYVHx8l6u0cmKTw5rzrJBSjio=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=R5JCz7i2y8NTnFyPnLnWOofFz095Ca7/z+WIqRE7jkE=;
	b=AnHwVDtXtUWjVYTzu4cwShuXPe2mKuf58NGKBNW0+N+df+ynJ4Gpp+0MJ2ghgPG9Rm
	EGLt0HgOEKI/TQ4wIjbHxvbu2yE1g19NUqNM3OUd0TD1eOU2vy30VbmAn4F5aIcls/GA
	lFtuypXVuiVPFGFvzN7DfeuyjMTEKEMTNpdQW5YpoSbbG5OuhMVdvWZWYAzStB/++bLF
	t2m4Nwb/gpIrRTwHNHm7yr24fERTLdwPf1ODpBuJFDRmzDUZg68jM0Vw5j8kSQJ59MXP
	p/uSsq2k+uU/FFFxlS/Giwdua4wvfdWsWwnaA2xTEf2Gcn4So3eiTAzqWcjcdbTamHXn
	9LNQ==
X-Gm-Message-State: AHPjjUhuWAErkeQgyr1XN+eUtu8G7VRwNj53inXxGAINNbF/QXiD8vE5
	+4cZs+um8ctMmMdznvKfOfWwBPsJUp8=
X-Google-Smtp-Source: AOwi7QD6UuoTwnwLTyi607LMoGT0yMye04tEYmH2O71jwNaqPHNEylUvzkCr2jssLK6SCkfDJPfsfQ==
X-Received: by 10.98.147.4 with SMTP id b4mr3652957pfe.347.1506435585444;
	Tue, 26 Sep 2017 07:19:45 -0700 (PDT)
Received: from yct-lpt.lan (50-39-175-47.bvtn.or.frontiernet.net.
	[50.39.175.47]) by smtp.gmail.com with ESMTPSA id
	z9sm17190642pgc.85.2017.09.26.07.19.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 26 Sep 2017 07:19:44 -0700 (PDT)
To: akuster808 <akuster808@gmail.com>, yocto-infrastructure@yoctoproject.org, 
	yocto@yoctoproject.org
References: <b38b99b3-9090-a99c-06c1-396ce3baab26@linuxfoundation.org>
	<9b2376cd-8fea-1184-497a-036df4d395ea@gmail.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Organization: Linux Foundation
Message-ID: <19e69851-4b00-1c6a-d0c0-5d9b30d1dff5@linuxfoundation.org>
Date: Tue, 26 Sep 2017 07:19:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <9b2376cd-8fea-1184-497a-036df4d395ea@gmail.com>
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
X-List-Received-Date: Tue, 26 Sep 2017 14:19:47 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 09/25/2017 06:17 PM, akuster808 wrote:
> 
> 
> On 09/25/2017 05:17 PM, Michael Halstead wrote:
>> Hello,
>>
>> As Yocto Project continues to grow load on our git server does as
>> well. We are going to make a few changes to our git infrastructure to
>> allow for more growth.
>>
>> All read-only git operations should point at git.yoctoproject.org. For
>> example poky can be cloned from the following URLs:
>>
>> git://git.yoctoproject.org/poky
>> https://git.yoctoproject.org/git/poky
>>
>> If you have repositories pointed at www.yoctoproject.org,
>> git.pokylinux.org, or any other domain name please update their remotes
>> to git.yoctoproject.org.
>>
>> Read-write operations via ssh will use a new domain specifically for
>> that purpose. I've added push.yoctoproject.org and ra.yoctoproject.org
>> (like ra.kernel.org).
>>
>     Read-write URLs should be updated to the new domain names. I've
>> changed mine like so:
>>
>>
>> git remote set-url origin ssh://git@push.yoctoproject.org/poky-contrib
>>
>>
> will this apply  to the other contrib repos hosted by Yocto?

This will apply to all repos hosted at git.yoctoproject.org. I used
poky-contrib as the push example since it has the most users.

> 
> Is there a policy on pruning old branches in the contrib repos?
> 

There hasn't been a policy but we need to create one. I've checked with
Richard and we will move branches to poky-contrib-archive that haven't
been touched in a year. I'll send out a notice about that.

> 
>> This is all ready to go right now. Please update your remotes.
>>
>> We will have to make these changes required before we can start to get
>> performance benefits from them. I suggest November 1st 2017 but I need
>> more feedback before we can set a cut off date.
> sounds good to me. Thanks for working on this.
> 
> - armin
>>
>> Thank you,
>>
> 
> 

-- 
Michael Halstead
Linux Foundation / SysAdmin

