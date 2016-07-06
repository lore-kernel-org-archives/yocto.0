Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF10AE007E8; Wed,  6 Jul 2016 06:25:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53727E0077E
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 06:25:24 -0700 (PDT)
Received: by mail-vk0-f65.google.com with SMTP id d128so12173566vkg.3
	for <yocto@yoctoproject.org>; Wed, 06 Jul 2016 06:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=laovHInmy4Mmana88iAE428lLZ0MgpwffDNPhIWnv3U=;
	b=LUzuzmghVZtXyHH8f9UIkW4PRcS1LEcLdA8seBoZwXJPsmtGO8gPbUH7a6q2kpDss5
	AlXuS8VBZa+DoYuV8ysSNiCALv+iEyzUYWEXYjYGRRMiRQbb02G7ZdWz+g/AiwhZ/Xvj
	gA7AIvHD6k+3/6NtgUWb09JSy5UH7+M/Ljxk2kI54Cw2B1F30oek+wv+HyVpGLpVsgGm
	G0a5qyMx6lda9zxcgI/VXpu5iG4YXINIRGeQ8g9J1sStl0EfTcsuUd9oF0qjJabyO8x5
	bna5o7Lsb1a2elv26fbvybiYt0rSIZnYuaQqMfHsyA9xJWnADAkk7BICWQ/XG6BHVeWP
	BJyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=laovHInmy4Mmana88iAE428lLZ0MgpwffDNPhIWnv3U=;
	b=f/BufqwTrAJ5BcxXJPLIWmYrV6DD89v4BUmrMg+HNZrHYLb2rU7MZZ4G2sDT1zKl7r
	n119wo46GCJtuSAmPK0eZ1wRk7DnnhM1BgTEap8XEhsIOxIwgEwyc5JjpHpGi07zkz5W
	XT2roQhCw9G8/roPiPWK5/YG8LWs1JzSt4FS2dcGrOI53h81D+c22brs1ytvGE/gU9qm
	m8AhCieQhlTAn7m+FIYc8s0oVup5GxRKdp/rJDpQZfooAU1xacQ7BBuBFvpOeMn6klGX
	SnAAbm//Ztjy93dkEqZNd9HbtlMGlFXbGClyCVG813LlZHjMDanbxlHz8CI4SPgigNmW
	Rhlg==
X-Gm-Message-State: ALyK8tKaOuyIySSvOPP15kU7aNaPs5oO/V3EXlwfDNRsNayGmsOcORuqZFTyXI8ndMuqieKBfYdA2If1pJ6PFQ==
X-Received: by 10.31.53.75 with SMTP id c72mr10033556vka.62.1467811523926;
	Wed, 06 Jul 2016 06:25:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.37.233 with HTTP; Wed, 6 Jul 2016 06:25:23 -0700 (PDT)
In-Reply-To: <CAEjjReJO62jjENv868u8owRazP0yBV+kBVG9yt2rxPBTxSfj2Q@mail.gmail.com>
References: <577CD922.4000405@mlbassoc.com>
	<CAEjjReJO62jjENv868u8owRazP0yBV+kBVG9yt2rxPBTxSfj2Q@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 6 Jul 2016 10:25:23 -0300
Message-ID: <CAF3SDA4Kjoh+WY=5Ji8q1_E4VHV27c89GcHWQovBS4_nmMcRYg@mail.gmail.com>
To: "Chris Z." <winotu.email@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: What keeps sstate from being used?
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
X-List-Received-Date: Wed, 06 Jul 2016 13:25:25 -0000
Content-Type: text/plain; charset=UTF-8

Doesn't the sysroots live on tmp/sysroots? Doesn't the crosscompiler
and toolchains live in sysroots? Doesn't you need crosscompilers and
toolchains to compile everything else?

2016-07-06 8:51 GMT-03:00 Chris Z. <winotu.email@gmail.com>:
> Hi,
>
> Check:
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#shared-state-cache
>
> "... the build system detects changes in the "inputs" to a given task by
> creating a checksum (or signature) of the task's inputs. If the checksum
> changes, the system assumes the inputs have changed and the task needs to be
> rerun. For the second question, the shared state (sstate) code tracks which
> tasks add which output to the build process.... "
>
>
> On Wed, Jul 6, 2016 at 12:10 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>
>> I just had a [nearly] complete build failed (building webkitgtk
>> after some 6000 tasks).  I decided to try the 'rebuild from sstate'
>> by removing my 'tmp' directory and rebuild.  Bitbake proceeded to
>> run 2200 setscene tasks and then [it seems] started over on the
>> build, rebuilding the target gcc, the kernel, who knows what else...
>> These are all things that I thought had been completed before
>> during the initial ~6000 steps.
>>
>> What could be going on and why couldn't it just pick up using
>> sstate from where it left off?
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Do or do not. There is no try"
  Yoda Master

