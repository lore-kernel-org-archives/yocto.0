Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92829E0044C
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2012 14:44:45 -0800 (PST)
Received: by dadv6 with SMTP id v6so5574704dad.28
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2012 14:44:45 -0800 (PST)
Received-SPF: pass (google.com: domain of autif.mlist@gmail.com designates
	10.68.132.41 as permitted sender) client-ip=10.68.132.41; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of autif.mlist@gmail.com
	designates 10.68.132.41 as permitted sender)
	smtp.mail=autif.mlist@gmail.com;
	dkim=pass header.i=autif.mlist@gmail.com
Received: from mr.google.com ([10.68.132.41])
	by 10.68.132.41 with SMTP id or9mr12169747pbb.8.1330987485488 (num_hops
	= 1); Mon, 05 Mar 2012 14:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=dtyGLr69QzyIBoycn8zCaxEGaZJ7D2hRM+aMuZ5xuOQ=;
	b=DPjIvJU0bQuq1AqEv2dKsr0b5L84188AluCbHy2l57liIJdyyKa0WBTganeSZgezau
	vmveMwVsF1ChMt1BAlkTmNWdIqv+BdTLSmUfQ5C3S0q/N+wCdpKbra/Qt7A/3Erded5p
	ebPySBhm/lTz6VLkPmROIZJMbu20ysf7BL/+qfIVCwkrRKjV6MqNCX7+b4/dZquB1iZ/
	aroDAU6Y5Z9Lh4JgMUrCRAK7SaN8E+CMiWsvHrv8BYIWsvbwbn9Fx0oxbsoVBIxRfvZk
	XykOg1EAdJ0/2W2Thp0buDDEUuE19MKrJL5lBrQhhLF6V2hHgZmXJ8tlxv0IorOmo87r
	dmtw==
MIME-Version: 1.0
Received: by 10.68.132.41 with SMTP id or9mr10404019pbb.8.1330987485418; Mon,
	05 Mar 2012 14:44:45 -0800 (PST)
Received: by 10.68.20.134 with HTTP; Mon, 5 Mar 2012 14:44:45 -0800 (PST)
In-Reply-To: <CADzUK1LCU0zyddgUBbdb-Sg6iTKJoSZ390SQ3XHuRtiQ6z1UHA@mail.gmail.com>
References: <CADzUK1K0WwAZ=j0u_osRnmtwf0jBosh-jkaGQnUofbgHkecp+A@mail.gmail.com>
	<CADzUK1LCU0zyddgUBbdb-Sg6iTKJoSZ390SQ3XHuRtiQ6z1UHA@mail.gmail.com>
Date: Mon, 5 Mar 2012 17:44:45 -0500
Message-ID: <CADzUK1JCDWysYpL=7JZARZ=Lmgh+4izk5k-3nwX-nnODTHmQqA@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org, Tom Zanussi <tom.zanussi@intel.com>
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
X-List-Received-Date: Mon, 05 Mar 2012 22:44:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Interesting - core image minimal builds fine - it does not actually
build iptables. So the point is moot.

I did a clean build for core-image-sato and it failed at the same
place for the same error.

I am no sure how meta-intel + meta-crownbay can interact with iptables
- there is no recipe for iptables in meta-intel anywhere.

Tom - If you have the bandwidth - can you please see if you can
replicate my woes.

I do not know anyone else who is on master and crownbay. If there -
please let me know if things work for you.

This broke for me when I moved from M2 to master.

Thanks

Autif

On Mon, Mar 5, 2012 at 4:27 PM, Autif Khan <autif.mlist@gmail.com> wrote:
> I love working with master:
>
> work/i586-poky-linux/polkit-0.104-r4/temp/log.do_configure says:
>
> configure: error: Could not find pam/pam-devel, please install the
> needed packages.
>
> It seems like pam/pam-dev is needed in the target environment and not
> in the host environment.
>
> Although, iptables seem to have built. I can't imagine how it will be
> affected by meta-intel and meta-crownbay - they do not do anything
> with iptables.
>
> Trying to build core-image-minimal for crownbay now. Will report when don=
e.
>
> On Mon, Mar 5, 2012 at 4:03 PM, Autif Khan <autif.mlist@gmail.com> wrote:
>> I was working with M2 until recently and had to switch to master.
>> After I switched to master, I tried to bitbake core-image-sato for
>> machine crownbay. The build fails with the following error:
>>
>> unknown type name '__aligned_u64'
>>
>> The file in question is extenstions/libxt_pkttypes.c
>>
>> After a bit of investigation (thanks Khem) it seems like instead of
>> /usr/include/linux/types.h, the include/linux/types.h from iptables
>> source is being included. These a bit incompatible - specifically -
>> the definition for __aligned_u64 is not in the latter.
>>
>> I am building core-image-sato for qemux86 and will report when the
>> build reaches that point.
>>
>> Is this a known issue?
>>
>> *** This issue should be hitting anyone doing a clean build on master.
>> Or at the very least someone who builds iptables recipe***
>>
>> I looked at the recent change (post M2) that iptables was updated to
>> 1.2.12.2 (from 1.2.12.1). There was a patch included for
>> extensions/GNUmakefile =A0which does not build "check" target. I looked
>> at what it does and realized that someone more experienced that I am
>> should look into this.
>>
>> Thanks
>>
>> Autif

