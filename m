Return-Path: <ktreddy70@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED88AE00BDF; Sat,  2 Sep 2017 11:18:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ktreddy70[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.52 listed in dnsbl.sorbs.net]
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A85E1E00956
	for <yocto@yoctoproject.org>; Sat,  2 Sep 2017 11:18:02 -0700 (PDT)
Received: by mail-it0-f52.google.com with SMTP id k189so4227771itk.0
	for <yocto@yoctoproject.org>; Sat, 02 Sep 2017 11:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=uXZso4NTWR69DDqxtLeJd9AMq/9E+IfCxut8L6E/qvQ=;
	b=kV8I+l5R/Igp/mlXbmVzGnHqiUGryh4gTYHQoevDp385iewmFYfblhRm0BbpL80Tem
	ij6lyhSXPgA9R832Kn7al59cNA810mF00cHc8lU6HjDZp+dtI+JVJgu+x4gvb9rWFsjJ
	6cBl8MumX2ocnlMe7OhOAFsQLGCKgy8MblSpPgeOxowmxnL4+1NlIbcbCDT9MhbE5bu4
	F9s7LJNruIZel+NKveQRLsxtNHYgUJ/4OTdstJkDOkzKxsXvp0GmvdM14seKTjuV7F1Q
	RAUdpbNLgkL6giQtZ8xRtGnCAVgKAWHtqyVGCuKxiT6cnNrElLyqaQQb6J5SgWgCHkra
	Jlsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=uXZso4NTWR69DDqxtLeJd9AMq/9E+IfCxut8L6E/qvQ=;
	b=TLU6oC7Gqg5bxBngNJqaxxSu5asszbmumrJI0e8bX3UVCkNndfzmHovUZBmltpKpAh
	Q4uMSZOxxhqhIG0Y40PK3X5wvkjw6dk0wqo9c84g6on8rzM0s2bGP2kRps0/zdCEZZji
	ywFfeF1nIKY55YKWqeWpvh8l/KDq55ROqiEIzmBbxff3tMmHLh/Y2enQ7uYvy7ih1jnf
	aU5Fi2TjJXHkTQZiYVX64BRvn2IVoQU6VuV6NXSS26pNPX08jPwj8YtWqssI8bxWujGi
	IEmlwQbtW4RWYZPOzCKOzcacJfldB0CziKDdJ4Q4TTDADT84K632VHMDKprp/+BidInH
	49HQ==
X-Gm-Message-State: AHPjjUgIN+ZKZRmjyHNvB/c+lKnWLKKdI79/JI6/m0YPlckYAGJzLr1Z
	YTIFiUeT9qylapUqJkT6NU6KtNkEioOyFxU=
X-Google-Smtp-Source: ADKCNb4szTwERooFqAi1+0apfFDm1c8avkGYt64AQw+yNRAq2Gi6Z0P0eZK/4a8eC/PL2JbUYhB50V2UggUs0uIL7e8=
X-Received: by 10.36.90.72 with SMTP id v69mr1767884ita.8.1504376281428; Sat,
	02 Sep 2017 11:18:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.59.69 with HTTP; Sat, 2 Sep 2017 11:18:01 -0700 (PDT)
From: ktreddy 70 <ktreddy70@gmail.com>
Date: Sat, 2 Sep 2017 11:18:01 -0700
Message-ID: <CAKXGAjAn=6G=kai8pGBam9U6ff6McV74LA9KWY_eLt7XNOtUyA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 11 Sep 2017 08:08:54 -0700
Subject: yocto layer dependencies
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
X-List-Received-Date: Sat, 02 Sep 2017 18:18:04 -0000
Content-Type: multipart/alternative; boundary="001a113a22cedcf8ee055838e5ba"

--001a113a22cedcf8ee055838e5ba
Content-Type: text/plain; charset="UTF-8"

I am trying to set up yocto build environment for openlte, meta-sdr has
most of the openlte depends
I am getting following error when I try to build sdr,


