Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CF4BE00DF0; Thu, 13 Oct 2016 03:07:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.6 listed in list.dnswl.org]
Received: from smtp6-g21.free.fr (smtp6-g21.free.fr [212.27.42.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59B1DE00C81
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 03:07:27 -0700 (PDT)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp6-g21.free.fr (Postfix) with ESMTP id ED5BC7803C8;
	Thu, 13 Oct 2016 12:07:24 +0200 (CEST)
Date: Thu, 13 Oct 2016 12:07:24 +0200 (CEST)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: Yocto list discussion <yocto@yoctoproject.org>
Message-ID: <1646208426.125108529.1476353244671.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <a7473d31-3363-37fa-32af-cd69cc950fbb@laposte.net>
MIME-Version: 1.0
X-Originating-IP: [82.233.24.66]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
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
X-List-Received-Date: Thu, 13 Oct 2016 10:07:31 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_125108528_1379920397.1476353244670"

------=_Part_125108528_1379920397.1476353244670
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello, 

In fact, the ttf-dejavu recipe doesn't provide a package with the same name. If you look at the PACKAGES variable, you'll find that it provides ${PN}-sans, ${PN}-sans-mono, ${PN}-sans-condensed, ${PN}-serif , ${PN}-serif-condensed & ${PN}-mathtexgyre. 

So you have to explicitly choose the packages you want. 

Michel 

------=_Part_125108528_1379920397.1476353244670
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style type=3D'text/css'>p { margin: 0; }</style></head><body><=
div style=3D'font-family: times new roman,new york,times,serif; font-size: =
12pt; color: #000000'><font face=3D"times new roman, new york, times, serif=
"><span style=3D"font-size: 12pt;">Hello,</span></font><div style=3D"color:=
 rgb(0, 0, 0); font-family: &quot;times new roman&quot;, &quot;new york&quo=
t;, times, serif; font-size: 12pt;"><br></div><div><font face=3D"times new =
roman, new york, times, serif"><span style=3D"font-size: 12pt;">In fact, th=
e ttf-dejavu recipe doesn't provide a package with the same name. If you lo=
ok at the PACKAGES variable, you'll find that it provides&nbsp;</span><span=
 style=3D"font-size: 16px;">${PN}-sans,&nbsp;</span></font><span style=3D"f=
ont-size: 16px; font-family: &quot;times new roman&quot;, &quot;new york&qu=
ot;, times, serif;">${PN}-sans-mono,&nbsp;</span><span style=3D"font-size: =
16px; font-family: &quot;times new roman&quot;, &quot;new york&quot;, times=
, serif;">${PN}-sans-condensed,&nbsp;</span><span style=3D"font-size: 16px;=
 font-family: &quot;times new roman&quot;, &quot;new york&quot;, times, ser=
if;">${PN}-serif ,&nbsp;</span><span style=3D"font-size: 16px; font-family:=
 &quot;times new roman&quot;, &quot;new york&quot;, times, serif;">${PN}-se=
rif-condensed &amp;&nbsp;</span><span style=3D"font-size: 16px; font-family=
: &quot;times new roman&quot;, &quot;new york&quot;, times, serif;">${PN}-m=
athtexgyre.</span></div><div><font face=3D"times new roman, new york, times=
, serif"><span style=3D"font-size: 16px;"><br></span></font></div><div><fon=
t face=3D"times new roman, new york, times, serif"><span style=3D"font-size=
: 16px;">So you have to&nbsp;explicitly&nbsp;choose the packages you want.<=
/span></font></div><div><font face=3D"times new roman, new york, times, ser=
if"><span style=3D"font-size: 16px;"><br></span></font></div><div><font fac=
e=3D"times new roman, new york, times, serif"><span style=3D"font-size: 16p=
x;">Michel</span></font><br></div></div></body></html>

------=_Part_125108528_1379920397.1476353244670--
