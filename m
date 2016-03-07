Return-Path: <mkbrown32@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21E29E00BE8; Sun,  6 Mar 2016 17:01:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mkbrown32[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.190.150 listed in list.dnswl.org]
Received: from BAY004-OMC3S12.hotmail.com (bay004-omc3s12.hotmail.com
	[65.54.190.150])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D41D4E0084E
	for <yocto@yoctoproject.org>; Sun,  6 Mar 2016 17:01:24 -0800 (PST)
Received: from BAY181-W91 ([65.54.190.189]) by BAY004-OMC3S12.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Sun, 6 Mar 2016 17:01:23 -0800
X-TMN: [yzbY6l2cEckyiNMTuD2CLwTpkbIF5IfW]
X-Originating-Email: [mkbrown32@hotmail.com]
Message-ID: <BAY181-W91A65C1B02CFC15DBB4178AEB10@phx.gbl>
From: Mark Brown <mkbrown32@hotmail.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Sun, 6 Mar 2016 17:01:22 -0800
Importance: Normal
In-Reply-To: <31886292-F1E6-477C-B24E-BFB9F7493942@keylevel.com>
References: <BAY181-W538F4FDB696298C602C191AEB00@phx.gbl>,
	<31886292-F1E6-477C-B24E-BFB9F7493942@keylevel.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 07 Mar 2016 01:01:23.0732 (UTC)
	FILETIME=[DE70A540:01D1780C]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Controlling Bitbake Memory usage under Windows/Virtualbox/Ubuntu platform
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
X-List-Received-Date: Mon, 07 Mar 2016 01:01:28 -0000
Content-Type: multipart/alternative;
	boundary="_3d7304ae-f324-4f1d-b750-1c77024857dc_"

--_3d7304ae-f324-4f1d-b750-1c77024857dc_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Again=2C how is the Bitbake module terminated and then re-run=2C
picking up its place in the sequence of tasks where it left off ?
=20
=20
Subject: Re: [yocto] Controlling Bitbake Memory usage under Windows/Virtual=
box/Ubuntu platform
From: opensource@keylevel.com
Date: Sun=2C 6 Mar 2016 22:38:41 +0000
CC: yocto@yoctoproject.org
To: mkbrown32@hotmail.com

On 6 Mar 2016=2C at 22:08=2C Mark Brown <mkbrown32@hotmail.com> wrote:
I do not see anything in the Bitbake manual for controlling how much memory
Bitbake should consider itself entitled to consume in the=20
development platform within which it runs.
=20
Running it on //Windows 7 64//i7-2620M//Virtualbox//Ubuntu 14 32-bit//=2C
I told Virtualbox to allow Ubuntu to use 1.5 GBytes=2C but Windows Task Man=
ager
indicates the whole Virtualbox/Ubuntu thread is using only 160 MBytes=20
-- and is generating approximately 1=2C000 page faults per second.

What memory usage does the Ubuntu VM report?
 Perhaps as a result=2C this Gumstix Overo build has completed only 760 out=
 of 3792
total tasks in 21 hours -- at this rate it will complete in 5-6 days.

Not used a VM to build in ages=2C but I used to build an image from scratch=
 in about 10 hours running on a dual core Macbook Pro. The same build takes=
 about 1 hour on an 8 thread i7 with 16GB RAM and SSDs for the build work a=
rea=2C peaking at about 10GB RAM usage with local.conf set to use 16 thread=
s and 16 parallel makes (BB_NUMBER_THREADS and PARALLEL_MAKE both at 16) - =
later Yocto versions set these for you based on the number of cores availab=
le to the build host.
Another thing to consider - if this is the first build=2C then you=92ll be =
downloading a load of stuff from the internet. How fast is your connection?=
 Subsequent builds will be much quicker as the files required will then be =
stored locally.
 How does the user terminate Bitbake at its current stage=2C increase the m=
emory it is using=2C
and then restart in order to speed up this process ?
=20
-- _______________________________________________yocto mailing listyocto@y=
octoproject.orghttps://lists.yoctoproject.org/listinfo/yocto

--
Chris Tappopensource@keylevel.comwww.keylevel.com
----You can tell you're getting older when your car insurance gets real che=
ap!


 		 	   		  =