/build$ bitbake sdr
Loading cache: 100% |#############################
############################################################
###################################################| Time: 0:00:00
Loaded 1642 entries from dependency cache.
ERROR: ParseError at /home/ktreddy/zcu102/sources/poky/../meta-openembedded/
meta-sdr/recipes-applications/gqrx/gqrx_git.bb:8: Could not inherit file
classes/qt4x11.bbclass


I do have meta-qt4 under meta-openembedded layer  as below.

zcu102/sources$* ls *meta-openembedded/meta-qt4/classes/
qmake2.bbclass  qmake_base.bbclass  qt4e.bbclass  *qt4x11.bbclass*


could you please help me on why am I getting this error ?
How can I make one layer visible to another layer ?
Ex:  How can I make meta-sdr visible to openlte ? I mean how can I say to
openlte that the dependency recipes are available under meta-sdr ?

if new recipes are available for a layer how can I get those on to my build
environment ?

Thanks for your help.
Click here to Reply or For

--001a113a22cedcf8ee055838e5ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-adn gmail-ads" style=3D"padding-bottom=
:20px;padding-left:8px;font-size:medium"><div class=3D"gmail-gs" style=3D"m=
argin-left:44px"><div id=3D"gmail-:kd" class=3D"gmail-ii gmail-gt gmail-adP=
 gmail-adO" style=3D"font-size:12.8px;margin-bottom:0px;margin-left:0px;pad=
ding-bottom:5px"><div id=3D"gmail-:kc" class=3D"gmail-a3s gmail-aXjCH gmail=
-m15e43bb908747dd4"><div dir=3D"ltr"><div>I am trying to set up yocto build=
 environment for openlte, meta-sdr has most of the openlte depends</div><di=
v>I am getting following error when I try to build sdr,=C2=A0</div><div><br=
></div><br><div><div>/build$ bitbake sdr</div><div>Loading cache: 100% |###=
##########################<wbr>##############################<wbr>#########=
#####################<wbr>##############################<wbr>##############=
#######| Time: 0:00:00</div><div>Loaded 1642 entries from dependency cache.=
</div><div>ERROR: ParseError at /home/ktreddy/zcu102/sources/<wbr>poky/../m=
eta-openembedded/<wbr>meta-sdr/recipes-applications/<wbr>gqrx/<a href=3D"ht=
tp://gqrx_git.bb:8/" target=3D"_blank">gqrx_git.bb:8</a>: Could not inherit=
 file classes/qt4x11.bbclass</div></div><div><br></div><div><br></div><div>=
I do have meta-qt4 under meta-openembedded layer=C2=A0 as below.</div><div>=
<br></div><div><div>zcu102/sources$<b>=C2=A0ls=C2=A0</b>meta-openembedded/m=
eta-qt4/<wbr>classes/</div><div>qmake2.bbclass =C2=A0qmake_base.bbclass =C2=
=A0qt4e.bbclass =C2=A0<b>qt4x11.bbclass</b></div></div><div><b><br></b></di=
v><div><b><br></b></div><div>could you please help me on why am I getting t=
his error ?</div></div></div></div></div><div class=3D"gmail-gs" style=3D"m=
argin-left:44px"><div id=3D"gmail-:kd" class=3D"gmail-ii gmail-gt gmail-adP=
 gmail-adO" style=3D"font-size:12.8px;margin-bottom:0px;margin-left:0px;pad=
