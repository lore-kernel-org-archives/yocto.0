Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 510BDE007AD; Wed, 16 May 2018 02:00:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.158.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtpcmd04131.aruba.it (smtpcmd04131.aruba.it [62.149.158.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F614E007AD
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 02:00:25 -0700 (PDT)
Received: from [10.0.3.130] ([78.6.3.122])
	by smtpcmd04.ad.aruba.it with bizsmtp
	id mx0P1x01V2dwwGE01x0PN2; Wed, 16 May 2018 11:00:24 +0200
To: yocto@yoctoproject.org
References: <706c8cbc-b5ac-e456-5a30-199aeb596766@faresoftware.it>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <4567ff4e-5c5e-bed9-1510-6a60e1381705@faresoftware.it>
Date: Wed, 16 May 2018 11:00:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <706c8cbc-b5ac-e456-5a30-199aeb596766@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1526461224; bh=KLjpQAWTSZcO3mFDtuz5ycuuNt/Rvy4NQ4KVxUE69UA=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=Q7iF2/kMmfE6E1IWA4ErqaF3mHofvHFTV0wKs5kzj1d+V/eft+elrPVUOYdAcRKhs
	Dikxo/n9mQVkKyv/SSwDB+x52JahC8C6z2dQv1EnzJWGcPQ9BASuVfwsefOC8NE2Bn
	dMi4fGNSEd/ZfeCHvHtHl5N9L8+mkav7v9+pR94fhza1Zs+kAcODq31AAHAVSx8O/r
	GQXnCLkeo8Kkhid1UiwOzTsbiIZ02kMJegVb+moYkbRB7QjGfH+Q69RSre1hEmiNGO
	615k4+c/pKZqL9KMB25H5/mZXKb4TczpHp+y0Dx5oN/JlCkmGKoLNitc1nnZix+3oa
	4Uco5YwBVgeMQ==
Subject: Re: Set root password from a recipe
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
X-List-Received-Date: Wed, 16 May 2018 09:00:27 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Sorry

inherit extrausers


Il 16/05/2018 10:46, Mauro Ziliani ha scritto:
> Hi all.
>
> I need to set a well know password for root user.
>
> I follow the istruction to do this with
>
>
> inherit extra_users
>
> EXTRA_USERS_PARAMS = " \
>
>     usermod -P secret root; \
>
> "
>
>
> But it does not work.
>
> I think the problem i for usermod
>
> I sse the man page and the -p parameter needs the output of crypt(3) 
> function.
>
> While -P parameter (p-uppercase) is not a valid parameter for usermod
>
>
> Any idea?
>
>
> Thanks
>
>    Mauro
>


