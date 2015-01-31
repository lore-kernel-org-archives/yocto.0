Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA902E0092E; Sat, 31 Jan 2015 10:11:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.237 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail3.adam.net.au (webmail3.adam.net.au [202.136.110.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6C91E003D4
	for <yocto@yoctoproject.org>; Sat, 31 Jan 2015 10:10:57 -0800 (PST)
Received: from localhost (webmail3.adam.net.au [127.0.0.1])
	by webmail3.adam.net.au (8.13.8/8.13.8) with ESMTP id t0VIAbfN010929;
	Sun, 1 Feb 2015 04:40:38 +1030
Message-Id: <dd6db0bfa347b43e563b4d948b0ae128f94f1c16@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Alex J Lennon" <ajlennon@dynamicdevices.co.uk>,
	"Martin Jansa" <martin.jansa@gmail.com>,
	"Simon Bolek" <simon.bolek@googlemail.com>
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <54CD01EB.3080305@dynamicdevices.co.uk>
Date: Sun, 01 Feb 2015 04:40:37 +1030
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: meta-qt5 problem in yocto 1.7
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 31 Jan 2015 18:11:03 -0000
Content-Type: multipart/alternative;
	boundary="=_1907823c0b636d78a492486f8ef09210"

--=_1907823c0b636d78a492486f8ef09210
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=0A=0A=09Hi Alex, Thanks for confirming the problem exists. I set=0AQT_M=
ODULE_BRANCH ?=3D "dev" in meta-qt5/recipes-qt/qt5/qt5-git.inc, but=0Ast=
ill get the same problem.=C2=A0Do I have the correct file ?=0A Regards L=
achlan=C2=A0=0A=0A----- Original Message -----=0A From: "Alex J Lennon"=
 @dynamicdevices.co.uk> =0ATo:, "Martin Jansa" , "Simon Bolek" =0ACc:=0A=
Sent:Sat, 31 Jan 2015 17:25:15 +0100=0ASubject:Re: [yocto] meta-qt5 prob=
lem in yocto 1.7=0A=0A On 31/01/2015 13:30, peterengcomau001@adam.com.au=
 wrote:=0A >=0A > Hello Martin,=0A > Thanks for your reply.=0A > I manag=
ed to fix the problem of referring to 5.4 instead of 5.3.2=0Aby=0A > che=
cking out the master branch instead of the dizzy branch of=0Ameta-qt5.=
=0A >=0A > However my problem is with the do_fetch. Most of the do_fetch=
 work=0A > fine but I get the folliowing two errors:=0A > ERROR: Functio=
n failed: Fetcher failure for URL:=0A >=0A'http://download.qt-project.or=
g/official_releases/qt/5.4/5.4.0/submodules/qtdeclarative-opensource-src=
-5.4.0.tar.xz'.=0A > Unable to fetch URL from any source=0A > ERROR: Fun=
ction failed: Fetcher failure for URL:=0A >=0A'http://download.qt-projec=
t.org/official_releases/qt/5.4/5.4.0/submodules/qtbase-opensource-src-5.=
4.0.tar.xz'.=0A > Unable to fetch URL from any source.=0A >=0A=0A Hi Lac=
hlan, Martin,=0A=0A I had the same problem on Friday. Investigating the=
 issue it seems=0Ato be=0A that the master branch has disappeared from t=
he git@gitorious.org:qt=0Aand=0A thus the specified commits are=0A not f=
ound. I had a similar problem with qt3d and qtsystem=0A=0A Changing QT_M=
ODULE_BRANCH =3D "dev" seems to get the recipes building.=0A=0A However=
 I still can't seem to get the examples packages building=0A whatever I=
 do - any advice on that would be appreciated!=0A=0A Regards,=0A=0A Alex=
=0A=0A@yoctoproject.org>.bolek@googlemail.com>.jansa@gmail.com>@adam.com=
au>=0A---- Message sent via Adam Internet WebMail - http://www.adam.com=
au/

--=_1907823c0b636d78a492486f8ef09210
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><p>Hi Alex,</p>=0A<div>Thanks for confirming the problem exi=
sts.</div>=0A<div>I set QT_MODULE_BRANCH ?=3D "dev" in meta-qt5/recipes-=
qt/qt5/qt5-git.inc, but still get the same problem.=C2=A0</div><div>Do I=
 have the correct file ?</div><div><br /></div>=0A<div>Regards</div>=0A<=
div>Lachlan=C2=A0<br /><br /><blockquote>=0A<br />----- Original Message=
 -----<br /><div style=3D"width:100%;background:rgb(228,228,228);">=0A<d=
iv style=3D"font-weight:bold;">From:</div> "Alex J Lennon" @dynamicdevic=
es.co.uk&gt;</div>=0A<br /><div style=3D"font-weight:bold;">To:</div>, "=
Martin Jansa" , "Simon Bolek" <br /><div style=3D"font-weight:bold;">Cc:=
</div><br /><div style=3D"font-weight:bold;">Sent:</div>Sat, 31 Jan 2015=
 17:25:15 +0100<br /><div style=3D"font-weight:bold;">Subject:</div>Re:=
 [yocto] meta-qt5 problem in yocto 1.7<br /><br /><br /><br />=0AOn 31/0=
1/2015 13:30, peterengcomau001@adam.com.au wrote:<br />=0A&gt;<br />=0A&=
gt; Hello Martin,<br />=0A&gt; Thanks for your reply.<br />=0A&gt; I man=
aged to fix the problem of referring to 5.4 instead of 5.3.2 by<br />=0A=
&gt; checking out the master branch instead of the dizzy branch of meta-=
qt5.<br />=0A&gt;<br />=0A&gt; However my problem is with the do_fetch.=
 Most of the do_fetch work<br />=0A&gt; fine but  I get the folliowing t=
wo errors:<br />=0A&gt; ERROR: Function failed: Fetcher failure for URL:=
<br />=0A&gt; 'http://download.qt-project.org/official_releases/qt/5.4/5=
4.0/submodules/qtdeclarative-opensource-src-5.4.0.tar.xz'.<br />=0A&gt;=
 Unable to fetch URL from any source<br />=0A&gt; ERROR: Function failed=
: Fetcher failure for URL:<br />=0A&gt; 'http://download.qt-project.org/=
official_releases/qt/5.4/5.4.0/submodules/qtbase-opensource-src-5.4.0.ta=
r.xz'.<br />=0A&gt; Unable to fetch URL from any source.<br />=0A&gt;<br=
 /><br />=0AHi Lachlan, Martin,<br /><br />=0AI had the same problem on=
 Friday. Investigating the issue it seems to be<br />=0Athat the master=
 branch has disappeared from the git@gitorious.org:qt and<br />=0Athus t=
he specified commits are<br />=0Anot found. I had a similar problem with=
 qt3d and qtsystem<br /><br />=0AChanging QT_MODULE_BRANCH =3D "dev" see=
ms to get the recipes building.<br /><br />=0AHowever I still can't seem=
 to get the examples packages building<br />=0Awhatever I do - any advic=
e on that would be appreciated!<br /><br />=0ARegards,<br /><br />=0AAle=
x<br /><br /><br />@yoctoproject.org&gt;.bolek@googlemail.com&gt;.jansa@=
gmail.com&gt;@adam.com.au&gt;</blockquote>=0A</div>---- Message sent via=
 Adam Internet WebMail  - http://www.adam.com.au/</body></html>

--=_1907823c0b636d78a492486f8ef09210--
