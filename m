Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7805E00DEB; Wed, 23 Oct 2019 05:29:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.40.44.138 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtprelay.hostedemail.com (smtprelay0138.hostedemail.com
	[216.40.44.138])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B246E00DDC;
	Wed, 23 Oct 2019 05:29:53 -0700 (PDT)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 73BCD837F24D;
	Wed, 23 Oct 2019 12:29:52 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: tiger97_732ac89284a09
X-Filterd-Recvd-Size: 5309
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Wed, 23 Oct 2019 12:29:51 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "Carlos Alberto Lopez Perez" <clopez@igalia.com>, "meta-freescale Mailing
	List" <meta-freescale@yoctoproject.org>
Date: Wed, 23 Oct 2019 12:29:49 +0000
Message-Id: <embcd627e7-e822-4da4-bcee-1aaf477f986d@andys-imac.leeshillfarm.local>
In-Reply-To: <5a4df255-cbaf-8753-3c6e-7d45a8086e9a@igalia.com>
References: <em2944f528-f3cb-4055-92d5-6284b7d079eb@andys-imac.leeshillfarm.local>
	<5a4df255-cbaf-8753-3c6e-7d45a8086e9a@igalia.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"webkit-wpe@lists.webkit.org" <webkit-wpe@lists.webkit.org>
Subject: Re: [wpe-webkit] Optimising imx6 performance for HTML5 using Cog + WPE WebKit
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Andy Pont <andy.pont@sdcsystems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Oct 2019 12:29:55 -0000
Content-Type: multipart/alternative;
	boundary="------=_MB3A3F6206-FE32-444B-8F07-0E9B2B26704A"

--------=_MB3A3F6206-FE32-444B-8F07-0E9B2B26704A
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Carlos wrote...=0A=0A>>=0A>>  We start the browser with the following comma=
nd line:=0A>>=0A>>  cog --enable-accelerated-2d-canvas=3D1 appui/index.html=
=0A>>=0A>=0A>How the performance compares if you disable accelerated-2d-can=
vas?=0A>It gets worse or its the same?=0AIt is the same. I have been testin=
g with http://fabricjs.com//animation =0Aand https://themaninblue.com/exper=
iment/AnimationBenchmark/canvas/ and =0Ain all circumstances I see 10-12fps=
.=0A=0A>Usually on the web application side there are different things that =
can=0A>be optimized to make it perform better on WPE.=0A>I think it would=
 be helpful to understand the problem if you can share a=0A>demo of your web =
app where the performance problem can be easily reproduced.=0AThe web app=
 is responding to data being sent to it over a websocket =0Aconnection from=
 a backend application. I=E2=80=99ll see if we can create =0Asomething that=
 doesn=E2=80=99t rely on the websocket interface that can be run =0Ain the b=
rowser on its own.=0A=0A-Andy.=0A=0A

--------=_MB3A3F6206-FE32-444B-8F07-0E9B2B26704A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>=0A=0A<style id=3D"css_styles" type=3D"text/css">blockquote.cit=
e { margin-left: 5px; margin-right: 0px; padding-left: 10px; padding-right:=
0px; border-left: 1px solid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; =
margin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px =
solid #cccccc; margin-top: 3px; padding-top: 0px; }=0Aa img { border: 0px; =
}=0Ali[style=3D'text-align: center;'], li[style=3D'text-align: right;'] {  =
list-style-position: inside;}=0Abody { font-family: Verdana; font-size: 12=
px;   }</style></head><body class=3D"plain" style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;"><div><div>Carlos =
wrote...</div>=0A</div><div><br /></div><div id=3D"x63add0b139ba4a2"><bloc=
kquote type=3D"cite" class=3D"cite2"><blockquote type=3D"cite" class=3D"cit=
e">=0A<div class=3D"plain_line">=C2=A0</div>=0A<div class=3D"plain_line"> W=
e start the browser with the following command line:</div>=0A<div class=3D"=
plain_line">=C2=A0</div>=0A<div class=3D"plain_line"> cog --enable-accelera=
ted-2d-canvas=3D1 appui/index.html</div>=0A<div class=3D"plain_line">=C2=A0=
</div>=0A</blockquote>=0A<div class=3D"plain_line">=C2=A0</div>=0A<div clas=
s=3D"plain_line">How the performance compares if you disable accelerated-2d=
-canvas?</div>=0A<div class=3D"plain_line">It gets worse or its the same?</=
div></blockquote>It is the same.  I have been testing with <a href=3D"http:=
//fabricjs.com//animation">http://fabricjs.com//animation</a> and <a href=
=3D"https://themaninblue.com/experiment/AnimationBenchmark/canvas/">https:/=
/themaninblue.com/experiment/AnimationBenchmark/canvas/</a>=C2=A0and in all =
circumstances I see 10-12fps.</div><div id=3D"x63add0b139ba4a2"><br /></di=
v><div id=3D"x63add0b139ba4a2"><blockquote type=3D"cite" class=3D"cite2"><d=
iv class=3D"plain_line">Usually on the web application side there are diffe=
rent things that can</div>=0A<div class=3D"plain_line">be optimized to make =
it perform better on WPE.</div>=0A<div class=3D"plain_line">I think it wou=
ld be helpful to understand the problem if you can share a</div>=0A<div cla=
ss=3D"plain_line">demo of your web app where the performance problem can be =
easily reproduced.</div></blockquote>The web app is responding to data bei=
ng sent to it over a websocket connection from a backend application.  I=E2=
=80=99ll see if we can create something that doesn=E2=80=99t rely on the we=
bsocket interface that can be run in the browser on its own.</div><div id=
=3D"x63add0b139ba4a2"><br /></div><div id=3D"x63add0b139ba4a2">-Andy.</div>=
<div id=3D"x63add0b139ba4a2"><br /></div><div id=3D"x63add0b139ba4a2"><br /=
><blockquote type=3D"cite" class=3D"cite2">=0A</blockquote></div>=0A</body>=
</html>

--------=_MB3A3F6206-FE32-444B-8F07-0E9B2B26704A--
