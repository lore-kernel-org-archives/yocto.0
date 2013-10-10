Return-Path: <jc@vtkloud.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5706BE015ED
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 06:22:50 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id l12so2923369wiv.3
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 06:22:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:content-type:mime-version:subject:from
	:in-reply-to:date:cc:content-transfer-encoding:message-id:references
	:to; bh=GRwFJ6o8g8DWNOxjNbZb22w6l8r8hMsn6RcP8/+CnEU=;
	b=jzgID/TTZymjuB/I0ZlZxjEsmS1gwGl/aWPfdYCs1qqyAm4R+EvA4wp6sXJv1Yyy1I
	TWMg2ZIROydN7IF9j+UN6iHNe5HPlBTQUIggp0QixzztO47TPoN9plHMq1Ujkx6xUTQ6
	zQEycAUSSY3EDsP5vPu/DdSvz+blh4B+F83q58bRCfjEOtqF8VUCW5rGdfRPaR4crx7v
	1GRDKBvv+Tb0MM9tRgdsF7sGBpkKXhygG/iObmavdoGrsvFSmugY9vPOhYxFuR1Wv9UN
	CTU1NaO9aqAbCdq9vP6VnkmpUEbVjmjZrIE0R8rzfFVAmiwZFalS9JKpwsWED5l9IxL9
	DhLw==
X-Gm-Message-State: ALoCoQkSZXrEhzUzjvu66nc5c4RsIaOJqDFl/SZtvMLcU53QWfDDfaJyrS+efeNWD0wXl/kLv4YX
X-Received: by 10.180.187.175 with SMTP id ft15mr7873904wic.20.1381411369710; 
	Thu, 10 Oct 2013 06:22:49 -0700 (PDT)
Received: from [172.24.63.121] ([94.103.137.126])
	by mx.google.com with ESMTPSA id jf2sm25604048wic.2.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 10 Oct 2013 06:22:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: =?iso-8859-1?Q?Jean-Charles_JC_Verdi=E9?= <jc@vtkloud.com>
In-Reply-To: <2874521.TO6dkNyroi@helios>
Date: Thu, 10 Oct 2013 15:22:46 +0200
Message-Id: <236656A9-B1A4-45B2-93DE-C6412F349AC8@vtkloud.com>
References: <524B4663.1020106@vtkloud.com> <2874521.TO6dkNyroi@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1510)
Cc: yocto@yoctoproject.org
Subject: Re: ${libdir} usage
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 10 Oct 2013 13:22:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 10Oct 2013, at 12:01 PM, Paul Eggleton =
<paul.eggleton@linux.intel.com> wrote:

> Hi Jay,
>=20
> On Wednesday 02 October 2013 00:02:11 JC wrote:
>> I'm currently putting together a bunch of recipes to install some =
cpan
>> modules. I had some complaints by bitbake about files being installed
>> but not shipped.
>>=20
>> I figured that I need to populate FILES_{PN} but I'm not clear about
>> what I should do with it: use ${libdir}, use "usr/*" ? Knowing that =
my
>> image(s) directories mostly contain usr/lib/perl/* and sometimes =
usr/bin/*
>=20
> Ultimately it depends on how those files have ended up there. If files =
have been=20
> installed in in /usr/lib because they've been installed in ${libdir} =
(this is=20
> the default for all autotooled recipes), then you should also use =
${libdir} to=20
> match in FILES in case that value changes - some distros do this to =
flatten out=20
> /usr altogether for example.
>=20

Thanks !

Actually, I made a mistake and need to install those pm files in /lib =
not /usr/lib. cpan (instead of cpan-build) did everything ok :)

Regards
Jay

> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre


