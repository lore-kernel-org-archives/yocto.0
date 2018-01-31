Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 950C1E00DD9; Wed, 31 Jan 2018 10:52:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23594E0085E
	for <yocto@yoctoproject.org>; Wed, 31 Jan 2018 10:52:00 -0800 (PST)
Received: by mail-pf0-f169.google.com with SMTP id 23so13588037pfp.3
	for <yocto@yoctoproject.org>; Wed, 31 Jan 2018 10:52:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jvyzuYVzpd6PRk8IaABFUPuLBCmHbBkkJMPLGeruI/4=;
	b=Mi+/BGNUAl+I/aow8m+J5wb2NN8uULzzksbMX4it3SrJoKLJ4wWzgPoo/CG/L1oDFW
	L/s83ddjD07073MyQrOYTEaesh2Tg89826j1JNAgrpKaeCrDKsrW9x4tC++PGn0MRom9
	7M6T1teiUaM6CFfMxi5MuKR03X9Du9GVhZWl8Yn5u75msDek7MQFr9Xd46/0upQ/JPUd
	Dv2jYyUmoTrbwAilEVhwT2MDR8zIVUlOrVYKxNmbhHWZ+hhUz+0zEN7F/VhMj4LTCf3X
	MLA4KUSD+u1Uep2w4EsCqvWbMX/yvPS8cOj4Ms7PRvDbkGIRRoHuKZS41ka9V6xZYITj
	TI2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jvyzuYVzpd6PRk8IaABFUPuLBCmHbBkkJMPLGeruI/4=;
	b=pY9a8G+wL1koBtCz/TJwjENRThf7+EXXso6K7GRKT1C6aidZpOgHDJ+RqcvCvLWoc+
	+fQUG3QNXKfoa2/SwIAhZd9h/gwzb7Gs2i+Z41kbnaWq28yIRHvn5hHSeihZe+VVUkRR
	tOOpuGxIMxERZshHSt2ftjc5yYAt0A40mfvxRZlToW+gBhFtj5U5PWddoCaz+TtsIkYz
	es+w0VGYUTuB1+ShiiRf5H/+/qu+dM2U+3w/u/3325WkFkiFnew5P/igBLmNikhBSHlx
	UHpM2LUz9gQ6KTFG2LazZ6yp+Vkz2mZxpXiQ4mSMVZWDRAO4wu3xhyyicVW4z7rR14Az
	qyXA==
X-Gm-Message-State: AKwxytcFXiv9yt15UreuxWgxUR8GepfVLimNTZ+S3AJDLZN59GsKAv7t
	KF1tFTcnSr5WWakZ+GMkehywbwGZRMAY6qnGpqY=
X-Google-Smtp-Source: AH8x2255fYPb95Wh5bmcuw8zTxK7FKJOUSyQy9PAOZI5jqup56Az9Xkl/lEqtdQgwBNT+fyCeuxY1o8Lfh0EH5cOAwk=
X-Received: by 2002:a17:902:27e6:: with SMTP id
	i35-v6mr26955649plg.441.1517424720034; 
	Wed, 31 Jan 2018 10:52:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.161.170 with HTTP; Wed, 31 Jan 2018 10:51:29 -0800 (PST)
In-Reply-To: <CAGAf8LyQJKTyvTEfXjUgHYTz12wBbyozNKLwTnhspFSyneeWew@mail.gmail.com>
References: <CAE_REAvLSX=QE=8dhf0EeOATfJKJTOn_cB=o71c5VCDhu6R9Gw@mail.gmail.com>
	<CAGAf8LyQJKTyvTEfXjUgHYTz12wBbyozNKLwTnhspFSyneeWew@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 31 Jan 2018 10:51:29 -0800
Message-ID: <CAMKF1srPv6qDZqC87PeHB1jE_5YkCbn0awVH4X6qWjwW6KgrWw@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>, cip-dev@lists.cip-project.org
Subject: Re: Generating Yocto SDK as .deb (Debian) pacakge
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
X-List-Received-Date: Wed, 31 Jan 2018 18:52:01 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 31, 2018 at 4:31 AM, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
> I'll add here another list, since these people might be interested in
> this thread/topic.
>

thats a fine idea you might want to look into

http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.1/toolchain/

for prebuilt SDKs

> Best Regards,
> Zoran
> _______
>
> On Wed, Jan 31, 2018 at 9:05 AM, Gaurang Shastri <gmshastri@gmail.com> wrote:
>> Hi Team,
>>
>> How can I generate Yocto generated SDK as .deb package? Currently it is in
>> the form of installable shell script but I want to generate it as .deb
>> package so that I can directly install it on my Ubuntu VM using "apt-get"
>> command.
>>
>> Is this supported? Any documentation?
>>
>> Regards,
>> Gaurang
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

