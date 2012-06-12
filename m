Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DA5FE0044A
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 08:25:58 -0700 (PDT)
Received: by eekb45 with SMTP id b45so2537763eek.35
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 08:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=nCNoCOPbcemeCY65fqWlVnRAHOu8f94abT7Qw9i9zPQ=;
	b=Kn5tsKqYG3YnDSfHF4u0fNe6vrxfIz93RsIS0bL2+mnoMS1k9luDSxn/pzJT9wfVJk
	Yts56oQ0zCUi7aVj0FStTpSwZH7WY+HKyaAaoea4sW9XCkF2pgtLp0RhwszpKX3QYUpn
	93sU6w7XdCNKY64jLgoRu/e2ojI0VKHGJnAPKy2f6PJCWyCL3bqzojB2N8DsMTihwaOR
	9kUC4jt0ITgN9PQm2Kd11yq6RJrSIBj0Bq4IeBSKaynAdsV/Y174qgCQv6MXnKTtdZjh
	FDm+9CAGqqM1YVRY0jM5AG+o3RLqcI7cpl/Po1561Zl9wDUezozpkyjWqrxQsvrRCvzC
	52oQ==
Received: by 10.14.119.197 with SMTP id n45mr6719208eeh.180.1339514756772;
	Tue, 12 Jun 2012 08:25:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.188.11 with HTTP; Tue, 12 Jun 2012 08:25:26 -0700 (PDT)
In-Reply-To: <C53D7BB1-6029-4707-9AE7-BB1769900F98@gmail.com>
References: <C53D7BB1-6029-4707-9AE7-BB1769900F98@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 12 Jun 2012 08:25:26 -0700
Message-ID: <CAMKF1soK_9+w8ox-agSE_pnioBL=sTd8rHGwmbS2qPx=gncbng@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: How to build 32-bit x86 host 32-bit powerpc target cross compiler, on a 64-bit x86 host
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
X-List-Received-Date: Tue, 12 Jun 2012 15:25:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 12, 2012 at 8:14 AM, Elvis Dowson <elvis.dowson@gmail.com> wrot=
e:
> Hi,
> =C2=A0 =C2=A0 =C2=A0 I am running Ubuntu 12.04 LTS 64-bit. I have a colle=
ague who doesn't
> have a 64-bit linux installation. What I'd like to be able to do is to bu=
ild
> a 32-bit host 32-bit powerpc target cross compiler, on my 64-bit machine.
>
> How can I configure Yocto to do this?
>
> At the moment, I've already generated a meta-toolchain SDK, which install=
s
> into :
>
> /opt/poky/1.2+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/ppc440-poky-=
linux/
>
> How can I generate a the 32-bit hosted cross compiler on my 64-bit yocto
> build machine? I really didn't quite understand the term canadian-cross
> compiler, until now!! ;-) Now I know!!

set SDKMACHINE=3Di686

>
> Best regards,
>
> Elvis Dowson
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

