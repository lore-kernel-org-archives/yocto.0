Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C18DE00C93; Thu, 12 Jan 2017 14:16:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F32A7E00C88
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 14:16:41 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 12 Jan 2017 14:16:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,220,1477983600"; 
	d="scan'208,217";a="1093399825"
Received: from ttorling-mac01.jf.intel.com ([10.24.10.84])
	by fmsmga001.fm.intel.com with ESMTP; 12 Jan 2017 14:16:40 -0800
From: Tim Orling <timothy.t.orling@linux.intel.com>
Message-Id: <400C69D6-2DE9-4994-AB53-AA216FD44C79@linux.intel.com>
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Date: Thu, 12 Jan 2017 14:16:40 -0800
In-Reply-To: <CAD4b0_+qT-rdOWUjcx6FEkgHSg_8M+2=speaGxFUw=uUon8NTg@mail.gmail.com>
To: =?utf-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
	<990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
	<CAD4b0_KFHF9o29giYkdJXA+RvwmTnHJ=V9ubY2Zz2s7Wwt7KoA@mail.gmail.com>
	<CAC+thW1osKnAEFqaDtQe-+9pE6JpSJUMeU86Yb+GE5oQ9XDZzg@mail.gmail.com>
	<CAD4b0_+qT-rdOWUjcx6FEkgHSg_8M+2=speaGxFUw=uUon8NTg@mail.gmail.com>
X-Mailer: Apple Mail (2.3259)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Thu, 12 Jan 2017 22:16:53 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1EFDECF2-7114-40CF-8797-876DD74B15C6"

--Apple-Mail=_1EFDECF2-7114-40CF-8797-876DD74B15C6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jan 12, 2017, at 10:43 AM, Maciej Borz=C4=99cki =
<maciej.borzecki@rndity.com> wrote:
>=20
> On Thu, Jan 12, 2017 at 7:12 PM, Andrea Galbusera <gizero@gmail.com =
<mailto:gizero@gmail.com>> wrote:
>> On Thu, Jan 12, 2017 at 6:55 PM, Maciej Borz=C4=99cki
>> <maciej.borzecki@rndity.com> wrote:
>>>=20
>>> On Thu, Jan 12, 2017 at 4:39 PM, Tim Orling
>>> <timothy.t.orling@linux.intel.com> wrote:
>>>> You can also build using Docker containers:
>>>> https://github.com/crops/docker-win-mac-docs/wiki
>>>=20
>>> IIRC docker on mac relies on docker-machine, which in turn spins up =
a
>>> virtualbox VM.
>>=20
>>=20
>> Not anymore! There's a native implementation [1] but still a linux =
kernel
>> around anyway! ;-)
>>=20
>> [1]
>> =
https://www.docker.com/docker-news-an.d-press/docker-released-native-mac-a=
nd-windows-apps-optimize-developer-experience
>=20
> Good to know. There is still hope for mac users after all :)

My main development machine is Mac OS X 10.12.2 (Sierra). I stay up to =
date with the latest Docker for Mac beta. It is a very pleasant =
experience.

>=20
>>>=20
>>>=20
>>>=20
>>>>=20
>>>> On Jan 12, 2017, at 7:34 AM, Burton, Ross <ross.burton@intel.com> =
wrote:
>>>>=20
>>>>=20
>>>> On 12 January 2017 at 15:14, Roger Smith <roger@sentientblue.com> =
wrote:
>>>>>=20
>>>>> Is there any documentation for running the Yocto build system on =
Mac OS
>>>>> X
>>>>> or macOS as Apple now calls it? I am working with the Intel Aero =
board.
>>>>> Before I go down the rabbit hole of fixing issues like this one =
(and I
>>>>> am
>>>>> using the bash shell), I=E2=80=99d like to know if anyone has =
build it on os x
>>>>> before.
>>>>=20
>>>>=20
>>>> If you install all of the GNU tools using brew or similar and put =
them
>>>> first
>>>> on $PATH then you can get bitbake started.  Then you need to stub =
out
>>>> the
>>>> linux-specific bits in bitbake.  I've previously started on this =
work
>>>> already
>>>>=20
>>>> =
(http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dross/darw=
in).
>>>> The next step is figuring out how to configure OE to build and link
>>>> natively
>>>> on OSX using LLVM instead of GCC.
>>>>=20
>>>> However all of this is mostly academic because in Sierra (iirc) =
onwards
>>>> there is tighter security on processes, which means that pseudo =
won't
>>>> work
>>>> even if you port it to macOS.
>>>>=20
>>>> So unless you fancy some non-trivial engineering the short version =
is
>>>> just
>>>> use something like Docker to run a Linux system on your Mac.
>>>>=20
>>>> Ross
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>=20
>>>>=20
>>>>=20
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>=20
>>>=20
>>>=20
>>>=20
>>> --
>>> Maciej Borzecki
>>> RnDity
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>>=20
>=20
>=20
>=20
> --=20
> Maciej Borzecki
> RnDity


