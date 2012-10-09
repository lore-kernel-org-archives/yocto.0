Return-Path: <jfabernathy@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2DF0E00346
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 06:40:13 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id x4so5871089obh.35
	for <yocto@yoctoproject.org>; Tue, 09 Oct 2012 06:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=4AEYR5F4tHVTJuIi5tHmdGx7oC5jTf9IMbm8EZX1XLo=;
	b=Vw3ZJSXv4E18m44kwnGwV67xXGTCGYeACm/mb6TxwD211zMgZo+8e5QvlcG/IRz4HY
	L3cGkwM+yTJ8hIwLQJsqPyUMXfCkU2t/FCjkbBd/Kc4Is+QvADqTAO0w5bSfUNj3PWk9
	17OHANpiCFQmF3CtXPrXQZ24s3Qe8h9KrrBJqsMVqpOJMW5a9EzObVjuQpAxNDHd0rrt
	ueW/rY6NtXU383xIu07Rzk6Q1tFm1RzHXik5JzQDddra9+XPTwl8otRWtvJ2YFwhuKGh
	GQ8nSM5sI4K+a8p6b+7iJxdT/KAK70IdagzWHDZRTsKG0pQxId3YaRiPUyKlx5jUY8ea
	TAuw==
MIME-Version: 1.0
Received: by 10.182.216.71 with SMTP id oo7mr2817494obc.70.1349790010801; Tue,
	09 Oct 2012 06:40:10 -0700 (PDT)
Received: by 10.76.143.225 with HTTP; Tue, 9 Oct 2012 06:40:10 -0700 (PDT)
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C49003CD3284@ORSMSX107.amr.corp.intel.com>
References: <443D93B8-DA6A-40DD-854F-7007FE63854C@keylevel.com>
	<63ECFF2A2302B44093D7CE9E9962C49003CD2F97@ORSMSX107.amr.corp.intel.com>
	<E413C1D3-D599-437C-A1ED-8A57DAC3E8D3@keylevel.com>
	<CADkTA4NAnqoBBzHkWNErMr2J=0p1xdSVocSpFCMLkV_8ztrwPg@mail.gmail.com>
	<4ED03A84-C184-4A15-BB50-B83AEE211BB4@keylevel.com>
	<CADkTA4Oecym=XyX13qosTD634MkfKfO1PYi=Pzp5kWtPLSdd2w@mail.gmail.com>
	<63ECFF2A2302B44093D7CE9E9962C49003CD3284@ORSMSX107.amr.corp.intel.com>
Date: Tue, 9 Oct 2012 09:40:10 -0400
Message-ID: <CANFv2E=5y1cfiZNmKR6FhOZbebeHDZw3y7ZwJ1MhFpK618YWwQ@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Meta Intel / Cedartrail / Denzil - how to get unionfs in the kernel
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
X-List-Received-Date: Tue, 09 Oct 2012 13:40:14 -0000
Content-Type: multipart/alternative; boundary=f46d044785c71d7f8b04cba07a3f

--f46d044785c71d7f8b04cba07a3f
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Oct 8, 2012 at 12:28 PM, Saxena, Rahul <rahul.saxena@intel.com>wrote:

