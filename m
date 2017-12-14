Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 538C4E00D72; Wed, 13 Dec 2017 21:47:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49449E00D70
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 21:47:40 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id r78so9013939wme.5
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 21:47:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8uzNoAMlYjvlwna1Z1BIx/qb1o/caWz6jX+Ai+m80sA=;
	b=qEwmo/X2XSv0STPN1E4MEcJJaVy95dg6Yb/clnjaBkuGL3zc3Ob2NDKWm7JeWMw+As
	9QyYz64CY3xyJTyqJxSBeMgnmdGXOCcPLyoH4PhtJrrp3Pj6myWVNErF6Sq2ZB+L3nT+
	jpWYgDwjNhAxCL1xavl/UD59UYPZAmasz894/Ded7yXiyf+njD3JT+sgcpqAeHb4YnBZ
	fB4JFvplhBxzCYZg6Z1k4vo/17XqorZ3X97MbogJhECPvurTw0oAArow9MY5hdrrG1WE
	x+nKMRhGZL1tz0Ot/98uGeLQK3G1DPAU5mQu7J4/dlJoch74kdaCtFanjTRNfO4hMqW/
	ia3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8uzNoAMlYjvlwna1Z1BIx/qb1o/caWz6jX+Ai+m80sA=;
	b=N/zs+3wailRgBMSWlEhoHVKdrNT2avYSU0kmf4mELyJRvC016QUAxvEmZsfPmr8zYz
	H/PtLFLi1dGqTp08uPQx+88n1Ury2JhDtA36H8JAdTb9k+SccxiPjch1ZwYxG3+bnUWU
	vnMfPgxaEzmNYHPifevKiSQ2Ku7Y3vgrq+xuTc0ZB5+IvctQ9jv3zt7MS/VEqraoeR4N
	GLPEuFGxi7rKsYCLVU6O9NzNJaaBmFSRQieCVpCZjAcLE4W9P/jAa+uYjxSuHnMngKqX
	f8Cg7HCJc8pyz9RbmO65jvAgHS7xNC/4gkPVIaSpxj/8cPWzybDVqAFAnTHHjQOoGcYn
	fCyw==
X-Gm-Message-State: AKGB3mJnSAF9NZlLqZ/1lTj2KEGtbQdXdQf6nDNGcrnS3Xn+7kRWPSw/
	sxBetwvBHcHgZ5gTI7HiuilfFQgBFajZeR0QLA0=
X-Google-Smtp-Source: ACJfBos8iLGJkLW5FTCnM+wnRausBhPIxIO6cEbbMZWMKxbXaazL3cGnT19UdnshIXslxGofUuqJWyQF+JHyqhoheyg=
X-Received: by 10.28.154.70 with SMTP id c67mr549460wme.142.1513230459947;
	Wed, 13 Dec 2017 21:47:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.122.19 with HTTP; Wed, 13 Dec 2017 21:47:39 -0800 (PST)
In-Reply-To: <CAGAf8LzQcHY_rgue5oc_hurCE6yn6kMxB20tJ1=i8-eDrvUhWw@mail.gmail.com>
References: <CAF3SDA6zXJyGF-cBSXXr=D2kY59VCyj8c6TbgDkVK0NB7DmQZA@mail.gmail.com>
	<CAPyrkgxkcO+3UW4jqy9Uh0pVSRwFH9Pss5d2ihVBtRZ3Y+B08A@mail.gmail.com>
	<CAF3SDA7qCEUGNfmoJ0MXM4OAMSsC=rgnx3xPira7cZSch0ATMQ@mail.gmail.com>
	<CAF3SDA61uYo3jYxWBzhTUs0ywyXMtQGWpBAWb3VmJT5CFU9F=g@mail.gmail.com>
	<CAGAf8LzQcHY_rgue5oc_hurCE6yn6kMxB20tJ1=i8-eDrvUhWw@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 14 Dec 2017 14:47:39 +0900
Message-ID: <CA+chaQfSycF2mx+S7gV5CnkuBg2GrcWuR4WQszhDXYh-6kkTAw@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: .kernel-meta/configs folder missing make linux-raspberrypi to fail
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
X-List-Received-Date: Thu, 14 Dec 2017 05:47:42 -0000
Content-Type: multipart/alternative; boundary="001a114b44e80751810560466cb7"

