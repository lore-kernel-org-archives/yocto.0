Return-Path: <wmat@alphatroop.com>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2281E00348
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 11:37:06 -0800 (PST)
Received: by mail-ie0-f177.google.com with SMTP id k13so2629535iea.36
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 11:37:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=72eODCIe0NjJaJKUKE/fG7bKGd8MbCIhEyu5xOy8ZNI=;
	b=epSDy68l92Be46T3g9WbxuBTFi8be4JJJGPD6yb5BINf4wGPB2H9DB44DhKrmH7F2G
	G8D9VELkLY0Y69+ixK5Sg4giKSIkPOjnk34EcelgBQQKODbhxr9OO2OlySszY24MEY4O
	LlciL1Xf3nlfGtY3jheocYtf1nJdiIiNzO+YfM5BgNpiakWtC3NBbKjErclHbb4jU12P
	rdAECyzKr1TiczTu/MOJU+TUEk319Uq32rY6S9o5VuLIpxAfiExXawtGvVQY2adnG1fF
	mVggqjFyHEDhTPTJoAcONV/ORPHiubrYy2topSltRjm7HjK2oFOt5aWZG8ff0BqT/A3f
	FArw==
Received: by 10.50.184.232 with SMTP id ex8mr14315505igc.30.1355341026355;
	Wed, 12 Dec 2012 11:37:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.74.169 with HTTP; Wed, 12 Dec 2012 11:36:46 -0800 (PST)
X-Originating-IP: [24.246.30.132]
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC99E@ORSMSX101.amr.corp.intel.com>
References: <CA452391058F6D4E9715FB2C29D9312A0137811C@039-SN2MPN1-021.039d.mgd.msft.net>
	<50C0DE57.2040904@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC3C0@ORSMSX101.amr.corp.intel.com>
	<50C8B9F6.1010700@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC99E@ORSMSX101.amr.corp.intel.com>
From: Bill Traynor <wmat@alphatroop.com>
Date: Wed, 12 Dec 2012 14:36:46 -0500
Message-ID: <CAGfZjq6DM7hO1L2OLfhom2ekpbTQhjXXEGgrb_LyT87ug9mv9w@mail.gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Gm-Message-State: ALoCoQkhnjSiriCPtYH+8qocDUmbOXqQVb9+fEoljB6/rEghqT9UvKFi2S4y6KMyc4iye8jo17Va
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Difference of toolchain recipes
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
X-List-Received-Date: Wed, 12 Dec 2012 19:37:07 -0000
Content-Type: multipart/alternative; boundary=14dae9340ef16cea5104d0acecb3

--14dae9340ef16cea5104d0acecb3
Content-Type: text/plain; charset=ISO-8859-1

I can likely help with this, Scott.


On Wed, Dec 12, 2012 at 2:33 PM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

