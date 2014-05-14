Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19730E00975; Wed, 14 May 2014 07:27:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.114 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from nm21-vm6.bullet.mail.ne1.yahoo.com (unknown [98.138.91.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B104CE006EF
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 07:27:11 -0700 (PDT)
Received: from [98.138.100.113] by nm21.bullet.mail.ne1.yahoo.com with NNFMP;
	14 May 2014 14:27:10 -0000
Received: from [98.138.89.162] by tm104.bullet.mail.ne1.yahoo.com with NNFMP;
	14 May 2014 14:27:10 -0000
Received: from [127.0.0.1] by omp1018.mail.ne1.yahoo.com with NNFMP;
	14 May 2014 14:27:10 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 737186.11243.bm@omp1018.mail.ne1.yahoo.com
Received: (qmail 8013 invoked by uid 60001); 14 May 2014 14:27:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1400077630; bh=DsH9NK7kBQENqjAyPirJifpllaBZF4fUau8XEBSQZqY=;
	h=References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=KYMKPIGfJ7IWQ1oyoJ8DD+MxOse3SxwcNibqeIevUD1F/jVOf/5sYu3h5f4B7kGAFrSVz2z5ZFTYzTCLXHIxPxdXa3vOHJjMgrolXJZn90EODlkb5KtksLgfe/oBuWocfJXXlc5iAb+DNOfSt6QqEj9pKNGubXfgp9aiwdGNsPA=
X-YMail-OSG: ygUk1s0VM1lAhO2HhSkR8Wi1Jqi7naPbuR8yaNh9e6Ses6m
	UA4xuDkC709rOUG9bRe2u0VHKkBwfqs_f6uxaEBWT8TrZtFWCjpWFSH4Hpc8
	jkqFcpj9MfKqpvSNsNhNONbrtb36xEzbQfUZWXVKBpMElvRawFejSieFgCKb
	zwxFgsjWAPTYwemWIUPCoHk80ifiaKsZDQ_cKdHyUAFife8J82AW5TTQB.jw
	4l6CyMnpv6nsm_O5KUNoUAoaBrNzXs5nzp8MFizUZuL_FXyYTES4qNwNST4U
	mPk3lXLza7.R.kojmPeedci2ZFwlbtq3B3pi7OZ_4dRIp3jwV1oxxLmsaI2p
	u32osIeXvKeeMMA6Jj58oMa149F6zg_jAxTDEsw75BJnXNq8kogpAdY4Prc4
	R.Zt1fOuyQ2eW7oj7GYdf3W_CMSSKh5KoeOk8i_XsN7.yIKym.2wYOM2gCEw
	38qitKT_GFTr6B_Di06_gWVPTNjQ7j3M6aJ8hHggrMkB40YYkWHzbJ5wQrVk
	7.idC6WLQ1aGSm0ooYEfocwkY57544NWZEgIECeybyWDp1yymCsKdO2czI.Y
	4XNiZhNZy4t3TRWUeuTCnZquF6dgkTff8lhs.PRZCY2h5t24HxXxB6hH.y92
	eMY9kgww.PtvVys7dQtstJH77Tg--
Received: from [193.202.22.66] by web122505.mail.ne1.yahoo.com via HTTP;
	Wed, 14 May 2014 07:27:10 PDT
X-Rocket-MIMEInfo: 002.001,
	UmVhZCB0aGlzIGZvciBtb3JlIGluZm9ybWF0aW9uIGFuZCB0byB1bmRlcnN0YW5kIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gZGlzdHJvLCBtYWNoaW5lIG9yIGltYWdlIGZlYXR1cmVzLgoKCllvY3RvIFByb2plY3QgUmVmZXJlbmNlIE1hbnVhbAogCiBZb2N0byBQcm9qZWN0IFJlZmVyZW5jZSBNYW51YWwKQ2hhcHRlcjcuQ2xhc3NlcyBUYWJsZSBvZiBDb250ZW50cyA3LjEuIGFsbGFyY2guYmJjbGFzcyA3LjIuIGFyY2hpdmVyLmJiY2xhc3MgNy4zLiBhdXRvdG9vbHMuYmJjbGFzcyA3LjQuIGF1dG90b29scy0BMAEBAQE-
X-Mailer: YahooMailWebService/0.8.188.663
References: <lkvpl2$e8q$1@ger.gmane.org>	<1400074572.84934.YahooMailNeo@web122502.mail.ne1.yahoo.com>	<lkvsj2$vof$1@ger.gmane.org>	<CAJTo0Laq27nBx+vPbch=PQigAhvRTMKiM7jkKUYHWgxDfgnSEw@mail.gmail.com>	<lkvt3i$bhu$1@ger.gmane.org>	<CAJTo0La4jbY+7Tcgf+vf6z1gaHo1tru_Dx8QGx9KLOfdMk2C9Q@mail.gmail.com>
	<lkvu7b$qf$1@ger.gmane.org>
Message-ID: <1400077630.23141.YahooMailNeo@web122505.mail.ne1.yahoo.com>
Date: Wed, 14 May 2014 07:27:10 -0700 (PDT)
From: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
To: Neuer User <auslands-kv@gmx.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
In-Reply-To: <lkvu7b$qf$1@ger.gmane.org>
MIME-Version: 1.0
Subject: Re: Best way to remove DISTRO_FEATURES?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 14 May 2014 14:27:20 -0000
Content-Type: multipart/alternative;
	boundary="1438449284-1094298393-1400077630=:23141"

--1438449284-1094298393-1400077630=:23141
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Read this for more information and to understand the difference between dis=
tro, machine or image features.=0A=0A=0AYocto Project Reference Manual=0A =
=0A Yocto Project Reference Manual=0AChapter7.Classes Table of Contents 7.1=
. allarch.bbclass 7.2. archiver.bbclass 7.3. autotools.bbclass 7.4. autotoo=
ls-brokensep.bbclass 7.5. base.bbclass 7.6. bin_package.bbclass 7.7. bincon=
fig.bbclass   =0AView on www.yoctoproject.org Preview by Yahoo  =0A=0AOn We=
dnesday, May 14, 2014 5:23 PM, Neuer User <auslands-kv@gmx.de> wrote:=0A =
=0AOk, thanks, did this:=0A=0Amade new file "meta-mylayer/conf/distro/mydis=
tro.conf":=0A=0Ainclude poky.conf=0A=0ADISTRO_FEATURES_remove =3D " 3g blue=
tooth irda nfc zeroconf x11 wayland"=0A=0AThen changed conf/local.conf:=0A=
=0ADISTRO ?=3D "mydistro"=0A=0A=0AThen started a bitbake. Got a strange err=
or "LCONF_VERSION is 6, should=0Abe 5 in bblayers.conf". So I changed it to=
 5.=0A=0AThen bitbake works, but it seems to recompile ALL packages?! Is th=
is=0Acorrect. (I stopped it as it will take half a day to finish).=0A=0ATha=
nks again for your help!=0A=0AMichael=0A=0A=0AAm 14.05.2014 16:13, schrieb =
Burton, Ross:=0A> On 14 May 2014 15:03, Neuer User <auslands-kv@gmx.de> wro=
te:=0A>> Hmm, so I need my own distro?=0A> =0A> You don't need to as local.=
conf is sufficient, but changes to=0A> local.conf are specific to *your cur=
rent* builds.=0A> =0A> Defining a distro is trivial, just make your own dis=
tro.conf and=0A> either include poky.conf or actually look at it and see ho=
w little=0A> that conf file is actually doing.=A0 The default values (which=
 is not=0A> Poky) are a good starting point.=0A> =0A>> Actually, it is not =
100% clear to me what the difference and the=0A>> interaction of "distro" a=
nd "image" is.=0A> =0A> Distro affects everything you build, an image is si=
mply instructions=0A> on how to put some packages together into a disk imag=
e.=0A> =0A> Ross=0A> =0A=0A=0A-- =0A_______________________________________=
________=0Ayocto mailing list=0Ayocto@yoctoproject.org=0Ahttps://lists.yoct=
oproject.org/listinfo/yocto

--1438449284-1094298393-1400077630=:23141
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12pt"><div style=3D"" class=3D"">Read this for more information and=
 to understand the difference between distro, machine or image features.<br=
><span style=3D"" class=3D""></span></div><div style=3D"color: rgb(0, 0, 0)=
; font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Aria=
l,Lucida Grande,sans-serif; background-color: transparent; font-style: norm=
al;" class=3D""><span style=3D"" class=3D""><a style=3D"" class=3D"" href=
=3D"http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref=
-features-distro"><br></a></span></div><div style=3D"color: rgb(0, 0, 255);=
 font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial=
,Lucida Grande,sans-serif; background-color: transparent; font-style: norma=
l;" class=3D""><span style=3D"" class=3D""><a style=3D"" class=3D""
 href=3D"http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.htm=
l#ref-features-distro">Yocto Project Reference Manual</a></span></div><div =
style=3D"width:450px; font-family: 'Georgia', 'Times', 'Times New Roman', '=
serif';" id=3D"enhancrCard_0" class=3D"link-enhancr-attachment link-enhancr=
-element" contenteditable=3D"false"><table class=3D"link-enhancr-element" s=
tyle=3D"width:450px; height:auto; position: relative; margin-top:5px; margi=
n-bottom: 5px; display: block;" cellpadding=3D"0" cellspacing=3D"0"><tbody>=
<tr class=3D"link-enhancr-element"><td colspan=3D"6" class=3D"link-enhancr-=
element" style=3D"height: 1px; background-color: #e5e5e5;"><div class=3D"li=
nk-enhancr-element" style=3D"height: 1px; background-color: #e5e5e5;"></div=
></td></tr><tr class=3D"link-enhancr-element"><td rowspan=3D"2" class=3D"li=
nk-enhancr-element" style=3D"width: 1px; background-color: #e5e5e5;"><div c=
lass=3D"link-enhancr-element" style=3D"width: 1px; background-color: #e5e5e=
5;"></div></td><td
 class=3D"link-enhancr-element" colspan=3D"2" style=3D"width: 100%; vertica=
l-align: middle; font-family: 'Georgia', 'Times', 'Times New Roman', 'serif=
';"><div class=3D"link-enhancr-text-part link-enhancr-element" style=3D"lin=
e-height:16.5px; background-color: #ffffff;  width: 448px;"><div class=3D"l=
ink-enhancr-element" style=3D"word-wrap: break-word; padding: 7px 20px 0px =
14px;"><span class=3D"link-enhancr-element icon  icon-shrink link-enhancr-t=
oggle"></span><span class=3D"link-enhancr-element icon icon-close link-enha=
ncr-delete"></span><a href=3D"http://www.yoctoproject.org/docs/current/ref-=
manual/ref-manual.html#ref-features-distro" class=3D"link-enhancr-card-urlW=
rapper link-enhancr-element" style=3D"text-decoration: none !important; col=
or: #000000 !important;"><span class=3D"link-enhancr-element link-enhancr-c=
ard-title" style=3D"margin: 0; font-weight: normal;margin-bottom: 4px; font=
-size: 18px; line-height: 21px; max-height: 43px; color: #000000; overflow:=
 hidden !important;
 display: inline-block;">Yocto Project Reference Manual</span></a><div styl=
e=3D"font-size: 13px; line-height: 20px; color: #999999; max-height: 81px; =
font-family: 'Georgia', 'Times', 'Times New Roman', 'serif';overflow: hidde=
n;" class=3D"link-enhancr-card-description link-enhancr-element">Chapter7.C=
lasses Table of Contents 7.1. allarch.bbclass 7.2. archiver.bbclass 7.3. au=
totools.bbclass 7.4. autotools-brokensep.bbclass 7.5. base.bbclass 7.6. bin=
_package.bbclass 7.7. binconfig.bbclass </div></div></div></td><td class=3D=
"link-enhancr-element" rowspan=3D"2" style=3D"width: 1px; background-color:=
 #e5e5e5;"><div class=3D"link-enhancr-element" style=3D"width: 1px; backgro=
und-color: #e5e5e5;"></div></td></tr><tr><td class=3D"link-enhancr-element"=
 style=3D"width: 100%; vertical-align: middle; font-family: 'Arial', 'Helve=
tica Neue', 'Helvetica', 'sans-serif';"><div class=3D"link-enhancr-element"=
 style=3D"font-size: 0pt; padding: 3px 20px 9px 14px;"><a
 href=3D"http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.htm=
l#ref-features-distro" class=3D"link-enhancr-card-url link-enhancr-element"=
 style=3D"color: black; text-decoration: none !important;cursor:pointer !im=
portant;" target=3D"_blank"><span class=3D"link-enhancr-element link-enhanc=
r-view-on" style=3D"display: inline-block; line-height: 11px; max-width: 34=
8px; min-width: 288px; overflow: hidden; max-height: 13px; word-break: brea=
k-all;"><span class=3D"link-enhancr-element link-enhancr-mobile-no-resize" =
style=3D"vertical-align:middle; font-size: 9px; line-height: 11px; color: #=
999999; -moz-text-size-adjust: none; -ms-text-size-adjust: none; -webkit-te=
xt-size-adjust:none; text-size-adjust:none;">View on <span style=3D"font-we=
ight: bold" class=3D"link-enhancr-view-on-domain">www.yoctoproject.org</spa=
n></span></span></a></div></td><td class=3D"link-enhancr-element" style=3D"=
vertical-align: middle; width: 100px; font-family: 'Arial', 'Helvetica Neue=
', 'Helvetica',
 'sans-serif';"><div class=3D"link-enhancr-element link-enhancr-preview-wra=
pper" style=3D"padding: 6px 20px 12px 0px; max-width: 100px; min-width: 80p=
x; overflow: hidden; text-align: right; line-height: 11px; max-height: 13px=
; font-size: 0pt;"><span class=3D"link-enhancr-element link-enhancr-preview=
-by link-enhancr-mobile-no-resize" style=3D"vertical-align:middle; font-siz=
e: 9px; line-height: 11px; color: #999999; -moz-text-size-adjust: none; -ms=
-text-size-adjust: none; -webkit-text-size-adjust:none; text-size-adjust:no=
ne;">Preview by Yahoo</span></div></td></tr><tr class=3D"link-enhancr-eleme=
nt"><td class=3D"link-enhancr-element" colspan=3D"6" style=3D"height: 1px; =
background-color: #e5e5e5;"><div class=3D"link-enhancr-element" style=3D"he=
ight: 1px; background-color: #e5e5e5;"></div></td></tr></tbody></table></di=
v><div style=3D"" class=3D""><span style=3D"" class=3D""><br style=3D"" cla=
ss=3D""></span></div><div style=3D"display: block;" class=3D"yahoo_quoted">=
 <div class=3D""
 style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Luc=
ida Grande, sans-serif; font-size: 12pt"> <div class=3D"" style=3D"font-fam=
ily: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-s=
erif; font-size: 12pt"> <div style=3D"" class=3D"" dir=3D"ltr"> <font style=
=3D"" class=3D"" face=3D"Arial" size=3D"2"> On Wednesday, May 14, 2014 5:23=
 PM, Neuer User &lt;auslands-kv@gmx.de&gt; wrote:<br style=3D"" class=3D"">=
 </font> </div>  <div style=3D"" class=3D"">Ok, thanks, did this:<br style=
=3D"" class=3D"" clear=3D"none"><br style=3D"" class=3D"" clear=3D"none">ma=
de new file "meta-mylayer/conf/distro/mydistro.conf":<br style=3D"" class=
=3D"" clear=3D"none"><br style=3D"" class=3D"" clear=3D"none">include poky.=
conf<br style=3D"" class=3D"" clear=3D"none"><br style=3D"" class=3D"" clea=
r=3D"none">DISTRO_FEATURES_remove =3D " 3g bluetooth irda nfc zeroconf x11 =
wayland"<br style=3D"" class=3D"" clear=3D"none"><br style=3D"" class=3D"" =
clear=3D"none">Then changed conf/local.conf:<br style=3D"" class=3D""
 clear=3D"none"><br style=3D"" class=3D"" clear=3D"none">DISTRO ?=3D "mydis=
tro"<br style=3D"" class=3D"" clear=3D"none"><br style=3D"" class=3D"" clea=
r=3D"none"><br style=3D"" class=3D"" clear=3D"none">Then started a bitbake.=
 Got a strange error "LCONF_VERSION is 6, should<br style=3D"" class=3D"" c=
lear=3D"none">be 5 in bblayers.conf". So I changed it to 5.<br style=3D"" c=
lass=3D"" clear=3D"none"><br style=3D"" class=3D"" clear=3D"none">Then bitb=
ake works, but it seems to recompile ALL packages?! Is this<br style=3D"" c=
lass=3D"" clear=3D"none">correct. (I stopped it as it will take half a day =
to finish).<br style=3D"" class=3D"" clear=3D"none"><br style=3D"" class=3D=
"" clear=3D"none">Thanks again for your help!<br style=3D"" class=3D"" clea=
r=3D"none"><br style=3D"" class=3D"" clear=3D"none">Michael<br style=3D"" c=
lass=3D"" clear=3D"none"><div style=3D"" class=3D"" id=3D"yqtfd54031"><br s=
tyle=3D"" class=3D"" clear=3D"none">Am 14.05.2014 16:13, schrieb Burton, Ro=
ss:<br style=3D"" class=3D"" clear=3D"none">&gt; On 14 May 2014 15:03, Neue=
r User &lt;<a
 style=3D"" class=3D"" shape=3D"rect" ymailto=3D"mailto:auslands-kv@gmx.de"=
 href=3D"mailto:auslands-kv@gmx.de">auslands-kv@gmx.de</a>&gt; wrote:<br st=
yle=3D"" class=3D"" clear=3D"none">&gt;&gt; Hmm, so I need my own distro?<b=
r style=3D"" class=3D"" clear=3D"none">&gt; <br style=3D"" class=3D"" clear=
=3D"none">&gt; You don't need to as local.conf is sufficient, but changes t=
o<br style=3D"" class=3D"" clear=3D"none">&gt; local.conf are specific to *=
your current* builds.<br style=3D"" class=3D"" clear=3D"none">&gt; <br styl=
e=3D"" class=3D"" clear=3D"none">&gt; Defining a distro is trivial, just ma=
ke your own distro.conf and<br style=3D"" class=3D"" clear=3D"none">&gt; ei=
ther include poky.conf or actually look at it and see how little<br style=
=3D"" class=3D"" clear=3D"none">&gt; that conf file is actually doing.&nbsp=
; The default values (which is not<br style=3D"" class=3D"" clear=3D"none">=
&gt; Poky) are a good starting point.<br style=3D"" class=3D"" clear=3D"non=
e">&gt; <br style=3D"" class=3D"" clear=3D"none">&gt;&gt; Actually, it
 is not 100% clear to me what the difference and the<br style=3D"" class=3D=
"" clear=3D"none">&gt;&gt; interaction of "distro" and "image" is.<br style=
=3D"" class=3D"" clear=3D"none">&gt; <br style=3D"" class=3D"" clear=3D"non=
e">&gt; Distro affects everything you build, an image is simply instruction=
s<br style=3D"" class=3D"" clear=3D"none">&gt; on how to put some packages =
together into a disk image.<br style=3D"" class=3D"" clear=3D"none">&gt; <b=
r style=3D"" class=3D"" clear=3D"none">&gt; Ross<br style=3D"" class=3D"" c=
lear=3D"none">&gt; <br style=3D"" class=3D"" clear=3D"none"><br style=3D"" =
class=3D"" clear=3D"none"><br style=3D"" class=3D"" clear=3D"none">-- <br s=
tyle=3D"" class=3D"" clear=3D"none">_______________________________________=
________<br style=3D"" class=3D"" clear=3D"none">yocto mailing list<br styl=
e=3D"" class=3D"" clear=3D"none"><a style=3D"" class=3D"" shape=3D"rect" ym=
ailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.o=
rg">yocto@yoctoproject.org</a><br style=3D"" class=3D"" clear=3D"none"><a s=
tyle=3D""
 class=3D"" shape=3D"rect" href=3D"https://lists.yoctoproject.org/listinfo/=
yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br style=3D"" class=3D"" clear=3D"none"></div><br style=3D"" class=3D""><br=
 style=3D"" class=3D""></div>  </div> </div>  </div> </div></body></html>

--1438449284-1094298393-1400077630=:23141--
