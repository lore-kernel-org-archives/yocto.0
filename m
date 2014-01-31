Return-Path: <andrew_4122@yahoo.com>
Received: from nm14-vm0.bullet.mail.bf1.yahoo.com
	(nm14-vm0.bullet.mail.bf1.yahoo.com [98.139.213.164])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14646E004A1
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2014 21:26:13 -0800 (PST)
Received: from [66.196.81.170] by nm14.bullet.mail.bf1.yahoo.com with NNFMP;
	31 Jan 2014 05:26:12 -0000
Received: from [98.139.212.224] by tm16.bullet.mail.bf1.yahoo.com with NNFMP;
	31 Jan 2014 05:26:12 -0000
Received: from [127.0.0.1] by omp1033.mail.bf1.yahoo.com with NNFMP;
	31 Jan 2014 05:26:12 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 358835.99845.bm@omp1033.mail.bf1.yahoo.com
Received: (qmail 57167 invoked by uid 60001); 31 Jan 2014 05:26:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1391145972; bh=lNei+iVeU4gWj+ygzbIw00HD2Ehb/YrNMAMXHMguU5Q=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=qdguVr84Wa6vvN5PHHCkTb37rl+ZE9zfv9BW5GmIffp1BctK7rpzPe7P5atvHUuTCrl2G2vzYgWWslJRVx7Ufd/jQzRZ1UH9cr3STDJXq05JF4iKeSSY8snh9KceGq60ZYTQSUfA0NX959IQkjTQP3aA1aA1QlfUGNsDOhB91Sg=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=1z+lZyDiHpgqIGfa/+TkgvjSmzJ8lpMb+9Ta97cmN7NaL1ixrU7opckM+aXt+4Femc19Wysa2xm5UPJvLM+5WI/bPqwMeWLQ/Fl3pOu5C1htG0koTHAQnujAlXUT2NU8JMUe3WXIPiLjCUOliez2sbraBirTqFYK+r1NehUwgjo=;
X-YMail-OSG: jb0h5f8VM1nt652tqfZCN8gQhtpt.FRDqi0ukGUnYduGMyC
	5jB0yeN.f.GUVqpVHkmyDVibg0PPb24hwZyYafjTo.4MEfqO.Cb1TsSWAIPo
	lPE4V7xUKsaOykV63giExTrZwryWQBiP0hoI3H.yOAyHMEhznuUc_ivDFFQX
	9mcXCVUleuFZ7L6RLTZey118DZwdpWBgHAgIAX2UXd7npCMwWB4qpNVz1zxj
	7mk8bxFAXoliqak3o_nNqiV63uOZ_F.yDGFXQldBMaxpplfnSA0xwqZ8Fk.l
	o4QDCqfekmg60XRgtRXzjhmsMqCkxom_AOvhKEVIzCbzfot5ohHUb8BTzwql
	6jG0TfVgtug2BFmkIFmgmw.zg2Ne.XShGQ9nBxPLRpNgbbnmos9VP3v3HuDj
	pufFTDoKJkkDO803cB3d1y6IumEZYkjbQuCbLky8wPPX8WdL970CbVzFKZ0D
	R4AnhM.SLQHdTBF4m7X_XtcRHfC4PQ68WweE7eZHCjrx.a_WGccwSnYk5Qxb
	Xoty_PJgtAwNhPeorkk3CB1OY8382bLT.WTLvngqS_ZgDDnWsjlSE1nGP8cW
	qrqLNL8DXNGCGvcE-
Received: from [99.146.98.94] by web162602.mail.bf1.yahoo.com via HTTP;
	Thu, 30 Jan 2014 21:26:12 PST
