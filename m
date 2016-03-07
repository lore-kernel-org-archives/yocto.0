Return-Path: <mkbrown32@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96D0FE00C18; Sun,  6 Mar 2016 19:29:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mkbrown32[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.190.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from BAY004-OMC1S9.hotmail.com (bay004-omc1s9.hotmail.com
	[65.54.190.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9202E00BE8
	for <yocto@yoctoproject.org>; Sun,  6 Mar 2016 19:29:37 -0800 (PST)
Received: from BAY181-W93 ([65.54.190.60]) by BAY004-OMC1S9.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Sun, 6 Mar 2016 19:29:36 -0800
X-TMN: [OhaQqgr4jeV2qE5fUCIim2yqpD6N58sL]
X-Originating-Email: [mkbrown32@hotmail.com]
Message-ID: <BAY181-W939D634F09A025A9C4492FAEB10@phx.gbl>
From: Mark Brown <mkbrown32@hotmail.com>
To: Tom King <ka6sox@gmail.com>
Date: Sun, 6 Mar 2016 19:29:36 -0800
Importance: Normal
In-Reply-To: <CAHQecY4-7jSjntuu-NZKfHj9F8Mfa6F_k++qntGSmPuCEAgH5w@mail.gmail.com>
References: <BAY181-W538F4FDB696298C602C191AEB00@phx.gbl>,
	<31886292-F1E6-477C-B24E-BFB9F7493942@keylevel.com>,
	<BAY181-W91A65C1B02CFC15DBB4178AEB10@phx.gbl>,
	<CAHQecY4-7jSjntuu-NZKfHj9F8Mfa6F_k++qntGSmPuCEAgH5w@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 07 Mar 2016 03:29:36.0960 (UTC)
	FILETIME=[93378C00:01D17821]
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
X-List-Received-Date: Mon, 07 Mar 2016 03:29:39 -0000
Content-Type: multipart/alternative;
	boundary="_b8304567-dae7-492e-9deb-40d6c34f699a_"

--_b8304567-dae7-492e-9deb-40d6c34f699a_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

So what is the appropriate method (keystrokes within Term) to terminate Bit=
bake and
then reinvoke it to achieve safely this restart functionality ?
=20
=20
Date: Sun=2C 6 Mar 2016 19:21:43 -0800
Subject: Re: [yocto] Controlling Bitbake Memory usage under Windows/Virtual=
box/Ubuntu platform
From: ka6sox@gmail.com
To: mkbrown32@hotmail.com
CC: opensource@keylevel.com=3B yocto@yoctoproject.org

it starts from the beginning
Parses the recipies (again)
and picks up where it left off..
On Sun=2C Mar 6=2C 2016 at 5:01 PM=2C Mark Brown <mkbrown32@hotmail.com> wr=
ote:



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


 		 	   		 =20

--

_______________________________________________

yocto mailing list

yocto@yoctoproject.org

https://lists.yoctoproject.org/listinfo/yocto



 		 	   		  =

--_b8304567-dae7-492e-9deb-40d6c34f699a_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>So what is the appropriate metho=
d (keystrokes within Term) to terminate Bitbake and<BR>then reinvoke it to =
achieve safely&nbsp=3Bthis restart functionality ?<BR>&nbsp=3B<BR><br />&nb=
sp=3B<BR><div><hr id=3D"stopSpelling">Date&#58=3B Sun=2C 6 Mar 2016 19&#58=
=3B21&#58=3B43 -0800<br>Subject&#58=3B Re&#58=3B [yocto] Controlling Bitbak=
e Memory usage under Windows/Virtualbox/Ubuntu platform<br>From&#58=3B ka6s=
ox@gmail.com<br>To&#58=3B mkbrown32@hotmail.com<br>CC&#58=3B opensource@key=
level.com=3B yocto@yoctoproject.org<br><br><div dir=3Dltr>it starts from th=
e beginning<div><br></div><div>Parses the recipies (again)</div><div><br></=
div><div>and picks up where it left off..</div></div><div class=3Decxgmail_=
extra><br><div class=3Decxgmail_quote>On Sun=2C Mar 6=2C 2016 at 5&#58=3B01=
 PM=2C Mark Brown <span dir=3Dltr>&lt=3B<a href=3D"mailto&#58=3Bmkbrown32@h=
otmail.com" target=3D_blank>mkbrown32@hotmail.com</a>&gt=3B</span> wrote&#5=
8=3B<br><blockquote class=3Decxgmail_quote style=3D"border-left&#58=3B1px #=
ccc solid=3Bpadding-left&#58=3B1ex=3B">


<div><div dir=3Dltr>Again=2C how is the Bitbake module terminated and then =
re-run=2C<br>picking up its place in&#160=3Bthe&#160=3Bsequence of tasks wh=
ere it left off ?<br><div class=3D"ecxhm ecxHOEnZb">&#160=3B<br><br>&#160=
=3B<br></div><div><div class=3D"ecxhm ecxHOEnZb"><hr>Subject&#58=3B Re&#58=
=3B [yocto] Controlling Bitbake Memory usage under Windows/Virtualbox/Ubunt=
u platform<br>From&#58=3B <a href=3D"mailto&#58=3Bopensource@keylevel.com" =
target=3D_blank>opensource@keylevel.com</a><br>Date&#58=3B Sun=2C 6 Mar 201=
6 22&#58=3B38&#58=3B41 +0000<br>CC&#58=3B <a href=3D"mailto&#58=3Byocto@yoc=
toproject.org" target=3D_blank>yocto@yoctoproject.org</a><br>To&#58=3B <a h=
ref=3D"mailto&#58=3Bmkbrown32@hotmail.com" target=3D_blank>mkbrown32@hotmai=
l.com</a></div><div><div class=3Dh5><br><br>On 6 Mar 2016=2C at 22&#58=3B08=
=2C Mark Brown &lt=3B<a href=3D"mailto&#58=3Bmkbrown32@hotmail.com" target=
=3D_blank>mkbrown32@hotmail.com</a>&gt=3B wrote&#58=3B<br><div><blockquote>=
<br><div><div dir=3Dltr style=3D"font-family&#58=3BCalibri=3Bfont-size&#58=
=3B16px=3Bfont-style&#58=3Bnormal=3Bfont-variant&#58=3Bnormal=3Bfont-weight=
&#58=3Bnormal=3Bletter-spacing&#58=3Bnormal=3Btext-align&#58=3Bstart=3Btext=
-indent&#58=3B0px=3Btext-transform&#58=3Bnone=3Bwhite-space&#58=3Bnormal=3B=
word-spacing&#58=3B0px=3B">I do not see anything in the Bitbake manual for =
controlling how much memory<br>Bitbake should consider itself entitled to c=
onsume in the<span>&#160=3B</span><br>development platform within which it =
runs.<br>&#160=3B<br>Running it on //Windows 7 64//i7-2620M//Virtualbox//Ub=
untu 14 32-bit//=2C<br>I told Virtualbox to allow Ubuntu to use 1.5 GBytes=
=2C but Windows Task Manager<br>indicates the whole Virtualbox/Ubuntu threa=
d is using only 160 MBytes<span>&#160=3B</span><br>--&#160=3Band is generat=
ing approximately 1=2C000 page faults per second.<br></div></div></blockquo=
te><div><br></div><div>What memory usage does the Ubuntu VM report?</div><b=
r><blockquote><div><div dir=3Dltr style=3D"font-family&#58=3BCalibri=3Bfont=
-size&#58=3B16px=3Bfont-style&#58=3Bnormal=3Bfont-variant&#58=3Bnormal=3Bfo=
nt-weight&#58=3Bnormal=3Bletter-spacing&#58=3Bnormal=3Btext-align&#58=3Bsta=
rt=3Btext-indent&#58=3B0px=3Btext-transform&#58=3Bnone=3Bwhite-space&#58=3B=
normal=3Bword-spacing&#58=3B0px=3B">&#160=3BPerhaps as a result=2C this Gum=
stix Overo build has completed only 760 out of 3792<br>total tasks in 21 ho=
urs -- at this rate it will complete in 5-6 days.<br></div></div></blockquo=
te><div><br></div><div>Not used a VM to build in ages=2C but I used to buil=
d an image from scratch in about 10 hours running on a dual core Macbook Pr=
o. The same build takes about 1 hour on an 8 thread i7 with 16GB RAM and SS=
Ds for the build work area=2C peaking at about 10GB RAM usage with local.co=
nf set to use 16 threads and 16 parallel makes (BB_NUMBER_THREADS and PARAL=
LEL_MAKE both at 16) - later Yocto versions set these for you based on the =
number of cores available to the build host.</div><div><br></div><div>Anoth=
er thing to consider - if this is the first build=2C then you=92ll be downl=
oading a load of stuff from the internet. How fast is your connection? Subs=
equent builds will be much quicker as the files required will then be store=
d locally.</div><br><blockquote><div><div dir=3Dltr style=3D"font-family&#5=
8=3BCalibri=3Bfont-size&#58=3B16px=3Bfont-style&#58=3Bnormal=3Bfont-variant=
&#58=3Bnormal=3Bfont-weight&#58=3Bnormal=3Bletter-spacing&#58=3Bnormal=3Bte=
xt-align&#58=3Bstart=3Btext-indent&#58=3B0px=3Btext-transform&#58=3Bnone=3B=
white-space&#58=3Bnormal=3Bword-spacing&#58=3B0px=3B">&#160=3BHow does the =
user terminate Bitbake at its current stage=2C increase the memory it is us=
ing=2C<br>and then restart in order to speed up this process ?<br>&#160=3B<=
br></div><span style=3D"font-family&#58=3BCalibri=3Bfont-size&#58=3B16px=3B=
font-style&#58=3Bnormal=3Bfont-variant&#58=3Bnormal=3Bfont-weight&#58=3Bnor=
mal=3Bletter-spacing&#58=3Bnormal=3Btext-align&#58=3Bstart=3Btext-indent&#5=
8=3B0px=3Btext-transform&#58=3Bnone=3Bwhite-space&#58=3Bnormal=3Bword-spaci=
ng&#58=3B0px=3Bdisplay&#58=3Binline !important=3B">--<span>&#160=3B</span><=
/span><br style=3D"font-family&#58=3BCalibri=3Bfont-size&#58=3B16px=3Bfont-=
style&#58=3Bnormal=3Bfont-variant&#58=3Bnormal=3Bfont-weight&#58=3Bnormal=
=3Bletter-spacing&#58=3Bnormal=3Btext-align&#58=3Bstart=3Btext-indent&#58=
=3B0px=3Btext-transform&#58=3Bnone=3Bwhite-space&#58=3Bnormal=3Bword-spacin=
g&#58=3B0px=3B"><span style=3D"font-family&#58=3BCalibri=3Bfont-size&#58=3B=
16px=3Bfont-style&#58=3Bnormal=3Bfont-variant&#58=3Bnormal=3Bfont-weight&#5=
8=3Bnormal=3Bletter-spacing&#58=3Bnormal=3Btext-align&#58=3Bstart=3Btext-in=
dent&#58=3B0px=3Btext-transform&#58=3Bnone=3Bwhite-space&#58=3Bnormal=3Bwor=
d-spacing&#58=3B0px=3Bdisplay&#58=3Binline !important=3B">_________________=
______________________________</span><br style=3D"font-family&#58=3BCalibri=
=3Bfont-size&#58=3B16px=3Bfont-style&#58=3Bnormal=3Bfont-variant&#58=3Bnorm=
al=3Bfont-weight&#58=3Bnormal=3Bletter-spacing&#58=3Bnormal=3Btext-align&#5=
8=3Bstart=3Btext-indent&#58=3B0px=3Btext-transform&#58=3Bnone=3Bwhite-space=
&#58=3Bnormal=3Bword-spacing&#58=3B0px=3B"><span style=3D"font-family&#58=
=3BCalibri=3Bfont-size&#58=3B16px=3Bfont-style&#58=3Bnormal=3Bfont-variant&=
#58=3Bnormal=3Bfont-weight&#58=3Bnormal=3Bletter-spacing&#58=3Bnormal=3Btex=
t-align&#58=3Bstart=3Btext-indent&#58=3B0px=3Btext-transform&#58=3Bnone=3Bw=
hite-space&#58=3Bnormal=3Bword-spacing&#58=3B0px=3Bdisplay&#58=3Binline !im=
portant=3B">yocto mailing list</span><br style=3D"font-family&#58=3BCalibri=
=3Bfont-size&#58=3B16px=3Bfont-style&#58=3Bnormal=3Bfont-variant&#58=3Bnorm=
al=3Bfont-weight&#58=3Bnormal=3Bletter-spacing&#58=3Bnormal=3Btext-align&#5=
8=3Bstart=3Btext-indent&#58=3B0px=3Btext-transform&#58=3Bnone=3Bwhite-space=
&#58=3Bnormal=3Bword-spacing&#58=3B0px=3B"><a href=3D"mailto&#58=3Byocto@yo=
ctoproject.org" style=3D"font-family&#58=3BCalibri=3Bfont-size&#58=3B16px=
=3Bfont-style&#58=3Bnormal=3Bfont-variant&#58=3Bnormal=3Bfont-weight&#58=3B=
normal=3Bletter-spacing&#58=3Bnormal=3Btext-align&#58=3Bstart=3Btext-indent=
&#58=3B0px=3Btext-transform&#58=3Bnone=3Bwhite-space&#58=3Bnormal=3Bword-sp=
acing&#58=3B0px=3B" target=3D_blank>yocto@yoctoproject.org</a><br style=3D"=
font-family&#58=3BCalibri=3Bfont-size&#58=3B16px=3Bfont-style&#58=3Bnormal=
=3Bfont-variant&#58=3Bnormal=3Bfont-weight&#58=3Bnormal=3Bletter-spacing&#5=
8=3Bnormal=3Btext-align&#58=3Bstart=3Btext-indent&#58=3B0px=3Btext-transfor=
m&#58=3Bnone=3Bwhite-space&#58=3Bnormal=3Bword-spacing&#58=3B0px=3B"><a hre=
f=3D"https&#58=3B//lists.yoctoproject.org/listinfo/yocto" style=3D"font-fam=
ily&#58=3BCalibri=3Bfont-size&#58=3B16px=3Bfont-style&#58=3Bnormal=3Bfont-v=
ariant&#58=3Bnormal=3Bfont-weight&#58=3Bnormal=3Bletter-spacing&#58=3Bnorma=
l=3Btext-align&#58=3Bstart=3Btext-indent&#58=3B0px=3Btext-transform&#58=3Bn=
one=3Bwhite-space&#58=3Bnormal=3Bword-spacing&#58=3B0px=3B" target=3D_blank=
>https&#58=3B//lists.yoctoproject.org/listinfo/yocto</a></div></blockquote>=
</div><br><div>
<div style=3D"color&#58=3Brgb(0=2C0=2C0)=3Bletter-spacing&#58=3Bnormal=3Bte=
xt-align&#58=3Bstart=3Btext-indent&#58=3B0px=3Btext-transform&#58=3Bnone=3B=
white-space&#58=3Bnormal=3Bword-spacing&#58=3B0px=3Bword-wrap&#58=3Bbreak-w=
ord=3B"><div style=3D"color&#58=3Brgb(0=2C0=2C0)=3Bletter-spacing&#58=3Bnor=
mal=3Btext-align&#58=3Bstart=3Btext-indent&#58=3B0px=3Btext-transform&#58=
=3Bnone=3Bwhite-space&#58=3Bnormal=3Bword-spacing&#58=3B0px=3Bword-wrap&#58=
=3Bbreak-word=3B"><div style=3D"color&#58=3Brgb(0=2C0=2C0)=3Bletter-spacing=
&#58=3Bnormal=3Btext-align&#58=3Bstart=3Btext-indent&#58=3B0px=3Btext-trans=
form&#58=3Bnone=3Bwhite-space&#58=3Bnormal=3Bword-spacing&#58=3B0px=3Bword-=
wrap&#58=3Bbreak-word=3B"><div style=3D"color&#58=3Brgb(0=2C0=2C0)=3Bletter=
-spacing&#58=3Bnormal=3Btext-align&#58=3Bstart=3Btext-indent&#58=3B0px=3Bte=
xt-transform&#58=3Bnone=3Bwhite-space&#58=3Bnormal=3Bword-spacing&#58=3B0px=
=3Bword-wrap&#58=3Bbreak-word=3B"><span style=3D"border-collapse&#58=3Bsepa=
rate=3Bline-height&#58=3Bnormal=3Bborder-spacing&#58=3B0px=3B"><div style=
=3D"word-wrap&#58=3Bbreak-word=3B"><div>--</div><div><br></div><div>Chris T=
app</div><div><a href=3D"mailto&#58=3Bopensource@keylevel.com" target=3D_bl=
ank>opensource@keylevel.com</a></div><div><a href=3D"http&#58=3B//www.keyle=
vel.com" target=3D_blank>www.keylevel.com</a></div><div><br></div><div>----=
</div><div>You can tell you're getting older when your car insurance gets r=
eal cheap!</div></div></span></div></div></div></div>
</div>
<br></div></div></div> 		 	   		  </div></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto&#58=3Byocto@yoctoproject.org">yocto@yoctoproject.org</a><=
br>
<a href=3D"https&#58=3B//lists.yoctoproject.org/listinfo/yocto" rel=3Dnoref=
errer target=3D_blank>https&#58=3B//lists.yoctoproject.org/listinfo/yocto</=
a><br>
<br></blockquote></div><br></div></div> 		 	   		  </div></body>
</html>=

--_b8304567-dae7-492e-9deb-40d6c34f699a_--
