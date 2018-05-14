Return-Path: <danismostlikely@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30E59E0195B; Mon, 14 May 2018 09:33:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danismostlikely[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com
	[209.85.215.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDD4FE00DFB
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 09:33:43 -0700 (PDT)
Received: by mail-lf0-f68.google.com with SMTP id z142-v6so18954909lff.5
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 09:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ili1vAkvvHr9utQSVlqdneB+I+qskflXOPwy5fGgyfs=;
	b=Y6beqSvdAgzTUHXlzsJ5Qn9sUQ5eQ64RY6ZBV1Y8dY0wIyCRMnITgwDy+pOfERHkZi
	5P128rweRspu4PX4YHHSSA0sdOkcsk4i0DfCDrhtkZKfkkwwf5mM4fKaj/QuilI67mfN
	VeAWC+iMcBondsaS7F998Q5u1jnS7yeNK2L8x4W/3lrK8Wadf9FXOxI3YuLY4XWcCKqU
	8/UCeQ0lVaGIA5hr88o9LcEPtcPIl2yqiwuj733EI68HBc3LsakFZniY7spGuwjLYqvu
	3dV3ZpRfgN6iSMzLJIumMqPnpL3dmebhA8nRYLHoJ8y9ooDoIHClCj85PUK88y1THXJJ
	yXQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ili1vAkvvHr9utQSVlqdneB+I+qskflXOPwy5fGgyfs=;
	b=c7+vpHRiyPcB76QFAsV51DSezWSaBSFs7WdRyMAXFZRIzvbpMOLnw7zExv0ObSYFz6
	2yAMAkslcxGjPGOMh/HKwjkMCUre/1kJiY1zfbQZDQAa/x9UQZnC1ROhSjSZsE+n3dzl
	Koh94BhMUbLrkyZnxNdVD/vmH7WIlDql/f0iw+zZvEZ0gOeqfAuBwjx/ITXqZxbTKLod
	+/zHzAHLXVjEiQXtLzLLzir6Y4IaQSe+ni9wbB0XilmIYDU5KLOnyIQBQDMdilSMlpLG
	XXd4TvLOm0xNmyXK6Y4dF9YnAcTcmAuxfWqB5FvHIymndCWbKgykG4cQFGNwyJvf+7OX
	GQjA==
X-Gm-Message-State: ALKqPwchh1UTILn9g2z3cjA7ZVidmkTyRdG8rzsdyLz7r9EpusW9yyIy
	TanSayiB8atzPcnDFLq4KWnxUC0dmu2mBOreUBA=
X-Google-Smtp-Source: AB8JxZrVGNmPbgl1P5CjFoKPK5C9Lt/0kbnJrFZZ2xpF95zCk1hrSd8ovv615UfDQrXA8e2jNeOF7hCCk/EuD3Mfjes=
X-Received: by 2002:a19:d153:: with SMTP id
	i80-v6mr8921004lfg.16.1526315622458; 
	Mon, 14 May 2018 09:33:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:380e:0:0:0:0:0 with HTTP; Mon, 14 May 2018 09:33:41
	-0700 (PDT)
In-Reply-To: <1ceb098b-1836-4693-d03f-8801ac354c25@gmail.com>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
	<CACS+7ZR6F1PgKxQxxh=iJzTQNmrrMVOQ01EuhcnotSAhB=AiEA@mail.gmail.com>
	<1ceb098b-1836-4693-d03f-8801ac354c25@gmail.com>
From: Dan McGregor <danismostlikely@gmail.com>
Date: Mon, 14 May 2018 10:33:41 -0600
Message-ID: <CACS+7ZRs_zB_c-Wg8K=JEtWyHH7DG-W8ER4Ky1Yg6v1C8xtsyw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 8.1
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
X-List-Received-Date: Mon, 14 May 2018 16:33:45 -0000
Content-Type: text/plain; charset="UTF-8"

On 10 May 2018 at 12:53, Khem Raj <raj.khem@gmail.com> wrote:
> Hi Dan,
>
> Thanks for testing
>
> On 5/10/18 7:34 AM, Dan McGregor wrote:
>>
>> On 4 May 2018 at 18:26, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>> Hi All
>>>
>>> As you might have noticed that gcc 8.1 was released this week, I am
>>> calling out for some testing help on testing branch so we can weed out
>>> issues you might see in your setups. so if you have your
>>> builders idling over weekend, then you know what they can do this weekend
>>> :)
>>>
>>
>> Thanks for this. The only two issues I noticed are that the
>> Wandboard's kernel doesn't compile with gcc 8.1,
>
>
>
> what errors do you see ?

I expect the standard "Linux 4.1" errors. A bunch of ignored
attributes and incompatible type aliases:

tmp-glibc/work-shared/wandboard/kernel-source/include/linux/log2.h:22:1:
warning: ignoring attribute 'noreturn' because it conflicts with
attribute 'const' [-Wattributes]
 int ____ilog2_NaN(void)

tmp-glibc/work-shared/wandboard/kernel-source/include/linux/syscalls.h:195:18:
warning: 'sys_clone' alias between functions of incompatible types
'long int(long unsigned int,  long unsigned int,  int *, int,  int *)'
and 'long int(long int,  long int,  long int,  long int,  long int)'
[-Wattribute-alias]
  asmlinkage long sys##name(__MAP(x,__SC_DECL,__VA_ARGS__)) \

I can give you the full compile log if you'd like, but I think others
want it kept off the list.

>
>  and gcc-sanitizers
>>
>> now throws a packaging error on (at least) x86_64.
>> ${libdir}/liblsan_preinit.o is a new file that should go into
>> liblsan-dev.
>
>
> That seems to be the case, I wonder why my world build for qemux86_64 did
> not find this error. I would like to reproduce this and the fix is then
> simple.

My x86_64 build was multilib enabled. I doubt that had anything to do
with it, but I suppose it's possible.

>
>
>>
>>> Highlighted changes are
>>>
>>> https://gcc.gnu.org/gcc-8/changes.html
>>>
>>> and porting doc is
>>>
>>> https://gcc.gnu.org/gcc-8/porting_to.html
>>>
>>> The branch is here
>>>
>>> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-8
>>>
>>> Its uptodate on top of current master oe-core
>>>
>>> May fourth be with you !!
>>>
>>> Cheers!
>>>
>>> -Khem
>>> --
>>> _______________________________________________
>>> Openembedded-core mailing list
>>> Openembedded-core@lists.openembedded.org
>>> http://lists.openembedded.org/mailman/listinfo/openembedded-core

