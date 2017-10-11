Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78B16E00B87; Wed, 11 Oct 2017 03:18:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS,
	UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 252D1E008A4
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 03:18:49 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id CE4C926DA35
Message-ID: <1507717126.9509.29.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: Henrik Lindblom <henriklindblomster@gmail.com>
Date: Wed, 11 Oct 2017 12:18:46 +0200
In-Reply-To: <CAOgGgETUawMZ8wAJW-n-UiEW8NOR8sO19gUhkEjJqbDCDa81RQ@mail.gmail.com>
References: <1507671003.9509.21.camel@collabora.co.uk>
	<OF5390C64E.C78BBBE2-ON882581B5.007B79AE-882581B5.007BBDD4@selinc.com>
	<1507704333.9509.23.camel@collabora.co.uk>
	<CAJTo0La5mPdRzFOv-ofnHwuyG3fNPEf_be=V9d_TZAHLJxt_kA@mail.gmail.com>
	<1507713002.9509.25.camel@collabora.co.uk>
	<1507713360.9509.27.camel@collabora.co.uk>
	<CAOgGgETUawMZ8wAJW-n-UiEW8NOR8sO19gUhkEjJqbDCDa81RQ@mail.gmail.com>
X-Mailer: Evolution 3.22.6-1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to use same user in two recipes?
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
X-List-Received-Date: Wed, 11 Oct 2017 10:18:51 -0000
Content-Type: multipart/alternative; boundary="=-w4llkK37qJSAGQ8QBIcf"

--=-w4llkK37qJSAGQ8QBIcf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-10-11 at 13:06 +0300, Henrik Lindblom wrote:
> I think you'll want RDEPENDS instead of DEPENDS in your recipe. DEPENDS implies build time
> dependencies (e.g. libraries) while RDEPENDS actually gets the component installed as a runtime
> dependency.
> 

Thanks Henrik
I tried to add RDEPENDS too without success. The problem is that users and groups are not installed
IIUC.
> On Wed, Oct 11, 2017 at 12:16 PM, Fabien Lahoudere <fabien.lahoudere@collabora.co.uk> wrote:
> > FI, with bitbake testuser -c devshell
> > 
> > # cat ../1.0-r1/recipe-sysroot/etc/passwd 
> > root::0:0:root:/root:/bin/sh
> > daemon:*:1:1:daemon:/usr/sbin:/bin/sh
> > bin:*:2:2:bin:/bin:/bin/sh
> > sys:*:3:3:sys:/dev:/bin/sh
> > sync:*:4:65534:sync:/bin:/bin/sync
> > games:*:5:60:games:/usr/games:/bin/sh
> > man:*:6:12:man:/var/cache/man:/bin/sh
> > lp:*:7:7:lp:/var/spool/lpd:/bin/sh
> > mail:*:8:8:mail:/var/mail:/bin/sh
> > news:*:9:9:news:/var/spool/news:/bin/sh
> > uucp:*:10:10:uucp:/var/spool/uucp:/bin/sh
> > proxy:*:13:13:proxy:/bin:/bin/sh
> > www-data:*:33:33:www-data:/var/www:/bin/sh
> > backup:*:34:34:backup:/var/backups:/bin/sh
> > list:*:38:38:Mailing List Manager:/var/list:/bin/sh
> > irc:*:39:39:ircd:/var/run/ircd:/bin/sh
> > gnats:*:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/bin/sh
> > nobody:*:65534:65534:nobody:/nonexistent:/bin/sh
> > 
> > Users are not found
> > --
> > 
> > _______________________________________________
> > 
> > yocto mailing list
> > 
> > yocto@yoctoproject.org
> > 
> > https://lists.yoctoproject.org/listinfo/yocto
> > 
> > 
-- 
Fabien

--=-w4llkK37qJSAGQ8QBIcf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div>On Wed, 2017-10-11 at 13:06 +0300, Henrik Lin=
dblom wrote:</div><blockquote type=3D"cite"><div dir=3D"ltr"><font face=3D"=
monospace, monospace">I think you'll want RDEPENDS instead of DEPENDS in yo=
ur recipe. DEPENDS implies build time dependencies (e.g. libraries) while R=
DEPENDS actually gets the component installed as a runtime dependency.</fon=
t></div><div class=3D"gmail_extra"><br></div></blockquote><div><br></div><d=
iv>Thanks Henrik</div><div><br></div><div>I tried to add RDEPENDS too witho=
ut success. The problem is that users and groups are not installed IIUC.</d=
iv><div><br></div><blockquote type=3D"cite"><div class=3D"gmail_extra"><div=
 class=3D"gmail_quote">On Wed, Oct 11, 2017 at 12:16 PM, Fabien Lahoudere <=
span dir=3D"ltr">&lt;<a href=3D"mailto:fabien.lahoudere@collabora.co.uk" ta=
rget=3D"_blank">fabien.lahoudere@collabora.co.uk</a>&gt;</span> wrote:<br><=
blockquote type=3D"cite"><div><div>FI, with bitbake testuser -c devshell</d=
iv><div><br></div><div># cat ../1.0-r1/recipe-sysroot/etc/<wbr>passwd&nbsp;=
</div><div>root::0:0:root:/root:/bin/sh</div><div>daemon:*:1:1:daemon:/usr/=
sbin:<wbr>/bin/sh</div><div>bin:*:2:2:bin:/bin:/bin/sh</div><div>sys:*:3:3:=
sys:/dev:/bin/sh</div><div>sync:*:4:65534:sync:/bin:/bin/<wbr>sync</div><di=
v>games:*:5:60:games:/usr/games:<wbr>/bin/sh</div><div>man:*:6:12:man:/var/=
cache/man:<wbr>/bin/sh</div><div>lp:*:7:7:lp:/var/spool/lpd:/<wbr>bin/sh</d=
iv><div>mail:*:8:8:mail:/var/mail:/<wbr>bin/sh</div><div>news:*:9:9:news:/v=
ar/spool/<wbr>news:/bin/sh</div><div>uucp:*:10:10:uucp:/var/spool/<wbr>uucp=
:/bin/sh</div><div>proxy:*:13:13:proxy:/bin:/bin/<wbr>sh</div><div>www-data=
:*:33:33:www-data:/<wbr>var/www:/bin/sh</div><div>backup:*:34:34:backup:/va=
r/<wbr>backups:/bin/sh</div><div>list:*:38:38:Mailing List Manager:/var/lis=
t:/bin/sh</div><div>irc:*:39:39:ircd:/var/run/<wbr>ircd:/bin/sh</div><div>g=
nats:*:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/bin/sh</div=
><div>nobody:*:65534:65534:nobody:/<wbr>nonexistent:/bin/sh</div><div><span=
><pre><br></pre><pre>Users are not found</pre></span></div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>
</blockquote><div><span><pre>-- <br></pre><div style=3D"width: 100ch;">Fabi=
en</div></span></div></body></html>

--=-w4llkK37qJSAGQ8QBIcf--