> Thanks for the feedback Mark.  I will go ahead with it.
>
> Scott
>
> >-----Original Message-----
> >From: Mark Hatle [mailto:mark.hatle@windriver.com]
> >Sent: Wednesday, December 12, 2012 9:08 AM
> >To: Rifenbark, Scott M
> >Cc: yocto@yoctoproject.org
> >Subject: Re: [yocto] Difference of toolchain recipes
> >
> >On 12/11/12 3:20 PM, Rifenbark, Scott M wrote:
> >> I think what I am going to do is document these in general as part of
> >the "Terms" section in the YP Development Manual where the term "Cross-
> >Development Toolchain" is defined.  Would putting such a high-level list
> >in the YP documentation be unnecessary or helpful?
> >
> >I think it would.  The set of compiler/toolchain elements we have is
> >definitely
> >confusing to someone new.
> >
> >--Mark
> >
> >> Scott
> >>
> >>> -----Original Message-----
> >>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >>> bounces@yoctoproject.org] On Behalf Of Mark Hatle
> >>> Sent: Thursday, December 06, 2012 10:05 AM
> >>> To: yocto@yoctoproject.org
> >>> Subject: Re: [yocto] Difference of toolchain recipes
> >>>
> >>> On 12/6/12 4:00 AM, Luo Zhenhua-B19537 wrote:
> >>>> Can anybody shed some light, please?
> >>>>
> >>>>
> >>>> Best Regards,
> >>>>
> >>>> Zhenhua
> >>>>
> >>>>
> >>>>> -----Original Message-----
> >>>>> From: Luo Zhenhua-B19537
> >>>>> Sent: Tuesday, December 04, 2012 11:53 AM
> >>>>> To: openembedded-core@lists.openembedded.org;
> >>> 'yocto@yoctoproject.org'
> >>>>> Subject: Difference of toolchain recipes
> >>>>>
> >>>>> It is a bit confused for the different recipes of toolchian, can
> >>> somebody
> >>>>> help to explain what's the difference for those recipes? E.g. gcc-
> >>> cross,
> >>>>> gcc-cross-canadian, gcc-cross-initial, gcc-cross-intermediate, gcc-
> >>>>> crosssdk, gcc-crosssdk-initial, gcc-crosssdk-intermediate, gcc-
> >>> runtime,
> >>>>> etc.
> >>>
> >>> gcc-cross-initial - This is the initial compiler needed to bootstrap
> >the
> >>> toolchain to build software on the host for the target.  (This is a
> >>> 'native'
> >>> package.)
> >>>
> >>> gcc-cross-intermediate - This is the second stage of the bootstrap
> >>> process to
> >>> build software on the host for the target. (This is a 'native'
> >package.)
> >>>
> >>> gcc-cross - this is the the final stage of the bootstrap process, and
> >>> results in
> >>> the cross compiler to build software on the host for the target.
> >(This
> >>> is a
> >>> 'native' package.)  If you are replacing the cross compiler toolchain
> >>> with a
> >>> custom version, this is what you must replace.
> >>>
> >>> gcc-runtime - these are the runtime libraries, but from the toolchain
> >>> bootstrapping process.  This results in a 'target' binary.
> >>>
> >>> gcc-crosssdk-initial/intermediate - stage 1 and 2 of the a cross
> >>> compiler to
> >>> build from the 'host' to the 'sdk'.  Often the SDK is not the same
> >>> target as the
> >>> host.  (This is a 'native' binary.)
> >>>
> >>> gcc-crosssdk - this the final stage of the SDK compiler.  Again, this
> >is
> >>> to
> >>> build on the host, for the sdk.  This is a 'native' binary.
> >>>
> >>> gcc-cross-canadian - This is the compiler included with the SDK to
> >build
> >>> on the
> >>> SDK machine creating software for the target.  This is an 'nativesdk'
> >>> package.
> >>>
> >>>>> Is there any document for those description?
> >>>
> >>> Not that I know of.. It's one of those things that you kind of need
> >to
> >>> know in
> >>> order to work with it.  It likely should be documented somewhere
> >>> officially.
> >>>
> >>> --Mark
> >>>
> >>>>>
> >>>>>
> >>>>> Best Regards,
> >>>>>
> >>>>> Zhenhua
> >>>>
> >>>> _______________________________________________
> >>>> yocto mailing list
> >>>> yocto@yoctoproject.org
> >>>> https://lists.yoctoproject.org/listinfo/yocto
> >>>>
> >>>
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--14dae9340ef16cea5104d0acecb3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I can likely help with this, Scott.<br><div class=3D"gmail_extra"><br><br><=
div class=3D"gmail_quote">On Wed, Dec 12, 2012 at 2:33 PM, Rifenbark, Scott=
 M <span dir=3D"ltr">&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" tar=
get=3D"_blank">scott.m.rifenbark@intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Thanks for the feedback Mark. =A0I will go a=
head with it.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Scott<br>
</font></span><div class=3D"im HOEnZb"><br>
&gt;-----Original Message-----<br>
&gt;From: Mark Hatle [mailto:<a href=3D"mailto:mark.hatle@windriver.com">ma=
rk.hatle@windriver.com</a>]<br>
&gt;Sent: Wednesday, December 12, 2012 9:08 AM<br>
&gt;To: Rifenbark, Scott M<br>
&gt;Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a=
><br>
&gt;Subject: Re: [yocto] Difference of toolchain recipes<br>
&gt;<br>
</div><div class=3D"HOEnZb"><div class=3D"h5">&gt;On 12/11/12 3:20 PM, Rife=
nbark, Scott M wrote:<br>
&gt;&gt; I think what I am going to do is document these in general as part=
 of<br>
