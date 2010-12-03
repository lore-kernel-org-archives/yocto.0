Return-Path: <xiaoxianghua@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8DC234C80039
	for <yocto@yoctoproject.org>; Fri,  3 Dec 2010 13:34:59 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxm2 with SMTP id 2so8233331fxm.35
	for <yocto@yoctoproject.org>; Fri, 03 Dec 2010 11:34:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=W4BWXgiK36DlpEIJibcX68m45QwjYkgaBmA/4BknQTI=;
	b=QsjQ6s8nCZVKfmPl2Ur6gMtJGeEcIFSG5E2L4bV5ldCNMzukAHvrbKYBvZSnPp4FSS
	T0ovoJepTDXWvFuYaZD6rLkS89b0S4gGcMrtPGvj7sh1WTmoLifD5F8g43QqXDcR99bB
	XjILPP3N0ebBOcaKfcwqxjRPGyMD6TnD1i1Nc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=fXLG9HmTf9vKRqerJ8CWVBxUYTYuLN4eGJz24XOht+BONy3mJtugEThR9kFyQ3MCGR
	42L4psX9aMWF6qyIf9bBjYKDbr+rWu5eYwxCloVRuSxcNj7LIy5eXs1Ejg/r6CX63OfW
	wfy4DOsvn6/OMfjBZ2Mb3xhJzP1W8p5qGebBk=
MIME-Version: 1.0
Received: by 10.223.70.136 with SMTP id d8mr2626605faj.3.1291404898547; Fri,
	03 Dec 2010 11:34:58 -0800 (PST)
Received: by 10.223.109.11 with HTTP; Fri, 3 Dec 2010 11:34:58 -0800 (PST)
In-Reply-To: <4CF941D5.5030407@windriver.com>
References: <8A929EC0-8AF1-48BB-ACD4-9D38C8F72DCD@jonmasters.org>
	<1291399287.16321.18.camel@feynman.coloradoengineeringinc.com>
	<20101203184643.GW10755@ibawizard.net>
	<AANLkTinc8zq20orAerFvTz9T6CFkQe9pChAG9JwdEJTQ@mail.gmail.com>
	<4CF941D5.5030407@windriver.com>
Date: Fri, 3 Dec 2010 13:34:58 -0600
Message-ID: <AANLkTimrbHDqmt11FRJRPsZd6i_eOM_eQsa5ZmfzZKhe@mail.gmail.com>
From: Xianghua Xiao <xiaoxianghua@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, beagleboard@googlegroups.com
Subject: Re: [beagleboard] Yocto
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
X-List-Received-Date: Fri, 03 Dec 2010 19:35:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 3, 2010 at 1:15 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 10-12-03 02:11 PM, Xianghua Xiao wrote:
>>
>> On Fri, Dec 3, 2010 at 12:46 PM, Petr =C5=A0tetiar<ynezz@true.cz> =C2=A0=
wrote:
>>>
>>> Michael J. Hammel<mjhammel@graphics-muse.org> =C2=A0[2010-12-03 11:01:2=
7]:
>>>
>>> Hi,
>>>
>>>> I've heard of Yocto only in passing. =C2=A0I'm assuming it's another
>>>> bitbake-based metabuild system? =C2=A0Is there some reasoning why
>>>> Meego/Linaro/OpenEmbedded/Angstrom/Custom Builds cannot fill the
>>>> requirements of Yocto? =C2=A0I don't mean that harshly at all - I'm ju=
st
>>>> curious about the evolution and true target audiences of these project=
s.
>>>> It's nice to have choices, but developers should have some idea of the
>>>> differences so they can choose wisely when just starting.
>>>
>>> Richard wrote nice summary[1], it's worth reading and it might answer
>>> your
>>> questions as well :-)
>>>
>>> 1.
>>> http://lists.linuxtogo.org/pipermail/openembedded-devel/2010-November/0=
26598.html
>>>
>>> -- ynezz
>>>
>>> --
>>> You received this message because you are subscribed to the Google Grou=
ps
>>> "Beagle Board" group.
>>> To post to this group, send email to beagleboard@googlegroups.com.
>>> To unsubscribe from this group, send email to
>>> beagleboard+unsubscribe@googlegroups.com.
>>> For more options, visit this group at
>>> http://groups.google.com/group/beagleboard?hl=3Den.
>>>
>>>
>>
>> May we know roughly how many paid resources are behind Yocto?
>>
>> Which arch will be first officially supported? Will it be ATOM as Poky
>> is really part of Intel? Beagle/ARM will be done by the community
>> instead?
>
> I can provide some answers for this part of the query.
>
> In the 0.9 release, we already support the following arches:
>
> =C2=A0- x86(64), mips, arm and powerpc
>
> These are all based on a 2.6.34 kernel base (with an option
> for 2.6.37-rcX shortly). There are simulated targets for
> each arch, and a hardware reference for each as well
> (for ARM the reference hardware is the beagleboard).
>
> Hope that helps,
>
> Bruce
>
>>
>> Thanks,
>> Xianghua
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

Will try it on my beagle.
I failed to find info on other hardware reference platform. And I
found 0.9 has an ATOM download as
well(http://autobuilder.yoctoproject.org/downloads/yocto-0.9/).

Additionally, http://autobuilder.pokylinux.org:8010/ is not working.

Thanks,
Xianghua

