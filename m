Return-Path: <dev@codyps.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B4A1E00846; Mon, 20 Oct 2014 12:45:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82CB9E0080C
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 12:45:09 -0700 (PDT)
Received: by mail-lb0-f171.google.com with SMTP id z12so4574605lbi.16
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 12:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codyps.com; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=k8e1zogxyh4v/E59lSB8OEOgokkxFwzfrlL67g3vGOk=;
	b=JHFyOaIH9k2RF6h3TksxvZEGrbn67x4nydnYNzLL9eJZDVnnDjufz6HatG9iH3DijG
	UqaWYoqCkXCbHmbvxK/aPZIlngD9r77oWahEZ12n93CUggo4mSkP+vKP1UTeNH6aKTWw
	ri+EzT+G/GjwGiVXT7nDMUoBYcUwyNRBUc3eY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=k8e1zogxyh4v/E59lSB8OEOgokkxFwzfrlL67g3vGOk=;
	b=mNX/W/6Vj5mrHXFbnaScX1Vap8HKFKjVMSbkrob+08iATduBPZETWN1/skk0E4hHBh
	8YpDqd6f+OaRcmmcbtNL8BsXm4W3F7b4Zb0NfL3JjqJMkjtE6f8AGWNcZOv3p3oqueoI
	2IvhhUrRp/N/VvmHmE0thM6Xx0VKeRKUh5ceBZaqzKn//cqWimdWxTy5jGaPtO11YVLq
	3kcmKUW/34oxFQE6KtMSqgNxddmyCDMQc9ZJ+EU958ikzZk0jOc8TSKNzQ+u8y64svid
	A/zQ8i8cra6Ep2W0RARiYq0k52fuejg6Lr25RWYAnmQwDkbVSar3Fgcz2lndDWoQVJ5x
	jcNg==
X-Gm-Message-State: ALoCoQlNMg7bdF6G3jpF58jGWJVIMhaSYU1Tg943vnrDn+FSYRlt18gkXqwvpQkizr9DDZr6zQvl
MIME-Version: 1.0
X-Received: by 10.112.94.133 with SMTP id dc5mr29732037lbb.11.1413834307888;
	Mon, 20 Oct 2014 12:45:07 -0700 (PDT)
Received: by 10.112.188.161 with HTTP; Mon, 20 Oct 2014 12:45:07 -0700 (PDT)
X-Originating-IP: [72.74.84.52]
In-Reply-To: <20141017174824.GR3000@jama>
References: <CAPoQQ-1xzG=SqaBrPp-W-tOd9W3fWyZ=skUTEpvq+mEQ3P_CuA@mail.gmail.com>
	<CANyK_8cvEcxAC3tJMJHSif01gnXZU=L=TTu990_uENTrjTYK1g@mail.gmail.com>
	<20141017174824.GR3000@jama>
Date: Mon, 20 Oct 2014 15:45:07 -0400
Message-ID: <CAPoQQ-1xo79Z=VO2C=TrQFL4kQ3O-obADQFkwf1KYMLK2LdFtg@mail.gmail.com>
From: Cody P Schafer <dev@codyps.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Questions regarding adding a new llvm based cross-compiler
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
X-List-Received-Date: Mon, 20 Oct 2014 19:45:12 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 17, 2014 at 1:48 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> On Fri, Oct 17, 2014 at 09:07:19AM +0100, Paul Barker wrote:
>> On 16 October 2014 18:46, Cody P Schafer <dev@codyps.com> wrote:
>> > Hi all,
>> >
>> > I'm working on creating a layer for the rust compiler (which uses
>> > llvm) and was wondering if there were any best practices and/or
>> > examples people could point me at.
>
> Are you using llvm recipes from meta-oe (or at least starting from
> them)?

I wasn't. Rust packages a particular llvm version already (and ties it
into it's build scripts). I'm planning on just using that one.

> I haven't tried it yet, but I've asked Servo developer, how they do
> cross-builds and he said that it's really simple with Rust and Cargo,
> which support cross-compilation by design.

Well:

From what I've found, crossbuilds work fine if you're using one of a
small set of blessed triples (ie: not arm-poky-linux-gnueabi, but
arm-unknown-linux-gnueabihf), and you don't set any special
CFLAGS/LDFLAGS variables (which oe does).
And the infrastructure is not in place to allow packagers to easily
add/use different triples and "linkers" (rustc calls gcc/cc to link
it's programs, and as a result needs to know where it is).

