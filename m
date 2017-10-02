Return-Path: <windswept321@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB663E00A9C; Mon,  2 Oct 2017 08:55:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_QP_LONG_LINE, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (windswept321[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.178 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f178.google.com (mail-wr0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DABBEE006CA
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 08:55:27 -0700 (PDT)
Received: by mail-wr0-f178.google.com with SMTP id b21so4342904wrg.7
	for <yocto@yoctoproject.org>; Mon, 02 Oct 2017 08:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:mime-version:subject:message-id:date:to;
	bh=rRQ4R/qOT+D/hjp0zEbi8GKdGtLO4dVk6AGZe4G8JHA=;
	b=L765a88SzLp9TOJuSTkgXI1SxZ2vpX0aYpMBhpozC6+o4jP3fPuOpHnhHGS6iM8ezF
	d68feFrj3eh7gH7vOQJ1/I2NFZ/7G2+/sISce16yqA8bu7akc+3gGqkIuoZd3uv06h+A
	VOEt87Fc5AMUQoLwAntTyrWqATGuLsJgQ4Z1LnDHDW/fgyQHUocJxlP753vhMayNtf+2
	a+uWWmRyUt8illmzneRjTDz1LePq0/5cyshBMdOmgCLsLCjk2LdHYAE0eGeCi+UTR9zl
	j/AVvQnuKJ2uYmAdg0JS1oZ9Ye2FrSmww7I98oqqflOQZTQoKkEqXjP8b0XK4Q+vYtkJ
	mSEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
	bh=rRQ4R/qOT+D/hjp0zEbi8GKdGtLO4dVk6AGZe4G8JHA=;
	b=DL0MEcglZTOVm5Y6fX2foRIzLtBjbfmsNYO44tGCUE3/sgWJ9IWqIulQL6ByV8G2i6
	1NPIsYsvaZvwyJPI+azTbHKeVHnCYjUSvykIc9NfrC62gpd2TApKYTrx+dGr9javmt+l
	FLxsfLx9tAWGClCppf1yfjiCmBYy8lqTuoHvQCbuXZSvco5MjSmphCfSZyvwJxo3TKBJ
	ZVrF6rydZHezPDhVL6vpwWyBPt+8f7gaJomoIAxBOt5zVDfEvT+2V1+L3IneYyczxm1W
	YJ6o9ds5ib2s8ec0wd91cPsSpmb8rupLEjDwgDb+IXrQIx7rTzCnPmnby9oGrmI/QOvj
	SK0w==
X-Gm-Message-State: AMCzsaXspwsVV/a/D7oHvjqqj4B8cwmf7h0TWtnorgZEOJI0mSc8AVU3
	OINXiMNG6xPSMvbZ04OGM4sQ/fSe
X-Google-Smtp-Source: AOwi7QBME6ayuB+SJP2UOCF5sXv8QvMLaicR3BjMiFV/FMhVQVYJdFhjizZlr+AJRfh7znHEXiq67A==
X-Received: by 10.223.184.15 with SMTP id h15mr2613012wrf.123.1506959726729;
	Mon, 02 Oct 2017 08:55:26 -0700 (PDT)
Received: from aarons-mbp.default ([2.28.249.24])
	by smtp.gmail.com with ESMTPSA id
	f127sm8682706wmg.2.2017.10.02.08.55.25 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Oct 2017 08:55:25 -0700 (PDT)
From: Aaron Sarginson <windswept321@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <1BBEA542-0994-4239-8593-A48C6476B7E3@gmail.com>
Date: Mon, 2 Oct 2017 16:55:24 +0100
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
Subject: Problems when adding custom layer
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
X-List-Received-Date: Mon, 02 Oct 2017 15:55:29 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_35D68964-87E4-4F52-B60C-E86B92E476B5"

--Apple-Mail=_35D68964-87E4-4F52-B60C-E86B92E476B5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello,

I am trying to add a folder and some files to a raspberry pi build which =
does build successfully with the latest Yocto.
When added, I receive parsing errors at the inherit =E2=80=9Csystemd=E2=80=
=9D line.
The idea is that the web-files folder should be transferred in its =
entirety, rules.sh and the executable =E2=80=98project=E2=80=99 to the =
same folder plus ddd.service which is a systemd service file for =
=E2=80=98project=E2=80=99.

meta-ddd
=E2=94=9C=E2=94=80=E2=94=80 conf
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 layer.conf
=E2=94=9C=E2=94=80=E2=94=80 files
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 ddd.service
=E2=94=9C=E2=94=80=E2=94=80 project
=E2=94=9C=E2=94=80=E2=94=80 README
=E2=94=9C=E2=94=80=E2=94=80 rules.sh
=E2=94=94=E2=94=80=E2=94=80 web-files
    =E2=94=94=E2=94=80=E2=94=80 sub-folder

SUMMARY =3D =E2=80=9CDDD software installation"
DESCRIPTION =3D "Transfers files and sets up systemd for DDD."

SRC_URI +=3D "\
        file://web-files/* \
        file://project \
        file://ddd.service \
        file://rules.sh \
"
S =3D "${WORKDIR}"

inherit "systemd"

SYSTEMD_PACKAGES =3D "${PN}"

SYSTEMD_SERVICE_${PN} =3D " ddd.service"

FILES_${PN} +=3D " ddd.service \
                 /web-files/ \
                 /opt/ddd/project \
"


do_install () {
    install -d ${D}{sysconfdir}/systemd/system
    install -d ${D}/opt/ddd
    install -m 0755 ${WORKDIR}/web-files/ ${D}/opt/ddd
    install -m 0755 ${WORKDIR}/ddd.service
${D}{sysconfdir}/systemd/system
    install -m 0755 ${WORKDIR}/project ${D}/opt/ddd
}=

--Apple-Mail=_35D68964-87E4-4F52-B60C-E86B92E476B5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Hello,<div class=3D""><br class=3D""></div><div class=3D"">I =
am trying to add a folder and some files to a raspberry pi build which =
does build successfully with the latest Yocto.</div><div class=3D"">When =
added, I receive parsing errors at the&nbsp;<font color=3D"#454545" =
face=3D"Helvetica Neue" class=3D"">inherit&nbsp;=E2=80=9Csystemd=E2=80=9D =
line.</font></div><div class=3D""><font color=3D"#454545" =
face=3D"Helvetica Neue" class=3D"">The idea is that the web-files folder =
should be transferred in its entirety, rules.sh and the executable =
=E2=80=98project=E2=80=99 to&nbsp;the same folder plus ddd.service which =
is a&nbsp;systemd service file for&nbsp;=E2=80=98project=E2=80=99.</font><=
/div><div class=3D""><br class=3D""></div><div class=3D""><div =
style=3D"margin: 0px; line-height: normal; font-family: 'Helvetica =
Neue'; color: rgb(69, 69, 69);" class=3D""><b =
class=3D"">meta-ddd</b></div><div style=3D"margin: 0px; line-height: =
normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, 69);" =
class=3D""><span style=3D"line-height: normal; font-family: '.PingFang =
SC';" class=3D"">=E2=94=9C=E2=94=80=E2=94=80</span> <b =
class=3D"">conf</b></div><div style=3D"margin: 0px; line-height: normal; =
font-family: 'Helvetica Neue'; color: rgb(69, 69, 69);" class=3D""><span =
style=3D"line-height: normal; font-family: '.PingFang SC';" =
class=3D"">=E2=94=82</span>&nbsp;&nbsp; <span style=3D"line-height: =
normal; font-family: '.PingFang SC';" class=3D"">=E2=94=94=E2=94=80=E2=94=80=
</span> layer.conf</div><div style=3D"margin: 0px; line-height: normal; =
font-family: 'Helvetica Neue'; color: rgb(69, 69, 69);" class=3D""><span =
style=3D"line-height: normal; font-family: '.PingFang SC';" =
class=3D"">=E2=94=9C=E2=94=80=E2=94=80</span> <b =
class=3D"">files</b></div><div style=3D"margin: 0px; line-height: =
normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, 69);" =
class=3D""><span style=3D"line-height: normal; font-family: '.PingFang =
SC';" class=3D"">=E2=94=82</span>&nbsp;&nbsp; <span style=3D"line-height: =
normal; font-family: '.PingFang SC';" class=3D"">=E2=94=94=E2=94=80=E2=94=80=
</span> ddd.service</div><div style=3D"margin: 0px; line-height: normal; =
font-family: 'Helvetica Neue'; color: rgb(69, 69, 69);" class=3D""><span =
style=3D"line-height: normal; font-family: '.PingFang SC';" =
class=3D"">=E2=94=9C=E2=94=80=E2=94=80</span> <b =
class=3D"">project</b></div><div style=3D"margin: 0px; line-height: =
normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, 69);" =
class=3D""><span style=3D"line-height: normal; font-family: '.PingFang =
SC';" class=3D"">=E2=94=9C=E2=94=80=E2=94=80</span> README</div><div =
style=3D"margin: 0px; line-height: normal; font-family: 'Helvetica =
Neue'; color: rgb(69, 69, 69);" class=3D""><span style=3D"line-height: =
normal; font-family: '.PingFang SC';" class=3D"">=E2=94=9C=E2=94=80=E2=94=80=
</span> <b class=3D"">rules.sh</b></div><div style=3D"margin: 0px; =
line-height: normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, =
69);" class=3D""><span style=3D"line-height: normal; font-family: =
'.PingFang SC';" class=3D"">=E2=94=94=E2=94=80=E2=94=80</span> <b =
class=3D"">web-files</b></div><div style=3D"margin: 0px; line-height: =
normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, 69);" =
class=3D"">&nbsp; &nbsp; <span style=3D"line-height: normal; =
font-family: '.PingFang SC';" class=3D"">=E2=94=94=E2=94=80=E2=94=80</span=
> <b class=3D"">sub-folder</b></div><div style=3D"margin: 0px; =
line-height: normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, =
69); min-height: 15px;" class=3D""><b class=3D""></b><br =
class=3D""></div><div style=3D"margin: 0px; line-height: normal; =
font-family: 'Helvetica Neue'; color: rgb(69, 69, 69);" class=3D"">SUMMARY=
 =3D =E2=80=9CDDD software installation"</div><div style=3D"margin: 0px; =
