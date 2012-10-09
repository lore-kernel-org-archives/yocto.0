Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64FA1E00293
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 13:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=WEk9oIhCKMDRQAhAVqHQLDiYhBrz4TlHXoeLcHbUL0M=; 
	b=CzkwMLxRzBdxSbBOUPiVoY2s6AwbxHM8RdcyQU/nAUw+OMPzQ5M0/siI/SopaMky9ufdIz+U+7ZzEIi2U75WNTQi5Lw7E9cEJ5GI/Hprlf+YzFYIpELfZ+uZ98UlM1PQ;
Received: from [109.224.129.17] (port=39053
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.77)
	(envelope-from <opensource@keylevel.com>)
	id 1TLgEb-0002tQ-Py; Tue, 09 Oct 2012 21:16:58 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CANFv2E=5y1cfiZNmKR6FhOZbebeHDZw3y7ZwJ1MhFpK618YWwQ@mail.gmail.com>
Date: Tue, 9 Oct 2012 21:16:55 +0100
Message-Id: <F36E1F7D-85E1-437E-BD73-EF257C8D859B@keylevel.com>
References: <443D93B8-DA6A-40DD-854F-7007FE63854C@keylevel.com>
	<63ECFF2A2302B44093D7CE9E9962C49003CD2F97@ORSMSX107.amr.corp.intel.com>
	<E413C1D3-D599-437C-A1ED-8A57DAC3E8D3@keylevel.com>
	<CADkTA4NAnqoBBzHkWNErMr2J=0p1xdSVocSpFCMLkV_8ztrwPg@mail.gmail.com>
	<4ED03A84-C184-4A15-BB50-B83AEE211BB4@keylevel.com>
	<CADkTA4Oecym=XyX13qosTD634MkfKfO1PYi=Pzp5kWtPLSdd2w@mail.gmail.com>
	<63ECFF2A2302B44093D7CE9E9962C49003CD3284@ORSMSX107.amr.corp.intel.com>
	<CANFv2E=5y1cfiZNmKR6FhOZbebeHDZw3y7ZwJ1MhFpK618YWwQ@mail.gmail.com>
To: James Abernathy <jfabernathy@gmail.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
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
X-List-Received-Date: Tue, 09 Oct 2012 20:17:14 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E5D509ED-3B58-4EF5-9F37-549012D7D1F6"

--Apple-Mail=_E5D509ED-3B58-4EF5-9F37-549012D7D1F6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

On 9 Oct 2012, at 14:40, James Abernathy wrote:

>=20
>=20
> On Mon, Oct 8, 2012 at 12:28 PM, Saxena, Rahul =
<rahul.saxena@intel.com> wrote:
>=20
>=20
> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]
> Sent: Monday, October 08, 2012 7:00 AM
> To: Chris Tapp
> Cc: Saxena, Rahul; yocto@yoctoproject.org Project
> Subject: Re: [yocto] Meta Intel / Cedartrail / Denzil - how to get =
unionfs in the kernel
>=20
> On Mon, Oct 8, 2012 at 3:58 AM, Chris Tapp <opensource@keylevel.com> =
wrote:
> > On 7 Oct 2012, at 22:41, Bruce Ashfield wrote:
> >
> >> On Sun, Oct 7, 2012 at 6:08 PM, Chris Tapp =
<opensource@keylevel.com> wrote:
> >>> On 7 Oct 2012, at 03:00, Saxena, Rahul wrote:
> >>>
> >>>> Try adding the unionfs feature (below) to your kernel:
> >>>>
> >>>> =
http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/tree/meta
> >>>> /cfg/kernel-cache/features/unionfs?h=3Dmeta
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
> >>>> SRC_URI +=3D"file://my_cedartrail.scc"
> >>>
> >>> Thanks - I thought just running 'menuconfig' would allow me to =
enable it (for a quick test).
> >>>
> >>> However, this still doesn't seem to be working. I can see that =
'my_cedartrail.scc' gets fetched in to the build area, but I still don't =
see CONFIG_UNION_FS if I run 'menuconfig'. There is also no 'unionfs' =
folder in fs/ of the build tree.
> >>>
> >>> Also, if I specify an invalid feature (e.g. =
feature2/unionfs/unionfs.scc) I'm not seeing any diagnostic.
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
> > I guess I need to ask the Intel guys if there are any plans to move =
Cedartrail on from 3.0 ?
>=20
> It will have to happen post yocto 1.3 (as far as I know), since the
> 3.0 kernel will be
> dropped at that point.
>=20
> For the short term, it's likely easier to backport/update unionfs than =
it would be to update the BSP .. but I can't speak for the time to be =
spent doing it :)
>=20
> Cheers,
>=20
> Bruce
>=20
>=20
> Chris,
>=20
> There are no plans to port Cedartrail BSP to support any other Kernel =
other than 3.0. The reason is that
> the Cedartrail PVR Graphics driver is supported only for 3.0 kernel.
>=20
> Rahul
>=20
> =20
> It may not solve the 3.0 problem for CDV and Yocto, but I noticed that =
Ubuntu 12.04.1 with the 3.2 kernel supports the PVR driver on it's 3.2.0 =
kernel.  I've only tested it successfully on an All-In-One with LVDS off =
of an eDP to LVDS converter used on the DN2800MT motherboard.

