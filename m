Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3BB2E00B77; Sun, 30 Dec 2018 06:49:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1093 seconds by postgrey-1.32 at yocto-www;
	Sun, 30 Dec 2018 06:49:52 PST
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B3DEE00A54
	for <yocto@yoctoproject.org>; Sun, 30 Dec 2018 06:49:52 -0800 (PST)
Received: from svr-orw-mbx-02.mgc.mentorg.com ([147.34.90.202])
	by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	id 1gdc7t-0000Yo-1l from Joe_MacDonald@mentor.com ;
	Sun, 30 Dec 2018 06:31:37 -0800
Received: from svr-orw-mbx-04.mgc.mentorg.com (147.34.90.204) by
	svr-orw-mbx-02.mgc.mentorg.com (147.34.90.202) with Microsoft SMTP
	Server (TLS) id 15.0.1320.4; Sun, 30 Dec 2018 06:31:35 -0800
Received: from svr-orw-mbx-04.mgc.mentorg.com ([fe80::4967:8f7f:4a15:68a4]) by
	SVR-ORW-MBX-04.mgc.mentorg.com ([fe80::4967:8f7f:4a15:68a4%22]) with
	mapi id 15.00.1320.000; Sun, 30 Dec 2018 06:31:34 -0800
From: "MacDonald, Joe" <Joe_MacDonald@mentor.com>
To: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Thread-Topic: [yocto] [selinux] sumo compilation
Thread-Index: AQHUoDL5d9KkUCW5mU63DpjTlvGaVKWXWFWf
Date: Sun, 30 Dec 2018 14:31:34 +0000
Message-ID: <a075bc8f-aae5-443c-ba5d-a75eb6b05e58@email.android.com>
References: <ead8ad97-856d-03bb-4444-dc6e4a472d61@kernel.org>
	<20181017232705.HQN68.75473.root@cdptpa-web09>
	<CAKRytNw_TCeqAfN9TG2y6L6WAO+FNZkzE2S7DWyBM9OzWZQ18Q@mail.gmail.com>
	<004d01d466e9$3c7daf70$b5790e50$@san.rr.com>
	<0cba098f-4179-ec8a-73a5-bb2815806e59@kernel.org>
	<9dd76a25-1560-5bca-64d3-e6dd57a44ccc@windriver.com>
	<20181018190803.GB25172@mentor.com>	<20181024234913.GA11980@deserted.net>
	<8a5b43c6-85eb-dd7a-ceee-d10f6977cca3@kernel.org>,
	<CAKRytNw3Ct9mc1SVCRKDg8cK+KUvuQLhVoSD-7vJPu93eSk9Aw@mail.gmail.com>
In-Reply-To: <CAKRytNw3Ct9mc1SVCRKDg8cK+KUvuQLhVoSD-7vJPu93eSk9Aw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [selinux] sumo compilation
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
X-List-Received-Date: Sun, 30 Dec 2018 14:49:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_a075bc8faae5443cba5da75eb6b05e58emailandroidcom_"

--_000_a075bc8faae5443cba5da75eb6b05e58emailandroidcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have both ready to go, there's been a few hiccups with my access to the g=
it server. I'll push my queued changes somewhere public when I get to a key=
board later today so at least everyone can see what's coming.

-J.

On Dec 30, 2018 6:29 AM, Stefano Cappa <stefano.cappa.ks89@gmail.com> wrote=
:
Are there any news about this? Also for thud branch.

Il mar 30 ott 2018, 14:46 Sinan Kaya <okaya@kernel.org<mailto:okaya@kernel.=
org>> ha scritto:
On 10/24/2018 7:49 PM, Joe MacDonald wrote:
> Hey all,
>
> I just thought I should quickly follow up on this.  I have a change set
> ready that includes tagging and a minor tweak for sumo, integration of
> the current outstanding patch list and a tag for thud and a couple of
> additional things (possibly) for post-thud.  I'll send out a set for
> sumo and maybe an additional one for thud/post- possibly tomorrow or
> after I get home on Friday.

Thanks, we are looking forward to see it on yocto.

>
> -J.

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto

--_000_a075bc8faae5443cba5da75eb6b05e58emailandroidcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta content=3D"text/html; charset=3Dutf-8">
</head>
<body>
<div dir=3D"auto">I have both ready to go, there's been a few hiccups with =
my access to the git server. I'll push my queued changes somewhere public w=
hen I get to a keyboard later today so at least everyone can see what's com=
ing.&nbsp;
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">-J.</div>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Dec 30, 2018 6:29 AM, Stefano Cappa &lt;stefa=
no.cappa.ks89@gmail.com&gt; wrote:<br type=3D"attribution">
</div>
</div>
<div>Are there any news about this? Also for thud branch.&nbsp;
<div><br>
<div class=3D"gmail_quote">
<div dir=3D"ltr">Il mar 30 ott 2018, 14:46 Sinan Kaya &lt;<a href=3D"mailto=
:okaya@kernel.org">okaya@kernel.org</a>&gt; ha scritto:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
On 10/24/2018 7:49 PM, Joe MacDonald wrote:<br>
&gt; Hey all,<br>
&gt; <br>
&gt; I just thought I should quickly follow up on this.&nbsp; I have a chan=
ge set<br>
&gt; ready that includes tagging and a minor tweak for sumo, integration of=
<br>
&gt; the current outstanding patch list and a tag for thud and a couple of<=
br>
&gt; additional things (possibly) for post-thud.&nbsp; I'll send out a set =
for<br>
&gt; sumo and maybe an additional one for thud/post- possibly tomorrow or<b=
r>
&gt; after I get home on Friday.<br>
<br>
Thanks, we are looking forward to see it on yocto.<br>
<br>
&gt; <br>
&gt; -J.<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_a075bc8faae5443cba5da75eb6b05e58emailandroidcom_--
