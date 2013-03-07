Return-Path: <insop.song@gmail.com>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 07129E014DE
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 13:49:51 -0800 (PST)
Received: by mail-we0-f179.google.com with SMTP id p43so232942wea.10
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 13:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=txyU96LK/Sn8HXOat3ZhiR1RZYctUKFDVVyi3aYrz0k=;
	b=f2CH/vhKnCqvyL1wpkOxA2pN1y3k8pwT9MpNWT6dWIWJce0/Jn7mhCEyQsSgIfZbq6
	MENGQSHOQsTNZoLbuiiCc9OGFHlivrNDmfO24RBxgtLSB1voV4KdOIUm+f4wgRLHW0XD
	yQRC2B/vJZCzyxJve3IqieNwkBQd8ZhaJSNXUejflj2bYBvnIgC6Y38+eOsqZTGJuay2
	/VzfkmqK9C/xGyr4Gim3nDcuEk0iuoM0W+4ahbJWW1MpyKqnhq/ROlTqlFZphn7hY0js
	bSqQ5udtQ+TbtC7awpx2BeR4jnWVBHm6S7ZWRNDklx1TEiLryGfvBCOZ08Br2g7FwgQA
	gLKQ==
X-Received: by 10.194.76.37 with SMTP id h5mr58222519wjw.21.1362692990526;
	Thu, 07 Mar 2013 13:49:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Thu, 7 Mar 2013 13:49:30 -0800 (PST)
In-Reply-To: <51389BCB.4000100@windriver.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<CACzyEJ_uHp7JQQG=Ufec5ipXdb5aEyWrp38jJFhF+qofsGkZ+Q@mail.gmail.com>
	<513810E4.2040506@windriver.com> <51381691.2020605@sssup.it>
	<51389BCB.4000100@windriver.com>
From: Insop Song <insop.song@gmail.com>
Date: Thu, 7 Mar 2013 13:49:30 -0800
Message-ID: <CACzyEJ_gBWMYyjcy2PaYuswviK4SoQn=W06vQet+LmOdjZBm1w@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Juri Lelli <j.lelli@sssup.it>, yocto@yoctoproject.org
Subject: Re: A question on adding a new program to a new meta layer
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
X-List-Received-Date: Thu, 07 Mar 2013 21:49:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

>
> Thanks Juri, I was going to add you to my linux-yocto-3.8 announcement
> email and due to some last minute debug activities .. it slipped my
> mind. So I'm using this thread to let you, and anyone else that is
> interested know that sched_deadline support is available to try out
> in linux-yocto-3.8.
>

Could you also add me in the announcement list?

>
>>
>> As I already told to Insop, I don't have any automated test for the
>> patchset, but I usually run different scenarios using basically this
>> two tools (and giving a look at simple cases through kernelshark):
>>
>> 1- schedtool-dl: https://github.com/jlelli/schedtool-dl
>>     the idea here is to let a 'yes' run through SCHED_DEADLINE and
>>     check through kernelshark that the bandwidth enforcement
>>     mechanism works.
>>
>> 2- rt-app: https://github.com/gbagnoli/rt-app
>>     with this I usually let some tasksets run for several hours on
>>     a 48-cores machine we have in our lab, I can provide the tasksets
>>     (json files) and the script to run them.
>>
>> Please let me know how I can help further.
>
>
> This is a good start. I have some old references to tests that I'll
> dig up as well.
>

You can check this recipes-tool to find out the above programs
(configuration and installation) in here,
https://github.com/insop/meta-dl/tree/sched-dl-V7/recipes-tools


> I'm looking to develop some "real world" examples of the scheduler
> class in action, since as we've been saying .. getting those examples
> will both help the approach and perhaps help get it merged into the
> mainline kernel.
>

I've been looking application descriptions when I was in Ericsson, and
provided cases to Thomas and Juri.
I am interested in this as well, and include them in easy-to test/validate form.

I will also reply to your other mail shortly.

Regards,

Insop

