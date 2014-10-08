Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 481B1E00853; Tue,  7 Oct 2014 23:06:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.18.3.94 listed in list.dnswl.org]
Received: from exprod8og107.obsmtp.com (exprod8og107.obsmtp.com [64.18.3.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 324CAE007C1
	for <yocto@yoctoproject.org>; Tue,  7 Oct 2014 23:05:55 -0700 (PDT)
Received: from mail-ig0-f172.google.com ([209.85.213.172]) (using TLSv1) by
	exprod8ob107.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVDTUQ2VfTZ/U9dq6sU/JBi+CSDY6Cnf0@postini.com;
	Tue, 07 Oct 2014 23:06:02 PDT
Received: by mail-ig0-f172.google.com with SMTP id r2so6204955igi.5
	for <yocto@yoctoproject.org>; Tue, 07 Oct 2014 23:05:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=Yl0Vwc/LADElqaaR0JnkOjIU6gDXyQVPry7SxQ5lBgI=;
	b=BdZaBtFdKFmSmq8Vk1bndZgn79x1HSZaAmCwHjroVlcDD6N5dLpw9UHT4J8Mu/u1cW
	NYVnwrxxI5Clb9hKC1MksRhcj43Q0YZfaXYp5WKKTFgraptiIBIo5z+ywEZLn8oDDe6F
	D+pmQXjMUFE81BnRTKYDN0j+4+kGSSrohguZvVigVoyV9VW1D8czDWQpJlrB6PvH4XXb
	CJ76EjJt9Yhbx7j0xLS2jO7jPBYW+5h2arHRBPA8Wi5wfPTV8ONjwQASrjMiTvi2uzfE
	CRyPxj8ZKu4dzqa+CCItI6/R+bIJu5sx19Fgm5p62wZrrsiPanaO8ztJWZUyk7jJ4w5v
	IlPg==
X-Gm-Message-State: ALoCoQkgr63+Y/twQjmV/Wa8hiZHjA/NCUccV0xP/VrnttT20atfWgXz2wnUN8/07Jd9vNtN8kyNghuobWj+ypterPd9u+EeicBXEnTvX9h/2D5zPM4pu3YpYRhik1Zt0a33/aFELutgrrhEbSY23x82cY5ZTjjOCw==
X-Received: by 10.50.43.137 with SMTP id w9mr39632703igl.36.1412748355326;
	Tue, 07 Oct 2014 23:05:55 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.50.43.137 with SMTP id w9mr39632643igl.36.1412748354871;
	Tue, 07 Oct 2014 23:05:54 -0700 (PDT)
Received: by 10.42.52.8 with HTTP; Tue, 7 Oct 2014 23:05:54 -0700 (PDT)
In-Reply-To: <CAJrRHk6aVPLjZ9ruyr+koS7cVQTRt-+-jGv6L+AdFTTBW_Wmxg@mail.gmail.com>
References: <CAJrRHk6aVPLjZ9ruyr+koS7cVQTRt-+-jGv6L+AdFTTBW_Wmxg@mail.gmail.com>
Date: Wed, 8 Oct 2014 14:05:54 +0800
Message-ID: <CAJrRHk4Q_bnrv2g1Kup9BTJj9gVMufKmSLtmBx8K5hmp7mE+PQ@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PERL5LIB not properly reflecting target_sdk_dir
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
X-List-Received-Date: Wed, 08 Oct 2014 06:06:05 -0000
Content-Type: multipart/alternative; boundary=e89a8f8388f5d9c4460504e31be4

--e89a8f8388f5d9c4460504e31be4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

anyone?

On Fri, Oct 3, 2014 at 4:33 PM, Joseph Andrew de la Pe=C3=B1a <
jdelapena@lexmark.com> wrote:

> Good day Yocto Dev community,
>
>
> I have seen a problem in SDK installation where PERL5LIB does not reflect
> vendor_perl location.
> I have specified SDK installtion path as /bonus/scratch/sdk. Yet when I
> executed -V no vendor_perl is included in PERL5LIB.
>
> perl -V
>
> @INC:
> /bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3
> /bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/perl
> /bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3
>
> /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/site_perl/5.14.3=
/
> /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/site_perl/5.14.3
>
> /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/vendor_perl/5.14=
.3/
> /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/vendor_perl/5.14=
.3
> /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3/
> /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3
> /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3
>
>
> Can someone shed some light on how to include target sdk path's
> vendor_perl for @INC? I'm expecting just like the default sdk installatio=
n
> path, it included vendor_perl and site_perl in the PERL5LIB.
>
>
> Thanks,
> Joseph
>

--e89a8f8388f5d9c4460504e31be4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">anyone?</div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Fri, Oct 3, 2014 at 4:33 PM, Joseph Andrew de la Pe=C3=B1a =
<span dir=3D"ltr">&lt;<a href=3D"mailto:jdelapena@lexmark.com" target=3D"_b=
lank">jdelapena@lexmark.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div dir=3D"ltr">Good day Yocto Dev community,<div><br></div><div>=
<br></div><div>I have seen a problem in SDK installation where PERL5LIB doe=
s not reflect vendor_perl location.</div><div>I have specified SDK installt=
ion path as /bonus/scratch/sdk. Yet when I executed -V no vendor_perl is in=
cluded in PERL5LIB.</div><div><br></div><div>perl -V</div><div><br></div><d=
iv>@INC:</div><div>/bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/=
perl/5.14.3</div><div>/bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/l=
ib/perl<br></div><div><div>/bonus/scratch/sdk/sysroots/i686-pokysdk-linux//=
usr/lib/perl/5.14.3<br></div></div><div><br></div><div>/opt/sdk/1.5.1/sysro=
ots/i686-pokysdk-linux//usr/lib/perl/site_perl/5.14.3/<br></div><div>/opt/s=
dk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/site_perl/5.14.3<br></di=
v><div>/opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/vendor_perl=
/5.14.3/<br></div><div>/opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/=
perl/vendor_perl/5.14.3<br></div><div>/opt/sdk/1.5.1/sysroots/i686-pokysdk-=
linux//usr/lib/perl/5.14.3/<br></div><div>/opt/sdk/1.5.1/sysroots/i686-poky=
sdk-linux//usr/lib/perl/5.14.3<br></div><div>/opt/sdk/1.5.1/sysroots/i686-p=
okysdk-linux//usr/lib/perl/5.14.3<br></div><div><br></div><div><br></div><d=
iv>Can someone shed some light on how to include target sdk path&#39;s vend=
or_perl for @INC? I&#39;m expecting just like the default sdk installation =
path, it included vendor_perl and site_perl in the PERL5LIB.</div><div><br>=
</div><div><br></div><div>Thanks,</div><div>Joseph</div></div>
</blockquote></div><br></div>

--e89a8f8388f5d9c4460504e31be4--
