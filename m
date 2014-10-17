Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16E89E0079E; Fri, 17 Oct 2014 02:58:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.47 listed in list.dnswl.org]
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17FB5E00744
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 02:57:52 -0700 (PDT)
Received: by mail-qa0-f47.google.com with SMTP id cm18so260690qab.6
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 02:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=dNw/g8SKA4qyljoGZfxrQmmZ84NAepl9kgKuLQuuXIc=;
	b=hcm2GVsTNRdhinVSV3YOuaywEpwzAMTsRpjlFKfgdTxFiFV01DuEbcqqTPgnjFBzJq
	KiBfYK44oey2RRdgAb8mMrLS6ADjxT1zfUn6fVM9Efy3+6qchgqJXfFbbC23ezhcTVSZ
	NqmVMAAZmTN7BKeozmw15AsUhQkMmxxeeI1HxUktdFuN47neE53t4FA+Ud+DCQc2wvX7
	VF3FV2y3ZltkFQFAc+J8EqkQ05Nh71+xUIFZ8ICeJ+2miO2Tf6aFAYIytZURjT7VKQnF
	MwDuZv7JOOfbcdANkR7cD2lzW4Cb+gqFmhB7M8rBBWWlmfd6C2BV+7DuQxksLQ5jI4t2
	E/Rg==
MIME-Version: 1.0
X-Received: by 10.224.66.7 with SMTP id l7mr10182527qai.71.1413539871377; Fri,
	17 Oct 2014 02:57:51 -0700 (PDT)
Received: by 10.140.86.147 with HTTP; Fri, 17 Oct 2014 02:57:51 -0700 (PDT)
In-Reply-To: <m1qoh8$a7q$1@ger.gmane.org>
References: <CACjDgAPDSC5v2QO432YnmRjDLM04ucF0odrjRP9+bS14bWhkQQ@mail.gmail.com>
	<m1qoh8$a7q$1@ger.gmane.org>
Date: Fri, 17 Oct 2014 17:57:51 +0800
Message-ID: <CACjDgANL=fYag7FS+eRMJHrW-kKuZy6cCr53OPqS4OWKUy3ayg@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PCEngines APU1c
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
X-List-Received-Date: Fri, 17 Oct 2014 09:58:01 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I did ask in the PCengines forum but no reply as yet.

On Fri, Oct 17, 2014 at 5:46 PM, Neuer User <auslands-kv@gmx.de> wrote:
> Am 11.10.2014 um 18:52 schrieb Albert K:
>> Dear all,
>>
>> May I know if anyone has a BSP for PCEngines APU1c ?   Thanks.
>>
>> Regards.
>>
>
> Probably ask Pascal Dornier from PC engines directly. Although, he
> mostly only focuses on the hardware, but he might at least know...
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

