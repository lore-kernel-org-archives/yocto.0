Return-Path: <grsandeep85@gmail.com>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAC48E0174F
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 10:31:04 -0700 (PDT)
Received: by mail-ob0-f170.google.com with SMTP id wp18so213644obc.29
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 10:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=EAGw7hK5Dqa6I+ZVEz/D9mikoTVB1Z1EnmquxmMbGLc=;
	b=d98vPMYkT8IhUdLgJYqUMb3m60icxk5nZQeZePNHVKWEYF1e1e7KJlhpGN0xJaQEUw
	83ABXugjLB3F3sJN3jEscovuat5Wr+aX/ezxCfdgXizRVLrrQs9WJ9BrTOBnoTEuwr3X
	ig5v42CTW1ryKczvato5737wPOLOm/NMeTzk+KdcQ0D+TDonCH7kYgmIKU4EEJvIQd/i
	h+wRDJdQbRtUqWEyBGfMt4Kny/EMts3Eu2cWeBpHnYiuIN2g14b1+FLJbC6xxWYJEXgy
	24GLGcN3bmCK/e89MTWM6BnVHaA2izsLTU1OJKC8vlEz4DjtItj65M5e71vQ7X7W7jmI
	REAg==
MIME-Version: 1.0
X-Received: by 10.60.141.225 with SMTP id rr1mr439529oeb.55.1383067863433;
	Tue, 29 Oct 2013 10:31:03 -0700 (PDT)
Received: by 10.76.20.102 with HTTP; Tue, 29 Oct 2013 10:31:03 -0700 (PDT)
In-Reply-To: <9540873.ngNT0uahPc@helios>
References: <CAJ7VayhLzFEDns3=buP+gpi3jPHXju=B856Sg6uQksAdzDvoDw@mail.gmail.com>
	<9540873.ngNT0uahPc@helios>
Date: Tue, 29 Oct 2013 11:31:03 -0600
Message-ID: <CAKP9-SjPgGtMXPvBTiARu6hcUubLhEdjB5NGsR+AsMai6KR83A@mail.gmail.com>
From: "Sandeep G.R" <grsandeep85@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: sonia verma <soniaverma9727@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Openvswitch integration in yocto
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
X-List-Received-Date: Tue, 29 Oct 2013 17:31:04 -0000
Content-Type: multipart/alternative; boundary=047d7b472a40b346b604e9e4946d

--047d7b472a40b346b604e9e4946d
Content-Type: text/plain; charset=ISO-8859-1

Hi Sonia,

        Add this line IMAGE_INSTALL_append += "openvswitch" to *
QorIQ-SDK-V1.4-20130814-yocto/meta-fsl-networking/images/fsl-image-core.bb.*
*
*
And do step 3 and openvswitch will be on T4240QDS.


On Tue, Oct 29, 2013 at 4:11 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Sonia,
>
> On Tuesday 29 October 2013 12:33:04 sonia verma wrote:
> > For compiling openvswitch i perform following steps:-
> >
> >    1.  bitbake -f -c compile openvswitch.
> >    2.  bitbake openvswitch.
> >    3.  bitbake fsl-image-core.
> >
> > but when i get
> fsl-image-core-t4240rdb-20131028123337.rootfs.ext2.gz.u-boot
> >  & boot the board with uImage & above file system i did not find any
> > openvswitch utilities. can you please guide me to how to integrate
> > openvswitch in yocto.
>
> If you wish openvswitch to be included in your image you will need to add
> it
> explicitly - see this section of the manual:
>
>
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage
>
> Once you have done this, steps 1 and 2 are no longer necessary.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*Thanks & Regards,*
*Sandeep G R*

--047d7b472a40b346b604e9e4946d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;tre=
buchet ms&#39;,sans-serif;color:rgb(7,55,99)">Hi Sonia,</div><div class=3D"=
gmail_default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif;color=
:rgb(7,55,99)">
<br></div><div class=3D"gmail_default"><span style=3D"color:rgb(7,55,99);fo=
nt-family:&#39;trebuchet ms&#39;,sans-serif">=A0 =A0 =A0 =A0 Add this line =
IMAGE_INSTALL_append +=3D &quot;openvswitch&quot; to</span><font face=3D"tr=
ebuchet ms, sans-serif" color=3D"#073763"> <b style=3D"font-size:13px">QorI=
Q-SDK-V1.4-20130814-yocto/meta-fsl-networking/images/<a href=3D"http://fsl-=
image-core.bb">fsl-image-core.bb</a>.</b></font></div>
<div class=3D"gmail_default"><font face=3D"trebuchet ms, sans-serif" color=
=3D"#073763"><b style=3D"font-size:13px"><br></b></font></div><div class=3D=
"gmail_default"><font color=3D"#073763" face=3D"trebuchet ms, sans-serif">A=
nd do step 3 and openvswitch will be on T4240QDS.</font></div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue,=
 Oct 29, 2013 at 4:11 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.i=
ntel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Sonia,<br>
<div class=3D"im"><br>
On Tuesday 29 October 2013 12:33:04 sonia verma wrote:<br>
&gt; For compiling openvswitch i perform following steps:-<br>
&gt;<br>
</div>&gt; =A0 =A01. =A0bitbake -f -c compile openvswitch.<br>
&gt; =A0 =A02. =A0bitbake openvswitch.<br>
&gt; =A0 =A03. =A0bitbake fsl-image-core.<br>
<div class=3D"im">&gt;<br>
&gt; but when i get fsl-image-core-t4240rdb-20131028123337.rootfs.ext2.gz.u=
-boot<br>
&gt; =A0&amp; boot the board with uImage &amp; above file system i did not =
find any<br>
&gt; openvswitch utilities. can you please guide me to how to integrate<br>
&gt; openvswitch in yocto.<br>
<br>
</div>If you wish openvswitch to be included in your image you will need to=
 add it<br>
explicitly - see this section of the manual:<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.h=
tml#usingpoky-extend-customimage" target=3D"_blank">http://www.yoctoproject=
.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage</=
a><br>

<br>
Once you have done this, steps 1 and 2 are no longer necessary.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><font face=3D"trebuchet ms, sans-serif" color=3D"#073763=
"><b>Thanks &amp; Regards,</b></font><div><font face=3D"trebuchet ms, sans-=
serif" color=3D"#073763"><b>Sandeep G R</b></font><br>
<br></div></div>
</div>

--047d7b472a40b346b604e9e4946d--
