Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E452E0030F
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 08:02:11 -0800 (PST)
Received: by vbjk13 with SMTP id k13so3832889vbj.35
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2012 08:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=PKBe+8sUmgXfBY/PEUU/EQoqrvEiluRwl4wlhtQOAiE=;
	b=AhbnaZ4TZKgYxyd7/vBIjvfDADAPfWW+xKO09JRRmVeIQUhvcvFbFjW6FK1po0zbx+
	y9C+9/4Sop6cVY/4at26V5sbyAgWtnfVRszwgZGcFU4zNo5C+ijtCZl1P+RuA/dsKh2s
	9L6/rUp8DEkA9TJifZHAJvoHVZ9GebMz3FMdI=
MIME-Version: 1.0
Received: by 10.52.73.169 with SMTP id m9mr3748660vdv.95.1328284930639; Fri,
	03 Feb 2012 08:02:10 -0800 (PST)
Received: by 10.52.37.111 with HTTP; Fri, 3 Feb 2012 08:02:10 -0800 (PST)
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C49002A8A2@ORSMSX103.amr.corp.intel.com>
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
Date: Fri, 3 Feb 2012 11:02:10 -0500
Message-ID: <CANFv2EnGGu70vzv+KFagLTRscoGv2k_ob27qxdhw9H3tWsnG8w@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 03 Feb 2012 16:02:11 -0000
Content-Type: multipart/alternative; boundary=bcaec50164097385b104b8116f81

--bcaec50164097385b104b8116f81
Content-Type: text/plain; charset=ISO-8859-1

I tried all the different mixer options on the Crownbay.  It's just not
very loud.  I'll try an amplifier, but with earphones, it almost not loud
enough to hear.  I don't remember other Linux's having this issue.  Could
there be something else software wise?  The good news is the built-in GUI
Music and Video players work with the H.264 files I've tested as well as
the command line stuff.

Also got the glxgears works as well.

Jim A


On Thu, Feb 2, 2012 at 6:54 PM, Saxena, Rahul <rahul.saxena@intel.com>wrote:

