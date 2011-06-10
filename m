Return-Path: <daryl.spitzer@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5391B4C800E0
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2011 16:43:44 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws7 with SMTP id 7so4135464vws.35
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2011 14:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=VJM/FncIvQwgIHSx8ZNZG/1Gv5PTLt5OfNwjg3dOUEE=;
	b=RscznJSSDo5GlDpls0sWmWhOxELl7s7Pce2n0BPWHWXiFCE8AaIwczBSGD5z1ul860
	Tz4KVxZFuLgE/EQfChnmxE9Kyh+ulc4lfjeF4NNqFPEQ+azBYozvdqMStENmMdf+Z5sa
	bHIo9c+cZfo0g3hLqIovweqhGL56nrunX1iqI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	b=VQzxRp0khVhljVYSFjxkMzbKmlhxbKmQLqODyYSS/G9YS67SlRddnV2Y2HjR1nlFSQ
	rzi5dGteJ3TZigDbSuzVn1RM4rCy6F0FlvsOQnrvf4nkncTQ/o7xAM3E995ue+kQcr7u
	SaGOQkANdA7Aix8hDzZTrYWWVTIXOUbWP5SYA=
Received: by 10.52.98.40 with SMTP id ef8mr2336120vdb.54.1307742223460; Fri,
	10 Jun 2011 14:43:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.52.169.225 with HTTP; Fri, 10 Jun 2011 14:43:03 -0700 (PDT)
In-Reply-To: <1307659962.30948.0.camel@scimitar>
References: <BANLkTikOugs9Yi93zVgMe0vhizJfBN3ZaA@mail.gmail.com>
	<1307507940.2123.9.camel@scimitar> <4DEF5A32.3060109@mlbassoc.com>
	<BANLkTimg3S5E45Lrb+QHCUaWC2FxNLV3RA@mail.gmail.com>
	<1307577439.31471.4.camel@scimitar>
	<BANLkTi=fKNqwRUE_hm=p7ZVsFm1ra+Ybzw@mail.gmail.com>
	<1307659962.30948.0.camel@scimitar>
From: Daryl Spitzer <daryl.spitzer@gmail.com>
Date: Fri, 10 Jun 2011 14:43:03 -0700
Message-ID: <BANLkTinwu59xQdtBxSUDU2zW3ta+bCro_g@mail.gmail.com>
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
X-List-Received-Date: Fri, 10 Jun 2011 21:43:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks Joshua.  I assume that
http://www.yoctoproject.org/docs/1.1/yocto-project-qs/yocto-project-qs.html
won't be updated until the next release (if this makes it into the
next release)?  And the patch should then be updated to match the new
version numbers?

--
Daryl


On Thu, Jun 9, 2011 at 3:52 PM, Joshua Lock <josh@linux.intel.com> wrote:
> On Thu, 2011-06-09 at 11:17 -0700, Daryl Spitzer wrote:
>> > Looks like we fixed this issue in our recent point release. Could you
>> > try http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.1.tar.=
bz2 ?
>>
>> I tried it, and am getting what I think is an unrelated error. =A0I'll
>> start a new thread for that.
>>
>> Shouldn't documentation references to
>> "http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.tar.bz2"
>> be changed to "http://www.yoctoproject.org/downloads/poky/poky-bernard-5=
.0.1.tar.bz"
>> (such as in http://www.yoctoproject.org/docs/1.1/yocto-project-qs/yocto-=
project-qs.html)?
>
> You are right Daryl, apologies for any inconvenience. I've filed a bug
> with a patch attached for the Quick Start doc.
>
> http://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1153
>
> Regards,
> Joshua
> --
> Joshua Lock
> =A0 =A0 =A0 =A0Yocto Build System Monkey
> =A0 =A0 =A0 =A0Intel Open Source Technology Centre
>
>

