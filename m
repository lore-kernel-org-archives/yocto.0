Return-Path: <sudhangathan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B04B6E00A71; Thu,  1 May 2014 11:24:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sudhangathan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f42.google.com (mail-qa0-f42.google.com
	[209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1460EE009C5
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 11:24:27 -0700 (PDT)
Received: by mail-qa0-f42.google.com with SMTP id j5so740301qaq.15
	for <yocto@yoctoproject.org>; Thu, 01 May 2014 11:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=JJ4lwlYPYF/kCStCp3RqOIaXu+JZMGhTS4blVNJhSnc=;
	b=av1nN35D8zvKJIrVAMbbm/x7/GFflvGEcGpHXnoIoYKj8n7HNDlSsNBZ2tBniO6eAM
	wQOezoG2B8VLB9oyFexF8ZnNx7Xi5K0vQYkp38sinEHbcRbhcKqdbtK6CAyp8Pvevq96
	6+ngva2nwZ9QoOsJhfDro3U3AMmsIEGfvs7c90uOgmXYCpx0AjtjDIWmDqwzG+V+MoYA
	cSujVhcw3/p9yy9whD+xfV8Tje/UztclNaOsOxJUs84u4TBVKU91py1bMjnc26uFIveK
	ZQQ4gGAU6nNVOXmpwLOykJ+8SwDxocHXHEYIdG1vUPLNa5dcwY2JiNmeoJtCR9ZpqVqi
	CHuA==
X-Received: by 10.224.54.68 with SMTP id p4mr15884160qag.47.1398968666611;
	Thu, 01 May 2014 11:24:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.224.195.201 with HTTP; Thu, 1 May 2014 11:24:06 -0700 (PDT)
In-Reply-To: <CAGX3a98E2GzTEOcBLfV_FmxqoqTuHr75t0TmNn+RJAVOnvPXKw@mail.gmail.com>
References: <CAGX3a9_GzmU_f2RZPHdWM2SQVOdNkBMwxf8t84ri0xuzsmNmfg@mail.gmail.com>
	<5360FA25.40006@windriver.com>
	<CAGX3a98E2GzTEOcBLfV_FmxqoqTuHr75t0TmNn+RJAVOnvPXKw@mail.gmail.com>
From: Sudhangathan B S <sudhangathan@gmail.com>
Date: Thu, 1 May 2014 23:54:06 +0530
Message-ID: <CAGX3a99ixL0CvRQLmxLCaK0Zrdd22ET25S=OCKpk+AJnQxRmOQ@mail.gmail.com>
To: "General mailing list for gumstix users."
	<gumstix-users@lists.sourceforge.net>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Blacklisting drivers in poky or in yocto project
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
X-List-Received-Date: Thu, 01 May 2014 18:24:29 -0000
Content-Type: multipart/alternative; boundary=001a1132f70a6ce8da04f85ac629

--001a1132f70a6ce8da04f85ac629
Content-Type: text/plain; charset=UTF-8

The Update:
I blacklisted all related drivers, i.e., libertas, libertas_sdio, cfg80211
and ipv6, but still all these driver modules got autoloaded..!!

The method I used: in the file /etc/modprobe.d/blacklist.conf, i added
these following lines:
blacklist ipv6
blacklist cfg80211
blacklist libertas
blacklist libertas_sdio

I also tried the same in /lib/modprobe.d/blacklist.conf, but to no avail.
Every time the modules were getting autoloaded..!!!

And also where can I look for this autoload feature..?

Best,



---------------------------------
Sudhangathan BS
Ph:(+91) 9731-905-205
---------------------------------


On Thu, May 1, 2014 at 1:46 AM, Sudhangathan B S <sudhangathan@gmail.com>wrote:

> Yes i confirm the loading of modules everytime using lsmod.
>
> I'm using the standard installation of yocto project from Gumstix Repo,
> and also the PM branch kernel from Kevin Hilman's repo. Kernel version is
> 3.4. So i did not specify autoloading of modules anywhere.
>
> A grep of module_autoload showed kernel-module-split.bbclass as a
> reference. Is this the file you are talking about..? It will be good to
> know if it is because this module_autoload..!!
>
> And moreover I now have a doubt if the blaclisting is not working because
> of the dependencies. I will reply again after blacklisting all related
> drivers. Esp. the cfg802 driver.
>
> Thanks Bruce,
>
> Sudhangathan BS.
>
> Working on a MMX Android 110.
> --If you have not travelled, you have not lived.
>
> On 30-Apr-2014 6:57 PM, "Bruce Ashfield" <bruce.ashfield@windriver.com>
> wrote:
> >
> > On 14-04-30 03:40 AM, Sudhangathan B S wrote:
> >>
> >> Hi all,
> >>
> >> I need to prevent my wifi drivers auto loading during boot time. How do
> >> we do it in the Poky OS or in the Yocto project..?
> >
> >
> > Are you actually seeing a confirmed auto load of modules ?
> >
> > In a standard image kernel modules will not be autoloaded unless
> > specifically requested via a recipe with : module_autoload_<module name>.
> >
> > I'm not talking about a usermode helper / on demand load, but
> > an explicit autoload + dependencies.
> >
> > Bruce
> >
> >
> >
> >
> >>
> >> I tried both the fedora way and debian way, neither worked.! this is as
> >> given in this website..:
> >>
> http://www.cyberciti.biz/tips/avoid-linux-kernel-module-driver-autoloading.html
> >>
> >>
> >> I'm using gumstix overo hardware..! Poky version 9.0.2, Yocto Project
> >> 1.4 Reference Distro, 1.4.2 overo.
> >>
> >>
> >> ---------------------------------
> >> Sudhangathan BS
> >> Ph:(+91) 9731-905-205
> >> ---------------------------------
> >>
> >>
> >
>

--001a1132f70a6ce8da04f85ac629
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The Update:<div>I blacklisted all related drivers, i.e., l=
ibertas, libertas_sdio, cfg80211 and ipv6, but still all these driver modul=
es got autoloaded..!!</div><div><br></div><div>The method I used: in the fi=
le /etc/modprobe.d/blacklist.conf, i added these following lines:</div>

<div><div>blacklist ipv6</div><div>blacklist cfg80211</div><div>blacklist l=
ibertas</div><div>blacklist libertas_sdio</div></div><div><br></div><div>I =
also tried the same in /lib/modprobe.d/blacklist.conf, but to no avail. Eve=
ry time the modules were getting autoloaded..!!!=C2=A0</div>

<div><br></div><div>And also where can I look for this autoload feature..?<=
/div><div><br></div><div>Best,</div><div><br></div><div><br></div></div><di=
v class=3D"gmail_extra"><br clear=3D"all"><div>----------------------------=
-----<br>

Sudhangathan BS<br>Ph:(+91) 9731-905-205<br>-------------------------------=
--</div>
<br><br><div class=3D"gmail_quote">On Thu, May 1, 2014 at 1:46 AM, Sudhanga=
than B S <span dir=3D"ltr">&lt;<a href=3D"mailto:sudhangathan@gmail.com" ta=
rget=3D"_blank">sudhangathan@gmail.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">

<p dir=3D"ltr">Yes i confirm the loading of modules everytime using lsmod.<=
/p>
<p dir=3D"ltr">I&#39;m using the standard installation of yocto project fro=
m Gumstix Repo, and also the PM branch kernel from Kevin Hilman&#39;s repo.=
 Kernel version is 3.4. So i did not specify autoloading of modules anywher=
e.</p>



<p dir=3D"ltr">A grep of module_autoload showed kernel-module-split.bbclass=
 as a reference. Is this the file you are talking about..? It will be good =
to know if it is because this module_autoload..!!</p>
<p dir=3D"ltr">And moreover I now have a doubt if the blaclisting is not wo=
rking because of the dependencies. I will reply again after blacklisting al=
l related drivers. Esp. the cfg802 driver.</p>
<p dir=3D"ltr">Thanks Bruce,</p>
<p dir=3D"ltr">Sudhangathan BS.</p>
<p dir=3D"ltr">Working on a MMX Android 110.<br>
--If you have not travelled, you have not lived.</p><div class=3D"HOEnZb"><=
div class=3D"h5">
<p dir=3D"ltr">On 30-Apr-2014 6:57 PM, &quot;Bruce Ashfield&quot; &lt;<a hr=
ef=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce.ashfield=
@windriver.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 14-04-30 03:40 AM, Sudhangathan B S wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi all,<br>
&gt;&gt;<br>
&gt;&gt; I need to prevent my wifi drivers auto loading during boot time. H=
ow do<br>
&gt;&gt; we do it in the Poky OS or in the Yocto project..?<br>
&gt;<br>
&gt;<br>
&gt; Are you actually seeing a confirmed auto load of modules ?<br>
&gt;<br>
&gt; In a standard image kernel modules will not be autoloaded unless<br>
&gt; specifically requested via a recipe with : module_autoload_&lt;module =
name&gt;.<br>
&gt;<br>
&gt; I&#39;m not talking about a usermode helper / on demand load, but<br>
&gt; an explicit autoload + dependencies.<br>
&gt;<br>
&gt; Bruce<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; I tried both the fedora way and debian way, neither worked.! this =
is as<br>
&gt;&gt; given in this website..:<br>
&gt;&gt; <a href=3D"http://www.cyberciti.biz/tips/avoid-linux-kernel-module=
-driver-autoloading.html" target=3D"_blank">http://www.cyberciti.biz/tips/a=
void-linux-kernel-module-driver-autoloading.html</a><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m using gumstix overo hardware..! Poky version 9.0.2, Yocto =
Project<br>
&gt;&gt; 1.4 Reference Distro, 1.4.2 overo.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; ---------------------------------<br>
&gt;&gt; Sudhangathan BS<br>
&gt;&gt; Ph:<a href=3D"tel:%28%2B91%29%209731-905-205" value=3D"+9197319052=
05" target=3D"_blank">(+91) 9731-905-205</a><br>
&gt;&gt; ---------------------------------<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</p>
</div></div></blockquote></div><br></div>

--001a1132f70a6ce8da04f85ac629--