> You can also use the graphical alsamixer
> Just Include  alsa in MACHINE_FEATURES in
> meta-cedartrail/conf/cedartrail.conf
>
> Rahul
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] On Behalf Of Tom Zanussi
> Sent: Thursday, February 02, 2012 3:42 PM
> To: James Abernathy
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Gaku music player
>
> On Thu, 2012-02-02 at 17:42 -0500, James Abernathy wrote:
> >
> >
> > On Wed, Feb 1, 2012 at 8:20 PM, Tom Zanussi <tom.zanussi@intel.com>
> > wrote:
> >         On Wed, 2012-02-01 at 19:57 -0500, jfabernathy wrote:
> >         > On 02/01/2012 07:02 PM, Tom Zanussi wrote:
> >         > > On Wed, 2012-02-01 at 17:39 -0500, jfabernathy wrote:
> >         > >> On 02/01/2012 04:47 PM, Tom Zanussi wrote:
> >         > >>> On Wed, 2012-02-01 at 13:44 -0800, Darren Hart wrote:
> >         > >>>> On 02/01/2012 01:36 PM, Saxena, Rahul wrote:
> >         > >>>>> Hi Darren,
> >         > >>>>>
> >         > >>>>> Thanks for the clarification.
> >         > >>>>>
> >         > >>>>> I am building on Edison.  I found that ogg music files
> >         play
> >         > >>>>> OK on my gaku player.  I think that should be good
> >         enough, but just for my information purposes
> >         > >>>>> can you help me understand how does one accept the
> >         commercial iirc license ?
> >         > >>>> This has changed relatively recently, and I'm not
> >         finding the details in
> >         > >>>> the current docs. For example, the gst-fluendo-mp3
> >         recipe includes:
> >         > >>>>
> >         > >>>> LICENSE_FLAGS = "commercial"
> >         > >>>>
> >         > >>>> Taking a look at the git logs with "LICENSE_FLAGS" in
> >         them, in order to
> >         > >>>> allow for building of such recipes, you must include
> >         "commercial" in the
> >         > >>>> LICENSE_FLAGS_WHITELIST variable. I would attempt this
> >         with something
> >         > >>>> like the following in my local.conf:
> >         > >>>>
> >         > >>>> LICENSE_FLAGS_WHITELIST += "commercial"
> >         > >>>>
> >         > >>>> Tom, can you confirm I've got this right?
> >         > >>>>
> >         > >>> Yeah, that's right.
> >         > >>>
> >         > >>> Tom
> >         > >> I'm interested in this subject also.  If I use hob to
> >         look at a nice
> >         > >> display of packages, I see that their are a lot of
> >         gst-fluendo-*
> >         > >> pckages with MPLv1.1 Licenses. However, I don't see
> >         gst-fluendo-mp3
> >         > >> specifically.
> >         > >>       1. Is that package not a part of Yocto and a recipe
> >         has to be
> >         > >>          written to get it from somewhere?
> >         > > It is a part of yocto, it probably doesn't show up in HOB
> >         because of the
> >         > > restricted license (nothing has changed there, I guess
> >         that also would
> >         > > have been the case before with COMMERCIAL_LICENSE).
> >         > >
> >         > > Basically, the documentation hasn't caught up with the
> >         change yet
> >         > > (actually it (COMMERCIAL_LICENSE) was never documented, we
> >         need to
> >         > > change that in any case).
> >         > >
> >         > > The current 'documentation' for this, which I'll work with
> >         Scott on
> >         > > adapting to the actual documentation, is in the text of
> >         this poky
> >         > > commit:
> >         > >
> >         > > b68ea543603c35f4e3519d358e0d1e1e24bd5851
> >         > >
> >         > > and the set of packages that were changed from
> >         COMMERCIAL_LICENSE to
> >         > > LICENSE_FLAGS is here:
> >         > >
> >         > > 7b81ef8d95d82c55e3650981d3010000cd493832
> >         > >
> >         > > Tom
> >         > Okay, I found gst-fluendo-mp3 in the
> >         meta-recipes-multimedia. So is
> >         > including it the same as other packages you want in the
> >         image, putting
> >         > the following statements in the local.conf:
> >         >
> >         > LICENSE_FLAGS_WHITELIST += "commercial"
> >         > POKY_EXTRA_INSTALL += "gst-fluendo-mp3"
> >         >
> >         >
> >         > I would think that specifying the media player in the image
> >         would bring in the dependent CODECs if the licenses were
> >         right, but what do I know.
> >         >
> >
> >
> >         Yes, that LICENSE_FLAGS_WHITELIST line would allow
> >         gst-fluendo-mp3 in,
> >         and that in turn bring in its dependencies.
> >
> >         Tom
> >
> > FYI, I got this working fine. I could create a playlist with .ogg,
> > mp3, m4a file types and all played.  I could not adjust the volume.
> >
> > Is there a mixer/volume app for Sato?
> >
>
> Something like:
>
> # amixer set Master on
> # amixer set Master 75
>
> has worked for me in the past...
>
> Tom
>
> >
> > Jim A
> >
> >
> >         > Jim A
> >         >
> >         >
> >         >
> >         > >>       1. I know I can get the fluendo MP3 for Ubuntu with
> >         a
> >         > >>          click-through license for personal use.
> >         > >>>> Scott, once Tom confirms, this is a mechanism we need
> >         to get documented
> >         > >>>> in the reference manual.
> >         > >>>>
> >         > >>>> --
> >         > >>>> Darren
> >         > >>>>
> >         > >>>>
> >         > >>>>> Thanks
> >         > >>>>> Rahul
> >         > >>>>>
> >         > >>>>> -----Original Message-----
> >         > >>>>> From: Darren Hart [mailto:dvhart@linux.intel.com]
> >         > >>>>> Sent: Wednesday, February 01, 2012 10:54 AM
> >         > >>>>> To: Saxena, Rahul
> >         > >>>>> Cc: yocto@yoctoproject.org
> >         > >>>>> Subject: Re: [yocto] Gaku music player
> >         > >>>>>
> >         > >>>>>
> >         > >>>>>
> >         > >>>>> On 02/01/2012 09:57 AM, Saxena, Rahul wrote:
> >         > >>>>>> Hello,
> >         > >>>>>>
> >         > >>>>>>
> >         > >>>>>>
> >         > >>>>>> What type of music files is the Gaku music player on
> >         Sato desk top
> >         > >>>>>> supposed to play ?
> >         > >>>>>>
> >         > >>>>>> For me it did not work with mp3 files..however it is
> >         playing the
> >         > >>>>>> soundtrack from a .ogg video file
> >         > >>>>> It depends on which licenses you allow (the gstreamer
> >         mp3 plugin
> >         > >>>>> requires acceptance of the commercial license iirc).
> >         Are you building on
> >         > >>>>> edison or master?
> >         > >>>>>
> >         > >>>>> --
> >         > >>>>> Darren Hart
> >         > >>>>> Intel Open Source Technology Center
> >         > >>>>> Yocto Project - Linux Kernel
> >         > >>> _______________________________________________
> >         > >>> yocto mailing list
> >         > >>> yocto@yoctoproject.org
> >         > >>> https://lists.yoctoproject.org/listinfo/yocto
> >         > >> _______________________________________________
> >         > >> yocto mailing list
> >         > >> yocto@yoctoproject.org
> >         > >> https://lists.yoctoproject.org/listinfo/yocto
> >         > >
> >         >
> >
> >
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--bcaec50164097385b104b8116f81
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>I tried all the different mixer options on the Crownbay.=A0 It&#39;s j=
ust not very loud.=A0 I&#39;ll try an amplifier, but with earphones, it alm=
ost not loud enough to hear.=A0 I don&#39;t remember other Linux&#39;s havi=
ng this issue.=A0 Could there be something else software wise?=A0 The good =
news is the built-in GUI Music and Video players work with the H.264 files =
I&#39;ve tested as well as the command line stuff.</div>

