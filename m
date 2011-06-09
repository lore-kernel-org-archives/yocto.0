Return-Path: <daryl.spitzer@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id DA2FF4C800B6
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2011 17:18:01 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwr19 with SMTP id 19so2695267iwr.35
	for <yocto@yoctoproject.org>; Thu, 09 Jun 2011 15:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=cpoHtIrQaCJPjhYw5LeVoIwacVlEEHbkVpZ8OHmM6sA=;
	b=hwKjnMHI49uO7WEVdlsyg6gyBOKs00LvZcLJEiRM5UunKlnSaAN5ryxyJch1OUoeBK
	k1EJzZDejF01x6mScjUPfWtKipGNeuKtZIueGjvwvhRgt5X0V7wUWpg58ozx7JD7yuPo
	VSoxUhOPAczIJ3PCektq47tELBSWUGt5+6W+A=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	b=NWjbjv6RYXjEz94p3HnrQXS+UYLF0RyxyoprZ/MTmceGvphf53e1B6HsI7Afe3GX9E
	3ZzHgJYwUzTNnJqqWIMuCUo/Dg+YwOqQfhufDWQCHmr9EHdWuRvlqgab/GQSeZRf+XoM
	WOI49w9jd71shQVsCyDGO8GaP0+trz7GAbMvs=
Received: by 10.43.58.148 with SMTP id wk20mr1822549icb.242.1307657880118;
	Thu, 09 Jun 2011 15:18:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.231.14.137 with HTTP; Thu, 9 Jun 2011 15:17:20 -0700 (PDT)
In-Reply-To: <1307656454.15712.189.camel@rex>
References: <BANLkTimMEUXEUxOyWNpM8zndLzYcdhU2sg@mail.gmail.com>
	<1307656454.15712.189.camel@rex>
From: Daryl Spitzer <daryl.spitzer@gmail.com>
Date: Thu, 9 Jun 2011 15:17:20 -0700
Message-ID: <BANLkTinUJ_ry6PBQRAG2=hT9ArhAHP+ygw@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org
Subject: Re: Troubleshooting ERROR: Function 'Fetcher failure for URL: 'cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs; module=apps/update-rc.d; tag=r0_7'?
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
X-List-Received-Date: Thu, 09 Jun 2011 22:18:02 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks Richard.

How do I find out where DL_DIR is pointing?

I found this line, commented out in conf/local.conf:

#DL_DIR ?=3D "${TOPDIR}/downloads"

It's not listed after I run `bitbake -k poky-image-sato`:

OE Build Configuration:
BB_VERSION        =3D "1.11.0"
METADATA_BRANCH   =3D "<unknown>"
METADATA_REVISION =3D "<unknown>"
TARGET_ARCH       =3D "i586"
TARGET_OS         =3D "linux"
MACHINE           =3D "qemux86"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.0.1"
TARGET_FPU        =3D ""

And there is no DL_DIR environment variable defined (after I run
`source poky-bernard-5.0.1/poky-init-build-env poky-5.0.1-build`).

There is a poky-5.0.1-build/downloads directory.  I'll assume that's
it.  But I'd like to learn how to find out without guessing.

--
Daryl

P.S.  It looks like that was a safe assumption.  The build has moved
past that point of failure.


On Thu, Jun 9, 2011 at 2:54 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Thu, 2011-06-09 at 11:32 -0700, Daryl Spitzer wrote:
>> I'm continuing to try to successfully build an image for the first
>> time, following the instructions in the Yocto Project Quick Start
>> (http://www.yoctoproject.org/docs/1.1/yocto-project-qs/yocto-project-qs.=
html).
>>
>> As suggested in
>> https://lists.yoctoproject.org/pipermail/yocto/2011-June/001598.html,
>> I'm now trying http://www.yoctoproject.org/downloads/poky/poky-bernard-5=
.0.1.tar.bz2.
>> =A0And I'm following the instructions in
>> https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy,
>> including defining CVS_PROXY_HOST & CVS_PROXY_PORT in my local.conf
>> file.
>>
>> But I'm getting the following error:
>>
>> NOTE: fetch http://anoncvs@autobuilder.yoctoproject.org/sources/apps.upd=
ate-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz
>> NOTE: Fetch cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs;module=3Dapp=
s/update-rc.d;tag=3Dr0_7
>> cvs [checkout aborted]: end of file from server (consult above messages =
if any)
>> ERROR: Function 'Fetcher failure for URL:
>> 'cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs;module=3Dapps/update-rc=
.d;tag=3Dr0_7'.
>> Unable to fetch URL
>> cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs;module=3Dapps/update-rc.=
d;tag=3Dr0_7
>> from any source.' failed
>>
>> (This is the contents of the logfile created in
>> poky-5.0.1-build/tmp/work/all-poky-linux/update-rc.d-0.7-r3/temp/log.do_=
fetch.16236.)
>>
>> It's not clear to me if this is a proxy problem.
>>
>> If I try `wget http://anoncvs@autobuilder.yoctoproject.org/sources/apps.=
update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz`,
>> I see the following:
>>
>> $ wget http://anoncvs@autobuilder.yoctoproject.org/sources/apps.update-r=
c.d_anoncvs.handhelds.org_r0_7_.tar.gz
>> --2011-06-09 11:25:37--
>> http://anoncvs@autobuilder.yoctoproject.org/sources/apps.update-rc.d_ano=
ncvs.handhelds.org_r0_7_.tar.gz
>> Resolving gateway... 149.199.33.100, 172.22.140.250
>> Connecting to gateway|149.199.33.100|:8080... connected.
>> Proxy request sent, awaiting response... 400 Bad Request
>> 2011-06-09 11:25:37 ERROR 400: Bad Request.
>>
>> But `wget http://autobuilder.yoctoproject.org/sources/apps.update-rc.d_a=
noncvs.handhelds.org_r0_7_.tar.gz`
>> (same as above, but s/anoncvs@//) succeeds:
>>
>> =A0wget http://autobuilder.yoctoproject.org/sources/apps.update-rc.d_ano=
ncvs.handhelds.org_r0_7_.tar.gz
>> --2011-06-09 11:29:39--
>> http://autobuilder.yoctoproject.org/sources/apps.update-rc.d_anoncvs.han=
dhelds.org_r0_7_.tar.gz
>> Resolving gateway... 149.199.33.100, 172.22.140.250
>> Connecting to gateway|149.199.33.100|:8080... connected.
>> Proxy request sent, awaiting response... 200 OK
>> Length: 2475 (2.4K) [application/x-gzip]
>> Saving to: `apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz'
>>
>> 100%[=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D>] 2,475 =A0 =A0 =A0 --.-K/=
s =A0 in 0s
>>
>> 2011-06-09 11:29:39 (336 MB/s) -
>> `apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz' saved
>> [2475/2475]
>>
>>
>> How do I troubleshoot or move past this?
>
> To move past it, place the file you've downloaded into wherever DL_DIR
> is pointing and also touch
> apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz.done to signify the
> download is complete. It should them move you past that point.
>
> As for the root cause, we should be discarding the username information
> when trying mirrors. I'll have a look and see if I can work out a patch
> for the fetcher to do that...
>
> Cheers,
>
> Richard
>
>

