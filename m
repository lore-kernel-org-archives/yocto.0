Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42003E00950; Tue, 19 Feb 2019 06:36:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B524E0090E
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2019 06:36:37 -0800 (PST)
Received: by mail-it1-f195.google.com with SMTP id r11so6485057itc.2
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2019 06:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:cc:date:in-reply-to:references
	:user-agent:mime-version;
	bh=YemBIaSqCFAfZubM+wN4dKbGJbt91spvs6W5JqLFaV0=;
	b=VEbsjU72dYxoXypqcFIzvFjiZTU1UthLND7uXsyv9lLjsHrlMLMvpJeUdwj35yUIHn
	pI5HMSd+Z6VNvXCQvfahi/JoFkOKVHf5LgGyApbUHP6EWsWGHAptbQVUMTGjRCGEdnTB
	57nYCYdzH+knS39eD+y3Ppyd1F6yS8EuQprsX4Iz1wHKXtzQViQxYCpiGKlVSt0i2osW
	oLgSAVNSwII3JtXqt6evMmUIHKoxqNMLj143rhKEIrtFONDBlBnSmcvDbwDRrw6LvJBg
	1DEzwjmdRPS9Hl+aj0wfbua0Dap4xXM9iV8+tqZwmGYmV1r/E0jmmbu4HpXWV9PIdGkY
	dV/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:cc:date:in-reply-to
	:references:user-agent:mime-version;
	bh=YemBIaSqCFAfZubM+wN4dKbGJbt91spvs6W5JqLFaV0=;
	b=olIxyKC5PWzs2DkcxWIJCCegzZ0BkUXLPgcS/aWPklrUELda/bwKmdzMcCPe08MwcU
	kMcRb3/TbnIloge+3WAY2Ez+NMlwFO3nmiFbcVo+xN6VoXxPlKwqc3vW4BNC7adZDd5P
	7gRXKZYZRKFrzuVwwZUz+d0yYH2UsvIwJ9zEEkU1Bd6NPvrbLA7Q39kTHBdLNVseCT6r
	kQcsf7OMbfK3ZO8oJPFc1B7VT6l5fneLvHqZXCykF2KtJXNeAxboGgJvRsobzEEFXu9N
	m18mRYoOSY3pNFpp/iuSHqRWJg3TC03y14vUZOjEm8745c2CzP5QhQAwf27ML4/Hvl4p
	xeBg==
X-Gm-Message-State: AHQUAuZYnGaZJz/XDAIpCGV3+dRJZRPEtio0p23sGSRwrJQ4ASHzqazH
	EMv0wgs0XyFpB+vw3Nx2v7E=
X-Google-Smtp-Source: AHgI3IbsyHqCrCF79V28b1SPLiUagrdmsx68kdGMdPoMBwSHlZIpB3CN5SJpQewfgSmQPcTd7EyMVA==
X-Received: by 2002:a24:6703:: with SMTP id u3mr2827474itc.68.1550586996957;
	Tue, 19 Feb 2019 06:36:36 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	g10sm8393089ioa.67.2019.02.19.06.36.35
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 19 Feb 2019 06:36:35 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <dbd739e8f5f75d4364388d959bb2a2e2ad1bb332.camel@gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 19 Feb 2019 08:36:34 -0600
In-Reply-To: <CAAfyv35g4ucKO5Y09F_wE+wEvAfaJkCjAukApFzy_9q0M3Z2JA@mail.gmail.com>
References: <CAAfyv34zsYSumJ9ka5GczozkG5UNqF977R7Ar8hizOq0QKXa=w@mail.gmail.com>
	<6159d263af9714c2e5a021eaa3e24e261474a66c.camel@gmail.com>
	<CAAfyv35g4ucKO5Y09F_wE+wEvAfaJkCjAukApFzy_9q0M3Z2JA@mail.gmail.com>
User-Agent: Evolution 3.30.4 (3.30.4-1.fc29) 
Mime-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: readonly rootfs - storing data in separate partition
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
X-List-Received-Date: Tue, 19 Feb 2019 14:36:38 -0000
Content-Type: multipart/alternative; boundary="=-sp+5YGcDTjTZfT+qDd4n"