>
>
> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]
> Sent: Monday, October 08, 2012 7:00 AM
> To: Chris Tapp
> Cc: Saxena, Rahul; yocto@yoctoproject.org Project
> Subject: Re: [yocto] Meta Intel / Cedartrail / Denzil - how to get unionfs
> in the kernel
>
> On Mon, Oct 8, 2012 at 3:58 AM, Chris Tapp <opensource@keylevel.com>
> wrote:
> > On 7 Oct 2012, at 22:41, Bruce Ashfield wrote:
> >
> >> On Sun, Oct 7, 2012 at 6:08 PM, Chris Tapp <opensource@keylevel.com>
> wrote:
> >>> On 7 Oct 2012, at 03:00, Saxena, Rahul wrote:
> >>>
> >>>> Try adding the unionfs feature (below) to your kernel:
> >>>>
> >>>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/tree/meta
> >>>> /cfg/kernel-cache/features/unionfs?h=meta
> >>>>
> >>>> create a file my_cedartrail.scc with following line:
> >>>> include features/unionfs/unionfs.scc
> >>>>
> >>>> put this file in a dir linux-yocto, the dir being created in
> >>>>
> >>>> meta-cedartrail/recipes-kernel/linux
> >>>>
> >>>> add following line in
> >>>> meta-cedartrail/recipes-kernel/Linux/linux-yocto_3.0.bbappend
> >>>>
> >>>> SRC_URI +="file://my_cedartrail.scc"
> >>>
> >>> Thanks - I thought just running 'menuconfig' would allow me to enable
> it (for a quick test).
> >>>
> >>> However, this still doesn't seem to be working. I can see that
> 'my_cedartrail.scc' gets fetched in to the build area, but I still don't
> see CONFIG_UNION_FS if I run 'menuconfig'. There is also no 'unionfs'
> folder in fs/ of the build tree.
> >>>
> >>> Also, if I specify an invalid feature (e.g.
> feature2/unionfs/unionfs.scc) I'm not seeing any diagnostic.
> >>
> >> unionfs was never merged to the 3.0 kernel, I re-added it to the
> >> development trees for 3.2 and the 3.4 kernel (aufs for the 3.6 tree
> >> at the moment). The meta data is carried forward from the older
> >> kernels as a placeholder and is documented in the .scc file itself:
> >>
> >> -----------------------
> >> kconf non-hardware unionfs.cfg
> >>
> >> # commented pending update to a newer version ported to 2.6.35+ #
> >> patch unionfs-2.5.4-integration.patch
> >> -----------------------
> >>
> >> So to get unionfs in the 3.0 kernel, we'd need a port .. but since
> >> we've moved on quite a bit past 3.0, I don't know of any pending
> >> ports myself.
> >
> > Thanks Bruce.
> >
> > I guess I need to ask the Intel guys if there are any plans to move
> Cedartrail on from 3.0 ?
>
> It will have to happen post yocto 1.3 (as far as I know), since the
> 3.0 kernel will be
> dropped at that point.
>
> For the short term, it's likely easier to backport/update unionfs than it
> would be to update the BSP .. but I can't speak for the time to be spent
> doing it :)
>
> Cheers,
>
> Bruce
>
>
> Chris,
>
> There are no plans to port Cedartrail BSP to support any other Kernel
> other than 3.0. The reason is that
> the Cedartrail PVR Graphics driver is supported only for 3.0 kernel.
>
> Rahul
>
>
It may not solve the 3.0 problem for CDV and Yocto, but I noticed that
Ubuntu 12.04.1 with the 3.2 kernel supports the PVR driver on it's 3.2.0
kernel.  I've only tested it successfully on an All-In-One with LVDS off of
an eDP to LVDS converter used on the DN2800MT motherboard.

Jim A


>  >
> >> Cheers,
> >>
> >> Bruce
> >>
> >>>
> >>>>
> >>>> -----Original Message-----
> >>>> From: yocto-bounces@yoctoproject.org
> >>>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Chris Tapp
> >>>> Sent: Saturday, October 06, 2012 5:43 PM
> >>>> To: yocto@yoctoproject.org Project
> >>>> Subject: [yocto] Meta Intel / Cedartrail / Denzil - how to get
> >>>> unionfs in the kernel
> >>>>
> >>>> I' trying to enable unionfs in the 3.0.32 kernel for the cedartrail
> BSP under Denzil 7.0.1.
> >>>>
> >>>> However, the CONFIG_UNION_FS config flag isn't in the .config ...
> >>>>
> >>>> Is there something else I need to enable, or do I need to find
> another way?
> >>>>
> >>>> Chris Tapp
> >>>>
> >>>> opensource@keylevel.com
> >>>> www.keylevel.com
> >>>>
> >>>>
> >>>>
> >>>> _______________________________________________
> >>>> yocto mailing list
> >>>> yocto@yoctoproject.org
> >>>> https://lists.yoctoproject.org/listinfo/yocto
> >>>
> >>> Chris Tapp
> >>>
> >>> opensource@keylevel.com
> >>> www.keylevel.com
> >>>
> >>>
> >>>
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >>
> >>
> >> --
> >> "Thou shalt not follow the NULL pointer, for chaos and madness await
> >> thee at its end"
> >
> > Chris Tapp
> >
> > opensource@keylevel.com
> > www.keylevel.com
> >
> >
> >
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee
> at its end"
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f46d044785c71d7f8b04cba07a3f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">On Mon, Oct 8, 2012 at 12:28 PM, Saxena, Rahul <=
span dir=3D"ltr">&lt;<a href=3D"mailto:rahul.saxena@intel.com" target=3D"_b=
lank">rahul.saxena@intel.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"HOEnZb">
<div class=3D"h5"><br><br>-----Original Message-----<br>From: Bruce Ashfiel=
d [mailto:<a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfield@gmail.=
com</a>]<br>Sent: Monday, October 08, 2012 7:00 AM<br>To: Chris Tapp<br>Cc:=
 Saxena, Rahul; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoprojec=
