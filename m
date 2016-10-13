Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 138F8E00E38; Thu, 13 Oct 2016 09:00:04 -0700 (PDT)
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
	*      [194.117.213.102 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp.laposte.net (smtpoutz27.laposte.net [194.117.213.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B237E00CB5
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 08:59:57 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout015 (Postfix) with ESMTP id 8B9001C8F65
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 17:59:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1476374396; bh=egO77qyLanxGgq0RZIYvyxqBKh1IaJ3kpvAattoqRbA=;
	h=To:Subject:References:Date:From:In-Reply-To;
	b=fbBNJPZQPCTPsNDEeXBJ3l9bcti/zvIvoaVXSqw/YvIHLdFv9nQqYMKSPeOEnF8Yo
	odyN0u1cSGffPJJFkfwuwz+17/dlcgYEbB5qPFVGVuK/7LTAEmMr/7ApHy+SG/uQiF
	+4BWW0xM7pYvBKbS99+CCGkCcgBqepP30Tkd3T8QNpwu5TdPI8jACgh51q4OYt+1X5
	aISReJ1Yg/SdTYFD79aRlFPhxhH1h3QHgffQPjo0DKEm0JvIOG4RLxFSlrYUtFMY4C
	5awopnykOuZsVgsaloAOzhsQX9gh7/sfmQCq6xYAWuLCN1V4VLXu/ZjYQy83GnF9AG
	lY6h3ZzreT6Ug==
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout015 (Postfix) with ESMTP id 7BEF11C8F76
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 17:59:56 +0200 (CEST)
Received: from lpn-prd-vrin003 (lpn-prd-vrin003.prosodie [10.128.63.4])
	by lpn-prd-vrout015 (Postfix) with ESMTP id 78B981C8F65
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 17:59:56 +0200 (CEST)
Received: from lpn-prd-vrin003 (localhost [127.0.0.1])
	by lpn-prd-vrin003 (Postfix) with ESMTP id 6866748DFE3
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 17:59:56 +0200 (CEST)
Received: from pc-mls.ecafaros.local (unknown [212.234.36.135])
	by lpn-prd-vrin003 (Postfix) with ESMTPA id 22B5648E062;
	Thu, 13 Oct 2016 17:59:56 +0200 (CEST)
To: "Yocto list discussion" <yocto@yoctoproject.org>, "Michel D'HOOGE"
	<michel.dhooge@free.fr>
References: <547858470.126510775.1476370594532.JavaMail.root@spooler3-g27.priv.proxad.net>
Date: Thu, 13 Oct 2016 17:59:56 +0200
MIME-Version: 1.0
From: idealsim <idealsim@laposte.net>
Message-ID: <op.yo9316c3mnlnty@pc-mls.ecafaros.local>
In-Reply-To: <547858470.126510775.1476370594532.JavaMail.root@spooler3-g27.priv.proxad.net>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-SrcIP: 212.234.36.135
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeelvddrgeeggdeljecutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhs
X-VR-Cause-3: ucdlqddutddtmdenucfjughrpegtvffufhffggfhkfgjfgesrgdtreertderjeenucfhrhhomhepihgu
X-VR-Cause-4: vggrlhhsihhmuceoihguvggrlhhsihhmsehlrghpohhsthgvrdhnvghtqeenucffohhmrghinhepohhp
X-VR-Cause-5: vghrrgdrtghomhenucfkphepvdduvddrvdefgedrfeeirddufeehnecurfgrrhgrmhepmhhouggvpehs
X-VR-Cause-6: mhhtphhouhhtpdhhvghlohepphgtqdhmlhhsrdgvtggrfhgrrhhoshdrlhhotggrlhdpihhnvghtpedv
X-VR-Cause-7: uddvrddvfeegrdefiedrudefhedpmhgrihhlfhhrohhmpehiuggvrghlshhimheslhgrphhoshhtvgdr
X-VR-Cause-8: nhgvthdprhgtphhtthhopehmihgthhgvlhdrughhohhoghgvsehfrhgvvgdrfhhr
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
Subject: Re: add dejavu-fonts to image
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
X-List-Received-Date: Thu, 13 Oct 2016 16:00:04 -0000
Content-Type: multipart/alternative; boundary=----------oHRPWpw9qhiakS0K8veFfc

------------oHRPWpw9qhiakS0K8veFfc
Content-Type: text/plain; charset=utf-8; format=flowed; delsp=yes
Content-Transfer-Encoding: Quoted-Printable

Thanks for this. I will try and let you know the solution worked for me =
!

regards

Le Thu, 13 Oct 2016 16:56:34 +0200, Michel D'HOOGE <michel.dhooge@free.f=
r>  =

a =C3=A9crit:

>> Hello, thanks a lot the build work now !
> I'm very proud: this is the 1st time I can help someone on Yocto! This=
  =

> means a lot to me ;-)
>
>>> But i have another issue, i would like to install the font in  =

>>> /usr/lib/fonts, this is not the case for the moment (it 's >>for Qt5=
.7  =

>>> use). How i can said to yocto to install font (.ttf) on this folder =
 =

>>> please ?
> I also need to use Qt5.7, but since I'm currently on other tasks, you =
 =

> discover the troubles a couple of hours before >me. So let's try to  =

> debug this together=E2=80=A6
>
>> 1/ File ttf-dejavu_2.37.bb includes (requires) `ttf.inc` that is in t=
he  =

>> same folder.
> 2/ File ttf.inc has the following method:
> do_install() {
>    install -d ${D}${datadir}/fonts/truetype/
>    find ./ -name '*.tt[cf]' -exec install -m 0644 {}  =

> ${D}${datadir}/fonts/>truetype/ \;
> }
>
>> which is in turn appended by dejavu with:
> do_install_append () {
>    install -d ${D}${sysconfdir}/fonts/conf.d/
>    install -m 0644 ${WORKDIR}/30-dejavu-aliases.conf  =

> ${D}${sysconfdir}/fonts/>conf.d/
> }
>
>> 3/ The log of the install task of the recipe is  =

>> /tmp/work/all-poky-linux/ttf-dejavu/2.37-r7/temp/run.do_install
> We have:
> export datadir=3D"/usr/share"
> export sysconfdir=3D"/etc"
>
> I compared to my Debian system: the files are stored in the same  =

> folders. So it seems this is qt that doesn't search >in the "correct" =
 =

> place.
>
> 4/ After some grepping in meta-qt5, I have:
>
> classes/qmake5_paths.bbclass
> OE_QMAKE_PATH_LIBS =3D "${libdir}"
>
> classes/qmake5_paths.bbclass
> OE_QMAKE_PATH_QT_FONTS =3D "${OE_QMAKE_PATH_LIBS}/fonts"
>
> 5/ But I don't know what is the best solution now. We could change the=
  =

> OE_QMAKE_PATH_QT_FONTS variable. >But this implies to recompile many  =

> pieces, I believe.
>
> So I opt for changing the do_install function. The quick & dirty  =

> solution is to create a ttf-dejavu_2.37.bbappend file >that totally  =

> redefine the do_install method.
>
> do_install() {
>    install -d ${D}${datadir}/fonts/truetype/
>    find ./ -name '*.tt[cf]' -exec install -m 0644 {}  =

> ${D}${libdir}/fonts/>truetype/ \;
>    install -d ${D}${sysconfdir}/fonts/conf.d/
>    install -m 0644 ${WORKDIR}/30-dejavu-aliases.conf  =

> ${D}${sysconfdir}/fonts/>conf.d/
> }
>
>
>> I can't test it right now, but I hope this helps you.
>
> Michel
>
>
>
>



-- =

Utilisant le logiciel de courrier d'Opera : http://www.opera.com/mail/

------------oHRPWpw9qhiakS0K8veFfc
Content-Type: multipart/related; boundary=----------oHRPWpw9qhiakSzMUHgO7R

------------oHRPWpw9qhiakSzMUHgO7R
Content-Type: text/html; charset=utf-8
Content-ID: <op.1476374396003.07a55b655d6a71a8@172.22.9.5>
Content-Transfer-Encoding: Quoted-Printable

<!DOCTYPE html><html><head><style type=3D"text/css">p { margin: 0; }</st=
yle>
<style type=3D"text/css">body { font-family:'Times New Roman'; font-size=
:13px}</style>
</head>
<body><div>Thanks for this. I will try and let you know the solution wor=
ked for me !</div><div><br></div><div>regards</div><div><br></div><div>L=
e Thu, 13 Oct 2016 16:56:34 +0200, Michel D'HOOGE &lt;michel.dhooge@free=
.fr&gt; a =C3=A9crit:<br></div><br><blockquote style=3D"margin: 0 0 0.80=
ex; border-left: #0000FF 2px solid; padding-left: 1ex"><div style=3D"fon=
t-family: times new roman,new york,times,serif; font-size: 12pt; color: =
#000000"><blockquote style=3D"color: rgb(0, 0, 0); font-family: Helvetic=
a, Arial, sans-serif; font-size: 12pt; border-left: 2px solid rgb(16, 16=
, 255); margin-left: 5px; padding-left: 5px; font-weight: normal; font-s=
tyle: normal; text-decoration: none;"><div id=3D"DWT282">Hello, thanks a=
 lot the build work now !</div></blockquote><span style=3D"font-family: =
Helvetica, Arial, sans-serif; font-size: 12pt;">I'm very proud: this is =
the 1st time I can help someone on Yocto! This means a lot to me ;-)</sp=
an><div><font face=3D"Helvetica, Arial, sans-serif"><span style=3D"font-=
size: 16px;"><br></span></font><blockquote style=3D"color: rgb(0, 0, 0);=
 font-family: Helvetica, Arial, sans-serif; font-size: 12pt; border-left=
: 2px solid rgb(16, 16, 255); margin-left: 5px; padding-left: 5px; font-=
weight: normal; font-style: normal; text-decoration: none;"><div id=3D"D=
WT265"><span style=3D"font-size: 12pt;">But i have another issue, i woul=
d like to install the font in /usr/lib/fonts, this is not the case for t=
he moment (it 's for Qt5.7 use). How i can said to yocto to install font=
 (.ttf) on this folder please ?</span></div></blockquote><span style=3D"=
font-family: Helvetica, Arial, sans-serif; font-size: 12pt;">I also need=
 to use Qt5.7, but since I'm currently on other tasks, you discover the =
troubles a couple of hours before me. So let's try to debug this togethe=
r=E2=80=A6</span><style>p { margin: 0; }</style><style>body { font-famil=
y:'Times New Roman'; font-size:13px}</style></div><div><span style=3D"fo=
nt-family: Helvetica, Arial, sans-serif; font-size: 12pt;"><br></span></=
div><div><span style=3D"font-family: Helvetica, Arial, sans-serif; font-=
size: 12pt;"><b>1/</b> File&nbsp;</span><span style=3D"font-size: 16px; =
font-family: Helvetica, Arial, sans-serif;">ttf-dejavu_2.37.bb includes =
(requires) `ttf.inc` that is in the same folder.</span></div><div><span =
style=3D"font-size: 16px; font-family: Helvetica, Arial, sans-serif;"><b=
>2/</b> File ttf.inc has the following method:</span></div><div><div><sp=
an style=3D"font-size: 16px;"><font face=3D"courier new, courier, monaco=
, monospace, sans-serif">do_install() {</font></span></div><div><span st=
yle=3D"font-size: 16px;"><font face=3D"courier new, courier, monaco, mon=
ospace, sans-serif">&nbsp; &nbsp; install -d ${D}${datadir}/fonts/truety=
pe/</font></span></div><div><span style=3D"font-size: 16px;"><font face=3D=
"courier new, courier, monaco, monospace, sans-serif">&nbsp; &nbsp; find=
 ./ -name '*.tt[cf]' -exec install -m 0644 {} ${D}${datadir}/fonts/truet=
ype/ \;</font></span></div><div><span style=3D"font-size: 16px;"><font f=
ace=3D"courier new, courier, monaco, monospace, sans-serif">}</font></sp=
an></div></div><div><font face=3D"Helvetica, Arial, sans-serif"><span st=
yle=3D"font-size: 16px;"><br></span></font></div><div><font face=3D"Helv=
etica, Arial, sans-serif"><span style=3D"font-size: 16px;">which is in t=
urn appended by dejavu with:</span></font></div><div><div><span style=3D=
"font-size: 16px;"><font face=3D"courier new, courier, monaco, monospace=
, sans-serif">do_install_append () {</font></span></div><div><span style=
=3D"font-size: 16px;"><font face=3D"courier new, courier, monaco, monosp=
ace, sans-serif">&nbsp; &nbsp; install -d ${D}${sysconfdir}/fonts/conf.d=
/</font></span></div><div><span style=3D"font-size: 16px;"><font face=3D=
"courier new, courier, monaco, monospace, sans-serif">&nbsp; &nbsp; inst=
all -m 0644 ${WORKDIR}/30-dejavu-aliases.conf ${D}${sysconfdir}/fonts/co=
nf.d/</font></span></div><div><span style=3D"font-size: 16px;"><font fac=
e=3D"courier new, courier, monaco, monospace, sans-serif">}</font></span=
></div><div style=3D"font-family: Helvetica, Arial, sans-serif; font-siz=
e: 16px;"><b><br></b></div></div><div style=3D"font-family: Helvetica, A=
rial, sans-serif; font-size: 16px;"><b>3/ </b>The log of the install tas=
k of the recipe is&nbsp;/tmp/work/all-poky-linux/ttf-dejavu/2.37-r7/temp=
/run.do_install</div><div style=3D"font-family: Helvetica, Arial, sans-s=
erif; font-size: 16px;">We have:</div><div><div style=3D"font-size: 16px=
;"><font face=3D"courier new, courier, monaco, monospace, sans-serif">ex=
port datadir=3D"/usr/share"</font></div><div><div><span style=3D"font-si=
ze: 16px;"><font face=3D"courier new, courier, monaco, monospace, sans-s=
erif">export sysconfdir=3D"/etc"</font></span></div></div><div style=3D"=
font-family: Helvetica, Arial, sans-serif; font-size: 16px;"><div><br></=
div></div><div style=3D"font-family: Helvetica, Arial, sans-serif; font-=
size: 16px;">I compared to my Debian system: the files are stored in the=
 same folders. So it seems this is qt that doesn't search in the "correc=
