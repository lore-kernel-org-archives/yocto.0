Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34C81E007AD; Fri, 24 Mar 2017 06:57:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1496E003C1
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 06:57:01 -0700 (PDT)
Received: by mail-qk0-f174.google.com with SMTP id p64so2855740qke.1
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 06:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DoMzGFu599efsBrVxditcanpwa5PNeDSsz9OOsd7eLM=;
	b=gfnN6JZihCXgvJZAlNb3fN8wLtO0xMT0YD/UKDJkIKNbn2Jg8Hnl5A/AYsiPlg5EJI
	vgbDbtFz44pCMpHpM4o1s5eR1yLFNxaNnp5b5ldHvfNwFUcxaCfuWjNCVKKGMOEUHOW5
	H6cytc5vWKehIZ/LsgmZE3NdKESVNw/bfV5sMLl/SOHFtp1mdce6HpCU7pT91wAjp+m0
	HiClfS2Yr96f+pwHeQMabWCFaWFLmFCcEWJybhdx6FjXUTZfq6AeFH7Z0JW/9EfVallm
	GF173PxD4rZWpogRHnk2vhuc5cbB3dr2TNSCo7k20BU6myuUSJURtcSrijV06mZGUmUd
	jyoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DoMzGFu599efsBrVxditcanpwa5PNeDSsz9OOsd7eLM=;
	b=Af/LoK4ogP5Yu8vQvNt1Ro9atAK+wjByqZ9VKlW+SJrOPAY/3yNCruWZyYchu6f+dE
	+uf5Ulggrw2V5+A5dTvwDizGJfcE9Sv6+Li/MFIbzKf5FXMH0T757jX9oNP673LYPnLZ
	tubUKKZj6JoiA2jlrQknhA9SntdvBLw5SLTrGZl4sXbD0wLUL0FLbL88UcrKOT49oXTm
	RFovRPYdyAtaP1cSReB6b1m9akN4Pubb0ZsvbkftI0oRGTZMhe0j2ySbcs66vC4IJ3IA
	QffKxNHV3QHVbfDIW3iX2R8JJPTolU5za31NFd4QTvWW4hJa9IDwwLNWHwiI/n4AQr01
	R17w==
X-Gm-Message-State: AFeK/H15MPKe0D4OfQH9Wu+iQs7Y1K2Pe0Q2lUd3QztB2twTTZXhJHuWBJTfFCpT0UFUkV9yZYkrKgnxRO91SbxW
X-Received: by 10.55.47.4 with SMTP id v4mr7607326qkh.77.1490363819537; Fri,
	24 Mar 2017 06:56:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Fri, 24 Mar 2017 06:56:39 -0700 (PDT)
In-Reply-To: <CAKEinFzZ-8poavqXnmDPXg47N6OQ7un4X1nLpwofUKRrY8gW1w@mail.gmail.com>
References: <CAKEinFzZ-8poavqXnmDPXg47N6OQ7un4X1nLpwofUKRrY8gW1w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 24 Mar 2017 13:56:39 +0000
Message-ID: <CAJTo0LbqLfAP3kPwhXYW_6UAMQRnPRUw20G582R2dmGkJjASRA@mail.gmail.com>
To: Cody Piersall <cody@arrc.ou.edu>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Remove a recipe's do_install_append() function in an append file
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
X-List-Received-Date: Fri, 24 Mar 2017 13:57:02 -0000
Content-Type: multipart/alternative; boundary=001a114f41080d1376054b7a5ec0

--001a114f41080d1376054b7a5ec0
Content-Type: text/plain; charset=UTF-8

On 24 March 2017 at 13:49, Cody Piersall <cody@arrc.ou.edu> wrote:

> I am building zsh from meta-oe layer, and it has a do_install_append()
> function defined like this:
>
> do_install_append () {
>     rm -fr ${D}/usr/share
> }
>
> which gets rid of lots lots of useful functionality, like
> context-aware autocompletion.  Can a bbappend file get rid of that
> function, or do I need to edit the actual recipe? I've attempted
> defining an empty do_install_append() { : } but it didn't work.
>

Fixing the zsh recipe to have either separate packages or PACKAGECONFIGs
for the useful stuff would be the proper solution, but a really nasty hack
that might work is:

do_install_remove = "rm -rf ${D}/usr/share"

Ross

--001a114f41080d1376054b7a5ec0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 March 2017 at 13:49, Cody Piersall <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:cody@arrc.ou.edu" target=3D"_blank">cody@arrc.ou.edu</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div id=3D":2dw" class=3D"a3s aXjCH=
 m15b0095213ac41e1">I am building zsh from meta-oe layer, and it has a do_i=
nstall_append()<br>
function defined like this:<br>
<br>
do_install_append () {<br>
=C2=A0 =C2=A0 rm -fr ${D}/usr/share<br>
}<br>
<br>
which gets rid of lots lots of useful functionality, like<br>
context-aware autocompletion.=C2=A0 Can a bbappend file get rid of that<br>
function, or do I need to edit the actual recipe? I&#39;ve attempted<br>
defining an empty do_install_append() { : } but it didn&#39;t work.</div></=
blockquote></div><br>Fixing the zsh recipe to have either separate packages=
 or PACKAGECONFIGs for the useful stuff would be the proper solution, but a=
 really nasty hack that might work is:</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">do_install_remove =3D &quot;rm -rf ${D}/us=
r/share&quot;</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail=
_extra">Ross</div></div>

--001a114f41080d1376054b7a5ec0--
