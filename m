Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C654E00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 14:42:17 -0800 (PST)
Received: by vbjk13 with SMTP id k13so3119378vbj.35
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2012 14:42:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=ck910vWUHLpQ54hlB3XKo+aLKNU81IgfQAW0AUbtZiY=;
	b=QgkrGAh7u/Aejon2me2EzQGTR8ceEM7RXNrLWZLVC64rcFvN28MtfWR7TZCrcHx1Bf
	1ryqXpzAcNz8FBL5J0F+UdEdqkCUGNckoRsCdPVTrP6a4LEVeDZdWldq1gK9XSVN2fIE
	a1FTYAEUDoj1+CGQgGMkwHeIFPS7KZ/Qd97ew=
MIME-Version: 1.0
Received: by 10.52.76.196 with SMTP id m4mr1914152vdw.112.1328222536347; Thu,
	02 Feb 2012 14:42:16 -0800 (PST)
Received: by 10.52.37.111 with HTTP; Thu, 2 Feb 2012 14:42:16 -0800 (PST)
In-Reply-To: <1328145634.2304.159.camel@elmorro>
References: <63ECFF2A2302B44093D7CE9E9962C49002A109@ORSMSX103.amr.corp.intel.com>
	<4F298A58.5030700@linux.intel.com>
	<63ECFF2A2302B44093D7CE9E9962C49002A3CC@ORSMSX103.amr.corp.intel.com>
	<4F29B248.4060202@linux.intel.com>
	<1328132827.2304.149.camel@elmorro> <4F29BF30.80808@gmail.com>
	<1328140929.2304.157.camel@elmorro> <4F29DF85.9040605@gmail.com>
	<1328145634.2304.159.camel@elmorro>
Date: Thu, 2 Feb 2012 17:42:16 -0500
Message-ID: <CANFv2Emx6kbdEwnWkkORp7h-vZovGSExUnn45JORZ56MuNeEfQ@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 02 Feb 2012 22:42:17 -0000
Content-Type: multipart/alternative; boundary=bcaec5015d07762e8a04b802e81b

--bcaec5015d07762e8a04b802e81b
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Feb 1, 2012 at 8:20 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:

> On Wed, 2012-02-01 at 19:57 -0500, jfabernathy wrote:
> > On 02/01/2012 07:02 PM, Tom Zanussi wrote:
> > > On Wed, 2012-02-01 at 17:39 -0500, jfabernathy wrote:
> > >> On 02/01/2012 04:47 PM, Tom Zanussi wrote:
> > >>> On Wed, 2012-02-01 at 13:44 -0800, Darren Hart wrote:
> > >>>> On 02/01/2012 01:36 PM, Saxena, Rahul wrote:
> > >>>>> Hi Darren,
> > >>>>>
> > >>>>> Thanks for the clarification.
> > >>>>>
> > >>>>> I am building on Edison.  I found that ogg music files play
> > >>>>> OK on my gaku player.  I think that should be good enough, but
> just for my information purposes
> > >>>>> can you help me understand how does one accept the commercial iirc
> license ?
> > >>>> This has changed relatively recently, and I'm not finding the
> details in
> > >>>> the current docs. For example, the gst-fluendo-mp3 recipe includes:
> > >>>>
> > >>>> LICENSE_FLAGS = "commercial"
> > >>>>
> > >>>> Taking a look at the git logs with "LICENSE_FLAGS" in them, in
> order to
> > >>>> allow for building of such recipes, you must include "commercial"
> in the
> > >>>> LICENSE_FLAGS_WHITELIST variable. I would attempt this with
> something
> > >>>> like the following in my local.conf:
> > >>>>
> > >>>> LICENSE_FLAGS_WHITELIST += "commercial"
> > >>>>
> > >>>> Tom, can you confirm I've got this right?
> > >>>>
> > >>> Yeah, that's right.
> > >>>
> > >>> Tom
> > >> I'm interested in this subject also.  If I use hob to look at a nice
> > >> display of packages, I see that their are a lot of gst-fluendo-*
> > >> pckages with MPLv1.1 Licenses. However, I don't see gst-fluendo-mp3
> > >> specifically.
> > >>       1. Is that package not a part of Yocto and a recipe has to be
> > >>          written to get it from somewhere?
> > > It is a part of yocto, it probably doesn't show up in HOB because of
> the
> > > restricted license (nothing has changed there, I guess that also would
> > > have been the case before with COMMERCIAL_LICENSE).
> > >
> > > Basically, the documentation hasn't caught up with the change yet
> > > (actually it (COMMERCIAL_LICENSE) was never documented, we need to
> > > change that in any case).
> > >
> > > The current 'documentation' for this, which I'll work with Scott on
> > > adapting to the actual documentation, is in the text of this poky
> > > commit:
> > >
> > > b68ea543603c35f4e3519d358e0d1e1e24bd5851
> > >
> > > and the set of packages that were changed from COMMERCIAL_LICENSE to
> > > LICENSE_FLAGS is here:
> > >
> > > 7b81ef8d95d82c55e3650981d3010000cd493832
> > >
> > > Tom
> > Okay, I found gst-fluendo-mp3 in the meta-recipes-multimedia. So is
> > including it the same as other packages you want in the image, putting
> > the following statements in the local.conf:
> >
> > LICENSE_FLAGS_WHITELIST += "commercial"
> > POKY_EXTRA_INSTALL += "gst-fluendo-mp3"
> >
> >
> > I would think that specifying the media player in the image would bring
> in the dependent CODECs if the licenses were right, but what do I know.
> >
>
> Yes, that LICENSE_FLAGS_WHITELIST line would allow gst-fluendo-mp3 in,
> and that in turn bring in its dependencies.
>
> Tom
>

