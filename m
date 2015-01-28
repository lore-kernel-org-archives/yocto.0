Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17880E0089B; Wed, 28 Jan 2015 03:12:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.38 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og119.obsmtp.com (exprod8og119.obsmtp.com [64.18.3.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1DECE00815
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 03:12:13 -0800 (PST)
Received: from mail-qc0-f169.google.com ([209.85.216.169]) (using TLSv1) by
	exprod8ob119.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVMjEDJWqyTCEC7JVaesqe+gpYZ7gLvh5@postini.com;
	Wed, 28 Jan 2015 03:12:13 PST
Received: by mail-qc0-f169.google.com with SMTP id b13so15850794qcw.0
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 03:12:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Ds9mys8ztku+0AE5VPytBO6JdWuQ0lxVN/yG+HaJLhc=;
	b=UALJ+mF/Ejnaae98tMgx+Y1u6VyTVzhDB9Qy7FikZnjAemsy4pizh3y1L/zhIS/508
	nQmkaBZc/N0v58YPDfcX8pGZV3fwYtN5QihdN+UeLNLWunEBo4G2uLJdSTXzsh9zNw9z
	6qncltoshpCfJ8N/N070eskGT8zPbr5yEWM2EDo2otfvt0JCDmosXAnDs7dbgxbEsYIq
	zgMWgIdDsIIBjtf864cHA0UzYY3ebTsemKXAoAQH1USZu6cY5i08P/exdpR7gC6gTGF4
	6tVHBpcc9RAXc1bUkiAWMO0BgkdGzm21rRVcbrXbhmmT9IgNPkoYU1KkLbW19RPyS3XF
	60xw==
X-Gm-Message-State: ALoCoQnd2CZ34g93WYDJiIDG69Ei0PnOqtwQDGjjlDA3/FirNhjVUZTODgMgcdVAvvo1FqTf7NqeYvy0pjWCbukdihbc/Ngtf2QSlH+WzSCjDLNr9FDLkyyFK8YGnp2mzh3XvlqE8I5DkI0Z1vj/Q42zQafcxn26ug==
X-Received: by 10.229.35.74 with SMTP id o10mr9962400qcd.26.1422443532079;
	Wed, 28 Jan 2015 03:12:12 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.229.35.74 with SMTP id o10mr9962377qcd.26.1422443531906;
	Wed, 28 Jan 2015 03:12:11 -0800 (PST)
Received: by 10.96.71.97 with HTTP; Wed, 28 Jan 2015 03:12:11 -0800 (PST)
In-Reply-To: <54C7C278.6020606@windriver.com>
References: <CAJrRHk5GoTZAB9hxOtEkjBP3fQoBB2u+H7Z5eD9Jy4hqwvmfTg@mail.gmail.com>
	<54C7C278.6020606@windriver.com>
Date: Wed, 28 Jan 2015 19:12:11 +0800
Message-ID: <CAJrRHk5FwSz69iWWAmmz-P9byPzSb=KPR7S+mvp8jjs8DfKv6A@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ALTERNATIVE_TARGET, ALTERNATIVE_PRIORITY problem
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
X-List-Received-Date: Wed, 28 Jan 2015 11:12:16 -0000
Content-Type: multipart/alternative; boundary=047d7b471d566ecece050db471a0

--047d7b471d566ecece050db471a0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day Mark,

Thank you for the response! Really appreciate it. The purpose is the latter
as what you've provided (three packages that all provide 'bar'. )

When I tried this one, bar3 is the one pointed by bar. The aim is for bar
to point bar1 instead. Running rpm -qp as you suggested, they all have same
priority of 10 w/c made me hypothesize that the result is due to bar3 being
the last one set as target for bar. Am I correct?

So my questions:
1. Is RPROVIDES not needed anymore when using ALTERNATIVES?
2. How can I set priority between packages within the same unit/recipe? (so
that I can reflect bar1 as the one pointed by bar)
3. When using ALTERNATIVES, is there no need anymore to add the "name" (eg.
bar) to the packagegroup's RDEPENDS?


Your response is really really valued!

Thanks,
Joseph

On Wed, Jan 28, 2015 at 12:53 AM, Mark Hatle <mark.hatle@windriver.com>
wrote:

> On 1/27/15 9:37 AM, Joseph Andrew de la Pe=C3=B1a wrote:
> > Good day Yocto Community,
> >
> > I would like to ask what's wrong with my implementation with
> update-alternatives:
>
> I think that you have some of the variables confused below.  I've quoted
> bits of
> the class's header (internal documentation):
>
> # List all of the alternatives needed by a package:
> # ALTERNATIVE_<pkg> =3D "name1 name2 name3 ..."
>
> # The pathname of the link
> # ALTERNATIVE_LINK_NAME[name] =3D "target"
>
> # NOTE: If ALTERNATIVE_LINK_NAME is not defined, it defaults to
> ${bindir}/name
>
>
> # The default link to create for all targets
> # ALTERNATIVE_TARGET =3D "target"
>
> or
>
> # A non-default link to create for a target
> # ALTERNATIVE_TARGET[name] =3D "target"
>
> # A package specific link for a target
> # ALTERNATIVE_TARGET_<pkg>[name] =3D "target"
> #
> #   This is useful when a recipe provides multiple alternatives for the
> #   same item.
>
>
> So if you have a single binary called 'bar', and want it to show up as
> bar1,
> bar2 and bar3 using the alternatives you would do:
>
> PACKAGES =3D+ "${PN}-bar1 ${PN}-bar2 ${PN}-bar3"
> ALTERNATIVE_${PN}-bar1 =3D "bar1"
> ALTERNATIVE_${PN}-bar2 =3D "bar2"
> ALTERNATIVE_${PN}-bar3 =3D "bar3"
>
> ALTERNATIVE_TARGET =3D "/bin/bar"
>
> ALTERNATIVE_LINK_NAME[bar1] =3D "/bin/bar1"
> ALTERNATIVE_LINK_NAME[bar2] =3D "/bin/bar2"
> ALTERNATIVE_LINK_NAME[bar3] =3D "/bin/bar3"
>
> FILES_${PN} =3D "/bin/bar"
>
> The result would be:
>
> package ${PN} contains /bin/bar
>
> package ${PN}-bar1 would create a link /bin/bar1 -> /bin/bar
> package ${PN}-bar2 would create a link /bin/bar2 -> /bin/bar
> package ${PN}-bar3 would create a link /bin/bar3 -> /bin/bar
>
>
> If you want to do the other way around, have three packages that all
> provide
> 'bar'.  You would do:
>
> PACKAGES =3D+ "${PN}-bar1 ${PN}-bar2 ${PN}-bar3"
> ALTERNATIVE_${PN}-bar1 =3D "bar"
> ALTERNATIVE_${PN}-bar2 =3D "bar"
> ALTERNATIVE_${PN}-bar3 =3D "bar"
>
> ALTERNATIVE_LINK_NAME[bar] =3D "/bin/bar"
>
> ALTERNATIVE_TARGET_${PN}-bar1 =3D "/bin/bar1"
> ALTERNATIVE_TARGET_${PN}-bar2 =3D "/bin/bar2"
> ALTERNATIVE_TARGET_${PN}-bar3 =3D "/bin/bar3"
>
> FILES_${PN}-bar1 =3D "/bin/bar1"
> FILES_${PN}-bar2 =3D "/bin/bar2"
> FILES_${PN}-bar3 =3D "/bin/bar3"
>
>
> package ${PN}-bar1 would own a file /bin/bar1 and link it to /bin/bar
> package ${PN}-bar2 would own a file /bin/bar2 and link it to /bin/bar
> package ${PN}-bar3 would own a file /bin/bar3 and link it to /bin/bar
>
>
> (You can verify the above by looking at the package data, if using RPM,
> rpm -qp
> <package> --scripts will show you the logic for adding the alternative.)
>
>
> As for the install time, the packaging system will "choose" to install a
> package
> that meets the dependency you select.  If you don't specifically name
> ${PN}-bar1
> in your install, it may not be selected in favor of one of the other
> providers.
>  The PRIORITY only affects if multiple packages are installed, which one
> takes
> priority over the others.
>
> --Mark
>
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > *bar_git.bb <http://bar_git.bb/>:*
> >
> > PACKAGES =3D+ "${PN}-bar1 ${PN}-bar2 ${PN}-bar3"
> > RPROVIDES_${PN}-bar1 =3D "bar"
> > RPROVIDES_${PN}-bar2 =3D "bar"
> > RPROVIDES_${PN}-bar3 =3D "bar"
> >
> > ALTERNATIVE_LINK_NAME[bar] =3D "${datadir}/foo/bar"
> >
> > ALTERNATIVE_${PN}-bar1 =3D "bar"
> > ALTERNATIVE_TARGET_${PN}-bar1 =3D "${datadir}/foo/bar1"
> > ALTERNATIVE_PRIORITY_${PN}-bar1 =3D "99"
> >
> > ALTERNATIVE_${PN}-bar2 =3D "bar"
> > ALTERNATIVE_TARGET_${PN}-bar2 =3D "${datadir}/foo/bar2"
> > ALTERNATIVE_PRIORITY_${PN}-bar2 =3D "98"
> >
> > ALTERNATIVE_${PN}-bar3 =3D "bar"
> > ALTERNATIVE_TARGET_${PN}-bar3 =3D "${datadir}/foo/bar3"
> > ALTERNATIVE_PRIORITY_${PN}-bar3 =3D "97"
> >
> > inherit update-alternatives
> >
> > *packagegroup-foobar.bb <http://packagegroup-foobar.bb/>:*
> >
> > RDEPENDS_foobar =3D "bar"
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > The end result is always bar3 is present and bar is pointing to bar3. I
> never
> > get bar1 being present which is the result I want.
> >
> > Please do recommend how will I properly use ALTERNATIVE_TARGET and
> > ALTERNATIVE_PRIORITY.
> >
> > Thanks,
> > Joseph
> >
> >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b471d566ecece050db471a0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Mark,<div><br></div><div>Thank you for the respon=
se! Really appreciate it. The purpose is the latter as what you&#39;ve prov=
ided (t<span style=3D"font-size:12.8000001907349px">hree packages that all =
provide=C2=A0</span><span style=3D"font-size:12.8000001907349px">&#39;bar&#=
39;. )</span></div><div><span style=3D"font-size:12.8000001907349px"><br></=
span></div><div><span style=3D"font-size:12.8000001907349px">When I tried t=
his one, bar3 is the one pointed by bar. The aim is for bar to point bar1 i=
nstead. Running rpm -qp as you suggested, they all have same priority of 10=
 w/c made me hypothesize that the result is due to bar3 being the last one =
set as target for bar. Am I correct?</span></div><div><span style=3D"font-s=
ize:12.8000001907349px"><br></span></div><div><span style=3D"font-size:12.8=
000001907349px">So my questions:</span></div><div><span style=3D"font-size:=
12.8000001907349px">1. Is RPROVIDES not needed anymore when using ALTERNATI=
VES?</span></div><div><span style=3D"font-size:12.8000001907349px">2. How c=
an I set priority between packages within the same unit/recipe? (so that I =
can reflect bar1 as the one pointed by bar)</span></div><div><span style=3D=
"font-size:12.8000001907349px">3. When using ALTERNATIVES, is there no need=
 anymore to add the &quot;name&quot; (eg. bar) to the packagegroup&#39;s RD=
EPENDS?</span></div><div><span style=3D"font-size:12.8000001907349px"><br><=
/span></div><div><span style=3D"font-size:12.8000001907349px"><br></span></=
div><div><span style=3D"font-size:12.8000001907349px">Your response is real=
ly really valued!</span></div><div><span style=3D"font-size:12.800000190734=
9px"><br></span></div><div><span style=3D"font-size:12.8000001907349px">Tha=
nks,</span></div><div><span style=3D"font-size:12.8000001907349px">Joseph</=
span></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Jan 28, 2015 at 12:53 AM, Mark Hatle <span dir=3D"ltr">&lt;<a href=
=3D"mailto:mark.hatle@windriver.com" target=3D"_blank">mark.hatle@windriver=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D=
"">On 1/27/15 9:37 AM, Joseph Andrew de la Pe=C3=B1a wrote:<br>
&gt; Good day Yocto Community,<br>
&gt;<br>
&gt; I would like to ask what&#39;s wrong with my implementation with updat=
e-alternatives:<br>
<br>
</span>I think that you have some of the variables confused below.=C2=A0 I&=
#39;ve quoted bits of<br>
the class&#39;s header (internal documentation):<br>
<br>
# List all of the alternatives needed by a package:<br>
# ALTERNATIVE_&lt;pkg&gt; =3D &quot;name1 name2 name3 ...&quot;<br>
<br>
# The pathname of the link<br>
# ALTERNATIVE_LINK_NAME[name] =3D &quot;target&quot;<br>
<br>
# NOTE: If ALTERNATIVE_LINK_NAME is not defined, it defaults to ${bindir}/n=
ame<br>
<br>
<br>
# The default link to create for all targets<br>
# ALTERNATIVE_TARGET =3D &quot;target&quot;<br>
<br>
or<br>
<br>
# A non-default link to create for a target<br>
# ALTERNATIVE_TARGET[name] =3D &quot;target&quot;<br>
<br>
# A package specific link for a target<br>
# ALTERNATIVE_TARGET_&lt;pkg&gt;[name] =3D &quot;target&quot;<br>
#<br>
#=C2=A0 =C2=A0This is useful when a recipe provides multiple alternatives f=
or the<br>
#=C2=A0 =C2=A0same item.<br>
<br>
<br>
So if you have a single binary called &#39;bar&#39;, and want it to show up=
 as bar1,<br>
bar2 and bar3 using the alternatives you would do:<br>
<span class=3D""><br>
PACKAGES =3D+ &quot;${PN}-bar1 ${PN}-bar2 ${PN}-bar3&quot;<br>
</span>ALTERNATIVE_${PN}-bar1 =3D &quot;bar1&quot;<br>
ALTERNATIVE_${PN}-bar2 =3D &quot;bar2&quot;<br>
ALTERNATIVE_${PN}-bar3 =3D &quot;bar3&quot;<br>
<br>
ALTERNATIVE_TARGET =3D &quot;/bin/bar&quot;<br>
<br>
ALTERNATIVE_LINK_NAME[bar1] =3D &quot;/bin/bar1&quot;<br>
ALTERNATIVE_LINK_NAME[bar2] =3D &quot;/bin/bar2&quot;<br>
ALTERNATIVE_LINK_NAME[bar3] =3D &quot;/bin/bar3&quot;<br>
<br>
FILES_${PN} =3D &quot;/bin/bar&quot;<br>
<br>
The result would be:<br>
<br>
package ${PN} contains /bin/bar<br>
<br>
package ${PN}-bar1 would create a link /bin/bar1 -&gt; /bin/bar<br>
package ${PN}-bar2 would create a link /bin/bar2 -&gt; /bin/bar<br>
package ${PN}-bar3 would create a link /bin/bar3 -&gt; /bin/bar<br>
<br>
<br>
If you want to do the other way around, have three packages that all provid=
e<br>
&#39;bar&#39;.=C2=A0 You would do:<br>
<span class=3D""><br>
PACKAGES =3D+ &quot;${PN}-bar1 ${PN}-bar2 ${PN}-bar3&quot;<br>
</span><span class=3D"">ALTERNATIVE_${PN}-bar1 =3D &quot;bar&quot;<br>
</span><span class=3D"">ALTERNATIVE_${PN}-bar2 =3D &quot;bar&quot;<br>
</span><span class=3D"">ALTERNATIVE_${PN}-bar3 =3D &quot;bar&quot;<br>
<br>
</span>ALTERNATIVE_LINK_NAME[bar] =3D &quot;/bin/bar&quot;<br>
<br>
ALTERNATIVE_TARGET_${PN}-bar1 =3D &quot;/bin/bar1&quot;<br>
ALTERNATIVE_TARGET_${PN}-bar2 =3D &quot;/bin/bar2&quot;<br>
ALTERNATIVE_TARGET_${PN}-bar3 =3D &quot;/bin/bar3&quot;<br>
<br>
FILES_${PN}-bar1 =3D &quot;/bin/bar1&quot;<br>
FILES_${PN}-bar2 =3D &quot;/bin/bar2&quot;<br>
FILES_${PN}-bar3 =3D &quot;/bin/bar3&quot;<br>
<br>
<br>
package ${PN}-bar1 would own a file /bin/bar1 and link it to /bin/bar<br>
package ${PN}-bar2 would own a file /bin/bar2 and link it to /bin/bar<br>
package ${PN}-bar3 would own a file /bin/bar3 and link it to /bin/bar<br>
<br>
<br>
(You can verify the above by looking at the package data, if using RPM, rpm=
 -qp<br>
&lt;package&gt; --scripts will show you the logic for adding the alternativ=
e.)<br>
<br>
<br>
As for the install time, the packaging system will &quot;choose&quot; to in=
stall a package<br>
that meets the dependency you select.=C2=A0 If you don&#39;t specifically n=
ame ${PN}-bar1<br>
in your install, it may not be selected in favor of one of the other provid=
ers.<br>
=C2=A0The PRIORITY only affects if multiple packages are installed, which o=
ne takes<br>
priority over the others.<br>
<br>
--Mark<br>
<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;<br>
&gt; *<a href=3D"http://bar_git.bb" target=3D"_blank">bar_git.bb</a> &lt;<a=
 href=3D"http://bar_git.bb/" target=3D"_blank">http://bar_git.bb/</a>&gt;:*=
<br>
<span class=3D"">&gt;<br>
&gt; PACKAGES =3D+ &quot;${PN}-bar1 ${PN}-bar2 ${PN}-bar3&quot;<br>
&gt; RPROVIDES_${PN}-bar1 =3D &quot;bar&quot;<br>
&gt; RPROVIDES_${PN}-bar2 =3D &quot;bar&quot;<br>
&gt; RPROVIDES_${PN}-bar3 =3D &quot;bar&quot;<br>
&gt;<br>
&gt; ALTERNATIVE_LINK_NAME[bar] =3D &quot;${datadir}/foo/bar&quot;<br>
&gt;<br>
&gt; ALTERNATIVE_${PN}-bar1 =3D &quot;bar&quot;<br>
&gt; ALTERNATIVE_TARGET_${PN}-bar1 =3D &quot;${datadir}/foo/bar1&quot;<br>
&gt; ALTERNATIVE_PRIORITY_${PN}-bar1 =3D &quot;99&quot;<br>
&gt;<br>
&gt; ALTERNATIVE_${PN}-bar2 =3D &quot;bar&quot;<br>
&gt; ALTERNATIVE_TARGET_${PN}-bar2 =3D &quot;${datadir}/foo/bar2&quot;<br>
&gt; ALTERNATIVE_PRIORITY_${PN}-bar2 =3D &quot;98&quot;<br>
&gt;<br>
&gt; ALTERNATIVE_${PN}-bar3 =3D &quot;bar&quot;<br>
&gt; ALTERNATIVE_TARGET_${PN}-bar3 =3D &quot;${datadir}/foo/bar3&quot;<br>
&gt; ALTERNATIVE_PRIORITY_${PN}-bar3 =3D &quot;97&quot;<br>
&gt;<br>
&gt; inherit update-alternatives<br>
&gt;<br>
</span>&gt; *<a href=3D"http://packagegroup-foobar.bb" target=3D"_blank">pa=
ckagegroup-foobar.bb</a> &lt;<a href=3D"http://packagegroup-foobar.bb/" tar=
get=3D"_blank">http://packagegroup-foobar.bb/</a>&gt;:*<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
&gt; RDEPENDS_foobar =3D &quot;bar&quot;<br>
&gt;<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;<br>
&gt; The end result is always bar3 is present and bar is pointing to bar3. =
I never<br>
&gt; get bar1 being present which is the result I want.<br>
&gt;<br>
&gt; Please do recommend how will I properly use ALTERNATIVE_TARGET and<br>
&gt; ALTERNATIVE_PRIORITY.<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Joseph<br>
&gt;<br>
&gt;<br>
<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--047d7b471d566ecece050db471a0--
