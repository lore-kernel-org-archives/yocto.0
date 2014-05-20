Return-Path: <ezekiel@sanborndeasis.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF0D7E00B70; Tue, 20 May 2014 15:54:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.4 required=5.0 tests=HTML_MESSAGE,MIME_HTML_ONLY,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.1 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from p3plwbeout14-02.prod.phx3.secureserver.net (unknown
	[173.201.192.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54311E0070F
	for <yocto@yoctoproject.org>; Tue, 20 May 2014 15:53:56 -0700 (PDT)
Received: from localhost ([173.201.192.246])
	by p3plwbeout14-02.prod.phx3.secureserver.net with bizsmtp
	id 4Ntw1o0015KRshH01NtwFT; Tue, 20 May 2014 15:53:56 -0700
X-SID: 4Ntw1o0015KRshH01
Received: (qmail 28022 invoked by uid 99); 20 May 2014 22:53:56 -0000
X-Originating-IP: 54.240.196.169
User-Agent: Workspace Webmail 5.6.47
Message-Id: <20140520155354.8c4e4b9406b77e1e78d5069819454ed7.9783008fb5.wbe@email14.secureserver.net>
From: <ezekiel@sanborndeasis.net>
To: "Paul Barker" <paul@paulbarker.me.uk>
Date: Tue, 20 May 2014 15:53:54 -0700
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: headers only recipe
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
X-List-Received-Date: Tue, 20 May 2014 22:54:00 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html><body><span style=3D"font-family:Verdana; color:#000000; font-size:10=
pt;"><div>brilliant, works like a charm.</div><div><br></div><div>thanks,</=
div><div><br></div><div>-Ezekiel<br></div>=0A<blockquote id=3D"replyBlockqu=
ote" webmail=3D"1" style=3D"border-left: 2px solid blue; margin-left: 8px; =
padding-left: 8px; font-size:10pt; color:black; font-family:verdana;">=0A<d=
iv id=3D"wmQuoteWrapper">=0A-------- Original Message --------<br>=0ASubjec=
t: Re: [yocto] headers only recipe<br>=0AFrom: Paul Barker &lt;<a href=3D"m=
ailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt;<br>=0ADate: Tue,=
 May 20, 2014 3:12 pm<br>=0ATo: <a href=3D"mailto:ezekiel@sanborndeasis.net=
">ezekiel@sanborndeasis.net</a><br>=0ACc: Yocto discussion list &lt;<a href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<br>=0A<br=
>=0AOn 20 May 2014 22:44,  &lt;<a href=3D"mailto:ezekiel@sanborndeasis.net"=
>ezekiel@sanborndeasis.net</a>&gt; wrote:<br>=0A&gt; still new to yocto/oe.=
..<br>=0A&gt;<br>=0A&gt; I have a recipe that only produces dev headers (ma=
cros, constants, etc).<br>=0A&gt; Builds fine, and recipes dependent on the=
se headers are fine as well. The<br>=0A&gt; problem is that only a dev and =
dbg ipkg get produced for deploy (makes<br>=0A&gt; sense, there is no devic=
e side content). But then do_rootfs fails because it<br>=0A&gt; expects an =
ipkg for this recipe<br>=0A&gt;<br>=0A&gt; opkg_install_cmd: Cannot install=
 package foobar<br>=0A&gt;<br>=0A&gt; I am working around it by throwing do=
wn a dummy conf file as output from<br>=0A&gt; this recipe so there is some=
thing to build an ipkg around. But how do I<br>=0A&gt; indicate that there =
is no normal device side content from this recipe.<br>=0A&gt;<br>=0A<br>=0A=
A simple trick is to add the following line to your recipe file to<br>=0Aal=
low the package to still be created even if it is empty:<br>=0A<br>=0AALLOW=
_EMPTY_${PN} =3D "1".<br>=0A<br>=0A${PN} expands to the name of the main pa=
ckage so that should suffice,<br>=0Aotherwise you could explicitly give the=
 package name, for example<br>=0AALLOW_EMPTY_foobar.<br>=0A<br>=0AHope this=
 helps,<br>=0A<br>=0A-- <br>=0APaul Barker<br>=0A<br>=0AEmail: <a href=3D"m=
ailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a><br>=0A<a href=3D"htt=
p://www.paulbarker.me.uk">http://www.paulbarker.me.uk</a><br>=0A=0A</div>=
=0A</blockquote></span></body></html>