--_3d7304ae-f324-4f1d-b750-1c77024857dc_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Again=2C how is the Bitbake modu=
le terminated and then re-run=2C<BR>picking up its place in&nbsp=3Bthe&nbsp=
=3Bsequence of tasks where it left off ?<BR>&nbsp=3B<BR><br />&nbsp=3B<BR><=
div><hr id=3D"stopSpelling">Subject&#58=3B Re&#58=3B [yocto] Controlling Bi=
tbake Memory usage under Windows/Virtualbox/Ubuntu platform<br>From&#58=3B =
opensource@keylevel.com<br>Date&#58=3B Sun=2C 6 Mar 2016 22&#58=3B38&#58=3B=
41 +0000<br>CC&#58=3B yocto@yoctoproject.org<br>To&#58=3B mkbrown32@hotmail=
.com<br><br>On 6 Mar 2016=2C at 22&#58=3B08=2C Mark Brown &lt=3B<a href=3D"=
mailto&#58=3Bmkbrown32@hotmail.com">mkbrown32@hotmail.com</a>&gt=3B wrote&#=
58=3B<br><div><blockquote><br class=3DecxApple-interchange-newline><div><di=
v dir=3Dltr style=3D"font-family&#58=3BCalibri=3Bfont-size&#58=3B16px=3Bfon=
t-style&#58=3Bnormal=3Bfont-variant&#58=3Bnormal=3Bfont-weight&#58=3Bnormal=
=3Bletter-spacing&#58=3Bnormal=3Btext-align&#58=3Bstart=3Btext-indent&#58=
=3B0px=3Btext-transform&#58=3Bnone=3Bwhite-space&#58=3Bnormal=3Bword-spacin=
g&#58=3B0px=3B">I do not see anything in the Bitbake manual for controlling=
 how much memory<br>Bitbake should consider itself entitled to consume in t=
he<span class=3DecxApple-converted-space>&#160=3B</span><br>development pla=
tform within which it runs.<br>&#160=3B<br>Running it on //Windows 7 64//i7=
-2620M//Virtualbox//Ubuntu 14 32-bit//=2C<br>I told Virtualbox to allow Ubu=
ntu to use 1.5 GBytes=2C but Windows Task Manager<br>indicates the whole Vi=
rtualbox/Ubuntu thread is using only 160 MBytes<span class=3DecxApple-conve=
rted-space>&#160=3B</span><br>--&#160=3Band is generating approximately 1=
=2C000 page faults per second.<br></div></div></blockquote><div><br></div><=
div>What memory usage does the Ubuntu VM report?</div><br><blockquote><div>=
<div dir=3Dltr style=3D"font-family&#58=3BCalibri=3Bfont-size&#58=3B16px=3B=
font-style&#58=3Bnormal=3Bfont-variant&#58=3Bnormal=3Bfont-weight&#58=3Bnor=
mal=3Bletter-spacing&#58=3Bnormal=3Btext-align&#58=3Bstart=3Btext-indent&#5=
8=3B0px=3Btext-transform&#58=3Bnone=3Bwhite-space&#58=3Bnormal=3Bword-spaci=
ng&#58=3B0px=3B">&#160=3BPerhaps as a result=2C this Gumstix Overo build ha=
s completed only 760 out of 3792<br>total tasks in 21 hours -- at this rate=
 it will complete in 5-6 days.<br></div></div></blockquote><div><br></div><=