line-height: normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, =
69);" class=3D"">DESCRIPTION =3D "Transfers files and sets up systemd =
for DDD."</div><div style=3D"margin: 0px; line-height: normal; =
font-family: 'Helvetica Neue'; color: rgb(69, 69, 69); min-height: =
14px;" class=3D""><br class=3D""></div><div style=3D"margin: 0px; =
line-height: normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, =
69);" class=3D"">SRC_URI +=3D "\</div><div style=3D"margin: 0px; =
line-height: normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, =
69);" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; <a =
href=3D"file://web-files/*" class=3D"">file://web-files/*</a> =
\</div><div style=3D"margin: 0px; line-height: normal; font-family: =
'Helvetica Neue'; color: rgb(69, 69, 69);" class=3D"">&nbsp; &nbsp; =
&nbsp; &nbsp; <a href=3D"file:///project" class=3D"">file://project</a> =
\</div><div style=3D"margin: 0px; line-height: normal; font-family: =
'Helvetica Neue'; color: rgb(69, 69, 69);" class=3D"">&nbsp; &nbsp; =
&nbsp; &nbsp; <a href=3D"file:///ddd.service" =
class=3D"">file://ddd.service</a> \</div><div style=3D"margin: 0px; =
line-height: normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, =
69);" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"file:///rules.sh" =
class=3D"">file://rules.sh</a> \</div><div style=3D"margin: 0px; =
line-height: normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, =
69);" class=3D"">"</div><div style=3D"margin: 0px; line-height: normal; =
font-family: 'Helvetica Neue'; color: rgb(69, 69, 69);" class=3D"">S =3D =
"${WORKDIR}"</div><div style=3D"margin: 0px; line-height: normal; =
font-family: 'Helvetica Neue'; color: rgb(69, 69, 69); min-height: =
14px;" class=3D""><br class=3D""></div><div style=3D"margin: 0px; =
line-height: normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, =
69);" class=3D"">inherit "systemd"</div><div style=3D"margin: 0px; =
line-height: normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, =
69); min-height: 14px;" class=3D""><br class=3D""></div><div =
style=3D"margin: 0px; line-height: normal; font-family: 'Helvetica =
Neue'; color: rgb(69, 69, 69);" class=3D"">SYSTEMD_PACKAGES =3D =
"${PN}"</div><div style=3D"margin: 0px; line-height: normal; =
font-family: 'Helvetica Neue'; color: rgb(69, 69, 69); min-height: =
14px;" class=3D""><br class=3D""></div><div style=3D"margin: 0px; =
line-height: normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, =
69);" class=3D"">SYSTEMD_SERVICE_${PN} =3D " ddd.service"</div><div =
style=3D"margin: 0px; line-height: normal; font-family: 'Helvetica =
Neue'; color: rgb(69, 69, 69); min-height: 14px;" class=3D""><br =
class=3D""></div><div style=3D"margin: 0px; line-height: normal; =
font-family: 'Helvetica Neue'; color: rgb(69, 69, 69);" =
class=3D"">FILES_${PN} +=3D " ddd.service \</div><div style=3D"margin: =
0px; line-height: normal; font-family: 'Helvetica Neue'; color: rgb(69, =
69, 69);" class=3D"">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; /web-files/ \</div><div style=3D"margin: 0px; line-height: =
normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, 69);" =
class=3D"">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
/opt/ddd/project \</div><div style=3D"margin: 0px; line-height: normal; =
font-family: 'Helvetica Neue'; color: rgb(69, 69, 69);" =
class=3D"">"</div><div style=3D"margin: 0px; line-height: normal; =
font-family: 'Helvetica Neue'; color: rgb(69, 69, 69); min-height: =
14px;" class=3D""><br class=3D""></div><div style=3D"margin: 0px; =
line-height: normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, =
69); min-height: 14px;" class=3D""><br class=3D""></div><div =
style=3D"margin: 0px; line-height: normal; font-family: 'Helvetica =
Neue'; color: rgb(69, 69, 69);" class=3D"">do_install () {</div><div =
style=3D"margin: 0px; line-height: normal; font-family: 'Helvetica =
Neue'; color: rgb(69, 69, 69);" class=3D"">&nbsp; &nbsp; install -d =
${D}{sysconfdir}/systemd/system</div><div style=3D"margin: 0px; =
line-height: normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, =
69);" class=3D"">&nbsp; &nbsp; install -d ${D}/opt/ddd</div><div =
style=3D"margin: 0px; line-height: normal; font-family: 'Helvetica =
Neue'; color: rgb(69, 69, 69);" class=3D"">&nbsp; &nbsp; install -m 0755 =
${WORKDIR}/web-files/ ${D}/opt/ddd</div><div style=3D"margin: 0px; =
line-height: normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, =
69);" class=3D"">&nbsp; &nbsp; install -m 0755 =
${WORKDIR}/ddd.service</div><div style=3D"margin: 0px; line-height: =
normal; font-family: 'Helvetica Neue'; color: rgb(69, 69, 69);" =
class=3D"">${D}{sysconfdir}/systemd/system</div><div style=3D"margin: =
0px; line-height: normal; font-family: 'Helvetica Neue'; color: rgb(69, =
69, 69);" class=3D"">&nbsp; &nbsp; install -m 0755 ${WORKDIR}/project =
${D}/opt/ddd</div><div style=3D"margin: 0px; line-height: normal; =
font-family: 'Helvetica Neue'; color: rgb(69, 69, 69);" =
class=3D"">}</div></div></body></html>=

--Apple-Mail=_35D68964-87E4-4F52-B60C-E86B92E476B5--
