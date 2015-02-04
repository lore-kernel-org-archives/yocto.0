Return-Path: <cleitonblaster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C1B3E0082D; Wed,  4 Feb 2015 12:39:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cleitonrbueno[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B550CE00753
	for <yocto@yoctoproject.org>; Wed,  4 Feb 2015 12:39:15 -0800 (PST)
Received: by mail-la0-f50.google.com with SMTP id hs14so3788414lab.9
	for <yocto@yoctoproject.org>; Wed, 04 Feb 2015 12:39:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=pze4qu3vV10IlOPJCu+/pyHbGwQ0kih+/8GJwKJDawo=;
	b=wV9qYXbTXxe6r1saL1D2IakS4YTH8DoB6NLCKL0Cy6HJC3GxJRQmGwvLZC5THhZ9yQ
	BSjFygoFHK0ULVJ6pSdBkzWfiRnc47JSIIZt/JMqi4R66kmWXMmUz0tOBspHN46K9deH
	JXPGUmFYNS10Cx0tKRFplfIkEHDHh5SmYhp1TB5bc+rpLJylJJhKYf3qEr5dF35WegDq
	Uf9r41YXP05glBnQHc9D32vMeBsnQPGO0Ei6DRHSE769gw3lrfmA3u/XjOR7Uk09+N2k
	B/uWvXbsgpYEJ+aGarHDWB3lnkjvBpj8xDR/QZ/N6sOZcAKB94UbxrpvaLQZklsyUaXq
	TDow==
MIME-Version: 1.0
X-Received: by 10.112.129.195 with SMTP id ny3mr276388lbb.10.1423082353492;
	Wed, 04 Feb 2015 12:39:13 -0800 (PST)
Sender: cleitonblaster@gmail.com
Received: by 10.25.24.15 with HTTP; Wed, 4 Feb 2015 12:39:13 -0800 (PST)
Date: Wed, 4 Feb 2015 18:39:13 -0200
X-Google-Sender-Auth: Rhu68vS8EF8QPPl_k7oWHkSkvP4
Message-ID: <CABKVDBA1Jud49rcmv+uNrpbBD4ySKXw=nptnnDBe-c7sqSo6cQ@mail.gmail.com>
From: Cleiton Bueno <cleitonrbueno@gmail.com>
To: yocto@yoctoproject.org
Subject: Segmentation Fault autotools to compile nagios-plugins
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
X-List-Received-Date: Wed, 04 Feb 2015 20:39:29 -0000
Content-Type: multipart/alternative; boundary=047d7b3441c62a8a3d050e492ef4

--047d7b3441c62a8a3d050e492ef4
Content-Type: text/plain; charset=UTF-8

When trying to compile is giving errors with other had no problems.

Some log:

ERROR: This autoconf log indicates errors, it looked at host include and/or
library paths while determining system capabilities.
Rerun configure task after fixing this. The path was
'/home/bueno/yocto/my_projAlt/tmp/work/i586-poky-linux/nagios-plugins/2.0.3-r0/build'
ERROR: Function failed: do_qa_configure
ERROR: Logfile of failure stored in: /home/bueno/yocto/my_projAlt
/tmp/work/i586-poky-linux/nagios-plugins/2.0.3-r0/temp/log.do_configure.5134

....
config.status: creating po/Makefile.in
config.status: creating config.h
config.status: executing depfiles commands
config.status: executing libtool commands
config.status: executing po-directories commands
config.status: creating po/POTFILES
config.status: creating po/Makefile
            --with-apt-get-command: /home/bueno/yocto/my_projAlt
/tmp/sysroots/x86_64-linux/usr/bin/apt-get
              --with-ping6-command: /bin/ping6 -n -U -w %d -c %d %s
               --with-ping-command: /bin/ping -n -U -w %d -c %d %s
                       --with-ipv6: yes
                      --with-mysql: /home/bueno/yocto/my_projAlt
/tmp/sysroots/qemux86/usr/bin/crossscripts/mysql_config
                    --with-openssl: yes
                     --with-gnutls: no
               --enable-extra-opts: yes
                       --with-perl: /usr/bin/perl
             --enable-perl-modules: yes
                     --with-cgiurl: /nagios/cgi-bin
               --with-trusted-path: /bin:/sbin:/usr/bin:/usr/sbin
                   --enable-libtap: no
DEBUG: Shell function do_configure finished
DEBUG: Executing python function do_qa_configure
NOTE: Checking autotools environment for common misconfiguration
ERROR: This autoconf log indicates errors, it looked at host include and/or
library paths while determining system capabilities.
Rerun configure task after fixing this. The path was '/home/bueno/yocto/
my_projAlt/tmp/work/i586-poky-linux/nagios-plugins/2.0.3-r0/build'
DEBUG: Python function do_qa_configure finished
ERROR: Function failed: do_qa_configure





My recipe, copy the other ok:


SUMMARY = "Nagios Plugins Basic"
DESCRIPTION = "Plugins base para consultas SNMP e configuracao para
comunicacao com aplicacao Nagios"
HOMEPAGE = "http://www.nagios-plugins.org"

SECTION = "console/tools"

DEPENDS = "autoconf-native automake-native libtool-native gettext-native"

PR = "r0"
inherit autotools gettext


LICENSE = "GPLv2+ | GPLv3"
LIC_FILES_CHKSUM =
"file://COPYING;beginline=1;endline=6;md5=8c8999290a607d01cccc37beed8cb0b4"

S = "${WORKDIR}/${PN}-${PV}"



SRC_URI = "http://nagios-plugins.org/download/${PN}-${PV}.tar.gz"
SRC_URI[md5sum] = "6755765bab88b506181268ef7982595e"
SRC_URI[sha256sum] =
"8f0021442dce0138f0285ca22960b870662e28ae8973d49d439463588aada04a"



FILES_${PN} += "/usr/local/nagios "


EXTRA_OECONF = " \
    --prefix=/usr/local/nagios \
    --without-radius \
    --without-ldap \
    --without-world-permissions \

"






-- 

*Att,Cleiton Bueno*

--047d7b3441c62a8a3d050e492ef4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><span id=3D"result_box" class=3D"" lang=3D"en"><=
span class=3D"">When trying to compile</span> <span class=3D"">is giving</s=
pan> <span class=3D"">errors</span> <span class=3D"">with</span> <span clas=
s=3D"">other</span> <span class=3D"">had no problems</span><span class=3D""=
>.<br><br></span></span></div><span id=3D"result_box" class=3D"" lang=3D"en=
"><span class=3D"">Some log:<br><br>ERROR: This autoconf log indicates erro=
rs, it looked at host include and/or library paths while determining system=
 capabilities.<br>Rerun configure task after fixing this. The path was &#39=
;/home/bueno/yocto/my_projAlt/tmp/work/i586-poky-linux/nagios-plugins/2.0.3=
-r0/build&#39;<br>ERROR: Function failed: do_qa_configure<br>ERROR: Logfile=
 of failure stored in: /home/bueno/yocto/</span></span><span id=3D"result_b=
ox" class=3D"" lang=3D"en"><span class=3D""><span id=3D"result_box" class=
=3D"" lang=3D"en"><span class=3D"">my_projAlt</span></span>/tmp/work/i586-p=
oky-linux/nagios-plugins/2.0.3-r0/temp/log.do_configure.5134<br><br>....<br=
>config.status: creating po/Makefile.in<br>config.status: creating config.h=
<br>config.status: executing depfiles commands<br>config.status: executing =
libtool commands<br>config.status: executing po-directories commands<br>con=
fig.status: creating po/POTFILES<br>config.status: creating po/Makefile<br>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --with-a=
pt-get-command: /home/bueno/yocto/</span></span><span id=3D"result_box" cla=
ss=3D"" lang=3D"en"><span class=3D""><span id=3D"result_box" class=3D"" lan=
g=3D"en"><span class=3D"">my_projAlt</span></span>/tmp/sysroots/x86_64-linu=
x/usr/bin/apt-get<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 --with-ping6-command: /bin/ping6 -n -U -w %d -c %d=
 %s<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 --with-ping-command: /bin/ping -n -U -w %d -c %d %s<br>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --with-ipv6: yes<=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --with-mysql: /home/=
bueno/yocto/</span></span><span id=3D"result_box" class=3D"" lang=3D"en"><s=
pan class=3D""><span id=3D"result_box" class=3D"" lang=3D"en"><span class=
=3D"">my_projAlt</span></span>/tmp/sysroots/qemux86/usr/bin/crossscripts/my=
sql_config<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --with-openssl: yes<=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --with-gnutls: no<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 --enable-extra-opts: yes<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 --with-perl: /usr/bin/perl<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --enable-perl-modules: yes=
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --with-cgiurl: /nagios/=
cgi-bin<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 --with-trusted-path: /bin:/sbin:/usr/bin:/usr/sbin<br=
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --enable-libtap: no<br>DEBUG: Shell fu=
nction do_configure finished<br>DEBUG: Executing python function do_qa_conf=
igure<br>NOTE: Checking autotools environment for common misconfiguration<b=
r>ERROR: This autoconf log indicates errors, it looked at host include and/=
or library paths while determining system capabilities.<br>Rerun configure =
task after fixing this. The path was &#39;/home/bueno/yocto/</span></span><=
span id=3D"result_box" class=3D"" lang=3D"en"><span class=3D""><span id=3D"=
result_box" class=3D"" lang=3D"en"><span class=3D"">my_projAlt</span></span=
>/tmp/work/i586-poky-linux/nagios-plugins/2.0.3-r0/build&#39;<br>DEBUG: Pyt=
hon function do_qa_configure finished<br>ERROR: Function failed: do_qa_conf=
igure<br><br><br><br><br><br></span></span></div><span id=3D"result_box" cl=
ass=3D"" lang=3D"en"><span class=3D"">My recipe, copy the other ok:<br><br>=
<br>SUMMARY =3D &quot;Nagios Plugins Basic&quot;<br>DESCRIPTION =3D &quot;P=
lugins base para consultas SNMP e configuracao para comunicacao com aplicac=
ao Nagios&quot;<br>HOMEPAGE =3D &quot;<a href=3D"http://www.nagios-plugins.=
org">http://www.nagios-plugins.org</a>&quot;<br><br>SECTION =3D &quot;conso=
le/tools&quot;<br><br>DEPENDS =3D &quot;autoconf-native automake-native lib=
tool-native gettext-native&quot;<br><br>PR =3D &quot;r0&quot;<br>inherit au=
totools gettext<br><br><br>LICENSE =3D &quot;GPLv2+ | GPLv3&quot;<br>LIC_FI=
LES_CHKSUM =3D &quot;file://COPYING;beginline=3D1;endline=3D6;md5=3D8c89992=
90a607d01cccc37beed8cb0b4&quot;<br><br>S =3D &quot;${WORKDIR}/${PN}-${PV}&q=
uot;<br><br><br><br>SRC_URI =3D &quot;<a href=3D"http://nagios-plugins.org/=
download/${PN}-${PV}.tar.gz">http://nagios-plugins.org/download/${PN}-${PV}=
.tar.gz</a>&quot;<br>SRC_URI[md5sum] =3D &quot;6755765bab88b506181268ef7982=
595e&quot;<br>SRC_URI[sha256sum] =3D &quot;8f0021442dce0138f0285ca22960b870=
662e28ae8973d49d439463588aada04a&quot;<br><br><br><br>FILES_${PN} +=3D &quo=
t;/usr/local/nagios &quot;<br><br><br>EXTRA_OECONF =3D &quot; \<br>=C2=A0=
=C2=A0=C2=A0 --prefix=3D/usr/local/nagios \<br>=C2=A0=C2=A0=C2=A0 --without=
-radius \<br>=C2=A0=C2=A0=C2=A0 --without-ldap \<br>=C2=A0=C2=A0=C2=A0 --wi=
thout-world-permissions \<br><br>&quot;<br></span></span><div><div><br><br>=
<br><br><br><br>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr"><div=
><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><i><b>Att,<br>Cleiton Bueno</b></i><br><br></div></div></div></div=
></div></div></div></div></div></div>
</div></div></div>

--047d7b3441c62a8a3d050e492ef4--