--001a114b44e80751810560466cb7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm seeing the same build errors in linux-raspberrypi with various versions
of Gentoo and Ubuntu (mostly tested with 14.04 and 16.04), I doubt that
this issue is specific for Fedora 27.

On Thu, Dec 14, 2017 at 2:31 PM, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> > Also is worth noting that I'm running Fedora 27 which wasn't tested...
>
> You should start from here your investigation, since you are on not teste=
d
> YOCTO host distribution. And Fedoras are
> different from release to release, certainly!
>
> So either you should downgrade your fedora 27 to 26 (which I doubt it is
> possible), better to build brand new Fedora 26
> using exactly the same packages.
>
> Here is a bit of help: to port all the packages to fresh installed Fedora
> 26, use the following command to retrieve
> packages from Fedora 27: rpm -qa --qf "%{name}.%{arch}\n" >
> packages-list.txt
>
> Zoran
>
> On Mon, Dec 11, 2017 at 12:34 PM, Daniel. <danielhilst@gmail.com> wrote:
>
>> I can anticipate some info for you. I'm on version 2.4 Rocko. Building
>> rpi-hwup-image for MACHINE=3Drasbiberrypi3-64. Also is worth noting that=
 I'm
>> running Fedora 27 which wasn't tested...
>>
>> I'll try to get the full log tonight and let you know
>>
>> Regards
>>
>> On Dec 11, 2017 9:26 AM, "Daniel." <danielhilst@gmail.com> wrote:
>>
>>> Yeah but I got to face the error again, maybe tonight when I get home :=
)
>>>
>>> On Dec 11, 2017 9:17 AM, "Paul Barker" <pbarker@toganlabs.com> wrote:
>>>
>>>> On Sun, Dec 10, 2017 at 5:14 PM, Daniel. <danielhilst@gmail.com> wrote=
:
>>>> > Hi everybody,
>>>> >
>>>> > I'm building a vanilla image for MACHINE=3Draspberrypi3-64. I'm doin=
g
>>>> the
>>>> > build for the first time and faced an error at
>>>> > linux-raspberrypi:do_kernel_configme. I found that
>>>> .kernel-meta/configs
>>>> > folder was missing, so I fired a devshell and created it. After that
>>>> > everything works as expected and linux-raspberrypi build fines.
>>>> >
>>>> > The solution I got is palliative, what would be the real solution an=
d
>>>> what
>>>> > is this .kernel-meta folder? I had never seem this folder before.
>>>>
>>>> I have seen this issue occasionally when the do_kernel_configme task
>>>> is re-executed. A "bitbake virtual/kernel -c clean" has always
>>>> resolved this for me, allowing the next build to succeed. It doesn't
>>>> occur on my autobuild systems though so I figure it's an edge case I'm
>>>> hitting when building locally as I'm hacking around on recipes.
>>>>
>>>> I've never seen this on the first build of the kernel though.
>>>>
>>>> Which version of Yocto are you using? Could you send us the build
>>>> configuration summary and the full error messages printed by bitbake?
>>>>
>>>> Thanks,
>>>>
>>>> --
>>>> Paul Barker
>>>> Tog=C3=A1n Labs Ltd
>>>>
>>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a114b44e80751810560466cb7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m seeing the same build errors in=C2=A0linux-raspber=
rypi with various versions of Gentoo and Ubuntu (mostly tested with 14.04 a=
nd 16.04), I doubt that this issue is specific for Fedora 27.</div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Dec 14, 2017 at 2=
:31 PM, Zoran Stojsavljevic <span dir=3D"ltr">&lt;<a href=3D"mailto:zoran.s=
tojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span=
 class=3D""><span style=3D"font-size:12.8px">&gt; Also is worth noting that=
 I&#39;m running Fedora 27 which wasn&#39;t tested...=C2=A0</span><br><div>=