div>Not used a VM to build in ages=2C but I used to build an image from scr=
atch in about 10 hours running on a dual core Macbook Pro. The same build t=
akes about 1 hour on an 8 thread i7 with 16GB RAM and SSDs for the build wo=
rk area=2C peaking at about 10GB RAM usage with local.conf set to use 16 th=
reads and 16 parallel makes (BB_NUMBER_THREADS and PARALLEL_MAKE both at 16=
) - later Yocto versions set these for you based on the number of cores ava=
ilable to the build host.</div><div><br></div><div>Another thing to conside=
r - if this is the first build=2C then you=92ll be downloading a load of st=
uff from the internet. How fast is your connection? Subsequent builds will =
be much quicker as the files required will then be stored locally.</div><br=
><blockquote><div><div dir=3Dltr style=3D"font-family&#58=3BCalibri=3Bfont-=
size&#58=3B16px=3Bfont-style&#58=3Bnormal=3Bfont-variant&#58=3Bnormal=3Bfon=
t-weight&#58=3Bnormal=3Bletter-spacing&#58=3Bnormal=3Btext-align&#58=3Bstar=
t=3Btext-indent&#58=3B0px=3Btext-transform&#58=3Bnone=3Bwhite-space&#58=3Bn=
ormal=3Bword-spacing&#58=3B0px=3B">&#160=3BHow does the user terminate Bitb=
ake at its current stage=2C increase the memory it is using=2C<br>and then =
restart in order to speed up this process ?<br>&#160=3B<br></div><span styl=
e=3D"font-family&#58=3BCalibri=3Bfont-size&#58=3B16px=3Bfont-style&#58=3Bno=
rmal=3Bfont-variant&#58=3Bnormal=3Bfont-weight&#58=3Bnormal=3Bletter-spacin=
g&#58=3Bnormal=3Btext-align&#58=3Bstart=3Btext-indent&#58=3B0px=3Btext-tran=
sform&#58=3Bnone=3Bwhite-space&#58=3Bnormal=3Bword-spacing&#58=3B0px=3Bdisp=
lay&#58=3Binline !important=3B">--<span class=3DecxApple-converted-space>&#=
160=3B</span></span><br style=3D"font-family&#58=3BCalibri=3Bfont-size&#58=
=3B16px=3Bfont-style&#58=3Bnormal=3Bfont-variant&#58=3Bnormal=3Bfont-weight=
&#58=3Bnormal=3Bletter-spacing&#58=3Bnormal=3Btext-align&#58=3Bstart=3Btext=
-indent&#58=3B0px=3Btext-transform&#58=3Bnone=3Bwhite-space&#58=3Bnormal=3B=
word-spacing&#58=3B0px=3B"><span style=3D"font-family&#58=3BCalibri=3Bfont-=
size&#58=3B16px=3Bfont-style&#58=3Bnormal=3Bfont-variant&#58=3Bnormal=3Bfon=
t-weight&#58=3Bnormal=3Bletter-spacing&#58=3Bnormal=3Btext-align&#58=3Bstar=
t=3Btext-indent&#58=3B0px=3Btext-transform&#58=3Bnone=3Bwhite-space&#58=3Bn=
ormal=3Bword-spacing&#58=3B0px=3Bdisplay&#58=3Binline !important=3B">______=
_________________________________________</span><br style=3D"font-family&#5=
8=3BCalibri=3Bfont-size&#58=3B16px=3Bfont-style&#58=3Bnormal=3Bfont-variant=
&#58=3Bnormal=3Bfont-weight&#58=3Bnormal=3Bletter-spacing&#58=3Bnormal=3Bte=
xt-align&#58=3Bstart=3Btext-indent&#58=3B0px=3Btext-transform&#58=3Bnone=3B=
white-space&#58=3Bnormal=3Bword-spacing&#58=3B0px=3B"><span style=3D"font-f=
amily&#58=3BCalibri=3Bfont-size&#58=3B16px=3Bfont-style&#58=3Bnormal=3Bfont=
-variant&#58=3Bnormal=3Bfont-weight&#58=3Bnormal=3Bletter-spacing&#58=3Bnor=
mal=3Btext-align&#58=3Bstart=3Btext-indent&#58=3B0px=3Btext-transform&#58=
=3Bnone=3Bwhite-space&#58=3Bnormal=3Bword-spacing&#58=3B0px=3Bdisplay&#58=
=3Binline !important=3B">yocto mailing list</span><br style=3D"font-family&=
#58=3BCalibri=3Bfont-size&#58=3B16px=3Bfont-style&#58=3Bnormal=3Bfont-varia=
nt&#58=3Bnormal=3Bfont-weight&#58=3Bnormal=3Bletter-spacing&#58=3Bnormal=3B=
text-align&#58=3Bstart=3Btext-indent&#58=3B0px=3Btext-transform&#58=3Bnone=
=3Bwhite-space&#58=3Bnormal=3Bword-spacing&#58=3B0px=3B"><a href=3D"mailto&=
#58=3Byocto@yoctoproject.org" style=3D"font-family&#58=3BCalibri=3Bfont-siz=
e&#58=3B16px=3Bfont-style&#58=3Bnormal=3Bfont-variant&#58=3Bnormal=3Bfont-w=
eight&#58=3Bnormal=3Bletter-spacing&#58=3Bnormal=3Btext-align&#58=3Bstart=
=3Btext-indent&#58=3B0px=3Btext-transform&#58=3Bnone=3Bwhite-space&#58=3Bno=
rmal=3Bword-spacing&#58=3B0px=3B">yocto@yoctoproject.org</a><br style=3D"fo=
nt-family&#58=3BCalibri=3Bfont-size&#58=3B16px=3Bfont-style&#58=3Bnormal=3B=
font-variant&#58=3Bnormal=3Bfont-weight&#58=3Bnormal=3Bletter-spacing&#58=
=3Bnormal=3Btext-align&#58=3Bstart=3Btext-indent&#58=3B0px=3Btext-transform=
&#58=3Bnone=3Bwhite-space&#58=3Bnormal=3Bword-spacing&#58=3B0px=3B"><a href=
=3D"https&#58=3B//lists.yoctoproject.org/listinfo/yocto" style=3D"font-fami=
ly&#58=3BCalibri=3Bfont-size&#58=3B16px=3Bfont-style&#58=3Bnormal=3Bfont-va=
riant&#58=3Bnormal=3Bfont-weight&#58=3Bnormal=3Bletter-spacing&#58=3Bnormal=
=3Btext-align&#58=3Bstart=3Btext-indent&#58=3B0px=3Btext-transform&#58=3Bno=
ne=3Bwhite-space&#58=3Bnormal=3Bword-spacing&#58=3B0px=3B" target=3D_blank>=
https&#58=3B//lists.yoctoproject.org/listinfo/yocto</a></div></blockquote><=
/div><br><div>
<div style=3D"color&#58=3Brgb(0=2C 0=2C 0)=3Bletter-spacing&#58=3Bnormal=3B=
text-align&#58=3Bstart=3Btext-indent&#58=3B0px=3Btext-transform&#58=3Bnone=
=3Bwhite-space&#58=3Bnormal=3Bword-spacing&#58=3B0px=3Bword-wrap&#58=3Bbrea=
k-word=3B"><div style=3D"color&#58=3Brgb(0=2C 0=2C 0)=3Bletter-spacing&#58=
=3Bnormal=3Btext-align&#58=3Bstart=3Btext-indent&#58=3B0px=3Btext-transform=
&#58=3Bnone=3Bwhite-space&#58=3Bnormal=3Bword-spacing&#58=3B0px=3Bword-wrap=
&#58=3Bbreak-word=3B"><div style=3D"color&#58=3Brgb(0=2C 0=2C 0)=3Bletter-s=
pacing&#58=3Bnormal=3Btext-align&#58=3Bstart=3Btext-indent&#58=3B0px=3Btext=
-transform&#58=3Bnone=3Bwhite-space&#58=3Bnormal=3Bword-spacing&#58=3B0px=
=3Bword-wrap&#58=3Bbreak-word=3B"><div style=3D"color&#58=3Brgb(0=2C 0=2C 0=
)=3Bletter-spacing&#58=3Bnormal=3Btext-align&#58=3Bstart=3Btext-indent&#58=
=3B0px=3Btext-transform&#58=3Bnone=3Bwhite-space&#58=3Bnormal=3Bword-spacin=
g&#58=3B0px=3Bword-wrap&#58=3Bbreak-word=3B"><span class=3DecxApple-style-s=
pan style=3D"border-collapse&#58=3Bseparate=3Bline-height&#58=3Bnormal=3Bbo=
rder-spacing&#58=3B0px=3B"><div style=3D"word-wrap&#58=3Bbreak-word=3B"><di=
v>--</div><div><br></div><div>Chris Tapp</div><div><a href=3D"mailto&#58=3B=
opensource@keylevel.com">opensource@keylevel.com</a></div><div><a href=3D"h=
ttp&#58=3B//www.keylevel.com" target=3D_blank>www.keylevel.com</a></div><di=
v><br></div><div>----</div><div>You can tell you're getting older when your=
 car insurance gets real cheap!</div></div></span></div></div></div></div>
</div>
<br></div> 		 	   		  </div></body>
</html>=

--_3d7304ae-f324-4f1d-b750-1c77024857dc_--