FYI, I got this working fine. I could create a playlist with .ogg, mp3, m4a
file types and all played.  I could not adjust the volume.

Is there a mixer/volume app for Sato?

Jim A

> Jim A
> >
> >
> >
> > >>       1. I know I can get the fluendo MP3 for Ubuntu with a
> > >>          click-through license for personal use.
> > >>>> Scott, once Tom confirms, this is a mechanism we need to get
> documented
> > >>>> in the reference manual.
> > >>>>
> > >>>> --
> > >>>> Darren
> > >>>>
> > >>>>
> > >>>>> Thanks
> > >>>>> Rahul
> > >>>>>
> > >>>>> -----Original Message-----
> > >>>>> From: Darren Hart [mailto:dvhart@linux.intel.com]
> > >>>>> Sent: Wednesday, February 01, 2012 10:54 AM
> > >>>>> To: Saxena, Rahul
> > >>>>> Cc: yocto@yoctoproject.org
> > >>>>> Subject: Re: [yocto] Gaku music player
> > >>>>>
> > >>>>>
> > >>>>>
> > >>>>> On 02/01/2012 09:57 AM, Saxena, Rahul wrote:
> > >>>>>> Hello,
> > >>>>>>
> > >>>>>>
> > >>>>>>
> > >>>>>> What type of music files is the Gaku music player on Sato desk top
> > >>>>>> supposed to play ?
> > >>>>>>
> > >>>>>> For me it did not work with mp3 files..however it is playing the
> > >>>>>> soundtrack from a .ogg video file
> > >>>>> It depends on which licenses you allow (the gstreamer mp3 plugin
> > >>>>> requires acceptance of the commercial license iirc). Are you
> building on
> > >>>>> edison or master?
> > >>>>>
> > >>>>> --
> > >>>>> Darren Hart
> > >>>>> Intel Open Source Technology Center
> > >>>>> Yocto Project - Linux Kernel
> > >>> _______________________________________________
> > >>> yocto mailing list
> > >>> yocto@yoctoproject.org
> > >>> https://lists.yoctoproject.org/listinfo/yocto
> > >> _______________________________________________
> > >> yocto mailing list
> > >> yocto@yoctoproject.org
> > >> https://lists.yoctoproject.org/listinfo/yocto
> > >
> >
>
>
>