<span style=3D"font-size:12.8px"><br></span></div></span><div><span style=
=3D"font-size:12.8px">You should start from here your investigation, since =
you are on not tested YOCTO host distribution. And Fedoras are</span></div>=
<div><span style=3D"font-size:12.8px">different from release to release, ce=
rtainly!</span></div><div><span style=3D"font-size:12.8px"><br></span></div=
><div><span style=3D"font-size:12.8px">So either you should downgrade your =
fedora 27 to 26 (which I doubt it is possible), better to build brand new F=
edora 26</span></div><div><span style=3D"font-size:12.8px">using=C2=A0</spa=
n><span style=3D"font-size:12.8px">exactly the same packages.</span></div><=
div><span style=3D"font-size:12.8px"><br></span></div><div><span style=3D"f=
ont-size:12.8px">Here is a bit of help: to port all the packages to fresh i=
nstalled Fedora 26, use the following command to retrieve</span></div><div>=
<span style=3D"font-size:12.8px">packages=C2=A0</span><span style=3D"font-s=
ize:12.8px">from Fedora 27:=C2=A0</span><span style=3D"font-size:12.8px">rp=
m -qa --qf &quot;%{name}.%{arch}\n&quot; &gt; packages-list.txt</span></div=
><span class=3D"HOEnZb"><font color=3D"#888888"><div><span style=3D"font-si=
ze:12.8px"><br></span></div><div><span style=3D"font-size:12.8px">Zoran</sp=
an></div></font></span></div><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote"><div><div class=3D"h5">On Mon, Dec 11, 2017 at 12:34 PM, Daniel=
. <span dir=3D"ltr">&lt;<a href=3D"mailto:danielhilst@gmail.com" target=3D"=
_blank">danielhilst@gmail.com</a>&gt;</span> wrote:<br></div></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><div><div class=3D"h5"><div dir=3D"auto">I can antic=
ipate some info for you. I&#39;m on version 2.4 Rocko. Building rpi-hwup-im=
age for MACHINE=3Drasbiberrypi3-64. Also is worth noting that I&#39;m runni=
ng Fedora 27 which wasn&#39;t tested...=C2=A0<div dir=3D"auto"><br></div><d=
iv dir=3D"auto">I&#39;ll try to get the full log tonight and let you know<b=
r><div dir=3D"auto"><br></div><div dir=3D"auto">Regards</div></div></div><d=
iv class=3D"m_5991503766181612199HOEnZb"><div class=3D"m_599150376618161219=
9h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Dec 11, 2=
017 9:26 AM, &quot;Daniel.&quot; &lt;<a href=3D"mailto:danielhilst@gmail.co=
m" target=3D"_blank">danielhilst@gmail.com</a>&gt; wrote:<br type=3D"attrib=
ution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">Yeah but I got to f=
ace the error again, maybe tonight when I get home :)</div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On Dec 11, 2017 9:17 AM, &quot;Pa=
ul Barker&quot; &lt;<a href=3D"mailto:pbarker@toganlabs.com" target=3D"_bla=
nk">pbarker@toganlabs.com</a>&gt; wrote:<br type=3D"attribution"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">On Sun, Dec 10, 2017 at 5:14 PM, Daniel. &lt;<a href=
=3D"mailto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</=
a>&gt; wrote:<br>
&gt; Hi everybody,<br>
&gt;<br>
&gt; I&#39;m building a vanilla image for MACHINE=3Draspberrypi3-64. I&#39;=
m doing the<br>
&gt; build for the first time and faced an error at<br>
&gt; linux-raspberrypi:do_kernel_co<wbr>nfigme. I found that .kernel-meta/c=
onfigs<br>
&gt; folder was missing, so I fired a devshell and created it. After that<b=
r>
&gt; everything works as expected and linux-raspberrypi build fines.<br>
&gt;<br>
&gt; The solution I got is palliative, what would be the real solution and =
what<br>
&gt; is this .kernel-meta folder? I had never seem this folder before.<br>
<br>
I have seen this issue occasionally when the do_kernel_configme task<br>
is re-executed. A &quot;bitbake virtual/kernel -c clean&quot; has always<br=
>
resolved this for me, allowing the next build to succeed. It doesn&#39;t<br=
>
occur on my autobuild systems though so I figure it&#39;s an edge case I&#3=
9;m<br>
hitting when building locally as I&#39;m hacking around on recipes.<br>
<br>
I&#39;ve never seen this on the first build of the kernel though.<br>
<br>
Which version of Yocto are you using? Could you send us the build<br>
configuration summary and the full error messages printed by bitbake?<br>
<br>
Thanks,<br>
<br>
--<br>
Paul Barker<br>
Tog=C3=A1n Labs Ltd<br>
</blockquote></div></div>
</blockquote></div></div>
</div></div><br></div></div><span class=3D"">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></span></blockquote></div><br></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a114b44e80751810560466cb7--
