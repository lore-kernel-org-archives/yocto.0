Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E0D8E0086E; Fri, 13 Mar 2015 02:05:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B5B8E00858
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 02:05:31 -0700 (PDT)
Received: by iegc3 with SMTP id c3so95532963ieg.3
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 02:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=psv3mYbkk71XqCLcy9TEev0D27tqg3q2ar5Wj9hsFHo=;
	b=ppp+BopxmQg156tnn7vbR+wJ1B+vSoyL7gm9pM6xumFe10QkNjZ6VI3oCkBdErHIa+
	kgH6XS7YXabbPxm9bUOcoXtuG7YAwfw/lbI8Cutdm2FiUZ/LHTp1BjEFvQFKrrrI3UmK
	1aSKz8GrbMfMtydpo2doIBZp1UI9UtSG/BvAwjFIEtP7rlCMKpcXWvxLRjKpxF3DGJMp
	gNKXwU5uDqwwhUt57j9ovYlH14dcU06EWtwbcvWQQN2x0xR+3sGonNMlcMRwJxTOilgP
	XvEZd4OKrQgO8iIuNEJJ3SwniivRZv2ssrTsKhZ50BvEyVUjovvF2NJ9gQ6/ggAkyPs0
	ursA==
MIME-Version: 1.0
X-Received: by 10.107.6.212 with SMTP id f81mr77048774ioi.37.1426237529786;
	Fri, 13 Mar 2015 02:05:29 -0700 (PDT)
Received: by 10.64.39.16 with HTTP; Fri, 13 Mar 2015 02:05:29 -0700 (PDT)
In-Reply-To: <2800438.dQj2Pq3DsR@peggleto-mobl5.ger.corp.intel.com>
References: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
	<1425961288367.52845@inedasystems.com>
	<1426234453004.44900@inedasystems.com>
	<2800438.dQj2Pq3DsR@peggleto-mobl5.ger.corp.intel.com>
Date: Fri, 13 Mar 2015 17:05:29 +0800
Message-ID: <CACjDgAMJiOGEj=Osa10gsc8jMj8rK=NUYrbDOg8-KqaKd7=GTA@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
Subject: Re: Difference b/w yocto kernels and normal linux.org kernels
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
X-List-Received-Date: Fri, 13 Mar 2015 09:05:33 -0000
Content-Type: text/plain; charset=UTF-8

Hi Paul,

I hope you don't mind me asking a question slightly out of topic.  I
would like to know if there is a recipe for linux kernel 3.19 for
dizzy branch (intel x64).  Thanks.

Regards,
Albert.

On Fri, Mar 13, 2015 at 4:53 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Friday 13 March 2015 08:14:13 Raghavendra Kakarla wrote:
>> Is it kernel is must be a git repository code for building in the yocto?
>>
>> When i gave my custom kernel which is not a git repository code and it is in
>> my development PC, i got invalid SRCREV number error. But when give the
>> same kernel from the git repository it is working. Can you please help me
>> in resolving this error.
>
> If you want to use your own non-git sources you are moving further away from
> how the linux-yocto recipe works. If you have not already I would suggest
> using linux-yocto-custom as described in our kernel development manual:
>
> http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html#working-with-your-own-sources
>
> Note that you must not have SRCPV included in the recipe's value of PV, or
> you will get the error you mentioned.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