--=-sp+5YGcDTjTZfT+qDd4n
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-02-19 at 08:36 +0100, Belisko Marek wrote:
> On Mon, Feb 18, 2019 at 6:05 PM Joshua Watt <jpewhacker@gmail.com>
> wrote:
> > On Mon, 2019-02-18 at 17:36 +0100, Belisko Marek wrote:
> > > Hi,
> > > I plan to use readonly rootfs option and store some custom data
> > > in separate partition (like hostname, wpa_supplicant.conf etc). I
> > > have wic file which create rootfs + then rest is for data
> > > storage. I can adjust various recipes to symlink to /data
> > > partition. My question is if there exists some mechanism how to
> > > store some pieces in non-rootfs partition? I know some projects
> > > which put those extra files to deploy dir and then by dd create
> > > dummy storage nd put files there and finally create partition
> > > from that. Thanks a log for any pointers.
> > 
> > We do this a lot using volatiles files. The best documentation is
> > the core volatiles file: 
> > https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/initscripts/initscripts-1.0/volatiles
> Can this be used when systemd is init manager? Thanks.

I'm pretty sure systemd processes volatiles as well, although I can't
find the exact code to point to at the moment to confirm it.
> > > BR,
> > > 
> > > marek
> > > 
> > -- 
> > Joshua Watt <JPEWhacker@gmail.com>
> 
> BR,
> 
> /marek
> 
> 
> 
-- 
Joshua Watt <JPEWhacker@gmail.com>

--=-sp+5YGcDTjTZfT+qDd4n
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr"><head></head><body style=3D"text-align:left; direction:lt=
r;"><div>On Tue, 2019-02-19 at 08:36 +0100, Belisko Marek wrote:</div><bloc=
kquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf so=
lid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Mon, Feb 18, 201=
9 at 6:05 PM Joshua Watt &lt;<a href=3D"mailto:jpewhacker@gmail.com">jpewha=
cker@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquo=
te type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;=
padding-left:1ex"><div style=3D"text-align:left;direction:ltr"><div>On Mon,=
 2019-02-18 at 17:36 +0100, Belisko Marek wrote:</div><blockquote type=3D"c=
ite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left=
:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I plan to use readonly rootfs=
 option and store some custom data in separate partition (like hostname, wp=
a_supplicant.conf etc). I have wic file which create rootfs&nbsp;+ then res=
t is for data storage. I can adjust various recipes to symlink to /data par=
tition. My question is if there exists some mechanism how to store some pie=
ces in non-rootfs partition? I know some projects which put those extra fil=
es to deploy dir and then by dd create dummy storage nd put files there and=
 finally create partition from that. Thanks a log for any pointers.</div></=
div></blockquote><div><br></div><div>We do this a lot using volatiles files=
. The best documentation is the core volatiles file: <a href=3D"https://git=
.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/initscripts/ini=
tscripts-1.0/volatiles" target=3D"_blank">https://git.yoctoproject.org/cgit=
/cgit.cgi/poky/tree/meta/recipes-core/initscripts/initscripts-1.0/volatiles=
</a></div></div><br></blockquote><div>Can this be used when systemd is init=
 manager? Thanks.</div></div></div></blockquote><div><br></div><div>I'm pre=
tty sure systemd processes volatiles as well, although I can't find the exa=
ct code to point to at the moment to confirm it.</div><div><br></div><block=
quote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf sol=
id;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><blockquot=
e type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;p=
adding-left:1ex"><div style=3D"text-align:left;direction:ltr"><div><br></di=
v><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #72=
9fcf solid;padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>BR,</div>=
<div><br></div><div>marek<br clear=3D"all"><div><br></div></div></div></blo=
ckquote><div><span><pre>-- </pre><br>Joshua Watt &lt;<a href=3D"mailto:JPEW=
hacker@gmail.com" target=3D"_blank">JPEWhacker@gmail.com</a>&gt;</span></di=
v></div>
</blockquote></div><br clear=3D"all"><div>BR,</div><div><br></div><div>/mar=
ek</div><div dir=3D"ltr" class=3D"gmail_signature"><br><br></div></div>
</blockquote><div><span><pre>-- <br></pre>Joshua Watt &lt;<a href=3D"mailto=
:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a>&gt;</span></div></body></ht=
ml>

--=-sp+5YGcDTjTZfT+qDd4n--