<div>=A0</div>
<div>Also got the glxgears works as well.</div>
<div>=A0</div>
<div>Jim A<br><br><br></div>
<div class=3D"gmail_quote">On Thu, Feb 2, 2012 at 6:54 PM, Saxena, Rahul <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:rahul.saxena@intel.com">rahul.saxena@=
intel.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">You can also use the graphical alsami=
xer<br>Just Include =A0alsa in MACHINE_FEATURES in meta-cedartrail/conf/ced=
artrail.conf<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>Rahul<br></font></span>
<div class=3D"HOEnZb">
<div class=3D"h5"><br>-----Original Message-----<br>From: <a href=3D"mailto=
:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a> [mailto=
:<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproje=
ct.org</a>] On Behalf Of Tom Zanussi<br>
Sent: Thursday, February 02, 2012 3:42 PM<br>To: James Abernathy<br>Cc: <a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>Subjec=
t: Re: [yocto] Gaku music player<br><br>On Thu, 2012-02-02 at 17:42 -0500, =
James Abernathy wrote:<br>
&gt;<br>&gt;<br>&gt; On Wed, Feb 1, 2012 at 8:20 PM, Tom Zanussi &lt;<a hre=
f=3D"mailto:tom.zanussi@intel.com">tom.zanussi@intel.com</a>&gt;<br>&gt; wr=
ote:<br>&gt; =A0 =A0 =A0 =A0 On Wed, 2012-02-01 at 19:57 -0500, jfabernathy=
 wrote:<br>
&gt; =A0 =A0 =A0 =A0 &gt; On 02/01/2012 07:02 PM, Tom Zanussi wrote:<br>&gt=
; =A0 =A0 =A0 =A0 &gt; &gt; On Wed, 2012-02-01 at 17:39 -0500, jfabernathy =
wrote:<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt; On 02/01/2012 04:47 PM, Tom Za=
nussi wrote:<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt; On Wed, 2012-02-01 a=
t 13:44 -0800, Darren Hart wrote:<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt; On 02/01/2012 01:36 PM, Saxena, =
Rahul wrote:<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt; Hi Darren,<b=
r>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt;<br>&gt; =A0 =A0 =A0 =A0 &g=
t; &gt;&gt;&gt;&gt;&gt; Thanks for the clarification.<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt;<br>&gt; =A0 =A0 =A0 =A0 &gt;=
 &gt;&gt;&gt;&gt;&gt; I am building on Edison. =A0I found that ogg music fi=
les<br>&gt; =A0 =A0 =A0 =A0 play<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&=
gt;&gt; OK on my gaku player. =A0I think that should be good<br>
&gt; =A0 =A0 =A0 =A0 enough, but just for my information purposes<br>&gt; =
=A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt; can you help me understand how do=
es one accept the<br>&gt; =A0 =A0 =A0 =A0 commercial iirc license ?<br>&gt;=
 =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt; This has changed relatively recently=
, and I&#39;m not<br>
&gt; =A0 =A0 =A0 =A0 finding the details in<br>&gt; =A0 =A0 =A0 =A0 &gt; &g=
t;&gt;&gt;&gt; the current docs. For example, the gst-fluendo-mp3<br>&gt; =
=A0 =A0 =A0 =A0 recipe includes:<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&=
gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt; LICENSE_FLAGS =3D &quot;c=
ommercial&quot;<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt=
;&gt;&gt;&gt; Taking a look at the git logs with &quot;LICENSE_FLAGS&quot; =
in<br>&gt; =A0 =A0 =A0 =A0 them, in order to<br>&gt; =A0 =A0 =A0 =A0 &gt; &=
gt;&gt;&gt;&gt; allow for building of such recipes, you must include<br>
&gt; =A0 =A0 =A0 =A0 &quot;commercial&quot; in the<br>&gt; =A0 =A0 =A0 =A0 =
&gt; &gt;&gt;&gt;&gt; LICENSE_FLAGS_WHITELIST variable. I would attempt thi=
s<br>&gt; =A0 =A0 =A0 =A0 with something<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&=
gt;&gt;&gt; like the following in my local.conf:<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt=
;&gt;&gt;&gt; LICENSE_FLAGS_WHITELIST +=3D &quot;commercial&quot;<br>&gt; =
=A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;=
&gt;&gt; Tom, can you confirm I&#39;ve got this right?<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt=
;&gt;&gt; Yeah, that&#39;s right.<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;=
<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt; Tom<br>&gt; =A0 =A0 =A0 =A0 &gt;=
 &gt;&gt; I&#39;m interested in this subject also. =A0If I use hob to<br>
