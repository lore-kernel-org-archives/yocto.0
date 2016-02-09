Return-Path: <nbelfin@radiodata.biz>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D161E00C6D; Tue,  9 Feb 2016 00:13:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 589 seconds by postgrey-1.32 at yocto-www;
	Tue, 09 Feb 2016 00:13:17 PST
Received: from smtp.radiodata.biz (smtp.radiodata.biz [78.47.114.250])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60EACE00C59
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 00:13:17 -0800 (PST)
Received: from mail (p578044f8.dip0.t-ipconnect.de [87.128.68.248])
	by smtp.radiodata.biz (Postfix) with ESMTPSA id 4CCB060303
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 09:03:26 +0100 (CET)
Received: from [192.168.3.173] (WS72.radiodata.xx [192.168.3.173])
	by mail (Postfix) with ESMTPSA id D75053FD42
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 09:03:25 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Norbert Belfin <nbelfin@radiodata.biz>
X-Enigmail-Draft-Status: N1110
Message-ID: <56B99D4D.40308@radiodata.biz>
Date: Tue, 9 Feb 2016 09:03:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
Subject: systemd and update-rc.d
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
X-List-Received-Date: Tue, 09 Feb 2016 08:13:21 -0000
X-Groupsio-MsgNum: 28357
Content-Type: multipart/mixed; boundary="------------020305060901010509050703"

--------------020305060901010509050703
Content-Type: multipart/alternative;
 boundary="------------000506090502080301030101"

--------------000506090502080301030101
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

I "activated" systemd as described in the development manual
<http://www.yoctoproject.org/docs/2.0/dev-manual/dev-manual.html#selecting-an-initialization-manager>
.
My distro.conf (excerpt):

    /DISTRO_FEATURES = "systemd php ${DISTRO_FEATURES_DEFAULT}
    ${DISTRO_FEATURES_LIBC} $mtd-utils"/
    /DISTRO_FEATURES_remove = "x11"/
    /DISTRO_FEATURES_BACKFILL_CONSIDERED += " pulseaudio sysvinit "/

    /VIRTUAL-RUNTIME_init_manager = "systemd"/
    /VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
    /

When I build my distribution the following error appears while do_rootfs:

    /Collected errors:/
    / * satisfy_dependencies_for: Cannot satisfy the following
    dependencies for packagegroup-core-boot:/
    / *     update-rc.d * /


I checked which packages add update-rc.d, and systemd is one of them.
How can I resolve this issue?


Thanks for your help.
<http://www.yoctoproject.org/docs/2.0/dev-manual/dev-manual.html#selecting-an-initialization-manager>

--------------000506090502080301030101
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hello,<br>
    <br>
    I "activated" systemd as described in the <a
href="http://www.yoctoproject.org/docs/2.0/dev-manual/dev-manual.html#selecting-an-initialization-manager">development
      manual</a> .<br>
    My distro.conf (excerpt):<br>
    <blockquote><i>DISTRO_FEATURES = "systemd php
        ${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} $mtd-utils"</i><br>
      <i>DISTRO_FEATURES_remove = "x11"</i><br>
      <i>DISTRO_FEATURES_BACKFILL_CONSIDERED += " pulseaudio sysvinit "</i><br>
      <br>
      <i>VIRTUAL-RUNTIME_init_manager = "systemd"</i><br>
      <i>VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"<br>
      </i></blockquote>
    When I build my distribution the following error appears while
    do_rootfs:
    <blockquote><i>Collected errors:</i><br>
      <i> * satisfy_dependencies_for: Cannot satisfy the following
        dependencies for packagegroup-core-boot:</i><br>
      <i> *     update-rc.d * </i><br>
    </blockquote>
    <br>
    I checked which packages add update-rc.d, and systemd is one of
    them. How can I resolve this issue?<br>
    <br>
    <br>
    Thanks for your help.<br>
    <a
href="http://www.yoctoproject.org/docs/2.0/dev-manual/dev-manual.html#selecting-an-initialization-manager"><font
        color="#000000"></font></a><br>
  </body>
</html>

--------------000506090502080301030101--

--------------020305060901010509050703
Content-Type: text/x-vcard; charset=utf-8;
 name="nbelfin.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="nbelfin.vcf"

begin:vcard
fn:Norbert Belfin
n:Belfin;Norbert
org:RadioData GmbH;Entwicklung
email;internet:nbelfin@radiodata.biz
version:2.1
end:vcard


--------------020305060901010509050703--
