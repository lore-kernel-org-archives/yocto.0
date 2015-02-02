Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 981CBE00809; Sun,  1 Feb 2015 19:28:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.237 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail3.adam.net.au (webmail3.adam.net.au [202.136.110.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7C0BE0070B
	for <yocto@yoctoproject.org>; Sun,  1 Feb 2015 19:27:52 -0800 (PST)
Received: from localhost (webmail3.adam.net.au [127.0.0.1])
	by webmail3.adam.net.au (8.13.8/8.13.8) with ESMTP id t123RYEs025058;
	Mon, 2 Feb 2015 13:57:34 +1030
Message-Id: <64fa0479f90c516365f694030f1382566d5b25b7@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Alex J Lennon" <ajlennon@dynamicdevices.co.uk>,
	peterengcomau001@adam.com.au, "Martin Jansa" <martin.jansa@gmail.com>, 
	"Simon Bolek" <simon.bolek@googlemail.com>
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <54CE8551.9090306@dynamicdevices.co.uk>
Date: Mon, 02 Feb 2015 13:57:34 +1030
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: meta-qt5 problem in yocto 1.7
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 02 Feb 2015 03:28:06 -0000
Content-Type: multipart/alternative;
	boundary="=_5c0bccc1dba0e98c9de5ce0db639e9c2"

--=_5c0bccc1dba0e98c9de5ce0db639e9c2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=0A=0A=09=C2=A0=0AAlex, I have completely separated daisy and dizzy. all=
 of my daisy=0Astuff goes into ~/poky-1.6 and I clone only daisy branche=
s there such=0Aas poky, meta-openembedded, meta-qt5, etc. All of my dizz=
y stuff goes=0Ain ~/poky-1.7 so there is never a mix between them.=C2=A0=
 =0A For dizzy i originally cloned the dizzy meta-qt5 branch and got a=
=0Alot of do_fetch failures for v5.3.2. I then cloned the master branch=
=0Aof meta-qt5 from an idea from Simon, but still get the same do_fetch=
=0Afailuers but now for v5.4.0. =C2=A0The files are there because I can=
=0Amanually download them, but I cant get the do_fetch to work inside=0A=
bitbake.=0ARegardsLachlan=0A=0A----- Original Message -----=0A From: "Al=
ex J Lennon" @dynamicdevices.co.uk> =0ATo:, "Martin Jansa" , "Simon Bole=
k" =0ACc:=0ASent:Sun, 01 Feb 2015 20:58:09 +0100=0ASubject:Re: [yocto] m=
eta-qt5 problem in yocto 1.7=0A=0A On 01/02/2015 20:38, peterengcomau001=
@adam.com.au wrote:=0A > Hi Alex,=0A > I have no problem with qt5 with d=
aisy and have been using it fine=0Afor=0A > over 6 months. During that t=
ime I have cleaned my tmp file=0Amultiple=0A > times which would force a=
 new reload of the sources.=0A > Also I dont have a problem with Dizzy w=
hen building=0A > core-image-mininal, core-image-full-cmdline and core-i=
mage-sato.=0A >=0A > If i bitbake my recipe using the -k option, I only=
 get 3 failed=0Arecipes=0A > 0: qtbase-native-5.4.0-r0 do_fetch (pid 132=
79)=0A > 1: qtbase-5.4.0-r0 do_fetch (pid 13280)=0A > 2: qtdeclarative-5=
4.0-r0 do_fetch (pid 13283)=0A >=0A > and these relate two 2 failed fet=
chs:=0A > ERROR: Function failed: Fetcher failure for URL:=0A >=0A'http:=
//download.qt-project.org/official_releases/qt/5.4/5.4.0/submodules/qtde=
clarative-opensource-src-5.4.0.tar.xz'.=0A > Unable to fetch URL from an=
y source.=0A > ERROR: Function failed: Fetcher failure for URL:=0A >=0A'=
http://download.qt-project.org/official_releases/qt/5.4/5.4.0/submodules=
/qtbase-opensource-src-5.4.0.tar.xz'.=0A > Unable to fetch URL from any=
 source.=0A=0A OK, well I'm not sure but I am going to make some guesses=
 here...=0A=0A You're building Yocto daisy release/branch which you got=
 from=0Asomewhere=0A then you cloned the meta-qt5 repository or otherwis=
e obtained=0Ameta-qt5=0A meta-data?=0A=0A You then added that into your=
 bblayers.conf ?=0A=0A Now the latest meta-qt5 (i.e. master branch) has=
 recipes to build QT=0A 5.4.0 I see=0A=0A I'm not sure what best practic=
e is here but I tend to try to use the=0A same branches across the meta-=
data.=0A=0A So for example when I am building with Yocto daisy/dizzy I a=
m using=0Athe=0A appropriate branch of meta-qt5 as you saw in my earlier=
 email=0A=0A For Yocto dizzy, meta-qt5.dizzy =3D=0A "dizzy:8b0ffbd849203=
d07164ccfad2535bdb107eecd08"=0A=0A If you want to build the meta-qt5 dai=
sy branch then you would go=0Ainto=0A the meta-qt5 folder you cloned fro=
m the git repo something like this=0A=0A cd sources/meta-qt5=0A git bran=
ch (to check, probably shows master)=0A git checkout daisy=0A=0A Then re=
build. That should be building QT 5.2.1 which is what I am=0Aseeing=0A h=
ere=0A=0A Cheers,=0A=0A Alex=0A=0A@yoctoproject.org>.bolek@googlemail.co=
m>.jansa@gmail.com>@adam.com.au>=0A---- Message sent via Adam Internet W=
ebMail - http://www.adam.com.au/

--=_5c0bccc1dba0e98c9de5ce0db639e9c2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><p>=C2=A0<br />Alex, I have completely separated daisy and d=
izzy. all of my daisy stuff goes into ~/poky-1.6 and I clone only daisy=
 branches there such as poky, meta-openembedded, meta-qt5, etc. All of m=
y dizzy stuff goes in ~/poky-1.7 so there is never a mix between them.=
=C2=A0</p>=0A<div><br /></div>=0A<div>For dizzy i originally cloned the=
 dizzy meta-qt5 branch and got a lot of do_fetch failures for v5.3.2. I=
 then cloned the master branch of meta-qt5 from an idea from Simon, but=
 still get the same do_fetch failuers but now for v5.4.0. =C2=A0The file=
s are there because I can manually download them, but I cant get the do_=
fetch to work inside bitbake.</div><div><br /></div><div>Regards</div><d=
iv>Lachlan<br /><blockquote>=0A<br />----- Original Message -----<br /><=
div style=3D"width:100%;background:rgb(228,228,228);">=0A<div style=3D"f=
ont-weight:bold;">From:</div> "Alex J Lennon" @dynamicdevices.co.uk&gt;<=
/div>=0A<br /><div style=3D"font-weight:bold;">To:</div>, "Martin Jansa"=
 , "Simon Bolek" <br /><div style=3D"font-weight:bold;">Cc:</div><br /><=
div style=3D"font-weight:bold;">Sent:</div>Sun, 01 Feb 2015 20:58:09 +01=
00<br /><div style=3D"font-weight:bold;">Subject:</div>Re: [yocto] meta-=
qt5 problem in yocto 1.7<br /><br /><br /><br />=0AOn 01/02/2015 20:38,=
 peterengcomau001@adam.com.au wrote:<br />=0A&gt; Hi Alex,<br />=0A&gt;=
 I have no problem with qt5 with daisy and have been using it fine for<b=
r />=0A&gt; over 6 months. During that time I have cleaned my tmp file m=
ultiple<br />=0A&gt; times which would force a new reload of the sources=
<br />=0A&gt; Also I dont have a problem with Dizzy when building<br />=
=0A&gt; core-image-mininal, core-image-full-cmdline and core-image-sato.=
<br />=0A&gt;<br />=0A&gt; If i bitbake my recipe using the -k option, I=
 only get 3 failed recipes<br />=0A&gt; 0: qtbase-native-5.4.0-r0 do_fet=
ch (pid 13279)<br />=0A&gt; 1: qtbase-5.4.0-r0 do_fetch (pid 13280)<br /=
>=0A&gt; 2: qtdeclarative-5.4.0-r0 do_fetch (pid 13283)<br />=0A&gt;<br=
 />=0A&gt; and these relate two 2 failed fetchs:<br />=0A&gt; ERROR: Fun=
ction failed: Fetcher failure for URL:<br />=0A&gt; 'http://download.qt-=
project.org/official_releases/qt/5.4/5.4.0/submodules/qtdeclarative-open=
source-src-5.4.0.tar.xz'.<br />=0A&gt; Unable to fetch URL from any sour=
ce.<br />=0A&gt; ERROR: Function failed: Fetcher failure for URL:<br />=
=0A&gt; 'http://download.qt-project.org/official_releases/qt/5.4/5.4.0/s=
ubmodules/qtbase-opensource-src-5.4.0.tar.xz'.<br />=0A&gt; Unable to fe=
tch URL from any source.<br /><br />=0AOK, well I'm not sure but I am go=
ing to make some guesses here...<br /><br />=0AYou're building Yocto dai=
sy release/branch which you got from somewhere<br />=0Athen you cloned t=
he meta-qt5 repository or otherwise obtained meta-qt5<br />=0Ameta-data?=
<br /><br />=0AYou then added that into your bblayers.conf ?<br /><br />=
=0ANow the latest meta-qt5 (i.e. master branch) has recipes to build QT<=
br />=0A5.4.0 I see<br /><br />=0AI'm not sure what best practice is her=
e but I tend to try to use the<br />=0Asame branches across the meta-dat=
a.<br /><br />=0ASo for example when I am building with Yocto daisy/dizz=
y I am using the<br />=0Aappropriate branch of meta-qt5 as you saw in my=
 earlier email<br /><br />=0AFor Yocto dizzy, meta-qt5.dizzy =3D<br />=
=0A"dizzy:8b0ffbd849203d07164ccfad2535bdb107eecd08"<br /><br />=0AIf you=
 want to build the meta-qt5 daisy branch then you would go into<br />=0A=
the meta-qt5 folder you cloned from the git repo something like this<br=
 /><br />=0Acd sources/meta-qt5<br />=0Agit branch (to check, probably s=
hows master)<br />=0Agit checkout daisy<br /><br />=0AThen rebuild. That=
 should be building QT 5.2.1 which is what I am seeing<br />=0Ahere<br /=
><br />=0ACheers,<br /><br />=0AAlex<br /><br />@yoctoproject.org&gt;.bo=
lek@googlemail.com&gt;.jansa@gmail.com&gt;@adam.com.au&gt;</blockquote>=
=0A</div>---- Message sent via Adam Internet WebMail  - http://www.adam.=
com.au/</body></html>

--=_5c0bccc1dba0e98c9de5ce0db639e9c2--