&gt; =A0 =A0 =A0 =A0 look at a nice<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt; d=
isplay of packages, I see that their are a lot of<br>&gt; =A0 =A0 =A0 =A0 g=
st-fluendo-*<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt; pckages with MPLv1.1 Lic=
enses. However, I don&#39;t see<br>
&gt; =A0 =A0 =A0 =A0 gst-fluendo-mp3<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt; =
specifically.<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt; =A0 =A0 =A0 1. Is that =
package not a part of Yocto and a recipe<br>&gt; =A0 =A0 =A0 =A0 has to be<=
br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt; =A0 =A0 =A0 =A0 =A0written to get it =
from somewhere?<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt; It is a part of yocto, it probably doesn&#39=
;t show up in HOB<br>&gt; =A0 =A0 =A0 =A0 because of the<br>&gt; =A0 =A0 =
=A0 =A0 &gt; &gt; restricted license (nothing has changed there, I guess<br=
>&gt; =A0 =A0 =A0 =A0 that also would<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt; have been the case before with COMMERCIAL_LI=
CENSE).<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;=
 Basically, the documentation hasn&#39;t caught up with the<br>&gt; =A0 =A0=
 =A0 =A0 change yet<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt; (actually it (COMMERC=
IAL_LICENSE) was never documented, we<br>
&gt; =A0 =A0 =A0 =A0 need to<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt; change that =
in any case).<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt=
; &gt; The current &#39;documentation&#39; for this, which I&#39;ll work wi=
th<br>&gt; =A0 =A0 =A0 =A0 Scott on<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt; adapting to the actual documentation, is in =
the text of<br>&gt; =A0 =A0 =A0 =A0 this poky<br>&gt; =A0 =A0 =A0 =A0 &gt; =
&gt; commit:<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt;=
 &gt; b68ea543603c35f4e3519d358e0d1e1e24bd5851<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt; and the se=
t of packages that were changed from<br>&gt; =A0 =A0 =A0 =A0 COMMERCIAL_LIC=
ENSE to<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt; LICENSE_FLAGS is here:<br>&gt; =
=A0 =A0 =A0 =A0 &gt; &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt; 7b81ef8d95d82c5=
5e3650981d3010000cd493832<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt; Tom<br>&gt=
; =A0 =A0 =A0 =A0 &gt; Okay, I found gst-fluendo-mp3 in the<br>&gt; =A0 =A0=
 =A0 =A0 meta-recipes-multimedia. So is<br>&gt; =A0 =A0 =A0 =A0 &gt; includ=
ing it the same as other packages you want in the<br>
&gt; =A0 =A0 =A0 =A0 image, putting<br>&gt; =A0 =A0 =A0 =A0 &gt; the follow=
ing statements in the local.conf:<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =
=A0 =A0 =A0 &gt; LICENSE_FLAGS_WHITELIST +=3D &quot;commercial&quot;<br>&gt=
; =A0 =A0 =A0 =A0 &gt; POKY_EXTRA_INSTALL +=3D &quot;gst-fluendo-mp3&quot;<=
br>
&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =
=A0 &gt; I would think that specifying the media player in the image<br>&gt=
; =A0 =A0 =A0 =A0 would bring in the dependent CODECs if the licenses were<=
br>&gt; =A0 =A0 =A0 =A0 right, but what do I know.<br>
&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt;<br>&gt;<br>&gt; =A0 =A0 =A0 =A0 Yes, that=
 LICENSE_FLAGS_WHITELIST line would allow<br>&gt; =A0 =A0 =A0 =A0 gst-fluen=
