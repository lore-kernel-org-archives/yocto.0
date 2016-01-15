Return-Path: <charles.chau@habeyusa.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17CE3E00803; Thu, 14 Jan 2016 17:37:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0005]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1040 seconds by postgrey-1.32 at yocto-www;
	Thu, 14 Jan 2016 17:36:57 PST
Received: from server.habeyonline.com (server.habeyonline.com [142.4.26.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E70D3E0070F
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 17:36:57 -0800 (PST)
Received: from [96.31.254.242] (port=58497 helo=[192.168.0.140])
	by server.habeyonline.com with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <charles.chau@habeyusa.com>)
	id 1aJt3A-0004x4-11
	for yocto@yoctoproject.org; Fri, 15 Jan 2016 01:19:36 +0000
From: Charles Chau <charles.chau@habeyusa.com>
To: yocto@yoctoproject.org
Message-ID: <56984927.4050306@habeyusa.com>
Date: Thu, 14 Jan 2016 17:19:35 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
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
Subject: qmlvideo: no service found for - "org.qt-project.qt.mediaplayer"
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
X-List-Received-Date: Fri, 15 Jan 2016 01:37:01 -0000
Content-Type: multipart/alternative;
	boundary="------------080302010403040802050606"

--------------080302010403040802050606
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I am using the i.MX6 Dual Core. I have followed this recipe 
<https://github.com/HIO-Project/meta-hio-demos/blob/master/recipes-hio/images/hio-image-fb.bb>and 
have a working image with GStreamer.

However, I am having trouble to get the Qt qmlvideo player to play video.
GStreamer can play video with sound fine.  But it seems to be missing 
some library to link to the Qt.

Please advise; what component am I missing?

Thank you,

/qrc:///qml/qmlvideo/DisableScreenSaver.qml:47:9: Cannot assign to 
non-existent property "screenSaverInhibited"//
//[qmlvideo] performanceLoader.init logging false visible true//
//[frequencymonitor] FrequencyMonitor::FrequencyMonitor //
//[frequencymonitor] FrequencyMonitor::FrequencyMonitor //
//[qmlvideo] main.onSceneSourceChanged source VideoFullScreen.qml//
//[qmlvideo] Content.initialize: contentType video//
//[qmlvideo] Content.initialize: loading VideoItem.qml//
//defaultServiceProvider::requestService(): no service found for - 
"org.qt-project.qt.mediaplayer" //
//[qmlvideo] Content.start//
//[qmlvideo] Content.initialize: complete//
//[qmlvideo] VideoItem.onError error 5 errorString The QMediaPlayer 
object does not have a valid service//
//[qmlvideo] Content.onFatalError//
//[qmlvideo] Content.stop/

-- 
Charles Chau


--------------080302010403040802050606
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello,<br>
    <br>
    I am using the i.MX6 Dual Core. I have followed this <a
href="https://github.com/HIO-Project/meta-hio-demos/blob/master/recipes-hio/images/hio-image-fb.bb">recipe
    </a>and have a working image with GStreamer.  <br>
    <br>
    However, I am having trouble to get the Qt qmlvideo player to play
    video.<br>
    GStreamer can play video with sound fine.  But it seems to be
    missing some library to link to the Qt.<br>
    <br>
    Please advise; what component am I missing?<br>
    <br>
    Thank you,<br>
    <br>
    <i>qrc:///qml/qmlvideo/DisableScreenSaver.qml:47:9: Cannot assign to
      non-existent property "screenSaverInhibited"</i><i><br>
    </i><i>[qmlvideo] performanceLoader.init logging false visible true</i><i><br>
    </i><i>[frequencymonitor] FrequencyMonitor::FrequencyMonitor </i><i><br>
    </i><i>[frequencymonitor] FrequencyMonitor::FrequencyMonitor </i><i><br>
    </i><i>[qmlvideo] main.onSceneSourceChanged source
      VideoFullScreen.qml</i><i><br>
    </i><i>[qmlvideo] Content.initialize: contentType video</i><i><br>
    </i><i>[qmlvideo] Content.initialize: loading VideoItem.qml</i><i><br>
    </i><i>defaultServiceProvider::requestService(): no service found
      for - "org.qt-project.qt.mediaplayer" </i><i><br>
    </i><i>[qmlvideo] Content.start</i><i><br>
    </i><i>[qmlvideo] Content.initialize: complete</i><i><br>
    </i><i>[qmlvideo] VideoItem.onError error 5 errorString The
      QMediaPlayer object does not have a valid service</i><i><br>
    </i><i>[qmlvideo] Content.onFatalError</i><i><br>
    </i><i>[qmlvideo] Content.stop</i><br>
    <br>
    <pre class="moz-signature" cols="72">-- 
Charles Chau
</pre>
  </body>
</html>

--------------080302010403040802050606--
