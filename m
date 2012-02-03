Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57EACE0030F
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 12:21:04 -0800 (PST)
Received: by vbjk13 with SMTP id k13so4129021vbj.35
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2012 12:21:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=TssExPK9kKDPHQvLMX8KzF38P6aPtZ2+mBe3FlEH3HI=;
	b=mKkUYe6x1h0cWPRP7KbKCf1gqCYScaJiujy7sa5uowq86sCg+4HYoGsO2ubxvHPVES
	/iNP+h3W7wkYLClOeddEs79v/LgcW29V8q31Fcd0R091LY2r91CpoSOUdKKeNdmyXaEJ
	uIKA65qUgRZwl29MAEujfaWZzWFb/qGRDsb7U=
MIME-Version: 1.0
Received: by 10.52.179.201 with SMTP id di9mr4124021vdc.129.1328300463564;
	Fri, 03 Feb 2012 12:21:03 -0800 (PST)
Received: by 10.52.37.111 with HTTP; Fri, 3 Feb 2012 12:21:03 -0800 (PST)
In-Reply-To: <CANFv2EnGGu70vzv+KFagLTRscoGv2k_ob27qxdhw9H3tWsnG8w@mail.gmail.com>
References: <63ECFF2A2302B44093D7CE9E9962C49002A109@ORSMSX103.amr.corp.intel.com>
	<4F298A58.5030700@linux.intel.com>
	<63ECFF2A2302B44093D7CE9E9962C49002A3CC@ORSMSX103.amr.corp.intel.com>
	<4F29B248.4060202@linux.intel.com>
	<1328132827.2304.149.camel@elmorro> <4F29BF30.80808@gmail.com>
	<1328140929.2304.157.camel@elmorro> <4F29DF85.9040605@gmail.com>
	<1328145634.2304.159.camel@elmorro>
	<CANFv2Emx6kbdEwnWkkORp7h-vZovGSExUnn45JORZ56MuNeEfQ@mail.gmail.com>
	<1328226148.2304.188.camel@elmorro>
	<63ECFF2A2302B44093D7CE9E9962C49002A8A2@ORSMSX103.amr.corp.intel.com>
	<CANFv2EnGGu70vzv+KFagLTRscoGv2k_ob27qxdhw9H3tWsnG8w@mail.gmail.com>
Date: Fri, 3 Feb 2012 15:21:03 -0500
Message-ID: <CANFv2E=jRpNm7YxyrOobjhvscisE3y1a5xQbukZeSYbuWpyw=w@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Gaku music player
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 03 Feb 2012 20:21:04 -0000
Content-Type: multipart/alternative; boundary=bcaec5014bf34928d604b8150d64

--bcaec5014bf34928d604b8150d64
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Feb 3, 2012 at 11:02 AM, James Abernathy <jfabernathy@gmail.com>wrote:

> I tried all the different mixer options on the Crownbay.  It's just not
> very loud.  I'll try an amplifier, but with earphones, it almost not loud
> enough to hear.  I don't remember other Linux's having this issue.  Could
> there be something else software wise?  The good news is the built-in GUI
> Music and Video players work with the H.264 files I've tested as well as
> the command line stuff.
>
> Also got the glxgears works as well.
>
> Jim A
>
To close this one out.  The Crownbay seems to have a line level out only
and not a port that supports headphones and line level.  Once I put minimal
Line in level amplfication, the audio works as expected.

Thanks for the help. It's good to see nice integration in Yocto of video
and music players that actually plays the the H.264 and MP3 files.

Jim A


>
>
>

--bcaec5014bf34928d604b8150d64
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">On Fri, Feb 3, 2012 at 11:02 AM, James Abernathy=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:jfabernathy@gmail.com">jfabernathy=
@gmail.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div>I tried all the different mixer options on the Crownbay.=A0 It&#39;s j=
ust not very loud.=A0 I&#39;ll try an amplifier, but with earphones, it alm=
ost not loud enough to hear.=A0 I don&#39;t remember other Linux&#39;s havi=
ng this issue.=A0 Could there be something else software wise?=A0 The good =
news is the built-in GUI Music and Video players work with the H.264 files =
I&#39;ve tested as well as the command line stuff.</div>

<div>=A0</div>
<div>Also got the glxgears works as well.</div>
<div>=A0</div>
<div>Jim A<br></div></blockquote>
<div>To close this one out.=A0 The Crownbay seems to have a line level out =
only and not a port that supports headphones and line level.=A0 Once I put =
minimal Line in level amplfication, the audio works as expected.=A0 </div>
<div>=A0</div>
<div>Thanks for the help. It&#39;s good to see nice integration in Yocto of=
 video and music players that actually plays the the H.264 and MP3 files.</=
div>
<div>=A0</div>
<div>Jim A</div>
<div>=A0</div>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div><br></div>
<div class=3D"HOEnZb">
<div class=3D"h5">=A0</div></div></blockquote></div>

--bcaec5014bf34928d604b8150d64--