--bcaec5015d07762e8a04b802e81b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Wed, Feb 1, 2012 at 8:20 PM, Tom Zanu=
ssi <span dir=3D"ltr">&lt;<a href=3D"mailto:tom.zanussi@intel.com">tom.zanu=
ssi@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">On Wed, 2012-02-01 at 19:57 -0500, =
jfabernathy wrote:<br>
&gt; On 02/01/2012 07:02 PM, Tom Zanussi wrote:<br>
&gt; &gt; On Wed, 2012-02-01 at 17:39 -0500, jfabernathy wrote:<br>
&gt; &gt;&gt; On 02/01/2012 04:47 PM, Tom Zanussi wrote:<br>
&gt; &gt;&gt;&gt; On Wed, 2012-02-01 at 13:44 -0800, Darren Hart wrote:<br>
&gt; &gt;&gt;&gt;&gt; On 02/01/2012 01:36 PM, Saxena, Rahul wrote:<br>
&gt; &gt;&gt;&gt;&gt;&gt; Hi Darren,<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; Thanks for the clarification.<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; I am building on Edison. =A0I found that ogg musi=
c files play<br>
&gt; &gt;&gt;&gt;&gt;&gt; OK on my gaku player. =A0I think that should be g=
ood enough, but just for my information purposes<br>
&gt; &gt;&gt;&gt;&gt;&gt; can you help me understand how does one accept th=
e commercial iirc license ?<br>
&gt; &gt;&gt;&gt;&gt; This has changed relatively recently, and I&#39;m not=
 finding the details in<br>
&gt; &gt;&gt;&gt;&gt; the current docs. For example, the gst-fluendo-mp3 re=
cipe includes:<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; LICENSE_FLAGS =3D &quot;commercial&quot;<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; Taking a look at the git logs with &quot;LICENSE_FLAG=
S&quot; in them, in order to<br>
&gt; &gt;&gt;&gt;&gt; allow for building of such recipes, you must include =
&quot;commercial&quot; in the<br>
&gt; &gt;&gt;&gt;&gt; LICENSE_FLAGS_WHITELIST variable. I would attempt thi=
s with something<br>
&gt; &gt;&gt;&gt;&gt; like the following in my local.conf:<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; LICENSE_FLAGS_WHITELIST +=3D &quot;commercial&quot;<b=
r>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; Tom, can you confirm I&#39;ve got this right?<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; Yeah, that&#39;s right.<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; Tom<br>
&gt; &gt;&gt; I&#39;m interested in this subject also. =A0If I use hob to l=
ook at a nice<br>
&gt; &gt;&gt; display of packages, I see that their are a lot of gst-fluend=
o-*<br>
&gt; &gt;&gt; pckages with MPLv1.1 Licenses. However, I don&#39;t see gst-f=
luendo-mp3<br>
&gt; &gt;&gt; specifically.<br>
&gt; &gt;&gt; =A0 =A0 =A0 1. Is that package not a part of Yocto and a reci=
pe has to be<br>
&gt; &gt;&gt; =A0 =A0 =A0 =A0 =A0written to get it from somewhere?<br>
&gt; &gt; It is a part of yocto, it probably doesn&#39;t show up in HOB bec=
ause of the<br>
&gt; &gt; restricted license (nothing has changed there, I guess that also =
would<br>
&gt; &gt; have been the case before with COMMERCIAL_LICENSE).<br>
&gt; &gt;<br>
&gt; &gt; Basically, the documentation hasn&#39;t caught up with the change=
 yet<br>
&gt; &gt; (actually it (COMMERCIAL_LICENSE) was never documented, we need t=
o<br>
&gt; &gt; change that in any case).<br>
&gt; &gt;<br>
&gt; &gt; The current &#39;documentation&#39; for this, which I&#39;ll work=
 with Scott on<br>
&gt; &gt; adapting to the actual documentation, is in the text of this poky=
<br>
&gt; &gt; commit:<br>
&gt; &gt;<br>
&gt; &gt; b68ea543603c35f4e3519d358e0d1e1e24bd5851<br>
&gt; &gt;<br>
&gt; &gt; and the set of packages that were changed from COMMERCIAL_LICENSE=
 to<br>
