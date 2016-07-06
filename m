Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF3F0E00DE9; Wed,  6 Jul 2016 04:51:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48CE1E00DE4
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 04:51:41 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id v6so30760790vkb.2
	for <yocto@yoctoproject.org>; Wed, 06 Jul 2016 04:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aACEuHGWGBIcKztEkyq0wYK56fH6R9y7r33smvVrhGk=;
	b=gVBmokzL1xNk3L54zte+ivP86CqJoLqZB0NqxRmzs99YIDsEse1Sl0QTM1+lrmST+b
	ZOIKgKbFTx+HzzVV2v8GS2kstI7MMNhwsKTWecR3OHSLH52iPfysmzJOpDR/HiCG+brD
	1cMWf+1VAeNHPV+ntpZV+p0tLBmuV+LkoOLANWmpsyw9EJkmeOpAWo8UitKxi3BQlsxy
	SChwS36BstDFBK1cRyAX90cmvTjyF6DX3WQxV8Rb6pmxpFdNyadS26S7LnZQEhQXZ/9T
	Nl1Kck/V3m2SGVn8+B+Nv/m3FUx/+2nHJHADaEqaq+H00hEuUllc2VYu+O061yszHfym
	qAjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aACEuHGWGBIcKztEkyq0wYK56fH6R9y7r33smvVrhGk=;
	b=TS44ludpo8srL3rIvLT7z6jirlPOmptWoqo6kFRnAs/qa6mLiD4Z/y+YGMRDTDHu/V
	2p32pytuND3ZDSrkqRVMGixyj9+JKgf2SkYNV42rzptdnTJQ0BrUovM7mGa+yy9QY4kI
	ZUVMNdXtAF2hJ0MwxZxEhY7dozZxrzhX0mNcJ/KftKDb6+NYc8BAbcYCNQaitkkvlHny
	dVQ74bRzEP1LXvSXs5VgqCAX62UjSjLBDgzlszAAnHXR+MeqdTaM4mg55HCv8t+SHtmu
	Uzc7m7L1hsQLG02tV/TtTBMPXJgeNu8mO+tY3sJonRBtkwRQzckr2o7pPXBfpKlIrP1o
	bndQ==
X-Gm-Message-State: ALyK8tJZJ75BmFPlfQF7ohHk/IZxwbhASoX+68y1/fcZebhBLJ4je47f3di6QPjiXQQaAfcls7MAZKXrvFX1Cw==
X-Received: by 10.159.39.39 with SMTP id a36mr7840102uaa.86.1467805900919;
	Wed, 06 Jul 2016 04:51:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.32.106 with HTTP; Wed, 6 Jul 2016 04:51:40 -0700 (PDT)
In-Reply-To: <577CD922.4000405@mlbassoc.com>
References: <577CD922.4000405@mlbassoc.com>
From: "Chris Z." <winotu.email@gmail.com>
Date: Wed, 6 Jul 2016 13:51:40 +0200
Message-ID: <CAEjjReJO62jjENv868u8owRazP0yBV+kBVG9yt2rxPBTxSfj2Q@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What keeps sstate from being used?
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
X-List-Received-Date: Wed, 06 Jul 2016 11:51:43 -0000
Content-Type: multipart/alternative; boundary=94eb2c12324c52da6c0536f631ee

--94eb2c12324c52da6c0536f631ee
Content-Type: text/plain; charset=UTF-8

Hi,

Check:
http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#shared-state-cache

"... the build system detects changes in the "inputs" to a given task by
creating a checksum (or signature) of the task's inputs. If the checksum
changes, the system assumes the inputs have changed and the task needs to
be rerun. For the second question, the shared state (sstate) code tracks
which tasks add which output to the build process.... "


On Wed, Jul 6, 2016 at 12:10 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> I just had a [nearly] complete build failed (building webkitgtk
> after some 6000 tasks).  I decided to try the 'rebuild from sstate'
> by removing my 'tmp' directory and rebuild.  Bitbake proceeded to
> run 2200 setscene tasks and then [it seems] started over on the
> build, rebuilding the target gcc, the kernel, who knows what else...
> These are all things that I thought had been completed before
> during the initial ~6000 steps.
>
> What could be going on and why couldn't it just pick up using
> sstate from where it left off?
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c12324c52da6c0536f631ee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br></div>Check: <br><a href=3D"http://www.yoc=
toproject.org/docs/latest/ref-manual/ref-manual.html#shared-state-cache">ht=
tp://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#shared-sta=
te-cache</a><br><br>&quot;... the build system detects changes in the &quot=
;inputs&quot; to a given task by
        creating a checksum (or signature) of the task&#39;s inputs.
        If the checksum changes, the system assumes the inputs have changed=
 and the task needs to be
        rerun.
        For the second question, the shared state (sstate) code tracks whic=
h tasks add which output
        to the build process.... &quot;<br><br></div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On Wed, Jul 6, 2016 at 12:10 PM, Gary T=
homas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"=
_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">I just had a [nearly] complete build failed (building webkitgtk<br>
after some 6000 tasks).=C2=A0 I decided to try the &#39;rebuild from sstate=
&#39;<br>
by removing my &#39;tmp&#39; directory and rebuild.=C2=A0 Bitbake proceeded=
 to<br>
run 2200 setscene tasks and then [it seems] started over on the<br>
build, rebuilding the target gcc, the kernel, who knows what else...<br>
These are all things that I thought had been completed before<br>
during the initial ~6000 steps.<br>
<br>
What could be going on and why couldn&#39;t it just pick up using<br>
sstate from where it left off?<span class=3D"HOEnZb"><font color=3D"#888888=
"><br>
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--94eb2c12324c52da6c0536f631ee--
