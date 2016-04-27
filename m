Return-Path: <ulfalizer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A31C9E00756; Wed, 27 Apr 2016 09:31:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ulfalizer[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 610ACE006D3
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 09:31:14 -0700 (PDT)
Received: by mail-vk0-f54.google.com with SMTP id m188so192736vka.1
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 09:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=ILIrA7qzMltpil0Vnnl3p7bo69tCU4Gky7fnZfcVyus=;
	b=yG93ZjZITdNlzzu74PrNHMYUoYjsJgqFHhRQfUmGYEMtsEXuT4C8ZJ57ZbUouWOeLz
	OllB3YoWmakqXEuY64CO2Kdl71CKnjUfVZk3/rwu0F2ji/OeomK9bM88/b5LtZT20/8s
	+m3kn4okA12ZEOMYqegKTUDgCkxhzW1GDoDy6WrtdPmSN9vRQBYqWcbLjqpHVVtu4xU6
	gjygiyGhXqiLRYvImew7X34ChBfB7B1pREDs/+xtICcpcUtvKMHWdlaB08i1s75iyv0L
	wUz5aXPs5b1A/ijX0Il5ctKpfwzuyY/KxoC3NUsYgtFAxlSCwuTx7x01fLkoUvpoo5Xu
	8/kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=ILIrA7qzMltpil0Vnnl3p7bo69tCU4Gky7fnZfcVyus=;
	b=KRCjU29adkjnLdQuzDuvG4Hia4c6MbH0DiIMXEp0tX1x4DIM8lscMTssKTGtngBaZZ
	ng7FO0fwdGBK0XAcBRkQ8VojOzY6N2R/4j1AqAYBTOZMh8IlnYAnJ/c2Q4lH7BY/Fv4d
	ANCRJem1vtd3QqQLVreTjROjAi/FVKyoY7WfDHU9b7uuTh5DRpYbpJStMRH2M7xDA1ig
	wzYyAdxh4eQHxU99L9omY/4umhU2u0dsA/BiuD9/IxWy3IQVJ9YK9F92mSBw3GeFkN2s
	UDtgT3fRZ10F0P1FUppJMf2O/f1zQBfEWOtNx2xLXqL0x+Erx/kTKkq1TmnXDpDKqjtP
	/Z8Q==
X-Gm-Message-State: AOPr4FXSPWk5SxqoER2HylEx32U1dYwb4W8kfDzjRQ7KWefPJ1ajHz/TWg1A69NJEHfI+2iUXWhmFUpzyiOddA==
MIME-Version: 1.0
X-Received: by 10.176.1.5 with SMTP id 5mr4914435uak.72.1461774673770; Wed, 27
	Apr 2016 09:31:13 -0700 (PDT)
Received: by 10.103.124.204 with HTTP; Wed, 27 Apr 2016 09:31:13 -0700 (PDT)
In-Reply-To: <CABcZANk4XqaniZYunL+wjYdofozm-JbX82df94c6YjLPn3N2LA@mail.gmail.com>
References: <CAFkk2KSM3yNdy1jayEkNXNrZMyWu3TNQ86=Eg33C2Dm8X70h2A@mail.gmail.com>
	<CABcZANk4XqaniZYunL+wjYdofozm-JbX82df94c6YjLPn3N2LA@mail.gmail.com>
Date: Wed, 27 Apr 2016 18:31:13 +0200
Message-ID: <CAFkk2KTcLrOC76a8w9FVOq8my6CZ_wkwYfn1ERZP-HBjKHFTVw@mail.gmail.com>
From: Ulf Magnusson <ulfalizer@gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Dumping (inferred) do_task[vardeps] for some do_task
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
X-List-Received-Date: Wed, 27 Apr 2016 16:31:18 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 27, 2016 at 6:19 PM, Christopher Larson <clarson@kergoth.com> wrote:
>
>
> On Wed, Apr 27, 2016 at 9:11 AM, Ulf Magnusson <ulfalizer@gmail.com> wrote:
>>
>> I'm trying to get a feel for how BitBake infers task dependencies. The
>> easiest way (but I'm open to suggestions) seems to be to dump the
>> value of do_task[vardeps] for a particular recipe after the inferred
>> dependencies are added.
>>
>> What's a good way to dump do_task[vardeps]? I tried using getVarFlag()
>> in an anonymous Python function, but it only catches dependencies
>> explicitly added to do_task[vardeps]. Maybe [vardeps] is never
>> assigned the complete set of dependencies internally, or maybe the
>> anonymous Python function is called too early.
>
>
> That's correct, the full list is not stored in the vardeps.
>

That was what I was starting to suspect. Thanks for conforming.

>> generate_dependencies() in bitbake/lib/bb/data.py also looked
>> promising, but maybe there's a better places further up the callstack.
>
>
> That is a reasonable place in the code, yes. You can inspect a certain
> amount of information in the signature data files, but I'm not sure it
> drills down to the level you desire.
>
> My 'bb' tool's 'show' subcommand can show not just a variable but also its
> dependencies, perhaps that might be of use? I haven't touched it in ages,
> but in theory it should work.

From some quick experimentation,

  $ bb show -d -r test_recipe do_compile

only gave me the source code and not the dependencies.

I found a hackish method that seems to work however. Adding

python () {
    deps, _ = bb.data.build_dependencies("do_compile", set(), set(), set(), d)
    bb.note("do_compile deps: ", str(deps))
}

to the recipe also prints all the inferred dependencies.

Thanks,
Ulf