do-mp3 in,<br>&gt; =A0 =A0 =A0 =A0 and that in turn bring in its dependenci=
es.<br>&gt;<br>&gt; =A0 =A0 =A0 =A0 Tom<br>
&gt;<br>&gt; FYI, I got this working fine. I could create a playlist with .=
ogg,<br>&gt; mp3, m4a file types and all played. =A0I could not adjust the =
volume.<br>&gt;<br>&gt; Is there a mixer/volume app for Sato?<br>&gt;<br>
<br>Something like:<br><br># amixer set Master on<br># amixer set Master 75=
<br><br>has worked for me in the past...<br><br>Tom<br><br>&gt;<br>&gt; Jim=
 A<br>&gt;<br>&gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; Jim A<br>&gt; =A0 =A0 =A0 =
=A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>
&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt; =A0 =A0 =A0=
 1. I know I can get the fluendo MP3 for Ubuntu with<br>&gt; =A0 =A0 =A0 =
=A0 a<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt; =A0 =A0 =A0 =A0 =A0click-throug=
h license for personal use.<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt; S=
cott, once Tom confirms, this is a mechanism we need<br>
&gt; =A0 =A0 =A0 =A0 to get documented<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt=
;&gt;&gt; in the reference manual.<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt=
;&gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt; --<br>&gt; =A0 =A0 =A0 =
=A0 &gt; &gt;&gt;&gt;&gt; Darren<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt=
;&gt;&gt;&gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt; Thanks<br>&=
gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt; Rahul<br>&gt; =A0 =A0 =A0 =A0=
 &gt; &gt;&gt;&gt;&gt;&gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt=
; -----Original Message-----<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt; From: Darren Hart [mailto:<a=
 href=3D"mailto:dvhart@linux.intel.com">dvhart@linux.intel.com</a>]<br>&gt;=
 =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt; Sent: Wednesday, February 01, 20=
12 10:54 AM<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt; To: Saxena, Rahul<br>&gt; =
=A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt; Cc: <a href=3D"mailto:yocto@yocto=
project.org">yocto@yoctoproject.org</a><br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&g=
t;&gt;&gt;&gt; Subject: Re: [yocto] Gaku music player<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt;<br>&gt; =A0 =A0 =A0 =A0 &gt;=
 &gt;&gt;&gt;&gt;&gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt;<br>=
&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt; On 02/01/2012 09:57 AM, Saxe=
na, Rahul wrote:<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt;&gt; Hell=
o,<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>&gt; =A0 =A0 =A0 =A0 =
&gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;=
&gt;&gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt;&gt; What type of=
 music files is the Gaku music player on<br>
&gt; =A0 =A0 =A0 =A0 Sato desk top<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt=
;&gt;&gt;&gt; supposed to play ?<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&=
gt;&gt;&gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt;&gt; For me it=
 did not work with mp3 files..however it is<br>
&gt; =A0 =A0 =A0 =A0 playing the<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&=
gt;&gt;&gt; soundtrack from a .ogg video file<br>&gt; =A0 =A0 =A0 =A0 &gt; =
&gt;&gt;&gt;&gt;&gt; It depends on which licenses you allow (the gstreamer<=
br>&gt; =A0 =A0 =A0 =A0 mp3 plugin<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt; requires acceptance of the c=
ommercial license iirc).<br>&gt; =A0 =A0 =A0 =A0 Are you building on<br>&gt=
; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt; edison or master?<br>&gt; =A0 =
=A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt;&gt;&gt; --<br>&gt; =A0 =A0 =A0 =A0 &=
gt; &gt;&gt;&gt;&gt;&gt; Darren Hart<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&=
gt;&gt;&gt; Intel Open Source Technology Center<br>&gt; =A0 =A0 =A0 =A0 &gt=
; &gt;&gt;&gt;&gt;&gt; Yocto Project - Linux Kernel<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt; ____________________________________=
___________<br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt; yocto mailing list<br=
>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoprojec=
t.org">yocto@yoctoproject.org</a><br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt;&gt; <a href=3D"https://lists.yoctoprojec=
t.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/list=
info/yocto</a><br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt; ______________________=
_________________________<br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt; yocto mailing list<br>&gt; =A0 =A0 =A0 =
=A0 &gt; &gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproj=
ect.org</a><br>&gt; =A0 =A0 =A0 =A0 &gt; &gt;&gt; <a href=3D"https://lists.=
yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproje=
ct.org/listinfo/yocto</a><br>
&gt; =A0 =A0 =A0 =A0 &gt; &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt;<br>&gt;=
<br>&gt;<br>&gt;<br>&gt; _______________________________________________<br=
>&gt; yocto mailing list<br>&gt; <a href=3D"mailto:yocto@yoctoproject.org">=
yocto@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br><br><br>________=
_______________________________________<br>yocto mailing list<br><a href=3D=
"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br></div></div></blockqu=
ote></div><br>

--bcaec50164097385b104b8116f81--
