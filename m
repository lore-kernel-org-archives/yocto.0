Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C395AE013D6
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 02:50:39 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id gf12so270010vcb.8
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 02:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=qqbknBTAhn6EYP890Sc93EnkQH6DAsFQHo8ThCuenRM=;
	b=xS0VxACgkZ+sMaPJN/8w7kGGmxKo//xmgIUUIzuk6nmlvMaDUG2e+4HExQd34LxheY
	cLfCEGwqhK25OyPeFget7LzbBp/39PzPW0IraweGfR2yA1NrMuO7i5HmGVD2+6afHGwo
	1RCvPJnfX6f0usHiNr5aSZQUR9ttd6a+ALqsHdcszUMGwya6eloxpfuiTaROH6lXeXHO
	sueVvlijDLow1BxrWVWFkGfE/p3xfGQtUhRkwmryUWi+WiOzbn50m4ukfDuKkVElrUT4
	PRh1ZjE/vsXNMg+p7cXTZP5aicAquwF7tS/W42daiFq2qtwby5oByhPb7ck/OHQpHjK/
	VTVw==
X-Received: by 10.58.73.202 with SMTP id n10mr15940595vev.7.1377251438567;
	Fri, 23 Aug 2013 02:50:38 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.155.17 with HTTP; Fri, 23 Aug 2013 02:49:58 -0700 (PDT)
In-Reply-To: <CAK18fxHCirAdwfW5HBiDW3GNZt3oG-1xJ8FwHDf1z=baSU-VSw@mail.gmail.com>
References: <1376650116-11855-1-git-send-email-paul@paulbarker.me.uk>
	<CAK18fxE8JuUo3is2LbL42SEOsWfkDmr5CZFDuw9rOx_sgAvqaQ@mail.gmail.com>
	<CANyK_8dY=_=zTK+zq2oLq68=zOQuA9UkF=juJCRexo_rLWbzuA@mail.gmail.com>
	<CAK18fxHCirAdwfW5HBiDW3GNZt3oG-1xJ8FwHDf1z=baSU-VSw@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 23 Aug 2013 10:49:58 +0100
X-Google-Sender-Auth: QCxgGF_kGFYkYPuyrgIO6m0r7jI
Message-ID: <CANyK_8eNvyDiAPg5DrJoY_mx_krBzCE2Etg2dE2=ZkGY6OXJ9A@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: Allow optional compression
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
X-List-Received-Date: Fri, 23 Aug 2013 09:50:43 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 21 August 2013 23:41, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Wed, Aug 21, 2013 at 11:12 PM, Paul Barker <paul@paulbarker.me.uk> wrote:
>>
>> Setting it to one of the other listed values will cause the SDIMG to
>> be re-named. I think the code is as I intended, the documentation
>> comment needs to be corrected though.
>>
>
> You are right. The comment confused me. So only if the COMPRESSION is
> "gzip", "bzip2" or "xz" the SDIMG will be renamed. Understood now.
>
> On the other hand, would it make sense to keep both uncompressed and
> compressed images?
>

I was just going with the default behaviour of the tools, I can add
the '-k' argument to all of them to keep the uncompressed file.

>
> Another idea. Would be a great feature to have a tool that would configure
> the build interactively. Something like:
>
> # configure-build
> Want to have SD image compressed compressed? "y/n" y
> What compression you want? "x/y/z" x
> etc
> etc
>
> This script would just edit local.conf. This is because we defined a couple
> of variables for this board - i would say pretty many (codecs keys, GPU, mem
> etc etc) and it's pretty confusing for people who see this for the first
> time. What do you think?
>

local.conf could hold settings which relate to the distro or other
layers so I wouldn't want to write a script which directly edits it. I
think a well-documented sample file would be a good idea. Probably
can't call it local.conf.sample as it would only relate to raspberrypi
settings and the intention would be that you create your local.conf
from local.conf.sample and from this new file.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

