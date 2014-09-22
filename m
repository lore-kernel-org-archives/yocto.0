Return-Path: <edk@tlindustries.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 465BBE005BD; Mon, 22 Sep 2014 12:16:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	XPRIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [173.203.187.102 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000] *  1.5 XPRIO Has X-Priority header
X-Greylist: delayed 592 seconds by postgrey-1.32 at yocto-www;
	Mon, 22 Sep 2014 12:16:35 PDT
Received: from smtp102.iad3a.emailsrvr.com (smtp102.iad3a.emailsrvr.com
	[173.203.187.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06894E0054C
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 12:16:35 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp5.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id
	E242A80121; Mon, 22 Sep 2014 15:06:41 -0400 (EDT)
X-Virus-Scanned: OK
Received: from app57.wa-webapps.iad3a (relay-webapps.rsapps.net
	[172.27.255.140])
	by smtp5.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id
	CB253800CC; Mon, 22 Sep 2014 15:06:41 -0400 (EDT)
X-Sender-Id: MAILER-DAEMON
Received: from app57.wa-webapps.iad3a (relay-webapps.rsapps.net
	[172.27.255.140]) by 0.0.0.0:25 (trex/5.2.10);
	Mon, 22 Sep 2014 19:06:41 GMT
Received: from tlindustries.com (localhost.localdomain [127.0.0.1])
	by app57.wa-webapps.iad3a (Postfix) with ESMTP id BC992180064;
	Mon, 22 Sep 2014 15:06:41 -0400 (EDT)
Received: by webmail.emailsrvr.com (Authenticated sender: edk@tlindustries.com,
	from: edk@tlindustries.com) 
	with HTTP; Mon, 22 Sep 2014 15:06:41 -0400 (EDT)
Date: Mon, 22 Sep 2014 15:06:41 -0400 (EDT)
From: edk@tlindustries.com
To: yocto@yoctoproject.org
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: plain
Message-ID: <1411412801.770326130@mail.emailsrvr.com>
X-Mailer: webmail7.0
Subject: xdebug - phpinfo() doesn't report xdebug.
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
X-List-Received-Date: Mon, 22 Sep 2014 19:16:50 -0000
Content-Type: text/plain;charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,=0AMy first post here and I'm very new to Yocto.  Thanks to all who h=
ave contributed to this awesome project!=0A =0AI need some help getting xde=
bug to work with modphp and apache2 in the yocto environment.=0A=0AI have s=
uccessfully built a target image that serves web pages fine with modphp and=
 apache2.  HOWEVER I can't seem to get xdebug to appear anywhere in the php=
info() report.=0A=0AI realize this may not be a yocto specific question, bu=
t I have used xdebug and modphp in other Linux environments and have never =
had this problem. I'm curious if anyone has used xdebug successfully with Y=
octo or can see what I may be doing wrong.=0A=0AHere is what I have so far:=
=0A=0AAccording to the http://xdebug.org/wizard.php I should use xdebug 2.2=
.5 for php 5.5.2.  Since Yocto dora only has xdebug 2.2.3, I copied the xde=
bug_2.2.5.bb recipe (unchanged) from master to my layer.=0A=0ATo fix an inv=
alid source url and to get some needed modphp features, I wrote a modphp_5.=
5.2.bbappend file in my layer:=0A=0A# ELK: bad link - original: http://www.=
php.net/distributions/php-${PV}.tar.bz2=0ASRC_URI_remove =3D "http://www.ph=
p.net/distributions/php-${PV}.tar.bz2 "=0ASRC_URI =3D. "http://museum.php.n=
et/php5/php-${PV}.tar.bz2 "=0ADEPENDS +=3D "libxml2"=0A=0AEXTRA_OECONF_remo=
ve =3D " \=0A  --disable-pdo \=0A  --disable-xml \=0A  --disable-xmlreader =
\=0A  --disable-xmlwriter \=0A  --disable-simplexml \=0A  --disable-libxml =
\=0A"=0A=0AEXTRA_OECONF +=3D " \=0A  --enable-pdo \=0A  --enable-xml \=0A  =
--enable-xmlreader \=0A  --enable-xmlwriter \=0A  --enable-simplexml \=0A  =
--enable-libxml \=0A  --with-libxml-dir=3D${STAGING_DIR_TARGET}${exec_prefi=
x} \=0A"=0A=0AOther specific information: =0A  1. Yocto Dora 1.5=0A  2. Ker=
nel: 3.0.35-4.1.0-edm_fairy+ga97aa82 (for Technexion edm1-cf-imx6 / Fairy b=
oard)=0A  2. xdebug_2.2.5.bb=0A  3. modphp_5.5.2.bb (with my above bbappend=
).=0A  4. apache2-native_2.4.6.bb, apache2_2.4.6.bb (dora)=0A  5. Manually =
edited the following to /etc/php/apache2-php5/php.ini on the target and reb=
ooted:=0A=0A[XDebug]=0Azend_extension=3D/usr/lib/php5/extensions/debug-zts-=
20121212/xdebug.so=0Axdebug.remote_enable=3D1=0Axdebug.remote_handler=3Ddbg=
p=0Axdebug.remote_mode=3Dreq=0Axdebug.remote_host=3D192.168.1.31=0Axdebug.r=
emote_port=3D9000=0A=0AA link to my phpinfo() report:=0A   http://pastebin.=
com/QVhnwbWm=0A=0AAgain the above builds fine and runs ok, but I can't get =
xdebug to work.=0AThanks in advance for any help that anyone can provide!=
=0A=0AEd=0A=0A=0A=0A


