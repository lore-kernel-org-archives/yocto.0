Return-Path: <renjithvjn@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C26A5E00C1A; Tue,  5 Jan 2016 20:07:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (renjithvjn[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f172.google.com (mail-yk0-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 828C7E00803
	for <yocto@yoctoproject.org>; Tue,  5 Jan 2016 20:07:15 -0800 (PST)
Received: by mail-yk0-f172.google.com with SMTP id v14so210937016ykd.3
	for <yocto@yoctoproject.org>; Tue, 05 Jan 2016 20:07:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=nebVkJM21V3LFN9tk/b8SJSbFRjESeOAroaIkr8HIa4=;
	b=b5Hb+BOGtdjPrDLJLuUIj7PmjoDb9/xd9mDflJZCkwetcWb//7SNuoearncl/QpJiK
	UyuaaqTBMzAlZX23pcVUiwzFZFeTx+asLy7/YSrkob4wtu+BmfhXHA/bogx+9Shuf4cc
	nETSkLhUW2vwcHCGTVuFvakbPfsGu3lWtSJWOZEvXb4MuCeAMiGhVhM6IWi/OzOKqisU
	MqbYGz3PDj39raMcOPLA344EeRO8TJBKGZGTZRRubl2Y0OqA0zKB/Kdl32PqC83I6Bej
	4uhMs97yOO7AANc7YFuCLT/TdW9bl+orh9BZw2VS/Et1G2rrXju81vZVZ9iDxXOROAoR
	x/4w==
MIME-Version: 1.0
X-Received: by 10.13.194.134 with SMTP id e128mr70239094ywd.57.1452053234630; 
	Tue, 05 Jan 2016 20:07:14 -0800 (PST)
Received: by 10.37.105.7 with HTTP; Tue, 5 Jan 2016 20:07:14 -0800 (PST)
Date: Wed, 6 Jan 2016 09:37:14 +0530
Message-ID: <CAO-QM6MtD1Un5BZc3mVh3Mx+KNX-fc344qYVzXRe+NuUx=9kiQ@mail.gmail.com>
From: Renjith Vijayan <renjithvjn@gmail.com>
To: yocto@yoctoproject.org
Subject: Rsyslog-ImJournal dependencies in Yocto
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
X-List-Received-Date: Wed, 06 Jan 2016 04:07:18 -0000
Content-Type: multipart/alternative; boundary=001a114edd3a3ecb890528a27d22

--001a114edd3a3ecb890528a27d22
Content-Type: text/plain; charset=UTF-8

Hi,

I am trying to integrate rsyslog's IMjournal package to my platform running
Yocto.
IMJournal is used by rsyslog to read logs from systemd-journal.

So i have rsyslog bitbake file modified as follows for imjournal package
config:

# first line is default yes in configure
PACKAGECONFIG ??= " \
    zlib rsyslogd rsyslogrt klog inet regexp uuid imjournal libgcrypt \
    imdiag gnutls imfile \
    ${@base_contains('DISTRO_FEATURES', 'snmp', 'snmp', '', d)} \
    ${@base_contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)} \
    ${@base_contains('DISTRO_FEATURES', 'ptest', 'testbench ${VALGRIND}',
'', d)} \

But after adding imjournal as above to config, during build i am getting
the following dependency error:

checking for LIBSYSTEMD_JOURNAL... no
| configure: error: Package requirements (libsystemd-journal >= 197) were
not met:
|
| No package 'libsystemd-journal' found
|
| Consider adjusting the PKG_CONFIG_PATH environment variable if you
| installed software in a non-standard prefix.


Could someone help me with this configuration?

Thanks,
Renjith

--001a114edd3a3ecb890528a27d22
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am trying to integrate rsyslog&#3=
9;s IMjournal package to my platform running Yocto.</div><div>IMJournal is =
used by rsyslog to read logs from systemd-journal.</div><div><br></div><div=
>So i have rsyslog bitbake file modified as follows for imjournal package c=
onfig:</div><div><br></div><div><div style=3D"font-size:12.8px"><div># firs=
t line is default yes in configure</div><div>PACKAGECONFIG ??=3D &quot; \</=
div><div>=C2=A0 =C2=A0 zlib rsyslogd rsyslogrt klog inet regexp uuid imjour=
nal libgcrypt \</div><div>=C2=A0 =C2=A0 imdiag gnutls imfile \</div><div>=
=C2=A0 =C2=A0 ${@base_contains(&#39;DISTRO_FEATURES&#39;, &#39;snmp&#39;, &=
#39;snmp&#39;, &#39;&#39;, d)} \</div><div>=C2=A0 =C2=A0 ${@base_contains(&=
#39;DISTRO_FEATURES&#39;, &#39;systemd&#39;, &#39;systemd&#39;, &#39;&#39;,=
 d)} \</div><div>=C2=A0 =C2=A0 ${@base_contains(&#39;DISTRO_FEATURES&#39;, =
&#39;ptest&#39;, &#39;testbench ${VALGRIND}&#39;, &#39;&#39;, d)} \</div><d=
iv><br></div><div>But after adding imjournal as above to config, during bui=
ld i am getting the following dependency error:</div><div><br></div><div><d=
iv style=3D"font-size:12.8px">checking for LIBSYSTEMD_JOURNAL... no</div><d=
iv style=3D"font-size:12.8px">| configure: error: Package requirements (lib=
systemd-journal &gt;=3D 197) were not met:</div><div style=3D"font-size:12.=
8px">|</div><div style=3D"font-size:12.8px">| No package &#39;libsystemd-jo=
urnal&#39; found</div><div style=3D"font-size:12.8px">|</div><div style=3D"=
font-size:12.8px">| Consider adjusting the PKG_CONFIG_PATH environment vari=
able if you</div><div style=3D"font-size:12.8px">| installed software in a =
non-standard prefix.</div></div><div style=3D"font-size:12.8px"><br></div><=
div style=3D"font-size:12.8px"><br></div><div style=3D"font-size:12.8px">Co=
uld someone help me with this configuration?</div><div style=3D"font-size:1=
2.8px"><br></div><div style=3D"font-size:12.8px">Thanks,</div><div style=3D=
"font-size:12.8px">Renjith</div></div></div></div>

--001a114edd3a3ecb890528a27d22--
