Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DDFDE00C45; Fri,  4 Nov 2016 06:32:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [178.22.154.200 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp.laposte.net (smtpoutz300.laposte.net [178.22.154.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D4DDE00ACE
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2016 06:32:51 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout012 (Postfix) with ESMTP id 778E38D6F0
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2016 14:32:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1478266370; bh=dflQKvbJpUdPHu58cqMkF1ntaMae8QfXadGOGtwNJrQ=;
	h=To:Cc:Subject:References:Date:From:In-Reply-To;
	b=gXC4AVPtXwdLyles6L+avl7bvSKlctFcVneTJgJGq8sbtxVAWg+wDlcbJNGjTP9aq
	sr7iJUgokBixvvpM4xYdxVwo3hZbleZTPmnSDMlA3XeSnJMXE1PApytYU3I68UX67s
	1cOx8launYvc7+EppkwzRoQ8lPIRXp1Awnn1GACWC6DM6nZxrM2zbTfuNzqqygdlWf
	F/6eczwRzYWxVn2BbveGHfPtA3I8wuUEFHRC0FkFjQ0t0qGmDY9LtNPi0xmOaRpjY3
	kLnW3DUQ/aZwKGAvwIkqL21aKgkZiWAYbfJ0s2XfPbHMT+esYADuM4NPicymKrFyvJ
	XD1Jtop0AXngw==
Received: from lpn-prd-vrin001 (lpn-prd-vrin001.laposte [10.128.63.2])
	by lpn-prd-vrout012 (Postfix) with ESMTP id 724BD8D6E8
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2016 14:32:50 +0100 (CET)
Received: from lpn-prd-vrin001 (localhost [127.0.0.1])
	by lpn-prd-vrin001 (Postfix) with ESMTP id 5DDA6366D6F
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2016 14:32:50 +0100 (CET)
Received: from pc-mls.ecafaros.local (unknown [212.234.36.135])
	by lpn-prd-vrin001 (Postfix) with ESMTPA id D3729366D18;
	Fri,  4 Nov 2016 14:32:49 +0100 (CET)
To: "Burton, Ross" <ross.burton@intel.com>, idealsim <idealsim@laposte.net>
References: <op.yqcpvhydmnlnty@pc-mls.ecafaros.local>
	<a8763b48-7566-4974-895b-f9137e4d3e38@mlbassoc.com>
	<op.yqcrihyomnlnty@pc-mls.ecafaros.local>
	<CAJTo0LaF1+2GDymRDs0ccs1e5s+e8uSapMgWYU78RRYbCBe3bw@mail.gmail.com>
	<op.yqcsi9gbmnlnty@pc-mls.ecafaros.local>
Date: Fri, 04 Nov 2016 14:32:49 +0100
MIME-Version: 1.0
From: idealsim <idealsim@laposte.net>
Message-ID: <op.yqenwzv3mnlnty@pc-mls.ecafaros.local>
In-Reply-To: <op.yqcsi9gbmnlnty@pc-mls.ecafaros.local>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-SrcIP: 212.234.36.135
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeelvddrkeelgdehhecutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhs
X-VR-Cause-3: ucdlqddutddtmdenucfjughrpegtvffufhffggfhkfgjfgesrgdtreertderleenucfhrhhomhepihgu
X-VR-Cause-4: vggrlhhsihhmuceoihguvggrlhhsihhmsehlrghpohhsthgvrdhnvghtqeenucffohhmrghinhepohhp
X-VR-Cause-5: vghrrgdrtghomhdpghhithhhuhgsrdgtohhmnecukfhppedvuddvrddvfeegrdefiedrudefheenucfr
X-VR-Cause-6: rghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehptgdqmhhlshdrvggtrghfrghrohhsrdhl
X-VR-Cause-7: ohgtrghlpdhinhgvthepvdduvddrvdefgedrfeeirddufeehpdhmrghilhhfrhhomhepihguvggrlhhs
X-VR-Cause-8: ihhmsehlrghpohhsthgvrdhnvghtpdhrtghpthhtohepghgrrhihsehmlhgsrghsshhotgdrtghomh
X-VR-AvState: No
X-VR-State: 0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: <DKIM> Re: How to add libudev.h
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
X-List-Received-Date: Fri, 04 Nov 2016 13:32:56 -0000
Content-Type: multipart/alternative; boundary=----------peXSI4wjSpNNpzpTEm1zM2

------------peXSI4wjSpNNpzpTEm1zM2
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: Quoted-Printable

Hi, it works fine ( dev-pkgs + DEPENDS).

thanks

Micka=EBl

Le Thu, 03 Nov 2016 14:17:23 +0100, idealsim <idealsim@laposte.net> a  =

=E9crit:

> Ok, i will try to add dev-pkgs to my recipe here  =

> https://github.com/modjo756/meta-udoo-modjo/blob/krogoth-modjo/qt5-lay=
er/recipes-qt/images/udoo->image-qt5.bb  =

> and add udev to my local.conf.
> I let you know if it's work...
> Mickael
>
> Le Thu, 03 Nov 2016 14:03:04 +0100, Burton, Ross <ross.burton@intel.co=
m>  =

> a =E9crit:
>
>>
>> On 3 November 2016 at 12:55, idealsim <idealsim@laposte.net> wrote:
>>> Thanks for your answer.
>>> It seems that i didn't have DEPENDS =3D "udev".
>>> How i can add it ?
>>>        - to my local.conf
>>>        or
>>>        - to myImage.bb
>>> Regards,
>>
>> If you want to do compiling inside the image, the easy way is to just=
  =

>> add dev-pkgs to IMAGE_FEATURES for the image recipe.  This gives you =
 =

>> all of >>the headers for everything installed, which will include the=
  =

>> udev headers assuming that your image has udev.
>>
>> Ross
>
>
>
> --Utilisant le logiciel de courrier d'Opera : http://www.opera.com/mai=
l/



-- =

Utilisant le logiciel de courrier d'Opera : http://www.opera.com/mail/

------------peXSI4wjSpNNpzpTEm1zM2
Content-Type: multipart/related; boundary=----------peXSI4wjSpNNpzAvWtfsz8

------------peXSI4wjSpNNpzAvWtfsz8
Content-Type: text/html; charset=iso-8859-15
Content-ID: <op.1478266369807.fc268c735d6a88bc@172.22.9.5>
Content-Transfer-Encoding: Quoted-Printable

<!DOCTYPE html><html><head>
<style type=3D"text/css">body { font-family:'Times New Roman'; font-size=
:13px}</style>

<style type=3D"text/css">body { font-family:'Times New Roman'; font-size=
:13px}</style>
</head>
<body><div>Hi, it works fine ( dev-pkgs + DEPENDS).</div><div><br></div>=
<div>thanks</div><div><br></div><div>Micka=EBl&nbsp;</div><div><br></div=
><div>Le Thu, 03 Nov 2016 14:17:23 +0100, idealsim &lt;idealsim@laposte.=
net&gt; a =E9crit:<br></div><br><blockquote style=3D"margin: 0 0 0.80ex;=
 border-left: #0000FF 2px solid; padding-left: 1ex"><div>Ok, i will try =
to add dev-pkgs to my recipe here https://github.com/modjo756/meta-udoo-=
modjo/blob/krogoth-modjo/qt5-layer/recipes-qt/images/udoo-image-qt5.bb a=
nd add udev to my local.conf.</div><div>I let you know if it's work...</=
div><div>Mickael</div><div><br></div><div>Le Thu, 03 Nov 2016 14:03:04 +=
0100, Burton, Ross &lt;ross.burton@intel.com&gt; a =E9crit:<br></div><br=
><blockquote style=3D"margin: 0 0 0.80ex; border-left: #0000FF 2px solid=
; padding-left: 1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">On 3 November 2016 at 12:55, idealsim <span dir=3D=
"ltr">&lt;<a href=3D"mailto:idealsim@laposte.net" target=3D"_blank">idea=
lsim@laposte.net</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div id=3D":124" class=3D"a3s aXjCH m1582a430067dd664">Thanks for yo=
ur answer.<br>
It seems that i didn't have DEPENDS =3D "udev".<br>
How i can add it ?<br>
&nbsp; &nbsp; &nbsp; &nbsp; - to my local.conf<br>
&nbsp; &nbsp; &nbsp; &nbsp; or<br>
&nbsp; &nbsp; &nbsp; &nbsp; - to myImage.bb<br>
Regards,<br></div></blockquote></div><br>If you want to do compiling ins=
ide the image, the easy way is to just add dev-pkgs to IMAGE_FEATURES fo=
r the image recipe.&nbsp; This gives you all of the headers for everythi=
ng installed, which will include the udev headers assuming that your ima=
ge has udev.</div><div class=3D"gmail_extra"><br></div><div class=3D"gma=
il_extra">Ross</div></div>
</blockquote><br><br><br><div id=3D"M2Signature"><div>-- </div><div>Util=
isant le logiciel de courrier d'Opera : <a href=3D"http://www.opera.com/=
mail/">http://www.opera.com/mail/</a></div></div></blockquote><br><br><b=
r><div id=3D"M2Signature"><div>-- </div><div>Utilisant le logiciel de co=
urrier d'Opera : <a href=3D"http://www.opera.com/mail/">http://www.opera=
.com/mail/</a></div></div></body></html>

------------peXSI4wjSpNNpzAvWtfsz8--

------------peXSI4wjSpNNpzpTEm1zM2--