t.org</a> Project<br>
Subject: Re: [yocto] Meta Intel / Cedartrail / Denzil - how to get unionfs =
in the kernel<br><br>On Mon, Oct 8, 2012 at 3:58 AM, Chris Tapp &lt;<a href=
=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a>&gt; wrote:<=
br>
&gt; On 7 Oct 2012, at 22:41, Bruce Ashfield wrote:<br>&gt;<br>&gt;&gt; On =
Sun, Oct 7, 2012 at 6:08 PM, Chris Tapp &lt;<a href=3D"mailto:opensource@ke=
ylevel.com">opensource@keylevel.com</a>&gt; wrote:<br>&gt;&gt;&gt; On 7 Oct=
 2012, at 03:00, Saxena, Rahul wrote:<br>
&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; Try adding the unionfs feature (below) to =
your kernel:<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; <a href=3D"http://git.=
yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/tree/meta" target=3D"_blank"=
>http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/tree/meta</a><br=
>
&gt;&gt;&gt;&gt; /cfg/kernel-cache/features/unionfs?h=3Dmeta<br>&gt;&gt;&gt=
;&gt;<br>&gt;&gt;&gt;&gt; create a file my_cedartrail.scc with following li=
ne:<br>&gt;&gt;&gt;&gt; include features/unionfs/unionfs.scc<br>&gt;&gt;&gt=
;&gt;<br>
&gt;&gt;&gt;&gt; put this file in a dir linux-yocto, the dir being created =
in<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; meta-cedartrail/recipes-kernel/l=
inux<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; add following line in<br>&gt;&=
gt;&gt;&gt; meta-cedartrail/recipes-kernel/Linux/linux-yocto_3.0.bbappend<b=
r>
&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; SRC_URI +=3D&quot;file://my_cedartrail=
.scc&quot;<br>&gt;&gt;&gt;<br>&gt;&gt;&gt; Thanks - I thought just running =
&#39;menuconfig&#39; would allow me to enable it (for a quick test).<br>&gt=
;&gt;&gt;<br>
&gt;&gt;&gt; However, this still doesn&#39;t seem to be working. I can see =
that &#39;my_cedartrail.scc&#39; gets fetched in to the build area, but I s=
till don&#39;t see CONFIG_UNION_FS if I run &#39;menuconfig&#39;. There is =
also no &#39;unionfs&#39; folder in fs/ of the build tree.<br>
&gt;&gt;&gt;<br>&gt;&gt;&gt; Also, if I specify an invalid feature (e.g. fe=
ature2/unionfs/unionfs.scc) I&#39;m not seeing any diagnostic.<br>&gt;&gt;<=
br>&gt;&gt; unionfs was never merged to the 3.0 kernel, I re-added it to th=
e<br>
&gt;&gt; development trees for 3.2 and the 3.4 kernel (aufs for the 3.6 tre=
e<br>&gt;&gt; at the moment). The meta data is carried forward from the old=
er<br>&gt;&gt; kernels as a placeholder and is documented in the .scc file =
itself:<br>
&gt;&gt;<br>&gt;&gt; -----------------------<br>&gt;&gt; kconf non-hardware=
 unionfs.cfg<br>&gt;&gt;<br>&gt;&gt; # commented pending update to a newer =
version ported to 2.6.35+ #<br>&gt;&gt; patch unionfs-2.5.4-integration.pat=
ch<br>
&gt;&gt; -----------------------<br>&gt;&gt;<br>&gt;&gt; So to get unionfs =
in the 3.0 kernel, we&#39;d need a port .. but since<br>&gt;&gt; we&#39;ve =
moved on quite a bit past 3.0, I don&#39;t know of any pending<br>&gt;&gt; =
ports myself.<br>
&gt;<br>&gt; Thanks Bruce.<br>&gt;<br>&gt; I guess I need to ask the Intel =
guys if there are any plans to move Cedartrail on from 3.0 ?<br><br>It will=
 have to happen post yocto 1.3 (as far as I know), since the<br>3.0 kernel =
will be<br>
dropped at that point.<br><br>For the short term, it&#39;s likely easier to=
 backport/update unionfs than it would be to update the BSP .. but I can&#3=
