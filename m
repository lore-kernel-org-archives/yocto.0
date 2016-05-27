Return-Path: <stefano.cordibella@edalab.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E58DAE00E12; Fri, 27 May 2016 01:01:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,HTML_MESSAGE,
	T_FILL_THIS_FORM_SHORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0111]
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 May 2016 01:01:52 PDT
Received: from smtpcmd01218.aruba.it (smtpcmd0641.aruba.it [62.149.156.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45DC9E00DEE
	for <yocto@yoctoproject.org>; Fri, 27 May 2016 01:01:52 -0700 (PDT)
Received: from [157.27.224.72] ([157.27.224.72])
	by smtpcmd06.ad.aruba.it with bizsmtp
	id zL0n1s00R1aLQ4l01L0nTA; Fri, 27 May 2016 10:00:48 +0200
To: yocto@yoctoproject.org
From: Stefano Cordibella <stefano.cordibella@edalab.it>
Message-ID: <5747FEAF.8000105@edalab.it>
Date: Fri, 27 May 2016 10:00:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
Subject: Systemd-udevd cache
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
X-List-Received-Date: Fri, 27 May 2016 08:01:55 -0000
Content-Type: multipart/alternative;
	boundary="------------080902000005020006060000"

--------------080902000005020006060000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi list,
     I am moving a distro form sysvinit to systemd (based on jethro), 
but I can't find informations about udev cache in systemd...
I see that the udev cache in sysvinit is managed by an external script, 
but in systemd?

Any help on how to use a device cache or static node creation will be 
appreciated.

Thank you for your time,
Stefano.

-- 
*Stefano Cordibella*
EDALab s.r.l. - Networked Embedded Systems

Strada Le Grazie, 15 - 37134 Verona - Italy
email : stefano.cordibella@edalab.it
skype : stefano.cordibella
tel. : +39 045 802 70 85
web : www.edalab.it

--------------080902000005020006060000
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi list,<br>
        I am moving a distro form sysvinit to systemd (based on jethro),
    but I can't find informations about udev cache in systemd...<br>
    I see that the udev cache in sysvinit is managed by an external
    script, but in systemd?<br>
    <br>
    Any help on how to use a device cache or static node creation will
    be appreciated.<br>
    <br>
    Thank you for your time,<br>
    Stefano.<br>
    <br>
    <div class="moz-signature">-- <br>
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <title></title>
      <div class="moz-signature"> <b>Stefano Cordibella</b><br>
        EDALab s.r.l. - Networked Embedded Systems<br>
        <br>
        Strada Le Grazie, 15 - 37134 Verona - Italy<br>
        email : <a class="moz-txt-link-abbreviated" href="mailto:stefano.cordibella@edalab.it">stefano.cordibella@edalab.it</a><br>
        skype : stefano.cordibella<br>
        tel. : +39 045 802 70 85<br>
        web : <a class="moz-txt-link-abbreviated" href="http://www.edalab.it">www.edalab.it</a><br>
      </div>
    </div>
  </body>
</html>

--------------080902000005020006060000--
