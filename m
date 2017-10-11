Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F394FE00BE8; Wed, 11 Oct 2017 02:16:04 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99B31E00B83
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 02:16:03 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id D6EFB26DA35
Message-ID: <1507713360.9509.27.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: ross.burton@intel.com
Date: Wed, 11 Oct 2017 11:16:00 +0200
In-Reply-To: <1507713002.9509.25.camel@collabora.co.uk>
References: <1507671003.9509.21.camel@collabora.co.uk>
	<OF5390C64E.C78BBBE2-ON882581B5.007B79AE-882581B5.007BBDD4@selinc.com>
	<1507704333.9509.23.camel@collabora.co.uk>
	<CAJTo0La5mPdRzFOv-ofnHwuyG3fNPEf_be=V9d_TZAHLJxt_kA@mail.gmail.com>
	<1507713002.9509.25.camel@collabora.co.uk>
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
X-List-Received-Date: Wed, 11 Oct 2017 09:16:05 -0000
Content-Type: multipart/alternative; boundary="=-taz1oxi2chYdOtLw5xOB"

--=-taz1oxi2chYdOtLw5xOB
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

FI, with bitbake testuser -c devshell

# cat ../1.0-r1/recipe-sysroot/etc/passwd 
root::0:0:root:/root:/bin/sh
daemon:*:1:1:daemon:/usr/sbin:/bin/sh
bin:*:2:2:bin:/bin:/bin/sh
sys:*:3:3:sys:/dev:/bin/sh
sync:*:4:65534:sync:/bin:/bin/sync
games:*:5:60:games:/usr/games:/bin/sh
man:*:6:12:man:/var/cache/man:/bin/sh
lp:*:7:7:lp:/var/spool/lpd:/bin/sh
mail:*:8:8:mail:/var/mail:/bin/sh
news:*:9:9:news:/var/spool/news:/bin/sh
uucp:*:10:10:uucp:/var/spool/uucp:/bin/sh
proxy:*:13:13:proxy:/bin:/bin/sh
www-data:*:33:33:www-data:/var/www:/bin/sh
backup:*:34:34:backup:/var/backups:/bin/sh
list:*:38:38:Mailing List Manager:/var/list:/bin/sh
irc:*:39:39:ircd:/var/run/ircd:/bin/sh
gnats:*:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/bin/sh
nobody:*:65534:65534:nobody:/nonexistent:/bin/sh

Users are not found

--=-taz1oxi2chYdOtLw5xOB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div>FI, with bitbake testuser -c devshell</div><d=
iv><br></div><div># cat ../1.0-r1/recipe-sysroot/etc/passwd&nbsp;</div><div=
>root::0:0:root:/root:/bin/sh</div><div>daemon:*:1:1:daemon:/usr/sbin:/bin/=
sh</div><div>bin:*:2:2:bin:/bin:/bin/sh</div><div>sys:*:3:3:sys:/dev:/bin/s=
h</div><div>sync:*:4:65534:sync:/bin:/bin/sync</div><div>games:*:5:60:games=
:/usr/games:/bin/sh</div><div>man:*:6:12:man:/var/cache/man:/bin/sh</div><d=
iv>lp:*:7:7:lp:/var/spool/lpd:/bin/sh</div><div>mail:*:8:8:mail:/var/mail:/=
bin/sh</div><div>news:*:9:9:news:/var/spool/news:/bin/sh</div><div>uucp:*:1=
0:10:uucp:/var/spool/uucp:/bin/sh</div><div>proxy:*:13:13:proxy:/bin:/bin/s=
h</div><div>www-data:*:33:33:www-data:/var/www:/bin/sh</div><div>backup:*:3=
4:34:backup:/var/backups:/bin/sh</div><div>list:*:38:38:Mailing List Manage=
r:/var/list:/bin/sh</div><div>irc:*:39:39:ircd:/var/run/ircd:/bin/sh</div><=
div>gnats:*:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/bin/sh=
</div><div>nobody:*:65534:65534:nobody:/nonexistent:/bin/sh</div><div><span=
><pre><br></pre><pre>Users are not found</pre></span></div></body></html>

--=-taz1oxi2chYdOtLw5xOB--
