Return-Path: <andrew_4122@yahoo.com>
Received: from nm43-vm4.bullet.mail.bf1.yahoo.com
	(nm43-vm4.bullet.mail.bf1.yahoo.com [216.109.114.223])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3914E004A1
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2014 21:22:41 -0800 (PST)
Received: from [66.196.81.172] by nm43.bullet.mail.bf1.yahoo.com with NNFMP;
	31 Jan 2014 05:22:40 -0000
Received: from [98.139.212.243] by tm18.bullet.mail.bf1.yahoo.com with NNFMP;
	31 Jan 2014 05:22:40 -0000
Received: from [127.0.0.1] by omp1052.mail.bf1.yahoo.com with NNFMP;
	31 Jan 2014 05:22:40 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 499405.5962.bm@omp1052.mail.bf1.yahoo.com
Received: (qmail 94398 invoked by uid 60001); 31 Jan 2014 05:22:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1391145760; bh=+15HmAjSUF+K/RQkkLHU++9aMCH4pJ2mzmSlTT//QCg=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=baTMWNFyEggWtKJ63Tnfe/3fDYHmqBVslokChQ7CVJnRZnsbwdJwaofjaaDmmie5cvli4Mg3btbM/L7wqbx+ru3qTfzDAKUu8tzoGhOdbed616WlIf1Un7wJL1rXHAJuamvr0L5Kp+A+jFxnhEMJ1izkjapwIjO0n7ka3A5HkQg=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=LInZ/OyrnW32QXYmbj2Bt6pB8rEOkFTlTsIxGcAymYmxhmEZKFtKBuHpQcNwwmnZdwkaHrLpMKXd8DcO9CrPIuXhUofYpsD63ftziNuiJBiuuI8QXxgu2a0NaVyftAAg+AIjXaAGE5szH4nQiO7Y6Qjv9e+s6VmPp/bD36Ef07A=;
X-YMail-OSG: zaAGnSMVM1lXnAnl4LlC2Ts69SHENgHeEdoHJQiYwAJgSYc
	eWh025nSNucMMNAlHZ1VY0A7OF2ztL0ZvvghXrAX3gHUVFscs8402mneCdPU
	YQhwDeiBWcmPIe21iC5yE7MwjbGbbINo3.qRPBRogzSzYD8Z6NUNc7Qozqvb
	lExhKi4R3eH2rWWf6n8YZypbqjyQ3M_CX99cCJ9JSURP4EpqiDIPyKbbQDuz
	dOxm2UrnOZRFXeyDwqWAMs3cHQz2SVUeECS7iBK01DsX4xIIK98VWVy8T9ma
	BoF9uSJL0q2slF6JUNVJqLFlJmM14tnJCNkJSq4Q12vRAW7yvWWL5VljaQ2P
	SYAtUtda7UMeAukwyPt2t_FPU8e4f3OeLXw8NAjluVxxvpRGBqObaJvglc0Y
	S.YhTpcow0TRmOA4zLPnI25mlOA1s3AjROOFpAsobw2twhYdngO.F6RJ_6lH
	De2BCrwZKSyvWOvUK00DkLW.Z7Tj8ObLUE_OWI8Tno6WpVFXnbVNMqgOOHHk
	cnhYbLYk9bGiggVNsk1DCUIUUdWjXPDskBEafObRkIb2j2Ke.ddi_ly6L54x
	rEDOx5Tyaqj06Qlc-
Received: from [99.146.98.94] by web162606.mail.bf1.yahoo.com via HTTP;
	Thu, 30 Jan 2014 21:22:40 PST
X-Rocket-MIMEInfo: 002.001,
	SSBzZWUgdGhpcyBleGFtcGxlIGluIHRoZSBkb2M6CgoKIyBXZSBoYXZlIGEgY29uZiBhbmQgY2xhc3NlcyBkaXJlY3RvcnksIGFkZCB0byBCQlBBVEgKQkJQQVRIIDo9ICIke0JCUEFUSH06JHtMQVlFUkRJUn0iCgojIFdlIGhhdmUgYSByZWNpcGVzIGRpcmVjdG9yeSBjb250YWluaW5nIGJvdGggLmJiIGFuZCAuYmJhcHBlbmQgZmlsZXMsIGFkZCB0byBCQkZJTEVTCkJCRklMRVMgOj0gIiR7QkJGSUxFU30gJHtMQVlFUkRJUn0vcmVjaXBlcy8qLyouYmIgXArCoMKgIMKgIMKgIMKgIMKgIMKgICR7TEFZRVJESVIBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.173.622
Message-ID: <1391145760.92041.YahooMailNeo@web162606.mail.bf1.yahoo.com>
Date: Thu, 30 Jan 2014 21:22:40 -0800 (PST)
From: Andrew Luo <andrew_4122@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: Use of BBFILE_PATTERN in conf/layer.conf
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
X-List-Received-Date: Fri, 31 Jan 2014 05:22:43 -0000
Content-Type: multipart/alternative;
	boundary="257012059-1627880454-1391145760=:92041"

