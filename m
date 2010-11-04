Return-Path: <leon.woestenberg@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id DFF654C80132
	for <yocto@yoctoproject.org>; Thu,  4 Nov 2010 08:53:41 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qwk3 with SMTP id 3so1367470qwk.35
	for <yocto@yoctoproject.org>; Thu, 04 Nov 2010 06:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=Vw3I98WsIGOvnqJg8wASbK6pKpP8bB+EItVRU1V0jnE=;
	b=gzCcOBbwwheP52GCsg8C477EJFB9vEx2VQ0EkCIFWJ+qj+TGs3W1r9906gcI8FeSOB
	DH7gqBhg+louA3MQxbctyqVErzUbs9xDQjdvEzsWF9lT6CFYWicYv+MFFsO39ETtDf2h
	VzZtiuRnEyP+dahealC6VWzLtuhcETDfyX+j4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=J/RYdmEdoq32pG1T/6jJehb+tpSW2VFkhRPNz6rPs01sdP0tXLRqMOoLmS+OI/M27e
	RqykswHLpAQs1nKJn9G2nbJdwifdL7Upex8AlmZYhzgYXy/Z824qZkJB781QmTnlWYLw
	1teoq4NIyOLsp2SFtHmpPlsPHwM0rRK2uE1YI=
MIME-Version: 1.0
Received: by 10.229.215.1 with SMTP id hc1mr736003qcb.3.1288878821362; Thu, 04
	Nov 2010 06:53:41 -0700 (PDT)
Received: by 10.229.228.147 with HTTP; Thu, 4 Nov 2010 06:53:41 -0700 (PDT)
In-Reply-To: <4CD1849F.6010303@windriver.com>
References: <AANLkTi=+SkeQJbAvCcmzk20XzY-2Wk9rnypte59Lnkxs@mail.gmail.com>
	<4CD1849F.6010303@windriver.com>
Date: Thu, 4 Nov 2010 14:53:41 +0100
Message-ID: <AANLkTinsewJh-==QbQ-LbXmNEZMSdqCKKpf-c8yi=m-a@mail.gmail.com>
From: Leon Woestenberg <leon.woestenberg@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: ppc e500v2 support?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Nov 2010 13:53:42 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello Bruce,

On Wed, Nov 3, 2010 at 4:49 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 10-11-03 11:34 AM, Frans Meulenbroeks wrote:
>>
>> I'm trying to add my powerpc board to yocto (as a test). This board
>> mpc8536ds has an e500v2 core. It works under OE (MACHINE =
>
> When doing the initial freescale board work, I ran into
> similar (same) problems with userspace (and gcc), and
> ended up backing off to a more generic optimization level
> to get things working. So there are a definitely few things
> to do. I was experimenting with FPU settings, but haven't
> gone back to look again.
>
Was combo did you see problems with?

I added e500v2 support to OpenEmbedded more than one year ago and have
not seen issues yet in userspace GCC.
Recently been playing with SPE which also ran fine:
http://www.sidebranch.nl/spe-apu

Regards,
-- 
Leon

