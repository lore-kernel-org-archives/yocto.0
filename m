Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F123E008CC; Wed,  4 Mar 2015 22:33:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8892CE00754
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 22:33:03 -0800 (PST)
Received: by mail-qa0-f48.google.com with SMTP id dc16so37506737qab.7
	for <yocto@yoctoproject.org>; Wed, 04 Mar 2015 22:33:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=1pokhApU2SA+wM8JfzOGDkyX8TcLlDfC9Q/dZwO7Exs=;
	b=LwCZd1gcD4HmBGOs2Pm30omQFvtivGSXkliAoz7dDtddonGxJAz18qNR/0P83ytx2Z
	beWK/DBLuyhZcz17HV2NTu5GaiK0GEB3WzYQ2XepDhW2BShQq3n7wini4QsVqnaHU6ZJ
	O7ZmjcvlcAtRQAbPbRX5RhmhoacWve+AEbIzQued/seJHB94HnZyIqXAZZewPuow4t6I
	gxN6zM9t/ZKcEbO1RaZpug35Ri4bWrRezHZ7u84iwRpcVcQhVJD8RwnMwteygKyBYnKK
	3ZbP3wEro6A8/8U2wpNu4BxbJOP0utIay5w37qMPQbm5pMDKJ46ju9JKS6rCqtB9JHpg
	Xu0w==
X-Gm-Message-State: ALoCoQnLrQ+ZkfendN6PDak4rrvZqVOmLXEMUTJR8i48pRS1oOTscDiO/+OUoRSNE0pqfcllf35c
X-Received: by 10.55.24.83 with SMTP id j80mr15064640qkh.58.1425537183330;
	Wed, 04 Mar 2015 22:33:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Wed, 4 Mar 2015 22:32:43 -0800 (PST)
In-Reply-To: <54F798FD.4090200@mlbassoc.com>
References: <54F798FD.4090200@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 5 Mar 2015 06:32:43 +0000
Message-ID: <CAJTo0Lb+8aUN8Ufgx-5W6zfs=V_CK=eY2DgeeGeGJUyz0u22gA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: New gst-player
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
X-List-Received-Date: Thu, 05 Mar 2015 06:33:06 -0000
Content-Type: multipart/alternative; boundary=001a1142980c6d42da051084bd7b

--001a1142980c6d42da051084bd7b
Content-Type: text/plain; charset=UTF-8

On 4 March 2015 at 23:45, Gary Thomas <gary@mlbassoc.com> wrote:

> I like that owl has been replaced by gst-player, but I need
> some help figuring out how to get it working :-(  If you ask
> it to play something and it doesn't have the appropriate
> plugins available, it just sits there and acts stupid (no
> error popup, nothing...).  For example, I tried to play a
> MP4 file downloaded from YouTube and it complained:
>   Now playing /home/root/Vlad+Louise.mp4
>   Missing plugin: H.264 decoder
>       ...
>   Missing plugin: MPEG-4 AAC decoder
>       ...
> (those are only the relevant lines which I got by running it
> by hand in a terminal window).
>
> Any idea what I need to get installed to play this file?
>

Yes, we should probably patch it to hook into those signals and show a
dialog with more useful diagnostics.

If you have recent Intel HW, gstreamer-vaapi-1.0 will handle H264 in
hardware.  Otherwise gstreamer-libav has an AAC decoder and a software H264
decoder.

Ross

--001a1142980c6d42da051084bd7b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 4 March 2015 at 23:45, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":3dq" class=3D"a3s" style=
=3D"overflow:hidden">I like that owl has been replaced by gst-player, but I=
 need<br>
some help figuring out how to get it working :-(=C2=A0 If you ask<br>
it to play something and it doesn&#39;t have the appropriate<br>
plugins available, it just sits there and acts stupid (no<br>
error popup, nothing...).=C2=A0 For example, I tried to play a<br>
MP4 file downloaded from YouTube and it complained:<br>
=C2=A0 Now playing /home/root/Vlad+Louise.mp4<br>
=C2=A0 Missing plugin: H.264 decoder<br>
=C2=A0 =C2=A0 =C2=A0 ...<br>
=C2=A0 Missing plugin: MPEG-4 AAC decoder<br>
=C2=A0 =C2=A0 =C2=A0 ...<br>
(those are only the relevant lines which I got by running it<br>
by hand in a terminal window).<br>
<br>
Any idea what I need to get installed to play this file?</div></blockquote>=
<div><br></div><div>Yes, we should probably patch it to hook into those sig=
nals and show a dialog with more useful diagnostics.</div><div><br></div><d=
iv>If you have recent Intel HW, gstreamer-vaapi-1.0 will handle H264 in har=
dware.=C2=A0 Otherwise gstreamer-libav has an AAC decoder and a software H2=
64 decoder.</div><div><br></div><div>Ross</div></div></div></div>

--001a1142980c6d42da051084bd7b--
