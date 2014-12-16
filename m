Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C75CE00A99; Tue, 16 Dec 2014 07:57:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.46 listed in list.dnswl.org]
Received: from mail-qg0-f46.google.com (mail-qg0-f46.google.com
	[209.85.192.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D55F5E008FB
	for <yocto@yoctoproject.org>; Tue, 16 Dec 2014 07:57:24 -0800 (PST)
Received: by mail-qg0-f46.google.com with SMTP id q107so8253389qgd.33
	for <yocto@yoctoproject.org>; Tue, 16 Dec 2014 07:57:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Ts+XheenGVoH960THIFYtRn+U0qr62NkclpLFN7/o6M=;
	b=AouyqWqIDNt6MGmSxI2RFuPhF5P3mUNUDVD/kTKTzzvkP+E4oqPh2RPY1vMuHzqDzj
	+u4TdR/6OUn+bF0XPNmN4Xmo5BZqZgcz3RgIDh221iVJpCQyL9a3+8aiD+/S59MLrCsZ
	7cySM4BOxsftrIZy+QrGhcgT4+7ey1vZtmfZAqXsE/qq0AAr5rHMlBzE+GyQz67spcM9
	kSVU1Yw0k392yPvwqRVAIV0FF3b6BI2S5OvIDcvy6VPVb4tDKuSW9goFq290TNFNijzr
	S7gVH2aegeX6UC+pwneYycBbN2CvgDA5DJfBX0YHthfVP3iywLPo8wWxDzYSTn0vAnCy
	eNug==
X-Gm-Message-State: ALoCoQmxmn6deW4ih29gTuveA/a6oWOC3jAMG/MJBVj2Yk0gv03acVZJvvKkz+ZFBXzsD6AjpDmD
X-Received: by 10.229.61.5 with SMTP id r5mr7716869qch.28.1418745443607; Tue,
	16 Dec 2014 07:57:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Tue, 16 Dec 2014 07:57:03 -0800 (PST)
In-Reply-To: <m6cst1$i29$1@ger.gmane.org>
References: <m6cst1$i29$1@ger.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Dec 2014 15:57:03 +0000
Message-ID: <CAJTo0LY1GVKLXUcQ76NN8iikaCz3z8ct60OL+cgw-WtikKvpxA@mail.gmail.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to properly add new qemu target + testimage support?
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
X-List-Received-Date: Tue, 16 Dec 2014 15:57:36 -0000
Content-Type: multipart/alternative; boundary=001a1132e4b43198ac050a576a1d

--001a1132e4b43198ac050a576a1d
Content-Type: text/plain; charset=UTF-8

On 11 December 2014 at 19:56, Robert Berger <
gmane@reliableembeddedsystems.com> wrote:
>
> I hacked together a qemu target which supports vexpress-a9.
>
> In order to get
>
> core-image-minimal -c testimage
>
> to work as well I had to cook
>
> meta/lib/oeqa/utils/qemurunner.py
> scripts/runqemu
> scripts/runqemu-internal
>
> This does not seem to be a generic way to do such a thing.
>

You're right.  We've got a bug for this (
https://bugzilla.yoctoproject.org/show_bug.cgi?id=4827) but it's not been
done yet.  For now, hacking the scripts is the only way to do this.

Ross

--001a1132e4b43198ac050a576a1d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 11 December 2014 at 19:56, Robert Berger <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gmane@reliableembeddedsystems.com" target=3D"_blank">gmane@relia=
bleembeddedsystems.com</a>&gt;</span> wrote:<blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-colo=
r:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div id=3D":1b=
d" class=3D"" style=3D"overflow:hidden">I hacked together a qemu target whi=
ch supports vexpress-a9.<br>
<br>
In order to get<br>
<br>
core-image-minimal -c testimage<br>
<br>
to work as well I had to cook<br>
<br>
meta/lib/oeqa/utils/qemurunner.py<br>
scripts/runqemu<br>
scripts/runqemu-internal<br>
<br>
This does not seem to be a generic way to do such a thing.<br></div></block=
quote></div><div class=3D"gmail_extra"><br></div>You&#39;re right.=C2=A0 We=
&#39;ve got a bug for this (<a href=3D"https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D4827">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4=
827</a>) but it&#39;s not been done yet.=C2=A0 For now, hacking the scripts=
 is the only way to do this.<br></div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra">Ross</div></div>

--001a1132e4b43198ac050a576a1d--
