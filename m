Return-Path: <daryl.spitzer@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id E4AAD4C80479
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2011 13:07:10 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws7 with SMTP id 7so6402863vws.35
	for <yocto@yoctoproject.org>; Tue, 07 Jun 2011 11:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-type:content-transfer-encoding;
	bh=IFk4XADU0R9kL+stFFUaL5+YEvfH/MsdQkeHOhdssoo=;
	b=KDC4fAIe+72zu4tcTR6jqT+tJ1TrN5fIZQckSUlFIBI6mAM6TB4q9BIEpGbsWR26R+
	+oXsMQ9ON1Um/jX8GWR4b/H68YqJofX0aH+piFZ0edqK8BxVvbzbYLI4hmPrFPG1duaW
	vOg/LkJZT5xkCDZoojLo7qc5Pi80lGBLlq0vo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type:content-transfer-encoding;
	b=XIeR3GbFJ5FHEWAoq9ODUCViqOP21XzZOOhslUgyreshH0QVGltOeC8D8AWiL71Uu9
	dnlTBQ6eaHWD41WhxMMYqJZuu+f4isiWlkr88y+BNORPbIuth+KQPGU80K4XDb8zQqde
	tRnBW0GLzCQx98TSw+XClc+uNnf7A4ZqqQ4C0=
Received: by 10.52.96.104 with SMTP id dr8mr257404vdb.214.1307470030080; Tue,
	07 Jun 2011 11:07:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.52.169.225 with HTTP; Tue, 7 Jun 2011 11:06:30 -0700 (PDT)
In-Reply-To: <BANLkTikfTbJD=5SoQH5ukrTMK6u6Ob0kZQ@mail.gmail.com>
References: <BANLkTikfTbJD=5SoQH5ukrTMK6u6Ob0kZQ@mail.gmail.com>
From: Daryl Spitzer <daryl.spitzer@gmail.com>
Date: Tue, 7 Jun 2011 11:06:30 -0700
Message-ID: <BANLkTi=vRn1AwUO7KDsaKobTiWnNz8RzLA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Configuring CVS to work through a proxy?
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
X-List-Received-Date: Tue, 07 Jun 2011 18:07:11 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

I found https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
(after doing a search for "yocto cvs proxy").  My compliments on the
thoroughness of your documentation.  (I shouldn't have assumed this
wasn't already documented).  It looks like these instructions will
solve my problem.

--
Daryl


On Tue, Jun 7, 2011 at 10:47 AM, Daryl Spitzer <daryl.spitzer@gmail.com> wr=
ote:
> I followed the "Building an Image" instructions in the Yocto Project
> Quick Start (on a newly configured machine running Ubuntu 11.04 (64
> bit), and got an error. =A0The contents of the failure logfile is:
>
> NOTE: fetch http://anonymous@autobuilder.yoctoproject.org/sources/config_=
cvs.sv.gnu.org__20080123.tar.gz
> NOTE: Fetch cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=3Dconfig=
;method=3Dpserver;date=3D20080123
> cvs [checkout aborted]: connect to cvs.sv.gnu.org(140.186.70.72):2401
> failed: Connection timed out
> ERROR: Function 'Fetcher failure for URL:
> 'cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=3Dconfig;method=3Dp=
server;date=3D20080123'.
> Unable to fetch URL
> cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=3Dconfig;method=3Dps=
erver;date=3D20080123
> from any source.' failed
>
> I'm guessing this problem is because I haven't configured CVS to work
> through my employer's HTTP proxy.
>
> I did a search, and didn't find any definitive instructions for
> configuring CVS. =A0(In fact, I found
> http://www.cygwin.com/ml/kawa/2003-q3/msg00069.html, which I'm hoping
> is out-of-date since it talks about a patch, which=978 years ago at
> least=97wasn't included in GNU CVS. =A0I did try defining the CVS_PROXY
> environment variable as directed in that page just in case the CVS
> build I'm using includes that patch=97but I got the same build error.)
>
> Can anyone point me to up-to-date instructions for configuring CVS to
> work through a proxy?
>
> And what command-line can I use to test it?
>
> --
> Daryl
>

