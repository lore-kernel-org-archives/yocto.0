Return-Path: <ezekiel@sanborndeasis.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71F28E006EF; Wed, 14 May 2014 15:18:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.4 required=5.0 tests=HTML_MESSAGE,MIME_HTML_ONLY,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.1 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 120 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 May 2014 15:18:08 PDT
Received: from p3plwbeout14-02.prod.phx3.secureserver.net (unknown
	[173.201.192.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DF3BE0053B
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:18:08 -0700 (PDT)
Received: from localhost ([173.201.192.244])
	by p3plwbeout14-02.prod.phx3.secureserver.net with bizsmtp
	id 1yG41o0015GqY0l01yG4CX; Wed, 14 May 2014 15:16:04 -0700
X-SID: 1yG41o0015GqY0l01
Received: (qmail 8879 invoked by uid 99); 14 May 2014 22:16:04 -0000
X-Originating-IP: 54.240.196.169
User-Agent: Workspace Webmail 5.6.47
Message-Id: <20140514151603.8c4e4b9406b77e1e78d5069819454ed7.d51cb4e19e.wbe@email14.secureserver.net>
From: <ezekiel@sanborndeasis.net>
To: yocto@yoctoproject.org
Date: Wed, 14 May 2014 15:16:03 -0700
Mime-Version: 1.0
Subject: devshell: what am I missing?
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
X-List-Received-Date: Wed, 14 May 2014 22:18:10 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html><body><span style=3D"font-family:Verdana; color:#000000; font-size:10=
pt;"><div>OE newbie here, so I may just be missing something.</div><div><br=
></div><div>I am running in latest pocky-daisy-11.0.0. I created my own sim=
ple layer with the helloworld sample in it. I am building for machine qemua=
rm. The build itself is working fine, the packages I have added are showing=
 up in the image etc.</div><div><br></div><div>But when I try to use the de=
vshell, I dont see the ability to run the tasks 1 by 1 (ex. compile or conf=
igure).<br></div><div><br></div><div>After </div><div><br></div><div>bitbak=
e sample -c devshell</div><div><br></div><div>I get a shell, fine. But neit=
her "compile" or "do_compile" is a recognized command. I can run them via t=
he temp dir.</div><div><br></div><div>temp/run.do_compile<br></div><div><br=
></div><div>-ezekiel<br></div></span></body></html>

