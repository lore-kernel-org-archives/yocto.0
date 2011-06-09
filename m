Return-Path: <daryl.spitzer@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id CCC944C8086F
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2011 13:17:47 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vxa37 with SMTP id 37so2324782vxa.35
	for <yocto@yoctoproject.org>; Thu, 09 Jun 2011 11:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=/v7fxzzNaTruHBqOkiWC57ewK8NixwBPkkYU66RSxo4=;
	b=krNZkxsncxHOmC5jaCSIsB50fUBbK3jDG3BN/5UVpfBAVdLFOacCw7lhheLw0R6hk7
	TqqjKxwNA6Q2lZ98A24hUTP/7l6V71vLpWwI569O8pB6yAOgPYBufzZA6zNvvMkjaRLP
	2YKMjG1Q2WC5wwwGm8u35C3QoF3vNrqXWvVF8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	b=CIms7IvxXg9KVX/8DaRT5QM7yKI14nFL6vq832fufSPLo7PJmRp8Is9Pm1b3a09CL8
	EmfmSl9iPI4d0zo8n/WqOzApMR2cnaoITgBo2Oj5CSzmCL52pEKFyOeQnTYXCn7AvuEG
	OH+di/N68CkgjWgjU/JfRMBpFwwxA+xaZqPyY=
Received: by 10.52.96.104 with SMTP id dr8mr1410122vdb.214.1307643467153; Thu,
	09 Jun 2011 11:17:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.52.169.225 with HTTP; Thu, 9 Jun 2011 11:17:07 -0700 (PDT)
In-Reply-To: <1307577439.31471.4.camel@scimitar>
References: <BANLkTikOugs9Yi93zVgMe0vhizJfBN3ZaA@mail.gmail.com>
	<1307507940.2123.9.camel@scimitar> <4DEF5A32.3060109@mlbassoc.com>
	<BANLkTimg3S5E45Lrb+QHCUaWC2FxNLV3RA@mail.gmail.com>
	<1307577439.31471.4.camel@scimitar>
From: Daryl Spitzer <daryl.spitzer@gmail.com>
Date: Thu, 9 Jun 2011 11:17:07 -0700
Message-ID: <BANLkTi=fKNqwRUE_hm=p7ZVsFm1ra+Ybzw@mail.gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: undefined reference to `pthread_getspecific' in perl-native_5.12.2.bb task do_compile?
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
X-List-Received-Date: Thu, 09 Jun 2011 18:17:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

> Looks like we fixed this issue in our recent point release. Could you
> try http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.1.tar.bz2=
 ?

I tried it, and am getting what I think is an unrelated error.  I'll
start a new thread for that.

Shouldn't documentation references to
"http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.tar.bz2"
be changed to "http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.=
1.tar.bz"
(such as in http://www.yoctoproject.org/docs/1.1/yocto-project-qs/yocto-pro=
ject-qs.html)?

Thanks Joshua and Gary.

--
Daryl


On Wed, Jun 8, 2011 at 4:57 PM, Joshua Lock <josh@linux.intel.com> wrote:
> On Wed, 2011-06-08 at 06:48 -0700, Daryl Spitzer wrote:
>> >>> Does this look familiar? =A0Why would I be getting these errors when
>> >>> following the Yocto Project Quick Start instructions, without change=
s?
>> >>> =A0Did I miss something?
>> >>
>> >> It does not. However this is when trying to build perl-native, i.e. P=
oky
>> >> is trying to build its own version of Perl but linked against your
>> >> system libraries etc and is unable to find some pthread functions to
>> >> link to.
>> >>
>> >> Can you tell us which distribution/version combination you are using?
>> >>
>> >> Could be that we need to patch perl-native to -lpthread ?
>> >
>> > Is your host Ubuntu 11.04 on x86 (not x86_64)? =A0There was a patch fo=
r this
>> > that I'm not sure got back ported into Bernard.
>>
>> Oops. =A0I forgot to provide those details...
>>
>> My host is Ubuntu 11.04 64 bit:
>>
>> $ cat /etc/lsb-release
>> DISTRIB_ID=3DUbuntu
>> DISTRIB_RELEASE=3D11.04
>> DISTRIB_CODENAME=3Dnatty
>> DISTRIB_DESCRIPTION=3D"Ubuntu 11.04"
>> $ uname -m
>> x86_64
>>
>> I ran `wget http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.=
tar.bz2`
>> (as directed in the Yocto Project Quick Start). =A0Does that 5.0
>> correspond to Yocto Project 1.0.1?
>
> Hi Daryl,
>
> Looks like we fixed this issue in our recent point release. Could you
> try
> http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.1.tar.bz2 ?
>
> Cheers,
> Joshua
> --
> Joshua Lock
> =A0 =A0 =A0 =A0Yocto Build System Monkey
> =A0 =A0 =A0 =A0Intel Open Source Technology Centre
>
>

