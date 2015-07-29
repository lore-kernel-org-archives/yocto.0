Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A770E00B3F; Wed, 29 Jul 2015 06:45:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 270BAE00B2F
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 06:44:54 -0700 (PDT)
Received: by qkdg63 with SMTP id g63so4460619qkd.0
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 06:44:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=msYMxTHcyFGl3yei5fL55Vop1tdHK8HDWJi46MkERvQ=;
	b=mCKhzMjbgCnr6/FG6aTcMrpc8ClmRnIgjHT8h99gbCtPWty/gIAhI3qjqP19kwJy+Y
	bM23njZdW+5qJoRM7117JkJivpvieBxnQK9A58EyROqizmQ2jr0BkxKLLrGa5WiojsDx
	xFVoxOBbL6UjOAC5g80lEsRVcYbQvEmh96OCngcQY0n4u+DixbShcbP02mHZcucQDSta
	cdC6CU/3FU/MboyMhe02bj2/rArTUj0JuchPoZxRONn0y45PU4D/AtkC3aQi8b/aomGY
	Gd3kn7S7Z2I/+Gabj9W8KWU/hMlkHHeA+6q0u9148MNcUdytUKXDJlX4NegvXLHHJpWD
	2jKg==
X-Gm-Message-State: ALoCoQlLkuC6NQ9VREG6NDSlvlqGxDYFJ344+fJ2mYI6idpdoG9ezh1//XAkaO87XGPzDnbaARfv
X-Received: by 10.55.53.193 with SMTP id c184mr58893113qka.62.1438177494006;
	Wed, 29 Jul 2015 06:44:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Wed, 29 Jul 2015 06:44:34 -0700 (PDT)
In-Reply-To: <CAJtzDg864mgz4668FceX4ov5Uu8VxeGKh4tc1ERXq7wXQz06bQ@mail.gmail.com>
References: <CAJtzDg8b-JtqeAtbCBckq+pQDahetrhWB8DeE_XXAv5vQBdcWg@mail.gmail.com>
	<55B8D37A.6020308@mlbassoc.com>
	<CAJtzDg_BE_+hxYu9jNHUQW3gxme6Ay95NENjA=R6ufj+w9LfCw@mail.gmail.com>
	<55B8D76A.1090507@mlbassoc.com>
	<CAJtzDg864mgz4668FceX4ov5Uu8VxeGKh4tc1ERXq7wXQz06bQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 29 Jul 2015 14:44:34 +0100
Message-ID: <CAJTo0Lb=VpuK8UOQMdr7YkaNH-SHsBfRXa8z7Jq9SXARBDmWsQ@mail.gmail.com>
To: Laurent Joli <l.joli@expemb.com>
Cc: yocto <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: [Asterisk] recipe 13.1.1
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
X-List-Received-Date: Wed, 29 Jul 2015 13:45:03 -0000
Content-Type: multipart/alternative; boundary=001a11476f14a7a83a051c03caaf

--001a11476f14a7a83a051c03caaf
Content-Type: text/plain; charset=UTF-8

On 29 July 2015 at 14:42, Laurent Joli <l.joli@expemb.com> wrote:

> | Must specify package names on the command line
>

Looks like you forgot to tell pkgconfig what you are looking for
(libxml-2.0).

Ross

--001a11476f14a7a83a051c03caaf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 29 July 2015 at 14:42, Laurent Joli <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:l.joli@expemb.com" target=3D"_blank">l.joli@expemb.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><span class=3D"">| Must specify pac=
kage names on the command line<br></span></blockquote></div><br>Looks like =
you forgot to tell pkgconfig what you are looking for (libxml-2.0).</div><d=
iv class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></d=
iv>

--001a11476f14a7a83a051c03caaf--
