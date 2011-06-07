Return-Path: <daryl.spitzer@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id A46A84C801BF
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2011 12:48:01 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vxa37 with SMTP id 37so6369020vxa.35
	for <yocto@yoctoproject.org>; Tue, 07 Jun 2011 10:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:from:date:message-id:subject:to
	:content-type:content-transfer-encoding;
	bh=phPJL6BYQjFok6vFBHle5m7A6BU8pn28IlyVZMGBmQk=;
	b=nIzIBc08c0fztaizQRHaDE6krUOcg7PKBO7wlZUNsm3o6Sf18a5mZb3MdBslQE5DWa
	unv/Heu0EGD/ALM9mRj8MDcGQ6yIf5WiFTEKECD30EiPTKhzcHvCf9JSFwFqFvrlUyzm
	fX97R/KfPgsrJFaiutZbF5g5xej77QA/3OACM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:from:date:message-id:subject:to:content-type
	:content-transfer-encoding;
	b=AsQD+08OXoIB/rpXk1BvzdPYJkoQAQDdN4dhZTfJ6Th4g/KcfzOUazw7MUCHDAQWqg
	OEZ7EdEs9AYauhMWbhK0EoROhXceWQCWG3tYndVkj8BT8v1+Z1evTLE2QrYa3n7KY2SJ
	s8+tiNa4xkE5nx62E+ZGwDYRp+wA/PmCiSBgQ=
Received: by 10.52.115.10 with SMTP id jk10mr237795vdb.294.1307468881154; Tue,
	07 Jun 2011 10:48:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.52.169.225 with HTTP; Tue, 7 Jun 2011 10:47:21 -0700 (PDT)
From: Daryl Spitzer <daryl.spitzer@gmail.com>
Date: Tue, 7 Jun 2011 10:47:21 -0700
Message-ID: <BANLkTikfTbJD=5SoQH5ukrTMK6u6Ob0kZQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Configuring CVS to work through a proxy?
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
X-List-Received-Date: Tue, 07 Jun 2011 17:48:01 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

I followed the "Building an Image" instructions in the Yocto Project
Quick Start (on a newly configured machine running Ubuntu 11.04 (64
bit), and got an error.  The contents of the failure logfile is:

NOTE: fetch http://anonymous@autobuilder.yoctoproject.org/sources/config_cv=
s.sv.gnu.org__20080123.tar.gz
NOTE: Fetch cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=3Dconfig;m=
ethod=3Dpserver;date=3D20080123
cvs [checkout aborted]: connect to cvs.sv.gnu.org(140.186.70.72):2401
failed: Connection timed out
ERROR: Function 'Fetcher failure for URL:
'cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=3Dconfig;method=3Dpse=
rver;date=3D20080123'.
Unable to fetch URL
cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=3Dconfig;method=3Dpser=
ver;date=3D20080123
from any source.' failed

I'm guessing this problem is because I haven't configured CVS to work
through my employer's HTTP proxy.

I did a search, and didn't find any definitive instructions for
configuring CVS.  (In fact, I found
http://www.cygwin.com/ml/kawa/2003-q3/msg00069.html, which I'm hoping
is out-of-date since it talks about a patch, which=978 years ago at
least=97wasn't included in GNU CVS.  I did try defining the CVS_PROXY
environment variable as directed in that page just in case the CVS
build I'm using includes that patch=97but I got the same build error.)

Can anyone point me to up-to-date instructions for configuring CVS to
work through a proxy?

And what command-line can I use to test it?

--
Daryl