t" place.</div><div style=3D"font-family: Helvetica, Arial, sans-serif; =
font-size: 16px;"><br></div><div style=3D"font-family: Helvetica, Arial,=
 sans-serif; font-size: 16px;"><b>4/</b> After some grepping in meta-qt5=
, I have:</div><div style=3D"font-family: Helvetica, Arial, sans-serif; =
font-size: 16px;"><br></div><div style=3D"font-family: Helvetica, Arial,=
 sans-serif; font-size: 16px;"><div>classes/qmake5_paths.bbclass</div><d=
iv>OE_QMAKE_PATH_LIBS =3D "${libdir}"</div><div><br></div></div><div sty=
le=3D"font-family: Helvetica, Arial, sans-serif; font-size: 16px;"><div>=
classes/qmake5_paths.bbclass</div><div>OE_QMAKE_PATH_QT_FONTS =3D "${OE_=
QMAKE_PATH_LIBS}/fonts"</div><div><br></div></div><div style=3D"font-fam=
ily: Helvetica, Arial, sans-serif; font-size: 16px;"><b>5/</b> But I don=
't know what is the best solution now. We could change the&nbsp;OE_QMAKE=
_PATH_QT_FONTS variable. But this implies to recompile many pieces, I be=
lieve.</div><div style=3D"font-family: Helvetica, Arial, sans-serif; fon=
t-size: 16px;"><br></div><div style=3D"font-family: Helvetica, Arial, sa=
ns-serif; font-size: 16px;">So I opt for changing the do_install functio=
n. The quick &amp; dirty solution is to create a&nbsp;ttf-dejavu_2.37.bb=
append file that totally redefine the do_install method.</div><div style=
=3D"font-family: Helvetica, Arial, sans-serif; font-size: 16px;"><br></d=
iv><div style=3D"font-family: Helvetica, Arial, sans-serif; font-size: 1=
6px;"><div><div><font face=3D"courier new, courier, monaco, monospace, s=
ans-serif">do_install() {</font></div><div><font face=3D"courier new, co=
urier, monaco, monospace, sans-serif">&nbsp; &nbsp; install -d ${D}${dat=
adir}/fonts/truetype/</font></div><div><font face=3D"courier new, courie=
r, monaco, monospace, sans-serif">&nbsp; &nbsp; find ./ -name '*.tt[cf]'=
 -exec install -m 0644 {} ${D}${<b>libdir</b>}/fonts/truetype/ \;</font>=
