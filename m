Return-Path: <vaduvajanalexandru@yahoo.com>
Received: from nm20-vm5.bullet.mail.ne1.yahoo.com
	(nm20-vm5.bullet.mail.ne1.yahoo.com [98.138.91.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 857C2E00B77
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 13:49:51 -0700 (PDT)
Received: from [98.138.100.117] by nm20.bullet.mail.ne1.yahoo.com with NNFMP;
	03 Apr 2014 20:49:50 -0000
Received: from [98.138.226.164] by tm108.bullet.mail.ne1.yahoo.com with NNFMP;
	03 Apr 2014 20:49:50 -0000
Received: from [127.0.0.1] by omp1065.mail.ne1.yahoo.com with NNFMP;
	03 Apr 2014 20:49:50 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 349875.74689.bm@omp1065.mail.ne1.yahoo.com
Received: (qmail 5779 invoked by uid 60001); 3 Apr 2014 20:49:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1396558190; bh=EKiSTnzKjE4BuZlHMum1Xcz8GFudZFnhaKqeDjwm2xI=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=sGV3y8V7sHINVw8gRu9PEHlB5amX3UTXqQ+Yf1KDjP6w/+HsdRBr5TdSLAIdzH/EWn49e38NikdlqL6h4jePvrCZWBMAyK9oeksBfCuRqoY7piW/SP6XjtXgPvJU2uvHawvdsXm+9rK2EDGIB4ZbevoqY5HyR1hd6KRPEpXNpl8=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=YnlHQDRd6FXH35iw9NkTzIeHQsz1Em1n7ZehqfBexpjNJA4TR7h9jP1vAmUOygPItVSkH5SZmoxqD0YzcghquqqP+zSA9o9H2H8XdBhSNeehVaiYU7p4fbN5SCqJI8lpdaApSKiIFQWP0DZMXwtEmlKxwLWvfbHyeyNpuxFONQA=;
X-YMail-OSG: 7SFR1l8VM1m.6bAyci5t2k5LyRbsyt2LVHls5346GTAKq0_
	RJ5rOeAZ.ar9XowNReheRgwLoM3ZupWb5jPicrqhyCAJrKoIi1Ry.dKVYm53
	ydqRYaehVWL3_BrdxSV5rW6pCaABhOTDZQuk91invBZrLRyzhWtSTRFk00Wu
	RH67Y.xZx9vUnVVXMlvRrZM2oWasF2GRGxCLhu054Bj.B.fJBqo7J3VnJKZx
	WMEabSrykaLI7TfXjQtXYlS4fvps.8tP7RYZM6F0XpgXhQxcn5KHX0LG2ZQr
	9QXBQl6CPtXr4VWhLW0LnPdN6HOmzbRP_gu5C9lgpwaerWMzJJ7E2S6nIo90
	__IZK1UNljkfLLVl5amBRfJ57wWc_qgAECwgfjdXcyB5W8XAB6Z.d_CIwEgH
	HzM9TLG7T1.k4v8_qoF9.iznIjz6BIC19UgreAK_pNUWaXtEvTLX7EDw.5lK
	DCq8JXOUmOhKm8Mqz8FbddPYcU3k77ZvWITPwveQi1FIbZDycVrWRVpnkLyX
	tdh5yBuMmhUtTkyuPqc8khmqSNr_0Cowct.itcaVZ8UJVHC6wCeD6YIZIaKA kZw--
Received: from [141.85.0.106] by web122501.mail.ne1.yahoo.com via HTTP;
	Thu, 03 Apr 2014 13:49:50 PDT
X-Rocket-MIMEInfo: 002.001,
	VGhhbmsgeW91IHRvby4KCgpPbiBUaHVyc2RheSwgQXByaWwgMywgMjAxNCA5OjUyIFBNLCBKb2UgTWFjRG9uYWxkIDxqb2VAZGVzZXJ0ZWQubmV0PiB3cm90ZToKIApNZXJnZWQsIHRoYW5rcy4KLUouCgoKW1t5b2N0b10gW1BBVENIIDAvMV0gQ2hhbmdlZCByZWZwb2xpY3kgdmFsdWUgRklMRVNFWFRSQVBBVEhTX3ByZXBlbmRdIE9uIDE0LjA0LjAxIChUdWUgMTI6NDgpIEFsZXhhbmRydS5WYWR1dmEgd3JvdGU6Cgo.IEZyb206ICJBbGV4YW5kcnUuVmFkdXZhIiA8QWxleGFuZHJ1LlZhZHV2YUBlbmVhLmNvbT4BMAEBAQE-
X-Mailer: YahooMailWebService/0.8.182.648
References: <1396349287-33532-1-git-send-email-Alexandru.Vaduva@enea.com>
	<20140403185217.GE4075@deserted.net>
Message-ID: <1396558190.8120.YahooMailNeo@web122501.mail.ne1.yahoo.com>
Date: Thu, 3 Apr 2014 13:49:50 -0700 (PDT)
From: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
To: Joe MacDonald <joe@deserted.net>,
	"Alexandru.Vaduva" <Alexandru.Vaduva@enea.com>
In-Reply-To: <20140403185217.GE4075@deserted.net>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] Changed refpolicy value FILESEXTRAPATHS_prepend
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
X-List-Received-Date: Thu, 03 Apr 2014 20:49:55 -0000
Content-Type: multipart/alternative;
	boundary="-1149815241-944957725-1396558190=:8120"

---1149815241-944957725-1396558190=:8120
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Thank you too.=0A=0A=0AOn Thursday, April 3, 2014 9:52 PM, Joe MacDonald <j=
oe@deserted.net> wrote:=0A =0AMerged, thanks.=0A-J.=0A=0A=0A[[yocto] [PATCH=
 0/1] Changed refpolicy value FILESEXTRAPATHS_prepend] On 14.04.01 (Tue 12:=
48) Alexandru.Vaduva wrote:=0A=0A> From: "Alexandru.Vaduva" <Alexandru.Vadu=
va@enea.com>=0A> =0A> The value was defined as:=0A>=A0 =A0  FILESEXTRAPATHS=
_prepend :=3D "${THISDIR}/refpolicy-${PV}:"=0A> and changed it to:=0A>=A0 =
=A0  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/refpolicy-2.20130424:"=0A> be=
cause the bb that inherit this overwrites the PV every time,=0A> changing i=
ts name.=0A> =0A> Upstream-Status: Pending=0A> =0A> Alexandru.Vaduva (1):=
=0A>=A0  refpolicy: Updated FILESEXTRAPATHS_prepend value=0A> =0A>=A0 recip=
es-security/refpolicy/refpolicy_2.20130424.inc |=A0 =A0 2 +-=0A>=A0 1 file =
changed, 1 insertion(+), 1 deletion(-)=0A> =0A> -- =0A> 1.7.10.4=0A> =0A-- =
=0A-Joe MacDonald.=0A:wq=0A=0A-- =0A_______________________________________=
________=0Ayocto mailing list=0Ayocto@yoctoproject.org=0Ahttps://lists.yoct=
oproject.org/listinfo/yocto

---1149815241-944957725-1396558190=:8120
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12pt">Thank you too.<br><div><span><br></span></div><div style=3D"d=
isplay: block;" class=3D"yahoo_quoted"> <div style=3D"font-family: Helvetic=
aNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-si=
ze: 12pt;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helve=
tica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div dir=3D"ltr"=
> <font face=3D"Arial" size=3D"2"> On Thursday, April 3, 2014 9:52 PM, Joe =
MacDonald &lt;joe@deserted.net&gt; wrote:<br> </font> </div>  <div class=3D=
"y_msg_container">Merged, thanks.<br clear=3D"none">-J.<br clear=3D"none"><=
div class=3D"yqt8948986900" id=3D"yqtfd10830"><br clear=3D"none">[[yocto] [=
PATCH 0/1] Changed refpolicy value FILESEXTRAPATHS_prepend] On 14.04.01 (Tu=
e 12:48) Alexandru.Vaduva wrote:<br clear=3D"none"><br clear=3D"none">&gt; =
From: "Alexandru.Vaduva"
 &lt;<a shape=3D"rect" ymailto=3D"mailto:Alexandru.Vaduva@enea.com" href=3D=
"mailto:Alexandru.Vaduva@enea.com">Alexandru.Vaduva@enea.com</a>&gt;<br cle=
ar=3D"none">&gt; <br clear=3D"none">&gt; The value was defined as:<br clear=
=3D"none">&gt;&nbsp; &nbsp;  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/refpo=
licy-${PV}:"<br clear=3D"none">&gt; and changed it to:<br clear=3D"none">&g=
t;&nbsp; &nbsp;  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/refpolicy-2.20130=
424:"<br clear=3D"none">&gt; because the bb that inherit this overwrites th=
e PV every time,<br clear=3D"none">&gt; changing its name.<br clear=3D"none=
">&gt; <br clear=3D"none">&gt; Upstream-Status: Pending<br clear=3D"none">&=
gt; <br clear=3D"none">&gt; Alexandru.Vaduva (1):<br clear=3D"none">&gt;&nb=
sp;  refpolicy: Updated FILESEXTRAPATHS_prepend value<br clear=3D"none">&gt=
; <br clear=3D"none">&gt;&nbsp; recipes-security/refpolicy/refpolicy_2.2013=
0424.inc |&nbsp; &nbsp; 2 +-<br clear=3D"none">&gt;&nbsp; 1 file changed, 1=
 insertion(+), 1 deletion(-)<br
 clear=3D"none">&gt; <br clear=3D"none">&gt; -- <br clear=3D"none">&gt; 1.7=
.10.4</div><br clear=3D"none">&gt; <br clear=3D"none">-- <br clear=3D"none"=
>-Joe MacDonald.<br clear=3D"none">:wq<br><div class=3D"yqt8948986900" id=
=3D"yqtfd59186">-- <br clear=3D"none">_____________________________________=
__________<br clear=3D"none">yocto mailing list<br clear=3D"none"><a shape=
=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yo=
ctoproject.org">yocto@yoctoproject.org</a><br clear=3D"none"><a shape=3D"re=
ct" href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank=
">https://lists.yoctoproject.org/listinfo/yocto</a><br clear=3D"none"></div=
><br><br></div>  </div> </div>  </div> </div></body></html>

---1149815241-944957725-1396558190=:8120--
