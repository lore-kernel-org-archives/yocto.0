Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12797E008EA; Tue, 17 Mar 2015 14:12:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5FEEE00753
	for <yocto@yoctoproject.org>; Tue, 17 Mar 2015 14:12:38 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t2HLCY5l002967
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 17 Mar 2015 14:12:34 -0700 (PDT)
Received: from ALA-MBA.corp.ad.wrs.com ([169.254.2.14]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0224.002;
	Tue, 17 Mar 2015 14:12:34 -0700
From: "Ashfield, Bruce" <Bruce.Ashfield@windriver.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Thread-Topic: [yocto] Kernel configuration fragments and defconfig from
	kernel source tree, not meta layer file
Thread-Index: AQHQYNxG+Y2njfUaL0qQcxlojLUcup0hj8OAgAAPSgD//41nnw==
Date: Tue, 17 Mar 2015 21:12:34 +0000
Message-ID: <965CCEF8-C28E-4F71-A3C5-8CA04EEAE9BD@windriver.com>
References: <55086B23.1030203@dynamicdevices.co.uk>
	<CADkTA4P0JpDfegzWM--jKxUdpxC09T+ki9JOTkOeGbK4SuK1Lg@mail.gmail.com>,
	<CAK18fxHV0ukPFYYZuBFe3E1XFMRsHJU__q75qq+XLP74dbDp8w@mail.gmail.com>
In-Reply-To: <CAK18fxHV0ukPFYYZuBFe3E1XFMRsHJU__q75qq+XLP74dbDp8w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Kernel configuration fragments and defconfig from kernel source tree, not meta layer file
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
X-List-Received-Date: Tue, 17 Mar 2015 21:12:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_965CCEF8C28E4F71A3C58CA04EEAE9BDwindrivercom_"

--_000_965CCEF8C28E4F71A3C58CA04EEAE9BDwindrivercom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable




On Mar 17, 2015, at 4:04 PM, Andrei Gherzan <andrei@gherzan.ro<mailto:andre=
i@gherzan.ro>> wrote:



On Tue, Mar 17, 2015 at 9:08 PM, Bruce Ashfield <bruce.ashfield@gmail.com<m=
ailto:bruce.ashfield@gmail.com>> wrote:
On Tue, Mar 17, 2015 at 1:57 PM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk<mailto:ajlennon@dynamicdevices.co.uk>> wrote=
:
> Hi,
>
> I've been looking into a request to have Yocto kernel configuration
> fragment support in meta-raspberrypi with a defconfig which is pulled
> from the kernel source tree for the configured machine.
>
> My understanding is that Yocto expects the defconfig file to be supplied
> in the meta-layer and then configured with SRC_URI +=3D "file://defconfig=
"
>
> We'd prefer not to maintain copies of defconfigs, instead using the true
> default configuration from the kernel tree and allowing users to add
> their own .cfg fragments to the SRC_URI via, say, .bbappends.

Anyone who knows me, knows that I'd say I hate to see defconfigs
at all ;)

But back on topic, this is something I can change, it is simply that
when I first put together the linux-yocto kernel configuration steps,
that most defconfigs were actually out of tree, and not within the kernel
tree itself.

>
> It's easy enough to _prepend() a function to copy the appropriate
> defconfig from the kernel source to the working directory, but I am
> having a problem as do_patch() in kernel-yocto.bbclass seems to require
> a defconfig file from the layer itself via use of SRC_URI in find_sccs().
>
> Any thoughts? Thanks,

Pop an enhancement request into the yocto bugzilla and assign it to
me. I can take care of it from there.

But just to be clear, this will have to stay out of oe-core for a bit, sinc=
e
it is past feature freeze for 1.8 and even bug fixes are cut off shortly.


There is absolutely no way we can have this for 1.8? It's a minor thing. An=
d would help us a lot.


To do this right .. It isn't completely minor (not huge ... But not trivial=
). We'll be exposing / creating an interface for this to any number of reci=
pes. I'd rather do it once, than to do it quickly and have to fix it three =
times. Or come up with something clunky.

Making a temporary copy of those defconfigs carries no risk to the release =
... So we have to balance and consider that

That being said, I'll see what I can do and can log it in a bugzilla ... Th=
ere are some tools only options (versus tools and recipes)

Bruce







--
Andrei Gherzan
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto

--_000_965CCEF8C28E4F71A3C58CA04EEAE9BDwindrivercom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body dir=3D"auto">
<div><br>
<br>
</div>
<div><br>
On Mar 17, 2015, at 4:04 PM, Andrei Gherzan &lt;<a href=3D"mailto:andrei@gh=
erzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
<br>
</div>
<blockquote type=3D"cite">
<div>
<div dir=3D"ltr"><br>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Tue, Mar 17, 2015 at 9:08 PM, Bruce Ashfield =
<span dir=3D"ltr">
&lt;<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ash=
field@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<span class=3D"">On Tue, Mar 17, 2015 at 1:57 PM, Alex J Lennon<br>
&lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk">ajlennon@dynamicdevice=
s.co.uk</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I've been looking into a request to have Yocto kernel configuration<br=
>
&gt; fragment support in meta-raspberrypi with a defconfig which is pulled<=
br>
&gt; from the kernel source tree for the configured machine.<br>
&gt;<br>
&gt; My understanding is that Yocto expects the defconfig file to be suppli=
ed<br>
&gt; in the meta-layer and then configured with SRC_URI &#43;=3D &quot;file=
://defconfig&quot;<br>
&gt;<br>
&gt; We'd prefer not to maintain copies of defconfigs, instead using the tr=
ue<br>
&gt; default configuration from the kernel tree and allowing users to add<b=
r>
&gt; their own .cfg fragments to the SRC_URI via, say, .bbappends.<br>
<br>
</span>Anyone who knows me, knows that I'd say I hate to see defconfigs<br>
at all ;)<br>
<br>
But back on topic, this is something I can change, it is simply that<br>
when I first put together the linux-yocto kernel configuration steps,<br>
that most defconfigs were actually out of tree, and not within the kernel<b=
r>
tree itself.<br>
<span class=3D""><br>
&gt;<br>
&gt; It's easy enough to _prepend() a function to copy the appropriate<br>
&gt; defconfig from the kernel source to the working directory, but I am<br=
>
&gt; having a problem as do_patch() in kernel-yocto.bbclass seems to requir=
e<br>
&gt; a defconfig file from the layer itself via use of SRC_URI in find_sccs=
().<br>
&gt;<br>
&gt; Any thoughts? Thanks,<br>
<br>
</span>Pop an enhancement request into the yocto bugzilla and assign it to<=
br>
me. I can take care of it from there.<br>
<br>
But just to be clear, this will have to stay out of oe-core for a bit, sinc=
e<br>
it is past feature freeze for 1.8 and even bug fixes are cut off shortly.<b=
r>
<br>
</blockquote>
<div><br>
</div>
<div>There is absolutely no way we can have this for 1.8? It's a minor thin=
g. And would help us a lot.&nbsp;</div>
</div>
<br clear=3D"all">
</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>To do this right .. It isn't completely minor (not huge ... But not tr=
ivial). We'll be exposing / creating an interface for this to any number of=
 recipes. I'd rather do it once, than to do it quickly and have to fix it t=
hree times. Or come up with something
 clunky.</div>
<div><br>
</div>
<div>Making a temporary copy of those defconfigs carries no risk to the rel=
ease ... So we have to balance and consider that</div>
<div><br>
</div>
<div>That being said, I'll see what I can do and can log it in a bugzilla .=
.. There are some tools only options (versus tools and recipes)</div>
<div><br>
</div>
<div>Bruce</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<br>
<blockquote type=3D"cite">
<div>
<div dir=3D"ltr">
<div class=3D"gmail_extra">
<div><br>
</div>
-- <br>
<div class=3D"gmail_signature">
<div dir=3D"ltr">
<div style=3D"text-align:center"></div>
<div style=3D"text-align:center">
<div align=3D"left"><b style=3D"font-family:Arial;font-size:small;color:rgb=
(51,51,51);text-align:center">Andrei Gherzan</b><br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
<blockquote type=3D"cite">
<div><span>-- </span><br>
<span>_______________________________________________</span><br>
<span>yocto mailing list</span><br>
<span><a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><=
/span><br>
<span><a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lis=
ts.yoctoproject.org/listinfo/yocto</a></span><br>
</div>
</blockquote>
</body>
</html>

--_000_965CCEF8C28E4F71A3C58CA04EEAE9BDwindrivercom_--