&gt;the &quot;Terms&quot; section in the YP Development Manual where the te=
rm &quot;Cross-<br>
&gt;Development Toolchain&quot; is defined. =A0Would putting such a high-le=
vel list<br>
&gt;in the YP documentation be unnecessary or helpful?<br>
&gt;<br>
&gt;I think it would. =A0The set of compiler/toolchain elements we have is<=
br>
&gt;definitely<br>
&gt;confusing to someone new.<br>
&gt;<br>
&gt;--Mark<br>
&gt;<br>
&gt;&gt; Scott<br>
&gt;&gt;<br>
&gt;&gt;&gt; -----Original Message-----<br>
&gt;&gt;&gt; From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-=
bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-">yocto-</a><b=
r>
&gt;&gt;&gt; <a href=3D"mailto:bounces@yoctoproject.org">bounces@yoctoproje=
ct.org</a>] On Behalf Of Mark Hatle<br>
&gt;&gt;&gt; Sent: Thursday, December 06, 2012 10:05 AM<br>
&gt;&gt;&gt; To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproje=
ct.org</a><br>
&gt;&gt;&gt; Subject: Re: [yocto] Difference of toolchain recipes<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On 12/6/12 4:00 AM, Luo Zhenhua-B19537 wrote:<br>
&gt;&gt;&gt;&gt; Can anybody shed some light, please?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Best Regards,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Zhenhua<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; -----Original Message-----<br>
&gt;&gt;&gt;&gt;&gt; From: Luo Zhenhua-B19537<br>
&gt;&gt;&gt;&gt;&gt; Sent: Tuesday, December 04, 2012 11:53 AM<br>
&gt;&gt;&gt;&gt;&gt; To: <a href=3D"mailto:openembedded-core@lists.openembe=
dded.org">openembedded-core@lists.openembedded.org</a>;<br>
&gt;&gt;&gt; &#39;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproj=
ect.org</a>&#39;<br>
&gt;&gt;&gt;&gt;&gt; Subject: Difference of toolchain recipes<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; It is a bit confused for the different recipes of tool=
chian, can<br>
&gt;&gt;&gt; somebody<br>
&gt;&gt;&gt;&gt;&gt; help to explain what&#39;s the difference for those re=
cipes? E.g. gcc-<br>
&gt;&gt;&gt; cross,<br>
&gt;&gt;&gt;&gt;&gt; gcc-cross-canadian, gcc-cross-initial, gcc-cross-inter=
mediate, gcc-<br>
&gt;&gt;&gt;&gt;&gt; crosssdk, gcc-crosssdk-initial, gcc-crosssdk-intermedi=
ate, gcc-<br>
&gt;&gt;&gt; runtime,<br>
&gt;&gt;&gt;&gt;&gt; etc.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; gcc-cross-initial - This is the initial compiler needed to boo=
tstrap<br>
&gt;the<br>
&gt;&gt;&gt; toolchain to build software on the host for the target. =A0(Th=
is is a<br>
&gt;&gt;&gt; &#39;native&#39;<br>
&gt;&gt;&gt; package.)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; gcc-cross-intermediate - This is the second stage of the boots=
trap<br>
&gt;&gt;&gt; process to<br>
&gt;&gt;&gt; build software on the host for the target. (This is a &#39;nat=
ive&#39;<br>
&gt;package.)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; gcc-cross - this is the the final stage of the bootstrap proce=
ss, and<br>
&gt;&gt;&gt; results in<br>
&gt;&gt;&gt; the cross compiler to build software on the host for the targe=
t.<br>
&gt;(This<br>
&gt;&gt;&gt; is a<br>
&gt;&gt;&gt; &#39;native&#39; package.) =A0If you are replacing the cross c=
ompiler toolchain<br>
&gt;&gt;&gt; with a<br>
&gt;&gt;&gt; custom version, this is what you must replace.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; gcc-runtime - these are the runtime libraries, but from the to=
olchain<br>
&gt;&gt;&gt; bootstrapping process. =A0This results in a &#39;target&#39; b=
inary.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; gcc-crosssdk-initial/intermediate - stage 1 and 2 of the a cro=
ss<br>
&gt;&gt;&gt; compiler to<br>
&gt;&gt;&gt; build from the &#39;host&#39; to the &#39;sdk&#39;. =A0Often t=
he SDK is not the same<br>
&gt;&gt;&gt; target as the<br>
&gt;&gt;&gt; host. =A0(This is a &#39;native&#39; binary.)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; gcc-crosssdk - this the final stage of the SDK compiler. =A0Ag=
ain, this<br>
&gt;is<br>
&gt;&gt;&gt; to<br>
&gt;&gt;&gt; build on the host, for the sdk. =A0This is a &#39;native&#39; =
binary.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; gcc-cross-canadian - This is the compiler included with the SD=
K to<br>
&gt;build<br>
&gt;&gt;&gt; on the<br>
&gt;&gt;&gt; SDK machine creating software for the target. =A0This is an &#=
39;nativesdk&#39;<br>
&gt;&gt;&gt; package.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Is there any document for those description?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Not that I know of.. It&#39;s one of those things that you kin=
d of need<br>
&gt;to<br>
&gt;&gt;&gt; know in<br>
&gt;&gt;&gt; order to work with it. =A0It likely should be documented somew=
here<br>
&gt;&gt;&gt; officially.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --Mark<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Best Regards,<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Zhenhua<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproje=
ct.org</a><br>
&gt;&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.o=
rg</a><br>
&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targ=
et=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--14dae9340ef16cea5104d0acecb3--