</div></div><div><div style=3D"font-family: &quot;times new roman&quot;,=
 &quot;new york&quot;, times, serif;"><font face=3D"courier new, courier=
, monaco, monospace, sans-serif">&nbsp; &nbsp; install -d ${D}${sysconfd=
ir}/fonts/conf.d/</font></div><div style=3D"font-family: &quot;times new=
 roman&quot;, &quot;new york&quot;, times, serif;"><font face=3D"courier=
 new, courier, monaco, monospace, sans-serif">&nbsp; &nbsp; install -m 0=
644 ${WORKDIR}/30-dejavu-aliases.conf ${D}${sysconfdir}/fonts/conf.d/</f=
ont></div><div style=3D"font-family: &quot;times new roman&quot;, &quot;=
new york&quot;, times, serif;"><font face=3D"courier new, courier, monac=
o, monospace, sans-serif">}</font></div></div><div><font face=3D"courier=
 new, courier, monaco, monospace, sans-serif"><br></font></div></div><di=
v style=3D"font-family: Helvetica, Arial, sans-serif; font-size: 16px;">=
<br></div><div style=3D"font-family: Helvetica, Arial, sans-serif; font-=
size: 16px;">I can't test it right now, but I hope this helps you.</div>=
<div style=3D"font-family: Helvetica, Arial, sans-serif; font-size: 16px=
;"><br></div><div style=3D"font-family: Helvetica, Arial, sans-serif; fo=
nt-size: 16px;">Michel</div><div style=3D"font-family: Helvetica, Arial,=
 sans-serif; font-size: 16px;"><br></div><div style=3D"font-family: Helv=
etica, Arial, sans-serif; font-size: 16px;"><br></div><div style=3D"font=
-family: Helvetica, Arial, sans-serif; font-size: 16px;"><br></div><div =
style=3D"font-family: Helvetica, Arial, sans-serif; font-size: 16px;"><b=
r></div></div></div></blockquote><br><br><br><div id=3D"M2Signature"><di=
v>-- </div><div>Utilisant le logiciel de courrier d'Opera : <a href=3D"h=
ttp://www.opera.com/mail/">http://www.opera.com/mail/</a></div></div></b=
ody></html>

------------oHRPWpw9qhiakSzMUHgO7R--

------------oHRPWpw9qhiakS0K8veFfc--
