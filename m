Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08400E0076C; Fri,  3 Oct 2014 01:33:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED,TVD_SUBJ_NUM_OBFU_MINFP autolearn=no version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.30 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  2.5 TVD_SUBJ_NUM_OBFU_MINFP TVD_SUBJ_NUM_OBFU_MINFP
Received: from exprod8og115.obsmtp.com (exprod8og115.obsmtp.com [64.18.3.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F452E00749
	for <yocto@yoctoproject.org>; Fri,  3 Oct 2014 01:33:35 -0700 (PDT)
Received: from mail-wg0-f46.google.com ([74.125.82.46]) (using TLSv1) by
	exprod8ob115.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVC5fXsyDky8oKsGvlE2cy94teSqnL7Xh@postini.com;
	Fri, 03 Oct 2014 01:33:40 PDT
Received: by mail-wg0-f46.google.com with SMTP id l18so864343wgh.29
	for <yocto@yoctoproject.org>; Fri, 03 Oct 2014 01:33:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=TsV83l9W3gtlDnFHbsROMbPtIsLMOx3H9h5WeCk3kRU=;
	b=g1idfxOeHvZ87/GUVbyQRIo1EADIbg5GgDlg5j44ck1OR1cP2crAhCsr4InGmZSQCO
	dFC5uadHGkBcQHJPCkuTUY5dnJZw62jjH2BtJxpFGVhgC6C2nUEwWLL9c2o5bcVgqwjb
	riD93z8tdPprgJ0DGAYkSoq93ZpEiJAJ+LDx2/wiaX79rBotSDYdrC6Y6ejOiWTBl1K3
	6OiJY5YrA+6SzgoynXs5wUAtELWdI1WFsLqCRfI02IstSy/Ddriiq6d14P8Rj2Oi2Xh8
	crkOR2myRSwSbjbzOsJehsj4jDEuy5DeUa/oJTLANVa5wbI2cCU3i6gK4MzflzO6t0fq
	kJNA==
X-Gm-Message-State: ALoCoQmsMFRyK920pRBpFpdLV+nFnpbJa/QzFwSYdNqBcaTqW49w0DbFDYbLpChqUJVwSh4RBhqdykJcfBhqUeCU4jPX5LyM8I01SH3OybBVQgCynmkEcIo1AQGPHUvf0yavc13tesefs8kLNlJnR86vDdhWnevMLw==
X-Received: by 10.194.190.69 with SMTP id go5mr5617244wjc.56.1412325213742;
	Fri, 03 Oct 2014 01:33:33 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.194.190.69 with SMTP id go5mr5617188wjc.56.1412325213274;
	Fri, 03 Oct 2014 01:33:33 -0700 (PDT)
Received: by 10.27.170.66 with HTTP; Fri, 3 Oct 2014 01:33:33 -0700 (PDT)
Date: Fri, 3 Oct 2014 16:33:33 +0800
Message-ID: <CAJrRHk6aVPLjZ9ruyr+koS7cVQTRt-+-jGv6L+AdFTTBW_Wmxg@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: PERL5LIB not properly reflecting target_sdk_dir
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
X-List-Received-Date: Fri, 03 Oct 2014 08:33:43 -0000
Content-Type: multipart/alternative; boundary=047d7bdc7d0ea51b900504809610

--047d7bdc7d0ea51b900504809610
Content-Type: text/plain; charset=UTF-8

Good day Yocto Dev community,


I have seen a problem in SDK installation where PERL5LIB does not reflect
vendor_perl location.
I have specified SDK installtion path as /bonus/scratch/sdk. Yet when I
executed -V no vendor_perl is included in PERL5LIB.

perl -V

@INC:
/bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3
/bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/perl
/bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3

/opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/site_perl/5.14.3/
/opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/site_perl/5.14.3
/opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/vendor_perl/5.14.3/
/opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/vendor_perl/5.14.3
/opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3/
/opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3
/opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3


Can someone shed some light on how to include target sdk path's vendor_perl
for @INC? I'm expecting just like the default sdk installation path, it
included vendor_perl and site_perl in the PERL5LIB.


Thanks,
Joseph

--047d7bdc7d0ea51b900504809610
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Yocto Dev community,<div><br></div><div><br></div=
><div>I have seen a problem in SDK installation where PERL5LIB does not ref=
lect vendor_perl location.</div><div>I have specified SDK installtion path =
as /bonus/scratch/sdk. Yet when I executed -V no vendor_perl is included in=
 PERL5LIB.</div><div><br></div><div>perl -V</div><div><br></div><div>@INC:<=
/div><div>/bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14=
.3</div><div>/bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/perl<b=
r></div><div><div>/bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/p=
erl/5.14.3<br></div></div><div><br></div><div>/opt/sdk/1.5.1/sysroots/i686-=
pokysdk-linux//usr/lib/perl/site_perl/5.14.3/<br></div><div>/opt/sdk/1.5.1/=
sysroots/i686-pokysdk-linux//usr/lib/perl/site_perl/5.14.3<br></div><div>/o=
pt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/vendor_perl/5.14.3/<=
br></div><div>/opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/vend=
or_perl/5.14.3<br></div><div>/opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//us=
r/lib/perl/5.14.3/<br></div><div>/opt/sdk/1.5.1/sysroots/i686-pokysdk-linux=
//usr/lib/perl/5.14.3<br></div><div>/opt/sdk/1.5.1/sysroots/i686-pokysdk-li=
nux//usr/lib/perl/5.14.3<br></div><div><br></div><div><br></div><div>Can so=
meone shed some light on how to include target sdk path&#39;s vendor_perl f=
or @INC? I&#39;m expecting just like the default sdk installation path, it =
included vendor_perl and site_perl in the PERL5LIB.</div><div><br></div><di=
v><br></div><div>Thanks,</div><div>Joseph</div></div>

--047d7bdc7d0ea51b900504809610--
