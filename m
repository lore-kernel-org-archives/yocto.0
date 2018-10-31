Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1C93E00AB9; Wed, 31 Oct 2018 00:15:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (yocto.user.mailinglist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADF9AE0097C
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2018 00:15:26 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id y140-v6so529817wmd.0
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2018 00:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=R1gtk0Fh5+hu++neg/AmaQFCOTKSzjC94dmfjCIJjUM=;
	b=B3JqLWKa+uYOCd8cWQkT0QSQ3NfZj8aSrOGN9QGSw8no6/RSHE6a63CW9dvgUC8zlP
	Wjv/ZpILXGGPhUgw6Ji0bH7OX4U/rl7wFnryrTA/fXzsqOa9sX9UnGQ7TSN+iaVLFJK8
	r11bjmbts+iJgqamy7VdbREQ4knyeyCnCcCAf5jTk6Ek3c17PhZ9Y4pVPeTPQN4cz1bU
	XX2puQQR2SqFCBxoXco6nqVR9iil6DH/1LgkvV+5VF5CIJhfYBfrTE7Brgy9TX4b/bTx
	frojE1dBpIh5nBK4+M0o7rIkDi/eisJvd6555gP32KHzwXe75WvAPZiK6Xdm0VFisUT6
	FyPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=R1gtk0Fh5+hu++neg/AmaQFCOTKSzjC94dmfjCIJjUM=;
	b=o1g+fJK/tf+YcwZ2pwuii5M56sEepEgcMb6NwPPc//xX/9TGi5PfuIgJ4ICp4g/FeA
	bV7XACJklqXgbcaH/tRJRB0vWRYXwsh/ivkaShaMTWLEeTjIFS5dWEf5elc6+n2WhVGU
	P+0QLvVrd2h4Ab6DzzdcGLH46N6s5pnV/Ux2ZxxdPTYOT6Btz1NCHZS+hPMh9zzEgXFQ
	mRz7fhOntq8IFaX9VmkSqnlkH1i5IZE0mW1See0yGoh8+7lwsZqFw1tDRk5bUQMgxTgC
	1sgPh7t7lHM6ft3blDKZ+2TNtI+QV2HbV7SeNt/OWZx2WD1qLdHZ3m+ksuH5nVKZo2Wz
	UmKw==
X-Gm-Message-State: AGRZ1gJ/TLhqLkrd1zVHaZ6+nYCdMgw6i9KOXgO1jcOjF2SAn3LJhQiM
	F8A81wurTyAHb7VOpqfoF+/eC/mc
X-Google-Smtp-Source: AJdET5dFe4RNb3rgCwhYtkL6aQwT7OhHwGxMLk+I5Aq4nG3NAyabYhCvxKcJuJht0SeJFIWjhoVhow==
X-Received: by 2002:a1c:6783:: with SMTP id
	b125-v6mr1377531wmc.142.1540970125624; 
	Wed, 31 Oct 2018 00:15:25 -0700 (PDT)
Received: from [192.168.42.50] (ppp-2-86-139-77.home.otenet.gr. [2.86.139.77])
	by smtp.gmail.com with ESMTPSA id
	k73-v6sm2519390wmd.33.2018.10.31.00.15.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 31 Oct 2018 00:15:24 -0700 (PDT)
To: Scott Rifenbark <srifenbark@gmail.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
References: <2829165.0Ht5z2aexs@localhost.localdomain>
	<CAFNP8OvFy2n7SMe5de66EcdM3URFm-b+dpcqS09hW0CMa9rNaA@mail.gmail.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <25f056c7-d6ba-499f-8bf4-b8d1470fff4b@gmail.com>
Date: Wed, 31 Oct 2018 09:15:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAFNP8OvFy2n7SMe5de66EcdM3URFm-b+dpcqS09hW0CMa9rNaA@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: 2.6 migration guide
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
X-List-Received-Date: Wed, 31 Oct 2018 07:15:28 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Scott,

On 31.10.18 00:06, Scott Rifenbark wrote:
> 
> I have an initial section at 
> https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#moving-to-the-yocto-project-2.6-release, 
> which is based on Richard's input.  I am sure there are more items.

You might want to add a link to the bitbake manual or some example from 
there for the new functionality of _remove operator:

http://git.openembedded.org/bitbake/tree/doc/bitbake-user-manual/bitbake-user-manual-metadata.xml?id=c0a23dd9155c50a6b7df796980bc7b612cac7994#n334

FOO = "123 456 789 123456 123 456 123 456"
FOO_remove = "123"
FOO_remove = "456"

FOO is now: "  789 123456    " instead of "789 123456"

> 
> Thanks,
> Scott

Regards,

Robert


