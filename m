Return-Path: <charles.chau@habeyusa.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C228E00CC0; Mon, 21 Mar 2016 17:31:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 3187 seconds by postgrey-1.32 at yocto-www;
	Mon, 21 Mar 2016 17:31:14 PDT
Received: from server.habeyonline.com (server.habeyonline.com [142.4.26.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51B8EE00C90
	for <yocto@yoctoproject.org>; Mon, 21 Mar 2016 17:31:14 -0700 (PDT)
Received: from [96.31.254.242] (port=42433 helo=[192.168.0.227])
	by server.habeyonline.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.86_1)
	(envelope-from <charles.chau@habeyusa.com>) id 1ai9Oe-0004Rw-DX
	for yocto@yoctoproject.org; Mon, 21 Mar 2016 23:38:04 +0000
To: yocto@yoctoproject.org
From: Charles Chau <charles.chau@habeyusa.com>
Message-ID: <56F085DC.7040206@habeyusa.com>
Date: Mon, 21 Mar 2016 16:38:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.habeyonline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - habeyusa.com
X-Get-Message-Sender-Via: server.habeyonline.com: authenticated_id:
	charles.chau@habeyusa.com
X-Authenticated-Sender: server.habeyonline.com: charles.chau@habeyusa.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Qt WebEngine Recipe do_install_append()
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
X-List-Received-Date: Tue, 22 Mar 2016 00:31:18 -0000
Content-Type: multipart/alternative;
	boundary="------------010909050107060505090908"

--------------010909050107060505090908
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I found these lines in the Qt WebEngine 5.5 and 5.6 Recipe

/do_install_append() {//
//        rmdir ${D}${OE_QMAKE_PATH_PLUGINS}/${BPN} 
${D}${OE_QMAKE_PATH_PLUGINS} || true//
//        sed -i 's@ -Wl,--start-group.*-Wl,--end-group@@g; s@-L${B}[^ 
]* @ @g' ${D}${libdir}/pkgconfig/Qt5WebEngineCore.pc//
//    }//
/
Version 5.5 compile without problem.  However, to make Qt Web Engine 
compile for 5.6, I needed to delete these lines.  But, 
qtwebengine-qmlplugins, qtwebengine-plugins, and qtwebengine-examples 
are all gone from the build (from 5.6). These lines return error in 
which the system cannot access those directories.

Could someone explain what do they mean? especially the `sed` one. What 
happened to the Qtwebengine plugins, qmlplugins and examples in Qt 
WebEngine 5.6?

Thank you,

-- 
Charles Chau


--------------010909050107060505090908
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello,<br>
    <br>
    I found these lines in the Qt WebEngine 5.5 and 5.6 Recipe<br>
    <br>
       <i> do_install_append() {</i><i><br>
    </i><i>        rmdir ${D}${OE_QMAKE_PATH_PLUGINS}/${BPN}
      ${D}${OE_QMAKE_PATH_PLUGINS} || true</i><i><br>
    </i><i>        sed -i 's@ -Wl,--start-group.*-Wl,--end-group@@g;
      s@-L${B}[^ ]* @ @g' ${D}${libdir}/pkgconfig/Qt5WebEngineCore.pc</i><i><br>
    </i><i>    }</i><i><br>
    </i><br>
    Version 5.5 compile without problem.  However, to make Qt Web Engine
    compile for 5.6, I needed to delete these lines.  But,
    qtwebengine-qmlplugins, qtwebengine-plugins, and
    qtwebengine-examples are all gone from the build (from 5.6). These
    lines return error in which the system cannot access those
    directories.<br>
    <br>
    Could someone explain what do they mean? especially the `sed` one. 
    What happened to the Qtwebengine plugins, qmlplugins and examples in
    Qt WebEngine 5.6?<br>
    <br>
    Thank you,<br>
    <pre class="moz-signature" cols="72">-- 
Charles Chau
</pre>
  </body>
</html>

--------------010909050107060505090908--
