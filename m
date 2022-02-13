Return-Path: <Anders.Montonen@iki.fi>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A14BC433F5
	for <webhook@archiver.kernel.org>; Sun, 13 Feb 2022 22:54:41 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web10.27434.1644792867498947230
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 14:54:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=oV6ja080;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.25, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	 s=20161220; h=Message-Id:In-Reply-To:To:References:Date:Subject:Mime-Version
	:Content-Type:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=d9pwvWzywFkQ03DBASDqBj2gq2pqwoDKFcnCCVIashc=; b=oV6ja080/+qIBeLhuJzOtv4Zp6
	WnoxK5kmo6QQ3xw2OQaZLbXmwvGBlHSvpXX4kgZ5QBpxtbHppyFHQlSIVeTkdVV1sHSXDclP1/7vh
	16ir6R8TH9LGELI4LGN5ZY0p7gkljDhul5OHSI68PAFvu6vvnID3dO0R381y8lmt9BlFftKYn0bKg
	fsiT10s1oQfZATUCLFO1BTRLaVGOc9c0rwjWomsvyrUs4CZR+wq7JHx2OdlGKWOHF0Ua6Ks5t470u
	Yj/HOeUIWF9uo442ZFG1U65hx6+ZUARJessY+k1KhzJqdNroY4nGYoEqUELbtTtUkuCvm/N8T+kH7
	u9ru2Rdw==;
Received: from 89-27-79-167.bb.dnainternet.fi ([89.27.79.167]
 helo=[192.168.1.137])
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1nJNlA-0002GN-BQ
	for yocto@lists.yoctoproject.org; Mon, 14 Feb 2022 00:54:24 +0200
From: Anders Montonen <Anders.Montonen@iki.fi>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_EA1B5526-B894-409C-8602-76164B9F272F"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.21\))
Subject: Re: [yocto] Building Yocto on M1 Mac
Date: Mon, 14 Feb 2022 00:54:23 +0200
References: 
 <CAB_tbNkB32wAe=3CZvn6a8FSuoA-JGUniQQBM_h-9xLJ-BqKrw@mail.gmail.com>
 <E02EE3E6-B0A8-407A-91DF-1FF64E1DC363@iki.fi>
 <CAB_tbNnmJ-DFyB-8t5S3no0Ta-WSxWhAbJ39SxGkBXW_r_4Tow@mail.gmail.com>
 <CANNYZj-E_tfYX9L49+M1V20qARaOCeJtht_prbAq6W_MiyoAEQ@mail.gmail.com>
 <226A0FE8-3FD9-43A2-A2FF-642DB4074FD8@theyoctojester.info>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
In-Reply-To: <226A0FE8-3FD9-43A2-A2FF-642DB4074FD8@theyoctojester.info>
Message-Id: <7B8BEDDB-47EC-4F5D-A3EC-A0219FE68AB0@iki.fi>
X-Mailer: Apple Mail (2.3445.104.21)
X-SA-Exim-Connect-IP: 89.27.79.167
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 13 Feb 2022 22:54:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56178


--Apple-Mail=_EA1B5526-B894-409C-8602-76164B9F272F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On 13 Feb 2022, at 21:59, Josef Holzmayr <jester@theyoctojester.info> =
wrote:
>=20
> Howdy!
>=20
>> On 13. Feb 2022, at 19:04, Alexander Kanavin <alex.kanavin@gmail.com =
<mailto:alex.kanavin@gmail.com>> wrote:
>>=20
>> Even if you do manage to start a build, performance won't be great.
>> Yocto, by design, builds the entire stack from source, so a lot of =
CPU
>> cores is essential. Don't spend your time waiting, get an
>> appropriately specced Linux workstation, or an account on a Linux
>> server that your organization might have for the purpose.
>=20
> While that is perfectly true from the pure technical facts, I have to =
add that building in Parallels on a M1 is ok-ish. You have to crank up =
the VM way beyond the defaults, to something like 6-8core, 16+X GB RAM, =
but then it=E2=80=99s bearable for the occasional user. When you can=E2=80=
=99t get your hands on a proper environment, its certainly an option.

Just to give some numbers, building a Dunfell core-image-minimal for the =
Beaglebone, with a pre-populated DL_DIR took 36 minutes in a Linux VM on =
a M1 Max Macbook Pro (8 cores, 16GB RAM allocated), and 21 minutes on my =
5900X desktop (12/24 cores/threads, 64GB RAM).

-a=

--Apple-Mail=_EA1B5526-B894-409C-8602-76164B9F272F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
13 Feb 2022, at 21:59, Josef Holzmayr &lt;<a =
href=3D"mailto:jester@theyoctojester.info" =
class=3D"">jester@theyoctojester.info</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">Howdy!</span><br class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><div =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On 13. =
Feb 2022, at 19:04, Alexander Kanavin &lt;<a =
href=3D"mailto:alex.kanavin@gmail.com" =
class=3D"">alex.kanavin@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><span class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">Even if you do manage to start a build, =
performance won't be great.</span><br class=3D"" style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><span class=3D"" style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;">Yocto, =
by design, builds the entire stack from source, so a lot of =
CPU</span><br class=3D"" style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><span class=3D"" style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;">cores =
is essential. Don't spend your time waiting, get an</span><br class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><span class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">appropriately specced Linux workstation, or =
an account on a Linux</span><br class=3D"" style=3D"caret-color: rgb(0, =
0, 0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><span class=3D"" style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;">server =
that your organization might have for the purpose.</span><br class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: =
none;"></div></blockquote><div class=3D""><br class=3D""></div><div =
class=3D"">While that is perfectly true from the pure technical facts, I =
have to add that building in Parallels on a M1 is ok-ish. You have to =
crank up the VM way beyond the defaults, to something like 6-8core, 16+X =
GB RAM, but then it=E2=80=99s bearable for the occasional user. When you =
can=E2=80=99t get your hands on a proper environment, its certainly an =
option.</div></div></div></blockquote><div><br class=3D""></div></div>Just=
 to give some numbers, building a Dunfell core-image-minimal for the =
Beaglebone, with a pre-populated DL_DIR took 36 minutes in a Linux VM on =
a M1 Max Macbook Pro (8 cores, 16GB RAM allocated), and 21 minutes on my =
5900X desktop (12/24 cores/threads, 64GB RAM).<div class=3D""><br =
class=3D""></div><div class=3D"">-a</div></body></html>=

--Apple-Mail=_EA1B5526-B894-409C-8602-76164B9F272F--

