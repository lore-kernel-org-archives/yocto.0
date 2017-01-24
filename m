Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6935E00867; Tue, 24 Jan 2017 10:34:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
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
	*      [209.85.216.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.196 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B174E00655
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 10:34:09 -0800 (PST)
Received: by mail-qt0-f196.google.com with SMTP id n13so27207355qtc.0
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 10:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NTVPyFyl/5KqIMOAHqMx8OiarqQ2dKuUfs8FgzhPnvc=;
	b=Ei+MAKIY77D5T2agLwMPCsUp66bUCMhDV0m0SN4cL9zB9POeIQ1QjnhDyGudyVchhf
	3k1qNmHtme/DK1V4tLOx6RQNkDvNPbKpiC4aX0Z3+VtRnTOzoykhwCrsuLUhswQO1chQ
	nLebKyVOPfPIFkk9nMpGGnlVMG+XmgfEMW0wN/fTBbbIdxaZwuc04GwGr1HXm6owYloL
	J8s/GleIFrOWUlyHcqNBlZpnlsYx37wu86MW6oB00PgQAiK6NYGl9X6kIHQw4jWrAY1e
	vOK/7EYaH2+PGvBKqgvZBsqk3UuDQLXQYODfMAWQlh9m4am5OP2wzHfyClsSquwCXUxr
	BBMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NTVPyFyl/5KqIMOAHqMx8OiarqQ2dKuUfs8FgzhPnvc=;
	b=QJayjdVSDJZTuNMYmtk8gRWfIGU4zMP/8g+Sb6v6ReZ4pICMD+200ikOJx97haIxgw
	mFHOwhQ7jYQ9pSznqNEM82xtux+UGrTYKx8mVhLA0psv81wyARSn3BBAmemQNSJjcPsS
	FK4w/poNqC5zwkjLkDDbfOQL87lEkLG9QMeTuIuTJKcB9dDIwVXjTS7mgV4FrG5ELPAt
	G648XBtXQ/qyhIan8H7tDLmXul58/oJmryjEyWwiVcBDQqDHCruXz2eMm2AV2Cu1QSML
	FvxSZTI4GN4CIdvKHYD6SZ0pcAVLrx22RLO1nHHawiLL03NP+9dHCEmOqQVDND7L67eN
	bbsg==
X-Gm-Message-State: AIkVDXISCwXi6voV5FfVZ2xtFVpaZf75Js1f8KnAIQO1HgwYhRTzwPyasxcjHpeKmtVp5D66jlGonIdMsHeM9A==
X-Received: by 10.200.57.9 with SMTP id s9mr29819329qtb.125.1485282848670;
	Tue, 24 Jan 2017 10:34:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.39.252 with HTTP; Tue, 24 Jan 2017 10:34:08 -0800 (PST)
In-Reply-To: <CAMjhiJgF3GxfYEBDum7HP7tnjTF+LQ3vaeUNG6_tYQ8nD7Rzdw@mail.gmail.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
	<CAMjhiJgF3GxfYEBDum7HP7tnjTF+LQ3vaeUNG6_tYQ8nD7Rzdw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 24 Jan 2017 13:34:08 -0500
Message-ID: <CAHUNapS0=98WKmRekRoncMrcDDoWo8Vgrx91uDgtXjA1H1v1kw@mail.gmail.com>
To: Leon Woestenberg <leon@sidebranch.com>,
	Romain Perier <romain.perier@gmail.com>
Cc: Yocto List <yocto@yoctoproject.org>, Jacob Chen <jacob-chen@iotwrt.com>,
	eddie.cai@rock-chips.com
Subject: Re: [PATCH 0/7] introduce rockchip offical linux support to meta-rockchip
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
X-List-Received-Date: Tue, 24 Jan 2017 18:34:12 -0000
Content-Type: text/plain; charset=UTF-8

Hi Jacob,

Sorry for the delay, I hadn't noticed the patches initially because
the tag was missing, then I was busy with other things. I'm taking a
look at them now.

On Thu, Jan 19, 2017 at 10:17 AM, Leon Woestenberg <leon@sidebranch.com> wrote:
> Hi Jacob,
>
> On Thu, Jan 19, 2017 at 11:09 AM, Jacob Chen <jacob-chen@iotwrt.com> wrote:
>>
>> This series of patches add below features, will add more supports in the
>> future(medias, more chips).
>> 1
>> Rockchip 4.4 kernel is currently the latest version of the rockchip
>> offical kernel, will be an upstream tracking branch.
>> We regularly release the kernel through github. It support all rockchip
>> 64-bit chips and a few 32-bit chips.
>>
> The topic mentions "official kernel" and you mention "we".
>
> Does this mean this is a rock-chips driven effort?
>
> Good to see such (vendor) support, welcome aboard, but please understand the
> "layers" system of Yocto, like the others already pointed out in this email
> thread.
>
> - Basically you create a (BSP) layer, that sits on top of Yocto /
> OpenEmbedded core.
> - Also, it is good practice to also support the same GIT branch names for
> the different Yocto releases (such as krogoth, morty) such that users can
> easily match the correct branches so that everything just builds correctly.
>
> Regards,
>
> Leon.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