Interesting - that's the same board as I'm using. It would be worth =
seeing what happens. I've had a look at the bbappend for 3.2 that =
Kishore posted and compared it with the standard one for 3.0. I think it =
'just' needs a new meta data branch before I can try a build with pvr. I =
guess this will need to be a new branch and not an existing one?

> =20
> Jim A
> =20
> >
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
> >>>> I' trying to enable unionfs in the 3.0.32 kernel for the =
cedartrail BSP under Denzil 7.0.1.
> >>>>
> >>>> However, the CONFIG_UNION_FS config flag isn't in the .config ...
> >>>>
> >>>> Is there something else I need to enable, or do I need to find =
another way?
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
> >> "Thou shalt not follow the NULL pointer, for chaos and madness =
await
> >> thee at its end"
> >
> > Chris Tapp
> >
> > opensource@keylevel.com
> > www.keylevel.com
> >
> >
> >
>=20
>=20
>=20
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await =
thee at its end"
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20

Chris Tapp

opensource@keylevel.com
www.keylevel.com




--Apple-Mail=_E5D509ED-3B58-4EF5-9F37-549012D7D1F6
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><div><div>On 9 Oct 2012, at 14:40, James Abernathy wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><br><br>
<div class="gmail_quote">On Mon, Oct 8, 2012 at 12:28 PM, Saxena, Rahul <span dir="ltr">&lt;<a href="mailto:rahul.saxena@intel.com" target="_blank">rahul.saxena@intel.com</a>&gt;</span> wrote:<br>
<blockquote style="BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PADDING-LEFT:1ex" class="gmail_quote">
<div class="HOEnZb">
<div class="h5"><br><br>-----Original Message-----<br>From: Bruce Ashfield [mailto:<a href="mailto:bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a>]<br>Sent: Monday, October 08, 2012 7:00 AM<br>To: Chris Tapp<br>Cc: Saxena, Rahul; <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> Project<br>
Subject: Re: [yocto] Meta Intel / Cedartrail / Denzil - how to get unionfs in the kernel<br><br>On Mon, Oct 8, 2012 at 3:58 AM, Chris Tapp &lt;<a href="mailto:opensource@keylevel.com">opensource@keylevel.com</a>&gt; wrote:<br>
&gt; On 7 Oct 2012, at 22:41, Bruce Ashfield wrote:<br>&gt;<br>&gt;&gt; On Sun, Oct 7, 2012 at 6:08 PM, Chris Tapp &lt;<a href="mailto:opensource@keylevel.com">opensource@keylevel.com</a>&gt; wrote:<br>&gt;&gt;&gt; On 7 Oct 2012, at 03:00, Saxena, Rahul wrote:<br>
&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; Try adding the unionfs feature (below) to your kernel:<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; <a href="http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/tree/meta" target="_blank">http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/tree/meta</a><br>
&gt;&gt;&gt;&gt; /cfg/kernel-cache/features/unionfs?h=meta<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; create a file my_cedartrail.scc with following line:<br>&gt;&gt;&gt;&gt; include features/unionfs/unionfs.scc<br>&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; put this file in a dir linux-yocto, the dir being created in<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; meta-cedartrail/recipes-kernel/linux<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; add following line in<br>&gt;&gt;&gt;&gt; meta-cedartrail/recipes-kernel/Linux/linux-yocto_3.0.bbappend<br>
&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; SRC_URI +="<a href="file:///my_cedartrail.scc">file://my_cedartrail.scc</a>"<br>&gt;&gt;&gt;<br>&gt;&gt;&gt; Thanks - I thought just running 'menuconfig' would allow me to enable it (for a quick test).<br>&gt;&gt;&gt;<br>
&gt;&gt;&gt; However, this still doesn't seem to be working. I can see that 'my_cedartrail.scc' gets fetched in to the build area, but I still don't see CONFIG_UNION_FS if I run 'menuconfig'. There is also no 'unionfs' folder in fs/ of the build tree.<br>
&gt;&gt;&gt;<br>&gt;&gt;&gt; Also, if I specify an invalid feature (e.g. feature2/unionfs/unionfs.scc) I'm not seeing any diagnostic.<br>&gt;&gt;<br>&gt;&gt; unionfs was never merged to the 3.0 kernel, I re-added it to the<br>
&gt;&gt; development trees for 3.2 and the 3.4 kernel (aufs for the 3.6 tree<br>&gt;&gt; at the moment). The meta data is carried forward from the older<br>&gt;&gt; kernels as a placeholder and is documented in the .scc file itself:<br>
&gt;&gt;<br>&gt;&gt; -----------------------<br>&gt;&gt; kconf non-hardware unionfs.cfg<br>&gt;&gt;<br>&gt;&gt; # commented pending update to a newer version ported to 2.6.35+ #<br>&gt;&gt; patch unionfs-2.5.4-integration.patch<br>
&gt;&gt; -----------------------<br>&gt;&gt;<br>&gt;&gt; So to get unionfs in the 3.0 kernel, we'd need a port .. but since<br>&gt;&gt; we've moved on quite a bit past 3.0, I don't know of any pending<br>&gt;&gt; ports myself.<br>
&gt;<br>&gt; Thanks Bruce.<br>&gt;<br>&gt; I guess I need to ask the Intel guys if there are any plans to move Cedartrail on from 3.0 ?<br><br>It will have to happen post yocto 1.3 (as far as I know), since the<br>3.0 kernel will be<br>
dropped at that point.<br><br>For the short term, it's likely easier to backport/update unionfs than it would be to update the BSP .. but I can't speak for the time to be spent doing it :)<br><br>Cheers,<br><br>Bruce<br>
<br><br></div></div>Chris,<br><br>There are no plans to port Cedartrail BSP to support any other Kernel other than 3.0. The reason is that<br>the Cedartrail PVR Graphics driver is supported only for 3.0 kernel.<br><span class="HOEnZb"><font color="#888888"><br>
Rahul<br></font></span>
<div class="HOEnZb">
<div class="h5"><br></div></div></blockquote>
<div>&nbsp;</div>
<div>It may not solve the 3.0 problem for CDV and Yocto, but I noticed that Ubuntu 12.04.1 with the 3.2 kernel supports the PVR driver on it's 3.2.0 kernel.&nbsp; I've only tested it successfully on an All-In-One with LVDS off of an eDP to LVDS converter used on the DN2800MT motherboard.</div></div></blockquote><div><br></div><div>Interesting - that's the same board as I'm using. It would be worth seeing what happens. I've had a look at the bbappend for 3.2 that Kishore posted and compared it with the standard one for 3.0. I think it 'just' needs a new meta data branch before I can try a build with pvr. I guess this will need to be a new branch and not an existing one?</div><br><blockquote type="cite"><div class="gmail_quote">

