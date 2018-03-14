Return-Path: <nickaein.i@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FCF3E00EDA; Wed, 14 Mar 2018 03:27:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nickaein.i[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F1E5E00823
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 03:27:29 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id f25so2869399qkm.0
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 03:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Y5YulSuh/PBAB/Rxoi6JiBGc2IR+3yMcTyYx0AddJsg=;
	b=sn+PfMxqOHx3y87gGcEjjNarhrm01ZKVrmfD8Ix1Sd327dSz3OSKl6oKrEntdnsVsi
	3XgAFWK/34B9bYrXolZZxY1UOnYaUyJ46jljRAsbb+5DE4LfR5AP964MG1zDXKcgiWpO
	sw40aOJC3D5qrfaw17ob59VdbaX+YGn/OKFhYKpD7aSht3rfnYiiRNr8mqiDqlc5NDIC
	5c9k7L54a6XDsFNoun8kEqWSrs2+RgSNaXThuIZ6MoEEwg1MsoK/G/pOU/vye6RKo39Q
	gu1WWQpvrDTbRqvz/pd5TYvJVUFlpKhCysmIA+myju38A9rlie6LCzKTieCSHSdyaBKn
	9SXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Y5YulSuh/PBAB/Rxoi6JiBGc2IR+3yMcTyYx0AddJsg=;
	b=av74dSD6mb+uRdzyUjxFjp0i9N3RgdRTIFjk2fHwx7bTKRC+i5XVZ89qR06FzRMKTY
	pN91RRyhUhRtKXq8YnNpz5VVm0cDNE0ioj65+b6W8V9Rc0YGDyMT2+ea/TnUs+5KWnN8
	V9mGv8NTqw7CiUxxayqEXGoLzgEcRj6/1FHLMofSYJW+QwwcLgz2cSpsPtc3BSQUurH0
	rInUQ7RbQ8k2cEltszPRXcevf/L7RIHOgTSCIKV2izHjGiPyMS/G1Urku73M5pAPn40b
	xhkLt9TQnKjKld9kuXt7rIYkyX1b7xeIOT/EscXLxUlk2FTvKR1gzWj+p/XmakGcD93u
	ahpQ==
X-Gm-Message-State: AElRT7FAxiGZOwoacZflI/EG1S3u+WVvuYhBR1sUNkPKlVY6dIj0vqr8
	wkcfByIcCGv6VcQT11jrIhsZUBn/lZujH8g7ZMJcubj1
X-Google-Smtp-Source: AG47ELvfpPTkUXwLT/bAM2l9GntJh3xcvpVaeYXaI3Cizv2RtsR/qo08rvVZArb4QWAtyWSVEIuGjZMAufgcGR6g6Ic=
X-Received: by 10.55.112.133 with SMTP id l127mr6263336qkc.224.1521023248801; 
	Wed, 14 Mar 2018 03:27:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.139.145 with HTTP; Wed, 14 Mar 2018 03:26:58 -0700 (PDT)
In-Reply-To: <53cc5909-6f2d-6788-8b7c-ca3f1d9cc5d7@linux.intel.com>
References: <CA+NJmkej3do9Niya2a322PraL+bRUYNct-iwcEL5VJRgGJpyyw@mail.gmail.com>
	<53cc5909-6f2d-6788-8b7c-ca3f1d9cc5d7@linux.intel.com>
From: Isaac Nickaein <nickaein.i@gmail.com>
Date: Wed, 14 Mar 2018 13:56:58 +0330
Message-ID: <CA+NJmkcGwf7O6QGHVqx3zFL2T+2HRO2guoYbkah2ej11uhJVpA@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Targeting Windows platform
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
X-List-Received-Date: Wed, 14 Mar 2018 10:27:31 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Alex,

Sure. I am hoping the management see the benefits and we could start
working on this. Besides that, I should give them an estimate on how
long would it take implement such thing.

I am clueless about how much effort would it take to add a Win32
MACHINE type. By looking at conf/machine/x86 it seems somewhat easy to
have a, but there could be serious work to be done on the compiler
setup, etc.

Again, while porting some libraries like Qt/OpenSSL/etc would be
straightforward, I wonder how many *base* libraries and tools are
there that must be ported but aren't easy to port.

I am looking for community's opinion to know the difficulties and
suggestions on the way of such big task.


Isaac

On Wed, Mar 14, 2018 at 12:28 PM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 03/14/2018 09:56 AM, Isaac Nickaein wrote:
>>
>> Thanks for sharing your experience. It is relieving to see that you
>> have the same perspective.
>> I hope there will be an initiative to target Windows and I will be
>> glad to contribute.
>
>
> I don't think waiting for the initiative to happen will get you anywhere.
> Talk to your management, and explain to them that you need time off from
> your 'day job' so that you can do deep research and prototyping into this
> subject. We'll all be happy to hear your findings.
>
> Alex