X-Rocket-MIMEInfo: 002.001,
	Q29ycmVjdGlvbiwgdGhlIGZ1bmN0aW9uIHNob3VsZCBiZSBnZXRfZmlsZV9sYXllciwgYnV0IHRoZSBzYW1lIGxvZ2ljIGlzIHVzZWQgaW4gdGhhdCBmdW5jdGlvbjoKCsKgIMKgIGRlZiBnZXRfZmlsZV9sYXllcihzZWxmLCBmaWxlbmFtZSk6CsKgIMKgIMKgIMKgIGZvciBsYXllciwgXywgcmVnZXgsIF8gaW4gc2VsZi5iYmhhbmRsZXIuY29va2VyLnJlY2lwZWNhY2hlLmJiZmlsZV9jb25maWdfcHJpb3JpdGllczoKwqAgwqAgwqAgwqAgwqAgwqAgaWYgcmVnZXgubWF0Y2goZmlsZW5hbWUpOgrCoCDCoCDCoCABMAEBAQE-
X-Mailer: YahooMailWebService/0.8.173.622
References: <1391145760.92041.YahooMailNeo@web162606.mail.bf1.yahoo.com>
Message-ID: <1391145972.8946.YahooMailNeo@web162602.mail.bf1.yahoo.com>
Date: Thu, 30 Jan 2014 21:26:12 -0800 (PST)
From: Andrew Luo <andrew_4122@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
In-Reply-To: <1391145760.92041.YahooMailNeo@web162606.mail.bf1.yahoo.com>
MIME-Version: 1.0
Subject: Re: Use of BBFILE_PATTERN in conf/layer.conf
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Andrew Luo <andrew_4122@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 31 Jan 2014 05:26:16 -0000
Content-Type: multipart/alternative;
	boundary="488955561-1435900469-1391145972=:8946"

--488955561-1435900469-1391145972=:8946
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Correction, the function should be get_file_layer, but the same logic is us=
ed in that function:=0A=0A=A0 =A0 def get_file_layer(self, filename):=0A=A0=
 =A0 =A0 =A0 for layer, _, regex, _ in self.bbhandler.cooker.recipecache.bb=