<div>&nbsp;</div>
<div>Jim A</div>
<div>&nbsp;</div>
<blockquote style="BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PADDING-LEFT:1ex" class="gmail_quote">
<div class="HOEnZb">
<div class="h5">&gt;<br>&gt;&gt; Cheers,<br>&gt;&gt;<br>&gt;&gt; Bruce<br>&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; -----Original Message-----<br>&gt;&gt;&gt;&gt; From: <a href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a><br>
&gt;&gt;&gt;&gt; [mailto:<a href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>] On Behalf Of Chris Tapp<br>&gt;&gt;&gt;&gt; Sent: Saturday, October 06, 2012 5:43 PM<br>&gt;&gt;&gt;&gt; To: <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> Project<br>
&gt;&gt;&gt;&gt; Subject: [yocto] Meta Intel / Cedartrail / Denzil - how to get<br>&gt;&gt;&gt;&gt; unionfs in the kernel<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; I' trying to enable unionfs in the 3.0.32 kernel for the cedartrail BSP under Denzil 7.0.1.<br>
&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; However, the CONFIG_UNION_FS config flag isn't in the .config ...<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; Is there something else I need to enable, or do I need to find another way?<br>
&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; Chris Tapp<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; <a href="mailto:opensource@keylevel.com">opensource@keylevel.com</a><br>&gt;&gt;&gt;&gt; <a href="http://www.keylevel.com/" target="_blank">www.keylevel.com</a><br>
&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; _______________________________________________<br>&gt;&gt;&gt;&gt; yocto mailing list<br>&gt;&gt;&gt;&gt; <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt;&gt;&gt; <a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>&gt;&gt;&gt;<br>&gt;&gt;&gt; Chris Tapp<br>&gt;&gt;&gt;<br>&gt;&gt;&gt; <a href="mailto:opensource@keylevel.com">opensource@keylevel.com</a><br>
&gt;&gt;&gt; <a href="http://www.keylevel.com/" target="_blank">www.keylevel.com</a><br>&gt;&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&gt;&gt; _______________________________________________<br>&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt; <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>&gt;&gt;&gt; <a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt; --<br>&gt;&gt; "Thou shalt not follow the NULL pointer, for chaos and madness await<br>&gt;&gt; thee at its end"<br>&gt;<br>&gt; Chris Tapp<br>&gt;<br>&gt; <a href="mailto:opensource@keylevel.com">opensource@keylevel.com</a><br>
&gt; <a href="http://www.keylevel.com/" target="_blank">www.keylevel.com</a><br>&gt;<br>&gt;<br>&gt;<br><br><br><br>--<br>"Thou shalt not follow the NULL pointer, for chaos and madness await thee at its end"<br>
_______________________________________________<br>yocto mailing list<br><a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br>
</blockquote></div><br><div apple-content-edited="true">
<span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div>Chris Tapp</div><div><br></div><div><a href="mailto:opensource@keylevel.com">opensource@keylevel.com</a></div><div><a href="http://www.keylevel.com">www.keylevel.com</a></div><div><br></div></span><br class="Apple-interchange-newline">
</div>
<br></body></html>

--Apple-Mail=_E5D509ED-3B58-4EF5-9F37-549012D7D1F6--
