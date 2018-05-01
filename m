Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BBBFE007F2; Tue,  1 May 2018 16:54:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f44.google.com (mail-vk0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5770E006B4
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 16:54:02 -0700 (PDT)
Received: by mail-vk0-f44.google.com with SMTP id i185-v6so2747280vkg.3
	for <yocto@yoctoproject.org>; Tue, 01 May 2018 16:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qbBurvEoRmsgTTYNN+oQZJJHAk65guW6NY5bzr8ubYk=;
	b=hpCeiW/puQ0YhGhZJ/BcEFpHrb9w8LCyz7/VxZ1Or2wKxV5ncag+lwAb4mIHHwyEl8
	R+B5TqaK/B3iCCOz8SJWw7U5Mm7hpKnuWP1Xah0cq9JGTvbRdjdFgZM+ER1n876FQYWm
	3YlJ0zd67Sl3L46veyLP6sOQVQMQuR5QUuNczRAHUh+aO0rKnjPfyTOHTl4U7NrbMopR
	0a4clIotW/O3jnz0yg+Q+H8F9HuN9FKrxj6/p9DCd7DmrqxVxpkI2vL9dj5mhj0VBK2X
	UWb06vcP+lj7H4kbtvWCmljWTXuFeQnU9zgNvqEtSHhihF31qJ3gT+U9+PfQps+DP0YR
	DI2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qbBurvEoRmsgTTYNN+oQZJJHAk65guW6NY5bzr8ubYk=;
	b=Z3Zztx4yjXhMIvoqadtp8byB3DBnMwjz/FBNSm2JOuiJbyGt+2owsZoLH8U+lrt2tU
	TnzU2K/wGSayuR1yTOBAfeJcX7HzlyGZZ5e5SILxFUgnmH+feUh2vwflLkXS62l9kxi3
	U7ac3791TyGK+V/2qGKgQcPKM3mR/RfQQTT39bzVMvIKqMOCkD2efjm8qmMPGQOo5jrK
	WqyzN651KYWF1jZ7NIc66n6o6nkuWNpfz2ZlmySzNfiXI0APPAv1hhr6mBjkLpBx+E5Z
	0hguQKWtD1F72zvcmAhapd5hrn3stWx7CxuMyQ6QH9r8YAj+DGlUiGegJ9NopRh4TLeU
	UQbg==
X-Gm-Message-State: ALQs6tAUX2sPGQg9G7nSMWEMBIryZ7jVdBSMFCjWetnvvkxLXsEejAZB
	inm7O6ZC1bGMBFySOAHSPWmKPVS3Mv+pMtXX+rc=
X-Google-Smtp-Source: AB8JxZo1zUmSZueP0jzSZI+IPg2BRWMYTNauobjUaKvTvDsqwcg/0wLYlouy8337lBjTbj3KLmYz12Yuac/HxY/pDG4=
X-Received: by 2002:a1f:ac2:: with SMTP id
	185-v6mr16041304vkk.194.1525218841738; 
	Tue, 01 May 2018 16:54:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.19.73 with HTTP; Tue, 1 May 2018 16:54:00 -0700 (PDT)
In-Reply-To: <30506956.aUxZm2NLWB@peggleto-mobl.ger.corp.intel.com>
References: <CAN--ZaVOR1dTDJMTJq=8B6bRMfKQ7eJEBie-_hzTRD+cJ8YzCg@mail.gmail.com>
	<CAJTo0Lbj6sHszYxRwix4nQRADm6WvMkU0bxgaVorAH3xEuQ0gw@mail.gmail.com>
	<30506956.aUxZm2NLWB@peggleto-mobl.ger.corp.intel.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 1 May 2018 16:54:00 -0700
Message-ID: <CAJ86T=U15GmkmqcJD-NAAiV+ued8yG9SSEPA-P=VCeo7twFPLA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Irving ST <irving@ssfivy.com>
Subject: Re: Avoiding both GPLv3 and meta-gplv2 ?
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
X-List-Received-Date: Tue, 01 May 2018 23:54:03 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, May 1, 2018 at 3:10 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Wednesday, 2 May 2018 12:07:42 AM NZST Burton, Ross wrote:
>> The make dependencies come from the ptest packages, so if you disable
>> ptest in your DISTRO_FEATURES then those should disappear.
>>
>> Essentially doing a full build without any GPLv3 software *and* not
>> using old releases which are still GPLv2 is tricky.  I can only
>> suggest you don't use the meta-gpl2 layer (as you don't want the
>> recipes to be used) and use bbappends to disable pieces where
>> required.
>
> We probably need some sort of whitepaper on how to do that, it doesn't look
> like our manuals cover it in sufficient detail. Any volunteers ? ;)

Does "Blacklist GPLv3, don't use meta-gplv2, fix any issues you may
run into" need a whitepaper? Or is there more to it than that?