file_config_priorities:=0A=A0 =A0 =A0 =A0 =A0 =A0 if regex.match(filename):=
=0A=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 for layerdir in self.bblayers:=0A=A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if regex.match(os.path.join(layerdir, 'tes=
t')) and re.match(layerdir, filename):=0A=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 return self.get_layer_name(layerdir)=0A=A0 =A0 =A0 =A0 retu=
rn "?"=0A=0A=0A=0A=0AOn Thursday, January 30, 2014 9:22 PM, Andrew Luo <and=
rew_4122@yahoo.com> wrote:=0A =0AI see this example in the doc:=0A=0A=0A# W=
e have a conf and classes directory, add to BBPATH=0ABBPATH :=3D "${BBPATH}=
:${LAYERDIR}"=0A=0A# We have a recipes directory containing both .bb and .b=
bappend files, add to BBFILES=0ABBFILES :=3D "${BBFILES} ${LAYERDIR}/recipe=
s/*/*.bb \=0A=A0=A0 =A0 =A0 =A0 =A0 =A0 ${LAYERDIR}/recipes/*/*.bbappend"=
=0A=0ABBFILE_COLLECTIONS +=3D "emenlow"=0ABBFILE_PATTERN_emenlow :=3D "^${L=
AYERDIR}/"=0ABBFILE_PRIORITY_emenlow =3D "6"=0A=0AThe doc says this about t=
he BBFILE_PATTERN variable:=0A=0AVariable that expands to match files from =
BBFILES in a particular layer. BBFILE_PATTERN is used in the conf/layer.con=
f file and must contain the name of the specific layer (e.g. BBFILE_PATTERN=
_emenlow).=0A=0Aso it sounds like the BBFILE_PATTERN is a regular expressio=
n to filter just the bb files belonging to this layer from all the BBFILES.=
 =A0But when I set this variable to include also the recipes dir like so:=
=0A=0ABBFILE_PATTERN_emenlow :=3D "^${LAYERDIR}/recipes/", the layer name d=
oes not show up in bitbake-layers show-recipes command. =A0I mean this is j=
ust a more specific pattern for my recipe files in the particular layer rig=
ht? =A0Found that in the get_file_layer_dir function:=0A=0A=A0 =A0 def get_=
file_layerdir(self, filename):=0A=A0 =A0 =A0 =A0 for layer, _, regex, _ in =
self.bbhandler.cooker.recipecache.bbfile_config_priorities:=0A=A0 =A0 =A0 =
=A0 =A0 =A0 if regex.match(filename):=0A=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 for=
 layerdir in self.bblayers:=0A=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if re=
gex.match(os.path.join(layerdir, 'test')) and re.match(layerdir, filename):=
=0A=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return layerdir=0A=A0 =
=A0 =A0 =A0 return "?"=0A=0Aso looks like anything more specific than the $=
{LAYERDIR} will not match <layerdir>/test test string, so it won't work. =
=A0Is this intentional?=0A=0AThanks,=0A=0AAndrew

--488955561-1435900469-1391145972=:8946
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:8pt"><div><span>Correction, the function should be get_file_layer, =
but the same logic is used in that function:</span></div><div style=3D"colo=
r: rgb(0, 0, 0); font-size: 11px; font-family: HelveticaNeue, 'Helvetica Ne=
ue', Helvetica, Arial, 'Lucida Grande', sans-serif; background-color: trans=
parent; font-style: normal; "><span><br></span></div><div style=3D"color: r=
gb(0, 0, 0); font-size: 11px; font-family: HelveticaNeue, 'Helvetica Neue',=
 Helvetica, Arial, 'Lucida Grande', sans-serif; background-color: transpare=
nt; font-style: normal; "><span></span></div><div style=3D"background-color=
: transparent; ">&nbsp; &nbsp; def get_file_layer(self, filename):</div><di=
v style=3D"background-color: transparent; ">&nbsp; &nbsp; &nbsp; &nbsp; for=
 layer, _, regex, _ in
 self.bbhandler.cooker.recipecache.bbfile_config_priorities:</div><div styl=
e=3D"background-color: transparent; ">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; if regex.match(filename):</div><div style=3D"background-color: transpa=
rent; ">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; for layerdi=
r in self.bblayers:</div><div style=3D"background-color: transparent; "><sp=
an style=3D"font-weight: bold;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; if regex.match(os.path.join(layerdir, 'test')) a=
nd re.match(layerdir, filename):</span></div><div style=3D"background-color=
: transparent; ">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; return self.get_layer_name(layerdir)</div><div st=
yle=3D"background-color: transparent; ">&nbsp; &nbsp; &nbsp; &nbsp; return =
"?"</div><div><br></div><div></div><div class=3D"yahoo_quoted" style=3D"dis=
play: block; "> <br> <br> <div style=3D"font-family: HelveticaNeue, 'Helvet=
ica Neue',
 Helvetica, Arial, 'Lucida Grande', sans-serif; font-size: 8pt; "> <div sty=
le=3D"font-family: HelveticaNeue, 'Helvetica Neue', Helvetica, Arial, 'Luci=
da Grande', sans-serif; font-size: 12pt; "> <div dir=3D"ltr"> <font size=3D=
"2" face=3D"Arial"> On Thursday, January 30, 2014 9:22 PM, Andrew Luo &lt;a=
ndrew_4122@yahoo.com&gt; wrote:<br> </font> </div>  <div class=3D"y_msg_con=
tainer"><div id=3D"yiv4974908400"><div><div style=3D"color: rgb(0, 0, 0); b=
ackground-color: rgb(255, 255, 255); font-family: HelveticaNeue, 'Helvetica=
 Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-size: 10pt; "><=
div>I see this example in the doc:</div><div><br></div><div style=3D"color:=
 rgb(0, 0, 0); font-size: 13px; font-family: HelveticaNeue, 'Helvetica Neue=
', Helvetica, Arial, 'Lucida Grande', sans-serif; background-color: transpa=
rent; font-style: normal; "><br></div><div style=3D"color:rgb(0, 0, 0);back=
ground-color:transparent;font-style:normal;"><div style=3D"font-family: Cou=
rier;
 font-size: 10px; margin-top: 0px; margin-bottom: 0px; "># We have a conf a=
nd classes directory, add to BBPATH</div>=0A<div style=3D"font-family: Cour=
ier; font-size: 10px; margin-top: 0px; margin-bottom: 0px; ">BBPATH :=3D "$=
{BBPATH}:${LAYERDIR}"</div>=0A<div style=3D"font-family: Courier; font-size=
: 10px; margin-top: 0px; margin-bottom: 0px; min-height: 12px; "><br></div>=
=0A<div style=3D"font-family: Courier; font-size: 10px; margin-top: 0px; ma=
rgin-bottom: 0px; "># We have a recipes directory containing both .bb and .=
bbappend files, add to BBFILES</div>=0A<div style=3D"font-family: Courier; =
font-size: 10px; margin-top: 0px; margin-bottom: 0px; ">BBFILES :=3D "${BBF=
ILES} ${LAYERDIR}/recipes/*/*.bb \</div>=0A<div style=3D"font-family: Couri=
er; font-size: 10px; margin-top: 0px; margin-bottom: 0px; ">&nbsp;&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; ${LAYERDIR}/recipes/*/*.bbappend"</div>=0A=
<div style=3D"font-family: Courier; font-size: 10px; margin-top: 0px; margi=
n-bottom: 0px; min-height: 12px; "><br></div>=0A<div style=3D"font-family: =
Courier; font-size: 10px; margin-top: 0px; margin-bottom: 0px; ">BBFILE_COL=
LECTIONS +=3D "emenlow"</div>=0A<div style=3D"font-family: Courier; font-si=
ze: 10px; margin-top: 0px; margin-bottom: 0px; ">BBFILE_PATTERN_emenlow :=
=3D "^${LAYERDIR}/"</div>=0A<div style=3D"font-family: Courier; font-size: =
10px; margin-top: 0px; margin-bottom: 0px; ">BBFILE_PRIORITY_emenlow =3D "6=
"</div><div style=3D"font-family: Courier; font-size: 10px; margin-top: 0px=
; margin-bottom: 0px; "><br></div><div style=3D"margin-top:0px;margin-botto=
m:0px;color:rgb(0, 0, 0);background-color:transparent;font-style:normal;">T=
he doc says this about the BBFILE_PATTERN variable:</div><div style=3D"marg=
in-top:0px;margin-bottom:0px;color:rgb(0, 0, 0);background-color:transparen=
t;font-style:normal;"><br></div><div style=3D"margin-top:0px;margin-bottom:=
0px;color:rgb(0, 0, 0);background-color:transparent;font-style:normal;"><di=
v style=3D"font-family: Verdana; font-size: 16px; margin-top: 0px; margin-b=
ottom: 16px; color: rgb(50, 51, 51); ">Variable that expands to match files=
 from BBFILES in a particular layer. BBFILE_PATTERN is used in the <span st=
yle=3D"font-family: Courier; ">conf/layer.conf</span> file and must contain=
 the=0A name of the specific layer (e.g. BBFILE_PATTERN_emenlow).</div><div=
 style=3D"font-family: Courier; font-size: 16px; margin-top: 0px; margin-bo=
ttom: 16px; color: rgb(50, 51, 51); background-color: transparent; font-sty=
le: normal; "><br></div><div style=3D"font-family: Courier; font-size: 16px=
; margin-top: 0px; margin-bottom: 16px; color: rgb(50, 51, 51); background-=
color: transparent; font-style: normal; ">so it sounds like the BBFILE_PATT=
ERN is a regular expression to filter just the bb files belonging to this l=
ayer from all the BBFILES. &nbsp;But when I set this variable to include al=
so the recipes dir like so:</div><div style=3D"font-family: Courier; font-s=
ize: 16px; margin-top: 0px; margin-bottom: 16px; color: rgb(50, 51, 51); ba=
ckground-color: transparent; font-style: normal; "><br></div><div style=3D"=
font-family: Courier; font-size: 16px; margin-top: 0px; margin-bottom: 16px=
; color: rgb(50, 51, 51); background-color: transparent; font-style: normal=
;
 ">BBFILE_PATTERN_emenlow :=3D "^${LAYERDIR}/recipes/", the layer name does=
 not show up in bitbake-layers show-recipes command. &nbsp;I mean this is j=
ust a more specific pattern for my recipe files in the particular layer rig=
ht? &nbsp;Found that in the get_file_layer_dir function:</div><div style=3D=
"font-family: Courier; font-size: 16px; margin-top: 0px; margin-bottom: 16p=
x; color: rgb(50, 51, 51); background-color: transparent; font-style: norma=
l; "><br></div><div style=3D"margin-top: 0px; margin-bottom: 16px; color: r=
gb(50, 51, 51); background-color: transparent; font-style: normal; font-siz=
e: 16px; font-family: Courier; "><div style=3D"font-family: Courier; margin=
-top: 0px; margin-bottom: 16px; background-color: transparent; "><span styl=
e=3D"font-size:10px;">&nbsp; &nbsp; def get_file_layerdir(self, filename):<=
/span></div><div style=3D"font-family: Courier; margin-top: 0px; margin-bot=
tom: 16px; background-color: transparent; "><span style=3D"=0Afont-size:x-s=
mall;">&nbsp; &nbsp; &nbsp; &nbsp; for layer, _, regex, _ in self.bbhandler=
.cooker.recipecache.bbfile_config_priorities:</span></div><div style=3D"fon=
t-family: Courier; margin-top: 0px; margin-bottom: 16px; background-color: =
transparent; "><span style=3D"font-size:x-small;">&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; if regex.match(filename):</span></div><div style=3D"font-f=
amily: Courier; margin-top: 0px; margin-bottom: 16px; background-color: tra=
nsparent; "><span style=3D"font-size:x-small;">&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; for layerdir in self.bblayers:</span></div><div=
 style=3D"font-family: Courier; margin-top: 0px; margin-bottom: 16px; backg=
round-color: transparent; "><span style=3D"font-size:x-small;">&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; <span style=3D"font-weight:bold;">&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; if regex.match(os.path.join(layerdir, 'test')) and re.matc=
h(layerdir, filename):</span></span></div><div style=3D"font-family:
 Courier; margin-top: 0px; margin-bottom: 16px; background-color: transpare=
nt; "><span style=3D"font-size:x-small;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return layerdir</span></d=
iv><div style=3D"font-family: Courier; margin-top: 0px; margin-bottom: 16px=
; background-color: transparent; "><span style=3D"font-size:x-small;">&nbsp=
; &nbsp; &nbsp; &nbsp; return "?"</span></div><div style=3D"font-family: Co=
urier; font-size: 16px; "><br></div><div style=3D"font-size:16px;">so looks=
 like anything more specific than the ${LAYERDIR} will not match &lt;layerd=
ir&gt;/test test string, so it won't work. &nbsp;Is this intentional?</div>=
<div style=3D"font-size:16px;"><br></div><div style=3D"font-size:16px;">Tha=
nks,</div><div style=3D"font-size:16px;"><br></div><div style=3D"font-size:=
16px;">Andrew</div><div style=3D"font-family: Courier; font-size: 16px; "><=
br></div></div></div></div></div></div></div><br><br></div>  </div> </div> =
 </div>
 </div></body></html>

--488955561-1435900469-1391145972=:8946--
