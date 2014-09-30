Return-Path: <ezekiel@sanborndeasis.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E879E007DF; Tue, 30 Sep 2014 16:02:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_50,HTML_MESSAGE,
	MIME_HTML_ONLY,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [173.201.192.192 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4970]
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
X-Greylist: delayed 123 seconds by postgrey-1.32 at yocto-www;
	Tue, 30 Sep 2014 16:02:27 PDT
Received: from p3plwbeout14-06.prod.phx3.secureserver.net
	(p3plsmtp14-06-2.prod.phx3.secureserver.net [173.201.192.192])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 316E4E0034C
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 16:02:27 -0700 (PDT)
Received: from localhost ([173.201.192.244])
	by p3plwbeout14-06.prod.phx3.secureserver.net with bizsmtp
	id xb0K1o0015GqY0l01b0KLU; Tue, 30 Sep 2014 16:00:19 -0700
X-SID: xb0K1o0015GqY0l01
Received: (qmail 15403 invoked by uid 99); 30 Sep 2014 23:00:19 -0000
X-Originating-IP: 54.240.196.169
User-Agent: Workspace Webmail 5.7.3
Message-Id: <20140930160017.8c4e4b9406b77e1e78d5069819454ed7.477e300d77.wbe@email14.secureserver.net>
From: <ezekiel@sanborndeasis.net>
To: yocto@yoctoproject.org
Date: Tue, 30 Sep 2014 16:00:17 -0700
Mime-Version: 1.0
Subject: fetch task not run after SRCREV updated
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
X-List-Received-Date: Tue, 30 Sep 2014 23:02:30 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html><body><span style=3D"font-family:Verdana; color:#000000; font-size:10=
pt;"><div>I noticed that if I update the SRCREV value in a recipe to a newe=
r rev for a GIT repository, OE does not think it needs to run the fetch ste=
p unless I force it. In other words</div><div><br></div><div>bitbake -c fet=
ch foobar</div><div><br></div><div>does not pick up that the SRCREV it was =
downloaded for is no longer correct.</div><div><br></div><div>bitbake -f -c=
 fetch foobar</div><div><br></div><div>obviously works fine. It appears to =
come down to the do_fetch stampfile.  Is this intended functionality? It se=
ems that if my SRCREV does not match against what was downloaded that shoul=
d be invalidated and the fetch should be forced. Am I missing something?</d=
iv><div><br></div><div>-Ezekiel<br></div></span></body></html>

