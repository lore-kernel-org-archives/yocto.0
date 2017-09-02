Return-Path: <ktreddy70@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA9CCE00CCA; Sat,  2 Sep 2017 11:30:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ktreddy70[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.44 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 778B7E00C91
	for <yocto@yoctoproject.org>; Sat,  2 Sep 2017 11:30:20 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id 77so8781247itj.1
	for <yocto@yoctoproject.org>; Sat, 02 Sep 2017 11:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=1MK/NVW/0uPkW0r1UFpDNhQnImaHShhHSy8zb2ogT9s=;
	b=ahU7Ntn/Yw9NOcT/M33wt9eHsc6QOmmO3wCOcTeV0AyXVpr7zPYG2SAwGtYmx5Q+lL
	5k1tMeK9XIT2I9HowfK0mOxxAK+eyh+cecrHgYjWuY/Xj2IQpMAa5CvA0sk3oLPw7xTb
	dsoR/YtxHl9r7eEk9xEah0U8D6728NNHv+CclKAVx9emAnSb7IUMTO7pS6uw+wptw8vp
	XJ2YFdxw1lWvHfbtBI7q3pvdyVRVhR5l0IIDBvQ2aHDW/xDjCVIJ3/LXG3LXG5Jl0WMM
	tVzgeDEx8fB12IKK9iTp5GU/H1GMf2uAhwwd5+t0MaXc4VJGQgZc4nqd2NOl/Ka4GB0l
	MJuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=1MK/NVW/0uPkW0r1UFpDNhQnImaHShhHSy8zb2ogT9s=;
	b=AA+ZI3p7Jz8oHKPYlQEBJam/Q1tXryqeergmn0t9t2sslTMlapfPxk+a85lDrwsOy3
	UOy/AEpe7l5RSh3R1wBC5KjJMbgM/FS99r6NIRUZ2Ei7IS0SCd2EYzr9J77h4jjBAblO
	Rgs7DQJxeXYhHNs1goSm/qNWX+STchIxj39PVkOQTxBKP5utr4/7X4yUoVKvKtGOy+Oo
	7jrsSKLZzgcPdp3k+/7m2GV/xFNMrQL5CT8j1F0RQu5xdUyuwVZ3Wxj6SMpEMWTrxdRX
	UxU5xS9gwGjoIRToCN6wSczwXWBocn0EuqQO8fKTOgsqbT4U/c4tQ7KSAVr/J9JhbM1y
	UnYw==
X-Gm-Message-State: AHPjjUi8VRmeGKrHBHrOuwatUZb2gnNyyC3Rr/pKEdajQtPLep4HGF8s
	RmIVqULKLDf04m5D7b/JXgnZ40omVDxO7wQ=
X-Google-Smtp-Source: ADKCNb7D3RU3hzPWpBAL5MwiA8CLihU4MuhdQZSjCE8+uQFfXLUlZTP+kbqFy++VGaC8PGkD0s3qd/OB5V+VxKLH3qg=
X-Received: by 10.36.90.72 with SMTP id v69mr1787234ita.8.1504377018704; Sat,
	02 Sep 2017 11:30:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.59.69 with HTTP; Sat, 2 Sep 2017 11:30:18 -0700 (PDT)
From: ktreddy 70 <ktreddy70@gmail.com>
Date: Sat, 2 Sep 2017 11:30:18 -0700
Message-ID: <CAKXGAjB9xNynnDpT3zXrZZNyc_x3ONxOrg1eGH_VZ4xuFqkjDA@mail.gmail.com>
To: yocto@yoctoproject.org
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
X-List-Received-Date: Sat, 02 Sep 2017 18:30:20 -0000
Content-Type: multipart/alternative; boundary="001a113a22cecee7d80558391166"

--001a113a22cecee7d80558391166
Content-Type: text/plain; charset="UTF-8"

I am trying to set up yocto build environment for openlte, meta-sdr has
most of the openlte depends
I am getting following error when I try to build sdr,


/build$ bitbake sdr
Loading cache: 100% |#############################
############################################################
###################################################| Time: 0:00:00
Loaded 1642 entries from dependency cache.
ERROR: ParseError at /home/ktreddy/zcu102/sources/p
oky/../meta-openembedded/meta-sdr/recipes-applications/gqrx/gqrx_git.bb:8:
Could not inherit file classes/qt4x11.bbclass


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

--001a113a22cecee7d80558391166
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-m_4724528447201748387gmail-gs" style=
=3D"font-size:medium;margin-left:44px"><div id=3D"gmail-m_47245284472017483=
87gmail-:kd" class=3D"gmail-m_4724528447201748387gmail-ii gmail-m_472452844=
7201748387gmail-gt gmail-m_4724528447201748387gmail-adP gmail-m_47245284472=
01748387gmail-adO" style=3D"font-size:12.8px;margin-bottom:0px;margin-left:=
0px;padding-bottom:5px"><div id=3D"gmail-m_4724528447201748387gmail-:kc" cl=
ass=3D"gmail-m_4724528447201748387gmail-a3s gmail-m_4724528447201748387gmai=
l-aXjCH gmail-m_4724528447201748387gmail-m15e43bb908747dd4"><div dir=3D"ltr=
"><div>I am trying to set up yocto build environment for openlte, meta-sdr =
has most of the openlte depends</div><div>I am getting following error when=
 I try to build sdr,=C2=A0</div><div><br></div><br><div><div>/build$ bitbak=
e sdr</div><div>Loading cache: 100% |#############################<wbr>####=
##########################<wbr>##############################<wbr>#########=
#####################<wbr>#####################| Time: 0:00:00</div><div>Lo=
aded 1642 entries from dependency cache.</div><div>ERROR: ParseError at /ho=
me/ktreddy/zcu102/sources/p<wbr>oky/../meta-openembedded/meta-<wbr>sdr/reci=
pes-applications/gqrx/<a href=3D"http://gqrx_git.bb:8/" target=3D"_blank"><=
wbr>gqrx_git.bb:8</a>: Could not inherit file classes/qt4x11.bbclass</div><=
/div><div><br></div><div><br></div><div>I do have meta-qt4 under meta-opene=
mbedded layer=C2=A0 as below.</div><div><br></div><div><div>zcu102/sources$=
<b>=C2=A0ls=C2=A0</b>meta-<wbr>openembedded/meta-qt4/classes/</div><div>qma=
ke2.bbclass =C2=A0qmake_base.bbclass =C2=A0qt4e.bbclass =C2=A0<b>qt4x11.bbc=
lass</b></div></div><div><b><br></b></div><div><b><br></b></div><div>could =
you please help me on why am I getting this error ?</div></div></div></div>=
</div><div class=3D"gmail-m_4724528447201748387gmail-gs" style=3D"font-size=
:medium;margin-left:44px"><div id=3D"gmail-m_4724528447201748387gmail-:kd" =
class=3D"gmail-m_4724528447201748387gmail-ii gmail-m_4724528447201748387gma=
il-gt gmail-m_4724528447201748387gmail-adP gmail-m_4724528447201748387gmail=
-adO" style=3D"font-size:12.8px;margin-bottom:0px;margin-left:0px;padding-b=
ottom:5px"><div id=3D"gmail-m_4724528447201748387gmail-:kc" class=3D"gmail-=
m_4724528447201748387gmail-a3s gmail-m_4724528447201748387gmail-aXjCH gmail=
-m_4724528447201748387gmail-m15e43bb908747dd4"><div dir=3D"ltr">How can I m=
ake one layer visible to another layer ?</div></div></div></div><div class=
=3D"gmail-m_4724528447201748387gmail-gs" style=3D"font-size:medium;margin-l=
eft:44px"><div id=3D"gmail-m_4724528447201748387gmail-:kd" class=3D"gmail-m=
_4724528447201748387gmail-ii gmail-m_4724528447201748387gmail-gt gmail-m_47=
24528447201748387gmail-adP gmail-m_4724528447201748387gmail-adO" style=3D"f=
ont-size:12.8px;margin-bottom:0px;margin-left:0px;padding-bottom:5px"><div =
id=3D"gmail-m_4724528447201748387gmail-:kc" class=3D"gmail-m_47245284472017=
48387gmail-a3s gmail-m_4724528447201748387gmail-aXjCH gmail-m_4724528447201=
748387gmail-m15e43bb908747dd4"><div dir=3D"ltr">Ex: =C2=A0<span style=3D"fo=
nt-size:12.8px">How can I make meta-sdr visible to openlte ? I mean how can=
 I say to openlte that the dependency recipes are available under meta-sdr =
?</span></div></div></div></div><div class=3D"gmail-m_4724528447201748387gm=
ail-gs" style=3D"font-size:medium;margin-left:44px"><div id=3D"gmail-m_4724=
528447201748387gmail-:kd" class=3D"gmail-m_4724528447201748387gmail-ii gmai=
l-m_4724528447201748387gmail-gt gmail-m_4724528447201748387gmail-adP gmail-=
m_4724528447201748387gmail-adO" style=3D"font-size:12.8px;margin-bottom:0px=
;margin-left:0px;padding-bottom:5px"><div id=3D"gmail-m_4724528447201748387=
gmail-:kc" class=3D"gmail-m_4724528447201748387gmail-a3s gmail-m_4724528447=
201748387gmail-aXjCH gmail-m_4724528447201748387gmail-m15e43bb908747dd4"><d=
iv dir=3D"ltr"><br></div></div></div></div><div class=3D"gmail-m_4724528447=
201748387gmail-gs" style=3D"font-size:medium;margin-left:44px"><div id=3D"g=
mail-m_4724528447201748387gmail-:kd" class=3D"gmail-m_4724528447201748387gm=
ail-ii gmail-m_4724528447201748387gmail-gt gmail-m_4724528447201748387gmail=
-adP gmail-m_4724528447201748387gmail-adO" style=3D"font-size:12.8px;margin=
-bottom:0px;margin-left:0px;padding-bottom:5px"><div id=3D"gmail-m_47245284=
47201748387gmail-:kc" class=3D"gmail-m_4724528447201748387gmail-a3s gmail-m=
_4724528447201748387gmail-aXjCH gmail-m_4724528447201748387gmail-m15e43bb90=
8747dd4"><div dir=3D"ltr">if new recipes are available for a layer how can =
I get those on to my build environment ?</div></div></div></div><div class=
=3D"gmail-m_4724528447201748387gmail-gs" style=3D"font-size:medium;margin-l=
eft:44px"><div id=3D"gmail-m_4724528447201748387gmail-:kd" class=3D"gmail-m=
_4724528447201748387gmail-ii gmail-m_4724528447201748387gmail-gt gmail-m_47=
24528447201748387gmail-adP gmail-m_4724528447201748387gmail-adO" style=3D"f=
ont-size:12.8px;margin-bottom:0px;margin-left:0px;padding-bottom:5px"><div =
id=3D"gmail-m_4724528447201748387gmail-:kc" class=3D"gmail-m_47245284472017=
48387gmail-a3s gmail-m_4724528447201748387gmail-aXjCH gmail-m_4724528447201=
748387gmail-m15e43bb908747dd4"><div dir=3D"ltr"><div><br></div><div>Thanks =
for your help.</div></div></div></div></div></div>

--001a113a22cecee7d80558391166--
