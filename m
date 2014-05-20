Return-Path: <ezekiel@sanborndeasis.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCB4BE009E7; Tue, 20 May 2014 14:44:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.4 required=5.0 tests=HTML_MESSAGE,MIME_HTML_ONLY,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.1 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from p3plwbeout14-06.prod.phx3.secureserver.net (unknown
	[173.201.192.192])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C7B6E0070F
	for <yocto@yoctoproject.org>; Tue, 20 May 2014 14:44:25 -0700 (PDT)
Received: from localhost ([173.201.192.245])
	by p3plwbeout14-06.prod.phx3.secureserver.net with bizsmtp
	id 4MkQ1o0035J8CM101MkQBF; Tue, 20 May 2014 14:44:25 -0700
X-SID: 4MkQ1o0035J8CM101
Received: (qmail 26812 invoked by uid 99); 20 May 2014 21:44:24 -0000
X-Originating-IP: 54.240.196.169
User-Agent: Workspace Webmail 5.6.47
Message-Id: <20140520144423.8c4e4b9406b77e1e78d5069819454ed7.8cac11663f.wbe@email14.secureserver.net>
From: <ezekiel@sanborndeasis.net>
To: yocto@yoctoproject.org
Date: Tue, 20 May 2014 14:44:23 -0700
Mime-Version: 1.0
Subject: headers only recipe
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
X-List-Received-Date: Tue, 20 May 2014 21:44:30 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html><body><span style=3D"font-family:Verdana; color:#000000; font-size:10=
pt;"><div>still new to yocto/oe...</div><div><br></div><div>I have a recipe=
 that only produces dev headers (macros, constants, etc). Builds fine, and =
recipes dependent on these headers are fine as well. The problem is that on=
ly a dev and dbg ipkg get produced for deploy (makes sense, there is no dev=
ice side content). But then do_rootfs fails because it expects an ipkg for =
this recipe</div><div><br></div><div>opkg_install_cmd: Cannot install packa=
ge foobar</div><div><br></div><div>I am working around it by throwing down =
a dummy conf file as output from this recipe so there is something to build=
 an ipkg around. But how do I indicate that there is no normal device side =
content from this recipe.</div><div><br></div><div>-Ezekiel<br></div></span=
></body></html>