ding-bottom:5px"><div id=3D"gmail-:kc" class=3D"gmail-a3s gmail-aXjCH gmail=
-m15e43bb908747dd4"><div dir=3D"ltr"><div>How can I make one layer visible =
to another layer ?</div></div></div></div></div><div class=3D"gmail-gs" sty=
le=3D"margin-left:44px"><div id=3D"gmail-:kd" class=3D"gmail-ii gmail-gt gm=
ail-adP gmail-adO" style=3D"font-size:12.8px;margin-bottom:0px;margin-left:=
0px;padding-bottom:5px"><div id=3D"gmail-:kc" class=3D"gmail-a3s gmail-aXjC=
H gmail-m15e43bb908747dd4"><div dir=3D"ltr"><div>Ex: =C2=A0<span style=3D"f=
ont-size:12.8px">How can I make meta-sdr visible to openlte ? I mean how ca=
n I say to openlte that the dependency recipes are available under meta-sdr=
 ?</span></div></div></div></div></div><div class=3D"gmail-gs" style=3D"mar=
gin-left:44px"><div id=3D"gmail-:kd" class=3D"gmail-ii gmail-gt gmail-adP g=
mail-adO" style=3D"font-size:12.8px;margin-bottom:0px;margin-left:0px;paddi=
ng-bottom:5px"><div id=3D"gmail-:kc" class=3D"gmail-a3s gmail-aXjCH gmail-m=
15e43bb908747dd4"><div dir=3D"ltr"><div><br></div></div></div></div></div><=
div class=3D"gmail-gs" style=3D"margin-left:44px"><div id=3D"gmail-:kd" cla=
ss=3D"gmail-ii gmail-gt gmail-adP gmail-adO" style=3D"font-size:12.8px;marg=
in-bottom:0px;margin-left:0px;padding-bottom:5px"><div id=3D"gmail-:kc" cla=
ss=3D"gmail-a3s gmail-aXjCH gmail-m15e43bb908747dd4"><div dir=3D"ltr"><div>=
if new recipes are available for a layer how can I get those on to my build=
 environment ?</div></div></div></div></div><div class=3D"gmail-gs" style=
=3D"margin-left:44px"><div id=3D"gmail-:kd" class=3D"gmail-ii gmail-gt gmai=
l-adP gmail-adO" style=3D"font-size:12.8px;margin-bottom:0px;margin-left:0p=
x;padding-bottom:5px"><div id=3D"gmail-:kc" class=3D"gmail-a3s gmail-aXjCH =
gmail-m15e43bb908747dd4"><div dir=3D"ltr"><div><br></div><div>Thanks for yo=
ur help.</div></div><div class=3D"gmail-yj6qo"></div></div></div><div class=
=3D"gmail-hi"></div></div><div class=3D"gmail-ajx"></div></div><div class=
=3D"gmail-gA gmail-gt gmail-acV" style=3D"font-size:12.8px;border-bottom-le=
ft-radius:0px;border-bottom-right-radius:0px;border-top:none;background-ima=
ge:initial;background-position:initial;background-size:initial;background-r=
epeat:initial;background-origin:initial;background-clip:initial"><div class=
=3D"gmail-gB gmail-xu"><div class=3D"gmail-ip gmail-iq" style=3D"margin-rig=
ht:5px;padding-top:12px;padding-right:0px;padding-left:8px;border-top:1px s=
olid rgb(216,216,216)"><div id=3D"gmail-:ke"><table class=3D"gmail-cf gmail=
-FVrZGe"><tbody><tr><td class=3D"gmail-amq"><img id=3D"gmail-:0_6" name=3D"=
:0" src=3D"https://ssl.gstatic.com/ui/v1/icons/mail/no_photo.png" class=3D"=
gmail-ajn gmail-bofPge"></td><td class=3D"gmail-amr" style=3D"width:1040px"=
><div class=3D"gmail-nr gmail-tMHS5d"><div class=3D"gmail-amn">Click here t=
o=C2=A0<span id=3D"gmail-:k8" tabindex=3D"0" class=3D"gmail-ams gmail-bkH">=
Reply</span>=C2=A0or=C2=A0<span id=3D"gmail-:ka" tabindex=3D"0" class=3D"gm=
ail-ams gmail-bkG gmail-amt">For</span></div></div></td></tr></tbody></tabl=
e></div></div></div></div></div>

--001a113a22cedcf8ee055838e5ba--
