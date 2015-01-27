Return-Path: <ezekiel@sanborndeasis.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55796E00815; Tue, 27 Jan 2015 09:52:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_HTML_ONLY,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [173.201.192.188 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
X-Greylist: delayed 128 seconds by postgrey-1.32 at yocto-www;
	Tue, 27 Jan 2015 09:52:15 PST
Received: from p3plwbeout14-04.prod.phx3.secureserver.net
	(p3plsmtp14-04-2.prod.phx3.secureserver.net [173.201.192.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 277A8E00753
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 09:52:15 -0800 (PST)
Received: from localhost ([173.201.192.246])
	by p3plwbeout14-04.prod.phx3.secureserver.net with bizsmtp
	id l5q51p0015KRshH015q58D; Tue, 27 Jan 2015 10:50:05 -0700
X-SID: l5q51p0015KRshH01
Received: (qmail 19458 invoked by uid 99); 27 Jan 2015 17:50:05 -0000
X-Originating-IP: 54.240.196.169
User-Agent: Workspace Webmail 5.7.10
Message-Id: <20150127105003.8c4e4b9406b77e1e78d5069819454ed7.4ff308449e.wbe@email14.secureserver.net>
From: <ezekiel@sanborndeasis.net>
To: yocto@yoctoproject.org
Date: Tue, 27 Jan 2015 10:50:03 -0700
Mime-Version: 1.0
Subject: force flag and taint logging
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
X-List-Received-Date: Tue, 27 Jan 2015 17:52:29 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html><body><span style=3D"font-family:Verdana; color:#000000; font-size:10=
pt;"><div>Since picking up Dizzy I have noticed&nbsp;</div><div><br></div><=
div>"... is tainted from a forced run"<br></div><div><br></div><div> log li=
ne appears to stick forever once I have forced a fetch or compile on a comp=
onent. The change to bring this in is here:<br></div><div><br></div><div><a=
 href=3D"https://code.amazon.com/packages/Zeus-poky/commits/60c40e5db57da09=
4ab5ecfadf8e07dc6251bec66">https://code.amazon.com/packages/Zeus-poky/commi=
ts/60c40e5db57da094ab5ecfadf8e07dc6251bec66</a>&nbsp; <br></div><div><br></=
div><div>It appears to me that the resultant taint file for a component, on=
ce made, never goes away.&nbsp; It only effectively forces a fetch or recom=
pile once, but the file itself remains. So in effect, with the new log mess=
age, once I taint a task I will forever see this log message even though it=
 does not appear to actually do anything.</div><div><br></div><div>In other=
 words, from core image-minimal</div><div><br></div><div>$ bitbake zlib -f =
-c fetch</div><div>$ bitbake zlib</div><div><br></div><div>---&gt; at this =
stage I see the log and I see all the dependent tasks of fetch rerun as exp=
ected.<br></div><div>WARNING:&nbsp; .../meta/recipes-core/<a href=3D"http:/=
/zlib_1.2.8.bb">zlib_1.2.8.bb</a>.do_fetch is tainted from a forced run</di=
v><div><br></div><div>---&gt; but if I bitbake zlib again, zlib has already=
 been built post the force fetch, so I dont see bitbake =0Aactually rebuild=
 anything. BUT I still get the warning message. The warning message fires b=
ased on the presence of the taint file and it is still there in he componen=
t folder within stamps. </div><div>$ bitbake zlib</div><div><br></div><div>=
WARNING:&nbsp; .../meta/recipes-core/<a href=3D"http://zlib_1.2.8.bb">zlib_=
1.2.8.bb</a>.do_fetch is tainted from a forced run</div><div><br></div><div=
>Is there something I am missing here? It appears to be a misleading log me=
ssage.</div><div><br></div><div>-Ezekiel<br></div><div><br></div></span></b=
ody></html>

