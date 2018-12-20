Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 271B4E00C90; Thu, 20 Dec 2018 02:26:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
	[209.85.167.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDF46E008C6
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2018 02:26:47 -0800 (PST)
Received: by mail-oi1-f180.google.com with SMTP id a77so1067133oii.5
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2018 02:26:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=gkwfnEbXgngi98vgjGSGN4JkXqoJpL2d7WhcWzEv6b8=;
	b=auO2EmetxhbgNTDkoT1UZX9ku435CzZkqUORpNOLyV8O14Oj+E9bm7sW+BgIPF8CEw
	u8XMYljPBBB04QhgasGfDE14dHU1PHC/JEs5tqi16LlNtpk/7CuQONgFabNKPGVGaMsQ
	DuYvVc2gyeiNiAt9WUFSkr+/WvXH9gTp9XI/oG70uBElqSTiDfy3srzO6kBcI1DUui0R
	og/83FU9B8ltchaRgNEvK31myg/sY3Bd3COyHRJCbEPY4QU/PIDitBRZIRcfMaBRJ0UK
	0bGUOP738GFjOnHSBSDuVnvCtkac8qpVJaseMrjkzFT33oRaJOpBckaFVTP33pD+btpv
	lA5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=gkwfnEbXgngi98vgjGSGN4JkXqoJpL2d7WhcWzEv6b8=;
	b=CgoJeu6hJBUnM7mFysLUKECSyPbqu0uTNCeIlKqQODGdNFQ3Nlpex/IeGGJT4tZjFc
	Ud9F4zrHzQIi1QnwLpsV/Pc4E7WpQ6mm6E7SD8tD6lvj/sYg/Ag7JcAeoZ33ZVdRGq6l
	zSHlk5v9fKVc1513M3NSDiAgx+Ofoc51+SGEg5SDLe4PnQ0HdbP1TUS2ggfkk8q6PRzk
	e42dxmhKOyYEPBON2Schynn5u65Tu045qh+a7aB+vaVypxrmWd2eh+ElHGn5MuQpC7Je
	f2YSWT24OcduKvUNw1przZX64IThWy9mPTMCgSP1xJWmrCUsKkQKNdDmtJ1ljY2NQeXh
	2OZw==
X-Gm-Message-State: AA+aEWYxKZe2Oo8A/J1b6j9b3ymgMPm0ik3Ul/VHSk2uqVeLpiHGfjAU
	jwk24BoeSosIR8V27opsz0cRTvjQyWp8W2k92Nhc4g==
X-Google-Smtp-Source: AFSGD/UkZ/WxdliURmTiEvfxoGHUDd86DJZ7UaPOZtH4VtlIB9so7IiCBpIzR9GxLBVaVLIuKAtAo2cTIp6u4A8Lbi4=
X-Received: by 2002:aca:2dc9:: with SMTP id t192mr1616809oit.325.1545301607301;
	Thu, 20 Dec 2018 02:26:47 -0800 (PST)
MIME-Version: 1.0
References: <3EAB3564-9C9E-46CC-9CD4-4971AD2CA1D9@gmail.com>
	<CAJTo0LYky_=zn6rcJhi4udOE3so2zxGYaEGRhtqaY7N_7rta3Q@mail.gmail.com>
	<CALQBcOfhSwreZF4JsuEwEM_ovTdEv5mZ87qfSZ6yZ_e-kLENkA@mail.gmail.com>
	<CAJTo0LZrNu1jRuFWS6AL+v4jg+g2Pnofrs3oe07Qju8nGZriTQ@mail.gmail.com>
	<CALQBcOfXdDGMXv+CFUgS_mNekbq+O5szyBp0rNwTBMyQr0qnEg@mail.gmail.com>
In-Reply-To: <CALQBcOfXdDGMXv+CFUgS_mNekbq+O5szyBp0rNwTBMyQr0qnEg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 20 Dec 2018 11:26:35 +0100
Message-ID: <CANNYZj-e+OQtjXAPC=1MFT5AoV9ad6sF1d4uuHTRc=OCzek=Xg@mail.gmail.com>
To: Vishwanath Chandapur <vishwavtu@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto-security] Open ssl version
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
X-List-Received-Date: Thu, 20 Dec 2018 10:26:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It's likely that you ask bitbake to build something that has a hard
dependency on openssl 1.0. Most probably openssh.