--Apple-Mail=_1EFDECF2-7114-40CF-8797-876DD74B15C6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jan 12, 2017, at 10:43 AM, Maciej Borz=C4=99cki &lt;<a =
href=3D"mailto:maciej.borzecki@rndity.com" =
class=3D"">maciej.borzecki@rndity.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><span =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">On Thu, Jan 12, 2017 at 7:12 PM, Andrea =
Galbusera &lt;</span><a href=3D"mailto:gizero@gmail.com" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" =
class=3D"">gizero@gmail.com</a><span style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">&gt; wrote:</span><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><blockquote type=3D"cite" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" =
class=3D"">On Thu, Jan 12, 2017 at 6:55 PM, Maciej Borz=C4=99cki<br =
class=3D"">&lt;<a href=3D"mailto:maciej.borzecki@rndity.com" =
class=3D"">maciej.borzecki@rndity.com</a>&gt; wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D""><br class=3D"">On Thu, =
Jan 12, 2017 at 4:39 PM, Tim Orling<br class=3D"">&lt;<a =
href=3D"mailto:timothy.t.orling@linux.intel.com" =
class=3D"">timothy.t.orling@linux.intel.com</a>&gt; wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D"">You can also build using =
Docker containers:<br class=3D""><a =
href=3D"https://github.com/crops/docker-win-mac-docs/wiki" =
class=3D"">https://github.com/crops/docker-win-mac-docs/wiki</a><br =
class=3D""></blockquote><br class=3D"">IIRC docker on mac relies on =
docker-machine, which in turn spins up a<br class=3D"">virtualbox VM.<br =
class=3D""></blockquote><br class=3D""><br class=3D"">Not anymore! =
There's a native implementation [1] but still a linux kernel<br =
class=3D"">around anyway! ;-)<br class=3D""><br class=3D"">[1]<br =
class=3D""><a =
href=3D"https://www.docker.com/docker-news-an.d-press/docker-released-nati=
ve-mac-and-windows-apps-optimize-developer-experience" =
class=3D"">https://www.docker.com/docker-news-an.d-press/docker-released-n=
ative-mac-and-windows-apps-optimize-developer-experience</a><br =
class=3D""></blockquote><br style=3D"font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><span=
 style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">Good to know. There is still hope for mac users =
after all :)</span><br style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""></div></blockquote><div><br class=3D""></div>My main =
development machine is Mac OS X 10.12.2 (Sierra). I stay up to date with =
the latest Docker for Mac beta. It is a very pleasant =
experience.</div><div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><br style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><blockquote type=3D"cite" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" class=3D""><blockquote type=3D"cite" =
class=3D""><br class=3D""><br class=3D""><br class=3D""><blockquote =
type=3D"cite" class=3D""><br class=3D"">On Jan 12, 2017, at 7:34 AM, =
Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:<br class=3D""><br =
class=3D""><br class=3D"">On 12 January 2017 at 15:14, Roger Smith =
&lt;<a href=3D"mailto:roger@sentientblue.com" =
class=3D"">roger@sentientblue.com</a>&gt; wrote:<br class=3D""><blockquote=
 type=3D"cite" class=3D""><br class=3D"">Is there any documentation for =
running the Yocto build system on Mac OS<br class=3D"">X<br class=3D"">or =
macOS as Apple now calls it? I am working with the Intel Aero board.<br =
class=3D"">Before I go down the rabbit hole of fixing issues like this =
one (and I<br class=3D"">am<br class=3D"">using the bash shell), I=E2=80=99=
d like to know if anyone has build it on os x<br class=3D"">before.<br =
class=3D""></blockquote><br class=3D""><br class=3D"">If you install all =
of the GNU tools using brew or similar and put them<br class=3D"">first<br=
 class=3D"">on $PATH then you can get bitbake started. &nbsp;Then you =
need to stub out<br class=3D"">the<br class=3D"">linux-specific bits in =
bitbake. &nbsp;I've previously started on this work<br =
class=3D"">already<br class=3D""><br class=3D"">(<a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dro=
ss/darwin" =
class=3D"">http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3D=
ross/darwin</a>).<br class=3D"">The next step is figuring out how to =
configure OE to build and link<br class=3D"">natively<br class=3D"">on =
OSX using LLVM instead of GCC.<br class=3D""><br class=3D"">However all =
of this is mostly academic because in Sierra (iirc) onwards<br =
class=3D"">there is tighter security on processes, which means that =
pseudo won't<br class=3D"">work<br class=3D"">even if you port it to =
macOS.<br class=3D""><br class=3D"">So unless you fancy some non-trivial =
engineering the short version is<br class=3D"">just<br class=3D"">use =
something like Docker to run a Linux system on your Mac.<br class=3D""><br=
 class=3D"">Ross<br class=3D"">--<br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br class=3D""><br=
 class=3D""><br class=3D""><br class=3D"">--<br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D"">yocto@yoctoproject.org<br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br class=3D""><br=
 class=3D""></blockquote><br class=3D""><br class=3D""><br =
class=3D"">--<br class=3D"">Maciej Borzecki<br class=3D"">RnDity<br =
class=3D"">--<br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></blockquote><br class=3D""><br class=3D""></blockquote><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><br style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><br style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">Maciej =
Borzecki</span><br style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">RnDity</span></div></blockquote></div><br =
class=3D""></body></html>=

--Apple-Mail=_1EFDECF2-7114-40CF-8797-876DD74B15C6--
