Return-Path: <ulfalizer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81675E00AD7; Wed, 27 Jan 2016 07:29:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
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
	*      [209.85.213.52 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F799E00AB5
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 07:29:43 -0800 (PST)
Received: by mail-vk0-f52.google.com with SMTP id e64so6908113vkg.0
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 07:29:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=QejJ0/f5Ldicw8vOv4Ht0Sj2XvhfR0pxRaXVOTSJzeQ=;
	b=uB5v0w92D4mYqhRekac4CkGxfzeNGvTHk/ElKVRKCSXTRUkLQw5f8j28T0uWLFA4t/
	VEG7d6CVW4Vk2vge3XRUnSFKhFFOMz4h0eB87yVcK+zJeKcCKCoMrVL+vD6lda38ewUK
	8wfRJ9wF4KBuH1HTbGDE9E0+Gby63/zLcnLGeNJ0nQoCMepQ35DjgTIYAuXN1419H8Je
	vyXk94p6s+yochL7lcimkMrI1Le/+P7O4DJ7JjGeMllRQIOso3Y3Ln/aPu220z6Nf8lF
	OmmnhZasJWA/zpDzpF1X+HCUEfabewbV8aB07Ova/Y7iShpV3RytdhfKdEHlv5a0zNcN
	dIYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=QejJ0/f5Ldicw8vOv4Ht0Sj2XvhfR0pxRaXVOTSJzeQ=;
	b=nE9xQZfLQgx4acv0zKZhciM7ye7Ff/5dAT1Yp2R5AAZrcvsI9TdgzgOEY6nlEZKtwU
	vk/uFgT7/db06BlL/LODgIxdqRZEP74hgPxWdfWPEglxr9e8TC8JJ8/iYkgFBBM44Xb8
	+mxi17yU+qLK/VC/wRknZIw/XJqkJFc0gwE9fdzZHURbVrrl5eVKXhJ/yBCPXZvtsZ9t
	5373AjLhigJRAjhTZmUArgYeyhZpccK5T2aYxfK9i3Ih5dssG5USpxXN0VE6jO6P2EFx
	3V8vfQU83mWBEFJCqzl94w+FN0pYRAGim0UhXcZPG2ePB/XQYBak5Vz3irYVjfBQNJNp
	g2kg==
X-Gm-Message-State: AG10YOQOnhpP6buIBPWnoL2E77/ILTTz50+3c0IhLQ3SecchVzD77gIFdaWFpZY+mCzoLpvGiC9/R3BqsPAQzg==
MIME-Version: 1.0
X-Received: by 10.31.52.195 with SMTP id b186mr17630133vka.39.1453908582461;
	Wed, 27 Jan 2016 07:29:42 -0800 (PST)
Received: by 10.103.64.132 with HTTP; Wed, 27 Jan 2016 07:29:42 -0800 (PST)
In-Reply-To: <CAJTo0LZFpfFzYAUf2En8r-amde0q23eNbzhHapTPUyeSREVYjA@mail.gmail.com>
References: <CAFkk2KRbEnfcia1sq0keuFedUhMCNng3YWdbfCr=Osxw_qkeOQ@mail.gmail.com>
	<CAJTo0LZFpfFzYAUf2En8r-amde0q23eNbzhHapTPUyeSREVYjA@mail.gmail.com>
Date: Wed, 27 Jan 2016 16:29:42 +0100
Message-ID: <CAFkk2KSu-yDHMxd-iSc0-cnLyh5wyYyfY7hG57jJGW7so8QB4A@mail.gmail.com>
From: Ulf Magnusson <ulfalizer@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>,
	Martin Jansa <Martin.Jansa@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Detecting missing build dependencies
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
X-List-Received-Date: Wed, 27 Jan 2016 15:29:48 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jan 27, 2016 at 3:59 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> On 27 January 2016 at 14:45, Ulf Magnusson <ulfalizer@gmail.com> wrote:
>> ...
> See openembedded-core/scripts/test-dependencies.sh but it basically
> automates rebuilding recipes after removing TMPDIR, but also it detects
> autodetected dependencies.
>
> Regards,
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

On Wed, Jan 27, 2016 at 4:02 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 27 January 2016 at 14:45, Ulf Magnusson <ulfalizer@gmail.com> wrote:
>> ...
>
> You're thinking of scripts/test-dependencies.sh.
>
> Personally I just use wipe-sysroot (faster than deleting tmp) and
> buildhistory-diff to verify build dependencies.
>
> Ross

Thanks for the tips! I have two questions:

 1) Why does test-dependencies.sh remove TMPDIR instead of just wiping the
    sysroots?

 2) Is there any overhead for subsequent builds from wiping the sysroots?
    Guessing there shouldn't be, but better check.

Thanks,
Ulf