Alex

On Thu, 20 Dec 2018 at 05:30, Vishwanath Chandapur <vishwavtu@gmail.com> wr=
ote:
>
> Hi Team,
>
> I have set opnessl version in sumo but getting below errors.
>
>
> PREFERRED_VERSION_openssl =3D "1.1.0i"
>
>
> Logs:
>
> NOTE: Resolving any missing task queue dependencies
>
> NOTE: preferred version 1.1.0i of openssl not available (for item libssl)
> NOTE: versions of openssl available: 1.0.2p
> NOTE: preferred version 1.1.0i of openssl not available (for item openssl=
10)
> NOTE: versions of openssl available: 1.0.2p
> NOTE: preferred version 1.1.0i of openssl not available (for item openssl=
-conf)
> NOTE: versions of openssl available: 1.0.2p
>
>
> ERROR: Multiple versions of openssl are due to be built (/home/ubuntu/wor=
kspace/yocto/sources/poky/meta/recipes-connectivity/openssl/openssl_1.0.2p.=
bb /home/ubuntu/workspace/yocto/sources/poky/meta/recipes-connectivity/open=
ssl/openssl_1.1.0i.bb). Only one version of a given PN should be built in a=
ny given build. You likely need to set PREFERRED_VERSION_openssl to select =
the correct version or don't depend on multiple versions.
>
>
> With Regards
> Vishwa
>
> On Fri, Dec 14, 2018 at 5:31 PM Burton, Ross <ross.burton@intel.com> wrot=
e:
>>
>> How did you set it?
>>
>> Also this isn't relevant to yocto-security, please move to yocto@.
>>
>> Ross
>> On Fri, 14 Dec 2018 at 11:53, Vishwanath Chandapur <vishwavtu@gmail.com>=
 wrote:
>> >
>> > Hi Ross,
>> >
>> > I tried to enable by using PREFERRED_VERSION.
>> >
>> > But getting these errors .
>> > >>>>>>>>>>>>>>>>>>>>>>>>>>>>
>> > NOTE: Resolving any missing task queue dependencies
>> > NOTE: preferred version 1.0.% of openssl not available (for item opens=
sl)
>> > NOTE: versions of openssl available: 1.1.0i
>> > NOTE: preferred version 1.0.% of openssl-native not available (for ite=
m openssl-native)
>> > NOTE: versions of openssl-native available: 1.1.0i
>> > NOTE: preferred version 1.0.% of nativesdk-openssl not available (for =
item nativesdk-openssl)
>> > NOTE: versions of nativesdk-openssl available: 1.1.0i
>> > NOTE: preferred version 1.0.% of openssl not available (for item opens=
sl-dev)
>> > NOTE: versions of openssl available: 1.1.0i
>> > NOTE: preferred version 1.0.% of nativesdk-openssl not available (for =
item nativesdk-openssl-dev)
>> > NOTE: versions of nativesdk-openssl available: 1.1.0i
>> > ERROR: Nothing RPROVIDES 'libssl
>> > >>>>>>>>>>>>>>>>>>>>>>>>>>>
>> >
>> > With Regards
>> > Vishwa
>> >
>> >
>> > On Thu, 13 Dec 2018 at 5:57 PM, Burton, Ross <ross.burton@intel.com> w=
rote:
>> >>
>> >> Yes, Sumo has OpenSSL 1.1 but it isn't enabled by default because at
>> >> the time of release some important pieces of software had not yet
>> >> migrated.
>> >>
>> >> You can switch by using PREFERRED_VERSION.
>> >>
>> >> Ross
>> >> On Thu, 13 Dec 2018 at 12:13, Vishwanath Chandapur <vishwavtu@gmail.c=
om> wrote:
>> >> >
>> >> > Hi Team,
>> >> >
>> >> > Currently we are migrating to poly sumo version .
>> >> > But we have requirement to use 1.1.0 but poky is still supporting 1=
.0.2
>> >> >
>> >> > I would like know if latest OpenSSL available for future release .
>> >> >
>> >> > With Regard
>> >> > Vishwa
>> >> > _______________________________________________
>> >> > yocto-security mailing list
>> >> > yocto-security@yoctoproject.org
>> >> > https://lists.yoctoproject.org/listinfo/yocto-security
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

