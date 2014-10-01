Return-Path: <ezekiel@sanborndeasis.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FC7FE00857; Wed,  1 Oct 2014 15:00:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [173.201.192.190 listed in list.dnswl.org]
Received: from p3plwbeout14-05.prod.phx3.secureserver.net
	(p3plsmtp14-05-2.prod.phx3.secureserver.net [173.201.192.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B76FE0074B
	for <yocto@yoctoproject.org>; Wed,  1 Oct 2014 15:00:36 -0700 (PDT)
Received: from localhost ([173.201.192.246])
	by p3plwbeout14-05.prod.phx3.secureserver.net with bizsmtp
	id xy0b1o0015KRshH01y0bK7; Wed, 01 Oct 2014 15:00:35 -0700
X-SID: xy0b1o0015KRshH01
Received: (qmail 7404 invoked by uid 99); 1 Oct 2014 22:00:35 -0000
X-Originating-IP: 54.240.196.169
User-Agent: Workspace Webmail 5.7.3
Message-Id: <20141001150034.8c4e4b9406b77e1e78d5069819454ed7.98d894cedc.wbe@email14.secureserver.net>
From: <ezekiel@sanborndeasis.net>
To: yocto@yoctoproject.org
Date: Wed, 01 Oct 2014 15:00:34 -0700
Mime-Version: 1.0
Subject: Re: fetch task not run after SRCREV updated
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
X-List-Received-Date: Wed, 01 Oct 2014 22:00:40 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Is this the fix=0A=0Ahttp://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/=
?id=3D202ae5af74f546a9788290a96b0f3c370ee047b2=0A=0A-Ezekiel=0A=0AMessage: =
1=0ADate: Tue, 30 Sep 2014 17:26:27 -0600=0AFrom: Gary Thomas <gary@mlbasso=
c.com>=0ATo: yocto@yoctoproject.org=0ASubject: Re: [yocto] fetch task not r=
un after SRCREV updated=0AMessage-ID: <542B3C23.1040509@mlbassoc.com>=0ACon=
tent-Type: text/plain; charset=3Dwindows-1252; format=3Dflowed=0A=0AOn 2014=
-09-30 17:00, ezekiel@sanborndeasis.net wrote:=0A> I noticed that if I upda=
te the SRCREV value in a recipe to a newer rev for a GIT repository, OE doe=
s not think it needs to run the fetch step unless I force it. In other word=
s=0A>=0A> bitbake -c fetch foobar=0A>=0A> does not pick up that the SRCREV =
it was downloaded for is no longer correct.=0A>=0A> bitbake -f -c fetch foo=
bar=0A>=0A> obviously works fine. It appears to come down to the do_fetch s=
tampfile. Is this intended functionality? It seems that if my SRCREV does n=
ot match against what was downloaded that=0A> should be invalidated and the=
 fetch should be forced. Am I missing something?=0A=0ACheck the recent [las=
t week or so] logs - this has just been addressed=0Aand should work with th=
e latest master [or maybe master-next]=0A=0A-- =0A-------------------------=
-----------------------------------=0AGary Thomas | Consulting for the=0AML=
B Associates | Embedded world=0A-------------------------------------------=
-----------------