&gt; &gt; LICENSE_FLAGS is here:<br>
&gt; &gt;<br>
&gt; &gt; 7b81ef8d95d82c55e3650981d3010000cd493832<br>
&gt; &gt;<br>
&gt; &gt; Tom<br>
&gt; Okay, I found gst-fluendo-mp3 in the meta-recipes-multimedia. So is<br=
>
&gt; including it the same as other packages you want in the image, putting=
<br>
&gt; the following statements in the local.conf:<br>
&gt;<br>
&gt; LICENSE_FLAGS_WHITELIST +=3D &quot;commercial&quot;<br>
&gt; POKY_EXTRA_INSTALL +=3D &quot;gst-fluendo-mp3&quot;<br>
&gt;<br>
&gt;<br>
&gt; I would think that specifying the media player in the image would brin=
g in the dependent CODECs if the licenses were right, but what do I know.<b=
r>
&gt;<br>
<br>
</div></div>Yes, that LICENSE_FLAGS_WHITELIST line would allow gst-fluendo-=
mp3 in,<br>
and that in turn bring in its dependencies.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Tom<br></font></span></blockquote><div>=A0</div><div>FYI, I got this workin=
g fine. I could create a playlist with .ogg, mp3, m4a file types and all pl=
ayed.=A0 I could not adjust the volume.=A0 <br><br>Is there a mixer/volume =
app for Sato?<br>
</div><div><br>Jim A<br><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">
&gt; Jim A<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; &gt;&gt; =A0 =A0 =A0 1. I know I can get the fluendo MP3 for Ubuntu wi=
th a<br>
&gt; &gt;&gt; =A0 =A0 =A0 =A0 =A0click-through license for personal use.<br=
>
&gt; &gt;&gt;&gt;&gt; Scott, once Tom confirms, this is a mechanism we need=
 to get documented<br>
&gt; &gt;&gt;&gt;&gt; in the reference manual.<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; --<br>
&gt; &gt;&gt;&gt;&gt; Darren<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; Thanks<br>
&gt; &gt;&gt;&gt;&gt;&gt; Rahul<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; -----Original Message-----<br>
&gt; &gt;&gt;&gt;&gt;&gt; From: Darren Hart [mailto:<a href=3D"mailto:dvhar=
t@linux.intel.com">dvhart@linux.intel.com</a>]<br>
&gt; &gt;&gt;&gt;&gt;&gt; Sent: Wednesday, February 01, 2012 10:54 AM<br>
&gt; &gt;&gt;&gt;&gt;&gt; To: Saxena, Rahul<br>
&gt; &gt;&gt;&gt;&gt;&gt; Cc: <a href=3D"mailto:yocto@yoctoproject.org">yoc=
to@yoctoproject.org</a><br>
&gt; &gt;&gt;&gt;&gt;&gt; Subject: Re: [yocto] Gaku music player<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; On 02/01/2012 09:57 AM, Saxena, Rahul wrote:<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt; Hello,<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt; What type of music files is the Gaku music pl=
ayer on Sato desk top<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt; supposed to play ?<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt; For me it did not work with mp3 files..howeve=
r it is playing the<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt; soundtrack from a .ogg video file<br>
&gt; &gt;&gt;&gt;&gt;&gt; It depends on which licenses you allow (the gstre=
amer mp3 plugin<br>
&gt; &gt;&gt;&gt;&gt;&gt; requires acceptance of the commercial license iir=
c). Are you building on<br>
&gt; &gt;&gt;&gt;&gt;&gt; edison or master?<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; --<br>
&gt; &gt;&gt;&gt;&gt;&gt; Darren Hart<br>
&gt; &gt;&gt;&gt;&gt;&gt; Intel Open Source Technology Center<br>
&gt; &gt;&gt;&gt;&gt;&gt; Yocto Project - Linux Kernel<br>
&gt; &gt;&gt;&gt; _______________________________________________<br>
&gt; &gt;&gt;&gt; yocto mailing list<br>
&gt; &gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproj=
ect.org</a><br>
&gt; &gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &gt;&gt; _______________________________________________<br>
&gt; &gt;&gt; yocto mailing list<br>
&gt; &gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a><br>
&gt; &gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" tar=
get=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &gt;<br>
&gt;<br>
<br>
<br>
</div></div></blockquote></div><br>

--bcaec5015d07762e8a04b802e81b--
