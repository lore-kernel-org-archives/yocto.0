Return-Path: <bill.randle@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77156E00CCB; Sat,  8 Oct 2016 16:17:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bill.randle[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CF0DE007B7
	for <yocto@yoctoproject.org>; Sat,  8 Oct 2016 16:17:11 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id b201so106841535wmb.0
	for <yocto@yoctoproject.org>; Sat, 08 Oct 2016 16:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ihmMxqM53AdHjvMPmOcGc9Is/t7ywwOS3y3x2OPJMF0=;
	b=tB3l32xSENnQX4ClUE4O/2xpf60751gEW0CeiAY8YiM9z5CBqlhFKi5LLqGVuJp9y/
	vEGZtG7DqX0fyLodSCiYbIt3wdUMNf5iSKANU/T0mUYPOUBWv5SYkeNjRS6lRo772vIe
	nU9LArBDFs99tGo8sg6gmVsRZoC1AQAAcMAN0Fk796vFP1BPVUr5Lemg01kzISmLMx13
	nnn6qjNYwSOBGRbp7xvhkWWBeen13tTW6qk/Pb/8HbmChw3pqsyU5RaM4ioZN5WQumv/
	w2bfJMXBoUOaQEYWrXQAZ0PGtlg9LwWs3BULrDwFIaMSZh9pDfyhjeG2KsllXdAaj/uh
	uuyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ihmMxqM53AdHjvMPmOcGc9Is/t7ywwOS3y3x2OPJMF0=;
	b=R1tykaAlDwcVisY+Mxt5DQl/DyE/UEURq1fn+4/Lfl7Vl2oWOVxodgrcSUFHZaBGib
	MUp+jcS0YEi2ITnncCHl8qaBOuL57j7rR07EXtv0JCerfKuo/I7UTF20wrAiae0x9PIk
	azRJHNk7pq83JPCEaW63vD8Ia8rwkduaW4Bj+ubedOobFjaQ3eX72fUC7AsMJdiH1iUQ
	rIEUWtHfPbUw4NfEk7ZxD89ugdRrQ1tTKvPvjbwZh64YUCsUOVgsmz0ng9dAtB4da0d4
	4ul8MUwOI1U1HolCkbWsYM+y+4kr/REfqdlHpBv4B7V8yoBXm+ZiDVXWca+vLAOfDyyq
	gWfg==
X-Gm-Message-State: AA6/9RlmHuBdHMKfGDySGs+MkCGazhn8YHcZAGb9L1i6bo++vqzcljPxu4TgvEl8hXZIblr8X6b4JcS/B6QnWw==
X-Received: by 10.28.28.193 with SMTP id c184mr3980852wmc.53.1475968630653;
	Sat, 08 Oct 2016 16:17:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.135.212 with HTTP; Sat, 8 Oct 2016 16:17:10 -0700 (PDT)
In-Reply-To: <c2bd83f60d7dee07af64bc0796ae28c0@reliableembeddedsystems.com>
References: <e31067aeb8accb65a84da105dad48944@reliableembeddedsystems.com>
	<CA+n--H-B+0MgxB1ztB+Lbw18G9mYEzy=FhAzZnE_R89SYjpL_w@mail.gmail.com>
	<56993190d475014fd9f289fdad7db19e@reliableembeddedsystems.com>
	<CA+n--H8NN32sFJVQFrODtm_99aR5D60kHnK1o0S5B_RWqLfkBQ@mail.gmail.com>
	<c2bd83f60d7dee07af64bc0796ae28c0@reliableembeddedsystems.com>
From: Bill Randle <bill.randle@gmail.com>
Date: Sat, 8 Oct 2016 16:17:10 -0700
Message-ID: <CA+n--H_F3fo3_zEW=u_ySEXj+T3-7UWWy0Yw651JrvEfeCx2Lg@mail.gmail.com>
To: gmane@reliableembeddedsystems.com
Cc: yocto@yoctoproject.org
Subject: Re: Y-AB PublishArtifacts toolchain wrong dir
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
X-List-Received-Date: Sat, 08 Oct 2016 23:17:15 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I think I would leave the toolchain artifact as is, but just surround
the the 'cp' with an 'if' statement. E.g.,:
  if [ -e <path-to-x86-toolchain> ]; then
    cp <cp-args> <path-to-x86-toolchain> <destination>;
  fi;
  if [ -e <path-to-x86_64-toolchain> ]; then
    cp <cp-args> <path-to-x86_64-toolchain> <destination>;
  fi;

    -Bill

On Sat, Oct 8, 2016 at 2:52 PM,  <gmane@reliableembeddedsystems.com> wrote:
> Hi,
>
> On 2016-10-08 09:28, Bill Randle wrote:
>>
>>
>> All the "standard" build configs produce both x86 and x86_64
>> toolchains - which makes sense, since it's not known what build host
>> the user is using and the AB needs to show both are buildable. In your
>> case, you know you have an x86_64 machine and don't want to bother
>> building for x86, so, it's seems like the thing to do is check for the
>> existence of a build package (x86 or x86_64) before attempting the
>> copy.
>>
>
> That's what I thought as well at first. So I introduced new toolchain
> artifacts like toolchain_x86_64 and toolchain_i686 where I did only the
> relevant thing in the relevant branch.
> It did not solve my problem.
>
> Regards,
>
> Robert

