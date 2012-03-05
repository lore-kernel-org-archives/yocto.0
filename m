Return-Path: <autif.mlist@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B0EAE0044C
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2012 13:27:04 -0800 (PST)
Received: by pbcup7 with SMTP id up7so6145395pbc.35
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2012 13:27:04 -0800 (PST)
Received-SPF: pass (google.com: domain of autif.mlist@gmail.com designates
	10.68.130.233 as permitted sender) client-ip=10.68.130.233; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of autif.mlist@gmail.com
	designates 10.68.130.233 as permitted sender)
	smtp.mail=autif.mlist@gmail.com;
	dkim=pass header.i=autif.mlist@gmail.com
Received: from mr.google.com ([10.68.130.233])
	by 10.68.130.233 with SMTP id oh9mr54486452pbb.92.1330982824219
	(num_hops = 1); Mon, 05 Mar 2012 13:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=USwLgaxQfZMW/do1TuCkFRo1JSB13ZY5xFmS+BBa6Jw=;
	b=xgxEFWKjK3k9nBTobwLA+q0oBujGFY9E6e4hRX0hXF/p4EFcIPq/97mldO8qpeO67v
	FNTf8Q1AY05D6TmGvAMW8r1AUHDXg2jCPSxaO7aansn6GZfPYj3/oMCBs7FMe2WLbhhn
	7opTl4PseEUpD++X5Ii7fvkpm/H7NRqifUzUUaL/Hnu+9hwV3yRk0G8N1mNbOW9K0p49
	/ueQisTBzC8M54FGSzLJS2vaEXy/SbCsh8dOGsp1LPYdd71+W5In1CxquBOA+k/dYNM/
	f2QWUyHUGyT+1P4FQi7L9xGe0u7H3kOS6LNPF71Oa7DTlMf6PPLg+8+Nkf/1Xc3EQwXA
	fbSw==
MIME-Version: 1.0
Received: by 10.68.130.233 with SMTP id oh9mr46677524pbb.92.1330982824142;
	Mon, 05 Mar 2012 13:27:04 -0800 (PST)
Received: by 10.68.20.134 with HTTP; Mon, 5 Mar 2012 13:27:04 -0800 (PST)
In-Reply-To: <CADzUK1K0WwAZ=j0u_osRnmtwf0jBosh-jkaGQnUofbgHkecp+A@mail.gmail.com>
References: <CADzUK1K0WwAZ=j0u_osRnmtwf0jBosh-jkaGQnUofbgHkecp+A@mail.gmail.com>
Date: Mon, 5 Mar 2012 16:27:04 -0500
Message-ID: <CADzUK1LCU0zyddgUBbdb-Sg6iTKJoSZ390SQ3XHuRtiQ6z1UHA@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: iptables not building on master
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 05 Mar 2012 21:27:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I love working with master:

work/i586-poky-linux/polkit-0.104-r4/temp/log.do_configure says:

configure: error: Could not find pam/pam-devel, please install the
needed packages.

It seems like pam/pam-dev is needed in the target environment and not
in the host environment.

Although, iptables seem to have built. I can't imagine how it will be
affected by meta-intel and meta-crownbay - they do not do anything
with iptables.

Trying to build core-image-minimal for crownbay now. Will report when done.

On Mon, Mar 5, 2012 at 4:03 PM, Autif Khan <autif.mlist@gmail.com> wrote:
> I was working with M2 until recently and had to switch to master.
> After I switched to master, I tried to bitbake core-image-sato for
> machine crownbay. The build fails with the following error:
>
> unknown type name '__aligned_u64'
>
> The file in question is extenstions/libxt_pkttypes.c
>
> After a bit of investigation (thanks Khem) it seems like instead of
> /usr/include/linux/types.h, the include/linux/types.h from iptables
> source is being included. These a bit incompatible - specifically -
> the definition for __aligned_u64 is not in the latter.
>
> I am building core-image-sato for qemux86 and will report when the
> build reaches that point.
>
> Is this a known issue?
>
> *** This issue should be hitting anyone doing a clean build on master.
> Or at the very least someone who builds iptables recipe***
>
> I looked at the recent change (post M2) that iptables was updated to
> 1.2.12.2 (from 1.2.12.1). There was a patch included for
> extensions/GNUmakefile =A0which does not build "check" target. I looked
> at what it does and realized that someone more experienced that I am
> should look into this.
>
> Thanks
>
> Autif