9;t speak for the time to be spent doing it :)<br><br>Cheers,<br><br>Bruce<=
br>
<br><br></div></div>Chris,<br><br>There are no plans to port Cedartrail BSP=
 to support any other Kernel other than 3.0. The reason is that<br>the Ceda=
rtrail PVR Graphics driver is supported only for 3.0 kernel.<br><span class=
=3D"HOEnZb"><font color=3D"#888888"><br>
Rahul<br></font></span>
<div class=3D"HOEnZb">
<div class=3D"h5"><br></div></div></blockquote>
<div>=A0</div>
<div>It may not solve the 3.0 problem for CDV and Yocto, but I noticed that=
 Ubuntu 12.04.1 with the 3.2 kernel supports the PVR driver on it&#39;s 3.2=
.0 kernel.=A0 I&#39;ve only tested it successfully on an All-In-One with LV=
DS off of an eDP to LVDS converter used on the DN2800MT motherboard.</div>

<div>=A0</div>
<div>Jim A</div>
<div>=A0</div>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"HOEnZb">
<div class=3D"h5">&gt;<br>&gt;&gt; Cheers,<br>&gt;&gt;<br>&gt;&gt; Bruce<br=
>&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; -----Orig=
inal Message-----<br>&gt;&gt;&gt;&gt; From: <a href=3D"mailto:yocto-bounces=
@yoctoproject.org">yocto-bounces@yoctoproject.org</a><br>
&gt;&gt;&gt;&gt; [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">=
yocto-bounces@yoctoproject.org</a>] On Behalf Of Chris Tapp<br>&gt;&gt;&gt;=
&gt; Sent: Saturday, October 06, 2012 5:43 PM<br>&gt;&gt;&gt;&gt; To: <a hr=
ef=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> Project<br>
&gt;&gt;&gt;&gt; Subject: [yocto] Meta Intel / Cedartrail / Denzil - how to=
 get<br>&gt;&gt;&gt;&gt; unionfs in the kernel<br>&gt;&gt;&gt;&gt;<br>&gt;&=
gt;&gt;&gt; I&#39; trying to enable unionfs in the 3.0.32 kernel for the ce=
dartrail BSP under Denzil 7.0.1.<br>
&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; However, the CONFIG_UNION_FS config fl=
ag isn&#39;t in the .config ...<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; Is =
there something else I need to enable, or do I need to find another way?<br=
>
&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; Chris Tapp<br>&gt;&gt;&gt;&gt;<br>&gt;=
&gt;&gt;&gt; <a href=3D"mailto:opensource@keylevel.com">opensource@keylevel=
.com</a><br>&gt;&gt;&gt;&gt; <a href=3D"http://www.keylevel.com/" target=3D=
"_blank">www.keylevel.com</a><br>
&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt=
; _______________________________________________<br>&gt;&gt;&gt;&gt; yocto=
 mailing list<br>&gt;&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org"=
>yocto@yoctoproject.org</a><br>
&gt;&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>&gt;=
&gt;&gt;<br>&gt;&gt;&gt; Chris Tapp<br>&gt;&gt;&gt;<br>&gt;&gt;&gt; <a href=
=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a><br>
&gt;&gt;&gt; <a href=3D"http://www.keylevel.com/" target=3D"_blank">www.key=
level.com</a><br>&gt;&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&gt;&g=
t; _______________________________________________<br>&gt;&gt;&gt; yocto ma=
iling list<br>
&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.o=
rg</a><br>&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/y=
octo" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><b=
r>
&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt; --<br>&gt;&gt; &quot;Thou shal=
t not follow the NULL pointer, for chaos and madness await<br>&gt;&gt; thee=
 at its end&quot;<br>&gt;<br>&gt; Chris Tapp<br>&gt;<br>&gt; <a href=3D"mai=
lto:opensource@keylevel.com">opensource@keylevel.com</a><br>
&gt; <a href=3D"http://www.keylevel.com/" target=3D"_blank">www.keylevel.co=
m</a><br>&gt;<br>&gt;<br>&gt;<br><br><br><br>--<br>&quot;Thou shalt not fol=
low the NULL pointer, for chaos and madness await thee at its end&quot;<br>
_______________________________________________<br>yocto mailing list<br><a=
 href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><a hr=
ef=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">http=
s://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br>

--f46d044785c71d7f8b04cba07a3f--