--257012059-1627880454-1391145760=:92041
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

I see this example in the doc:=0A=0A=0A# We have a conf and classes directo=
ry, add to BBPATH=0ABBPATH :=3D "${BBPATH}:${LAYERDIR}"=0A=0A# We have a re=
cipes directory containing both .bb and .bbappend files, add to BBFILES=0AB=
BFILES :=3D "${BBFILES} ${LAYERDIR}/recipes/*/*.bb \=0A=A0=A0 =A0 =A0 =A0 =
=A0 =A0 ${LAYERDIR}/recipes/*/*.bbappend"=0A=0ABBFILE_COLLECTIONS +=3D "eme=
nlow"=0ABBFILE_PATTERN_emenlow :=3D "^${LAYERDIR}/"=0ABBFILE_PRIORITY_emenl=
ow =3D "6"=0A=0AThe doc says this about the BBFILE_PATTERN variable:=0A=0AV=
ariable that expands to match files from BBFILES in a particular layer. BBF=
ILE_PATTERN is used in the conf/layer.conf file and must contain the name o=
f the specific layer (e.g. BBFILE_PATTERN_emenlow).=0A=0Aso it sounds like =
the BBFILE_PATTERN is a regular expression to filter just the bb files belo=
nging to this layer from all the BBFILES. =A0But when I set this variable t=
o include also the recipes dir like so:=0A=0ABBFILE_PATTERN_emenlow :=3D "^=
${LAYERDIR}/recipes/", the layer name does not show up in bitbake-layers sh=
ow-recipes command. =A0I mean this is just a more specific pattern for my r=
ecipe files in the particular layer right? =A0Found that in the get_file_la=
yer_dir function:=0A=0A=A0 =A0 def get_file_layerdir(self, filename):=0A=A0=
 =A0 =A0 =A0 for layer, _, regex, _ in self.bbhandler.cooker.recipecache.bb=
file_config_priorities:=0A=A0 =A0 =A0 =A0 =A0 =A0 if regex.match(filename):=
=0A=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 for layerdir in self.bblayers:=0A=A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if regex.match(os.path.join(layerdir, 'tes=
t')) and re.match(layerdir, filename):=0A=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 return layerdir=0A=A0 =A0 =A0 =A0 return "?"=0A=0Aso looks =
like anything more specific than the ${LAYERDIR} will not match <layerdir>/=
test test string, so it won't work. =A0Is this intentional?=0A=0AThanks,=0A=
=0AAndrew=0A

--257012059-1627880454-1391145760=:92041
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:10pt"><div>I see this example in the doc:</div><div><br></div><div =
style=3D"color: rgb(0, 0, 0); font-size: 13px; font-family: HelveticaNeue, =
'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; background=
-color: transparent; font-style: normal; "><br></div><div style=3D"color: r=
gb(0, 0, 0); background-color: transparent; font-style: normal; "><div styl=
e=3D"font-family: Courier; font-size: 10px; margin-top: 0px; margin-bottom:=
 0px; "># We have a conf and classes directory, add to BBPATH</div>=0A<div =
style=3D"font-family: Courier; font-size: 10px; margin-top: 0px; margin-bot=
tom: 0px; ">BBPATH :=3D "${BBPATH}:${LAYERDIR}"</div>=0A<div style=3D"font-=
family: Courier; font-size: 10px; margin-top: 0px; margin-bottom: 0px; min-=
height: 12px; "><br></div>=0A<div style=3D"font-family: Courier; font-size:=
 10px; margin-top: 0px; margin-bottom: 0px; "># We have a recipes directory=
 containing both .bb and .bbappend files, add to BBFILES</div>=0A<div style=
=3D"font-family: Courier; font-size: 10px; margin-top: 0px; margin-bottom: =
0px; ">BBFILES :=3D "${BBFILES} ${LAYERDIR}/recipes/*/*.bb \</div>=0A<div s=
tyle=3D"font-family: Courier; font-size: 10px; margin-top: 0px; margin-bott=
om: 0px; ">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ${LAYERDIR}/reci=
pes/*/*.bbappend"</div>=0A<div style=3D"font-family: Courier; font-size: 10=
px; margin-top: 0px; margin-bottom: 0px; min-height: 12px; "><br></div>=0A<=
div style=3D"font-family: Courier; font-size: 10px; margin-top: 0px; margin=
-bottom: 0px; ">BBFILE_COLLECTIONS +=3D "emenlow"</div>=0A<div style=3D"fon=
t-family: Courier; font-size: 10px; margin-top: 0px; margin-bottom: 0px; ">=
BBFILE_PATTERN_emenlow :=3D "^${LAYERDIR}/"</div>=0A<div style=3D"font-fami=
ly: Courier; font-size: 10px; margin-top: 0px; margin-bottom: 0px; ">BBFILE=
_PRIORITY_emenlow =3D "6"</div><div style=3D"font-family: Courier; font-siz=
e: 10px; margin-top: 0px; margin-bottom: 0px; "><br></div><div style=3D"mar=
gin-top: 0px; margin-bottom: 0px; color: rgb(0, 0, 0); background-color: tr=
ansparent; font-style: normal; ">The doc says this about the BBFILE_PATTERN=
 variable:</div><div style=3D"margin-top: 0px; margin-bottom: 0px; color: r=
gb(0, 0, 0); background-color: transparent; font-style: normal; "><br></div=
><div style=3D"margin-top: 0px; margin-bottom: 0px; color: rgb(0, 0, 0); ba=
ckground-color: transparent; font-style: normal; "><div style=3D"font-famil=
y: Verdana; font-size: 16px; margin-top: 0px; margin-bottom: 16px; color: r=
gb(50, 51, 51); ">Variable that expands to match files from BBFILES in a pa=
rticular layer. BBFILE_PATTERN is used in the <span style=3D"font-family: C=
ourier; ">conf/layer.conf</span> file and must contain the
 name of the specific layer (e.g. BBFILE_PATTERN_emenlow).</div><div style=
=3D"font-family: Courier; font-size: 16px; margin-top: 0px; margin-bottom: =
16px; color: rgb(50, 51, 51); background-color: transparent; font-style: no=
rmal; "><br></div><div style=3D"font-family: Courier; font-size: 16px; marg=
in-top: 0px; margin-bottom: 16px; color: rgb(50, 51, 51); background-color:=
 transparent; font-style: normal; ">so it sounds like the BBFILE_PATTERN is=
 a regular expression to filter just the bb files belonging to this layer f=
rom all the BBFILES. &nbsp;But when I set this variable to include also the=
 recipes dir like so:</div><div style=3D"font-family: Courier; font-size: 1=
6px; margin-top: 0px; margin-bottom: 16px; color: rgb(50, 51, 51); backgrou=
nd-color: transparent; font-style: normal; "><br></div><div style=3D"font-f=
amily: Courier; font-size: 16px; margin-top: 0px; margin-bottom: 16px; colo=
r: rgb(50, 51, 51); background-color: transparent; font-style: normal;
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
e=3D"font-size: 10px; ">&nbsp; &nbsp; def get_file_layerdir(self, filename)=
:</span></div><div style=3D"font-family: Courier; margin-top: 0px; margin-b=
ottom: 16px; background-color: transparent; "><span style=3D"font-size:
 x-small;">&nbsp; &nbsp; &nbsp; &nbsp; for layer, _, regex, _ in self.bbhan=
dler.cooker.recipecache.bbfile_config_priorities:</span></div><div style=3D=
"font-family: Courier; margin-top: 0px; margin-bottom: 16px; background-col=
or: transparent; "><span style=3D"font-size: x-small;">&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; if regex.match(filename):</span></div><div style=3D"f=
ont-family: Courier; margin-top: 0px; margin-bottom: 16px; background-color=
: transparent; "><span style=3D"font-size: x-small;">&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; for layerdir in self.bblayers:</span></di=
v><div style=3D"font-family: Courier; margin-top: 0px; margin-bottom: 16px;=
 background-color: transparent; "><span style=3D"font-size: x-small;">&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; <span style=3D"font-weight: bold;">&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; if regex.match(os.path.join(layerdir, 'test')) and=
 re.match(layerdir, filename):</span></span></div><div style=3D"font-family=
:
 Courier; margin-top: 0px; margin-bottom: 16px; background-color: transpare=
nt; "><span style=3D"font-size: x-small;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return layerdir</span></=
div><div style=3D"font-family: Courier; margin-top: 0px; margin-bottom: 16p=
x; background-color: transparent; "><span style=3D"font-size: x-small;">&nb=
sp; &nbsp; &nbsp; &nbsp; return "?"</span></div><div style=3D"font-family: =
Courier; font-size: 16px; "><br></div><div style=3D"font-size: 16px; ">so l=
ooks like anything more specific than the ${LAYERDIR} will not match &lt;la=
yerdir&gt;/test test string, so it won't work. &nbsp;Is this intentional?</=
div><div style=3D"font-size: 16px; "><br></div><div style=3D"font-size: 16p=
x; ">Thanks,</div><div style=3D"font-size: 16px; "><br></div><div style=3D"=
font-size: 16px; ">Andrew</div><div style=3D"font-family: Courier; font-siz=
e: 16px; "><br></div></div></div></div></div></body></html>

--257012059-1627880454-1391145760=:92041--
