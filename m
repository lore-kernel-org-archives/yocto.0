Return-Path: <jefro.net@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEB6AE013EF
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 13:56:01 -0700 (PDT)
Received: by ieak12 with SMTP id k12so342374iea.35
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 13:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=SYygYoQPkGgF81wGNguG4Deu7WGjdjb4fK+GMqyaoMU=;
	b=aQTJ2F8gZjUahSSQ0cI2DYMZBT9bYIpd91pUxePI5l7VUDVhYpLtrqxGfBOvUTwpOE
	UmJJSdYYe47l8/u3pRTGi93L88OS6V+CieCFQjNJocKErR8yvBAe0CpxU4iBxy5wr783
	Dcsjy6nQyD5tZOOR0MwKYMAKlGwUSU2rkoWnOkqFq8ccv5mosETrF6BTmaZ9UedK2rnu
	z8pOs5sWl+E7YnNvEY1rqOv3DZVAIvMBjwV9jjSa5NWrcDR+ENL9bcOhM8rEjUn1e4iK
	WdF7fcFU01rvtmDwOR8SnNH/5mfOfpp99n5KhFdSMZ3S1LRhutyMXOE7T7DKACotZmI4
	iRPQ==
MIME-Version: 1.0
Received: by 10.50.195.233 with SMTP id ih9mr3889631igc.65.1348088161557; Wed,
	19 Sep 2012 13:56:01 -0700 (PDT)
Sender: jefro.net@gmail.com
Received: by 10.64.147.37 with HTTP; Wed, 19 Sep 2012 13:56:01 -0700 (PDT)
In-Reply-To: <CA+YB3rZwSjD6GK5-FV1yc7umAe8=HdxoMruUq9NcEtcOgda_BQ@mail.gmail.com>
References: <1347992629.1943.38.camel@omclinuxballt.devnet.ordermatic.net>
	<CAHUNapR0dfujrEWTysBPcnsGNj0r=Lkp72NSTM5oArEbyYGV=g@mail.gmail.com>
	<CA+YB3rY7Uj+_F=y=p6TEo27yBiN52Lg2YdWf_6LFb5dndvR3Qw@mail.gmail.com>
	<1348069852.1829.20.camel@omclinuxballt.devnet.ordermatic.net>
	<CA+YB3rZwSjD6GK5-FV1yc7umAe8=HdxoMruUq9NcEtcOgda_BQ@mail.gmail.com>
Date: Wed, 19 Sep 2012 13:56:01 -0700
X-Google-Sender-Auth: qlscPNfhol1z8cBFDk4YzcBCQxQ
Message-ID: <CA+YB3rbAEhcm7L_u1PbSJkFUT0eDvSpeqMfnfvGuC6k48RKyMA@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
To: Brian Lloyd <blloyd@familyhonor.net>
Cc: yocto@yoctoproject.org
Subject: Re: All incompassing documentation
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
X-List-Received-Date: Wed, 19 Sep 2012 20:56:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

It also occurs to me that a source for the confusion might be that
there is more than one build process going on with BitBake. It is used
both to create packages and to install them into a rootfs in order to
create an image. Thus, the workflow looks something like this,
starting from the point of download:

[tarball/repo] -> [source] -> [binary] -> [package] -> [image]

or, the evolution of a chunk of information, in terms of its file type:

[.tar.gz/.git] -> [*.c,*.h,Makefile,etc] -> [executable] ->
[.rpm,.deb,.ipk] -> [.ext3]

Yes, this is a gross generalization with many exceptions. I'm just
trying to capture discrete terms for each step of the process.

Our term "package" is often used to describe the first item, sometimes
to describe the second item, and always used to describe the fourth
item. It is also sometimes used to describe the repository - the
ecosystem of files that defines a given piece of software.

Brian - thanks very much for starting this conversation. Terminology
is important, and just because people use overloaded terms every day
doesn't mean we shouldn't work to differentiate them.

--
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

