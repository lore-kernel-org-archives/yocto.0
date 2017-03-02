Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04BF6E00924; Thu,  2 Mar 2017 07:33:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f182.google.com (mail-wr0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7844EE0049D
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 07:33:49 -0800 (PST)
Received: by mail-wr0-f182.google.com with SMTP id u48so55000517wrc.0
	for <yocto@yoctoproject.org>; Thu, 02 Mar 2017 07:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=F9lI4PQtrdqifkMhEcywFPysbb1mzB7D+Fc2aBfKxEU=;
	b=Jvp+EKOkLmj55cVHGg5peenL+vrNyWwWmzrGBaBhqvB6ksD8VZSY7cA3q4Mi2o+MnA
	a7YLSkDMVkL4+TNrzurWOJKEEjhuQDl6SNM7+oNefdIqME3AY/othO0ryAYW8QyDkbvu
	p/mpR8MDkj/oXU2CjhYZsKNoKTO3WqY18Ke60=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=F9lI4PQtrdqifkMhEcywFPysbb1mzB7D+Fc2aBfKxEU=;
	b=SNkOBnJ81U2Ve3EsLRcWR0SYGy8b+JFoYxjJSvv43AVHWFZRwBZHRLz9pb71loaryS
	1VGiMeMhSgsmCpJsR8pclWIVZ7P0AWPbvaUoxVsQ5tGK0tgSy+AL57TC+ce2rSe00gwC
	fluSYvUhgiP/DlBq+Zwv1ghf8W6CPZY11bzNU+MmmbNIhjnmkzwXpaVWFwu0uWbriCVW
	rrgeGA82aleb8UtBSqqetl+7l+0tCJTaId/i5RMavLYAMKckvb+pyEvB4DOnts+Hr+bc
	osAhGHvG8dOkfBv+vtqRCgc3NrZOVmwToayCwMPNsHGhH05VaC8PwTlz5kMKBg7Swe+y
	+EMw==
X-Gm-Message-State: AMke39naQmPpaGWhxF9RA+uxjcQgzg6orFkDrUmtv7ZsUuawlOJJGIkQKYC5wa8F/M8SaA==
X-Received: by 10.223.172.210 with SMTP id o76mr12365240wrc.21.1488468827798; 
	Thu, 02 Mar 2017 07:33:47 -0800 (PST)
Received: from [10.10.61.21] (ARennes-650-1-68-26.w2-12.abo.wanadoo.fr.
	[2.12.195.26]) by smtp.gmail.com with ESMTPSA id
	q4sm11330539wrc.35.2017.03.02.07.33.46 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 02 Mar 2017 07:33:46 -0800 (PST)
To: yocto@yoctoproject.org
From: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
X-Enigmail-Draft-Status: N1110
Message-ID: <ba80e4dc-87af-327e-4f92-00c2f09d3e35@fridu.net>
Date: Thu, 2 Mar 2017 16:33:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
Subject: Error with Cynara pkg_postinst when updating AGL to from morty master
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
X-List-Received-Date: Thu, 02 Mar 2017 15:33:52 -0000
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <font size="-1">Hello,<br>
      <br>
      I am trying to move AGL from morty to master in order to get a
      stock Kernel 3.9.<br>
      I have moved meta-intel, poky and open embedded to master
      branches.<br>
      <br>
      I am blocked on an error that I do not understand in th
      pkg_postinst section.<br>
      the error code is: </font><font size="-1"><font size="-1">AttributeError:
        'module' object has no attribute 'getVar'</font><br>
      <br>
      As the only getVar is happening  in the Version setting</font><br>
    <font size="-1"><font size="-1">VERSION=${@bb.data.getVar('PV',d,1).split('+git')[0]}</font><br>
      I wonder if something has hanged in bb.data but I could not find
      anything obvious.<br>
      <br>
      Any help would be welcome.<br>
      <br>
      Dominig<br>
      <br>
      ---------------- Log -----------------------<br>
      <br>
      dominig@dominig-yocto:~/AGL/build&gt; bitbake agl-demo-platform<br>
      WARNING:
/home/dominig/AGL/meta-intel-iot-security/meta-security-framework/recipes-security/cynara/cynara_git.bb:
      Exception during build_dependencies for pkg_postinst_cynara:49<br>
      WARNING:
/home/dominig/AGL/meta-intel-iot-security/meta-security-framework/recipes-security/cynara/cynara_git.bb:
      Error during finalise of
/home/dominig/AGL/meta-intel-iot-security/meta-security-framework/recipes-security/cynara/cynara_git.bb<br>
      ERROR: ExpansionError during parsing
/home/dominig/AGL/meta-intel-iot-security/meta-security-framework/recipes-security/cynara/cynara_git.bb<br>
      Traceback (most recent call last):<br>
      bb.data_smart.ExpansionError: Failure expanding variable
      pkg_postinst_cynara, expression was    # Fail on error.<br>
         set -e<br>
      <br>
         # It would be nice to run the code below while building an
      image,<br>
         # but currently the calls to cynara-db-chsgen (a binary) in<br>
         # cynara-db-migration (a script) prevent that. Rely instead<br>
         # on OE's support for running failed postinst scripts at first
      boot.<br>
         if [ x"$D" != "x" ]; then<br>
            exit 1<br>
         fi<br>
      <br>
         mkdir -p $D/etc/cynara<br>
         chsmack -a System $D/etc/cynara<br>
      <br>
         # Strip git patch level information, the version comparison
      code<br>
         # in cynara-db-migration only expect major.minor.patch version
      numbers.<br>
         VERSION=${@bb.data.getVar('PV',d,1).split('+git')[0]}<br>
         if [ -d $D/var/cynara ] ; then<br>
            # upgrade<br>
            echo "NOTE: updating cynara DB to version $VERSION"<br>
            $D/usr/sbin/cynara-db-migration upgrade -f 0.0.0 -t $VERSION<br>
         else<br>
            # install<br>
            echo "NOTE: creating cynara DB for version $VERSION"<br>
            mkdir -p $D/var/cynara<br>
            chsmack -a System $D/var/cynara<br>
            $D/usr/sbin/cynara-db-migration install -t $VERSION<br>
         fi<br>
      <br>
         # Workaround for systemd.bbclass issue: it would call<br>
         # "systemctl start" without "--no-block", but because<br>
         # the service is not ready to run at the time when<br>
         # this scripts gets executed by run-postinsts.service,<br>
         # booting deadlocks.<br>
         echo "NOTE: enabling and starting cynara service"<br>
         systemctl enable cynara<br>
         systemctl start --no-block cynara<br>
       which triggered exception AttributeError: 'module' object has no
      attribute 'getVar'</font><br>
    <pre class="moz-signature" cols="72">-- 
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre</pre>
  </body>
</html>

