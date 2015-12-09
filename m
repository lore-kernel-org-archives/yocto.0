Return-Path: <ed@disignconsultants.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B92E4E00B37; Wed,  9 Dec 2015 01:12:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_40,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.198.55.118 listed in list.dnswl.org]
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.2249]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 401 seconds by postgrey-1.32 at yocto-www;
	Wed, 09 Dec 2015 01:12:30 PST
Received: from mail08c.verio.de (mail08c.verio.de [213.198.55.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 239DBE00B01
	for <yocto@yoctoproject.org>; Wed,  9 Dec 2015 01:12:30 -0800 (PST)
Received: from mxmtaout07.va1.mxservers.net (208.55.215.114)
	by mail08c.verio.de (RS ver 1.0.95vs) with SMTP id 4-089281759
	for <yocto@yoctoproject.org>; Wed,  9 Dec 2015 10:02:43 +0100 (CET)
Received: from unknown [213.198.107.12] (EHLO mmm820.verio.de)
	by mxmtaout07.va1.mxservers.net(mxl_mta-6.15.0-3) with ESMTP id
	5eee7665.0.3473728.00-472.5055101.mxmtaout07.va1.mxservers.net
	(envelope-from <ed@disignconsultants.com>); 
	Wed, 09 Dec 2015 04:05:45 -0500 (EST)
X-MXL-Hash: 5667eee918d5f861-23ca536b200756037ae741be6ba4dd1ac8a1881a
Received: (qmail 66444 invoked from network); 9 Dec 2015 09:05:40 -0000
Received: from unknown (HELO ?192.168.1.111?) (edty@81.157.241.250)
	by  with ESMTPA; 9 Dec 2015 09:05:40 -0000
To: yocto@yoctoproject.org
From: ed <ed@disignconsultants.com>
Message-ID: <5667EEE6.1080106@disignconsultants.com>
Date: Wed, 9 Dec 2015 09:05:42 +0000
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
X-Spam: [F=0.2561409802; CM=0.500; MH=0.579(2015120902); S=0.200(2015072901)]
X-MAIL-FROM: <ed@disignconsultants.com>
X-SOURCE-IP: [213.198.107.12]
X-AnalysisOut: [v=2.0 cv=aIJHX8Bm c=1 sm=1 a=M6pr4jZXt1XklwqMdz9bsg==:17 a]
X-AnalysisOut: [=6Zr2yk_ZAAAA:8 a=wUQvQvOEmiQA:10 a=O3uQTmpq0TIexSd6phoA:9]
X-AnalysisOut: [ a=QEXdDO2ut3YA:10 a=cDd-3GKUq0gA:10 a=WPd0RAQTsZKHIi7X:21]
X-AnalysisOut: [ a=4MeJbo6P6OUbL-6i:21 a=0jMoPiqX_zs4CSppuC8A:9 a=_W_S_7Ve]
X-AnalysisOut: [coQA:10]
X-SF-Loop: 1
Subject: DHCP kernel 2.6.35
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
X-List-Received-Date: Wed, 09 Dec 2015 09:12:34 -0000
Content-Type: multipart/alternative;
	boundary="------------070505000002010303070602"

--------------070505000002010303070602
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Regards the Yocto 2.6.35 kernel I have two questions; this is for an imx28;

1) What if anything is responsible for getting a new DHCP lease (and IP 
address) after it expires or misses the initial lease? If the Ethernet 
cable is plugged in post booting up, the device never gets an address. I 
have to manually use udhcpc. How does embedded Linux cater for this?

2) Based on the imx28_evk which has eth0, eth1 and Wan0, our board only 
uses eth0. Which file do I need to edit to remove eth1 and wan0?

Thanks,

Edward.

-- 
Disign Consultants
*t*: +44 (0) 207 544 8486
*w*: www.disignconsultants.com

This message and any attachment are confidential and may be privileged 
or otherwise protected from disclosure. If you are not the intended 
recipient, please telephone or email the sender and delete this message 
and any attachment from your system. If you are not the intended 
recipient you must not copy this message or attachment or disclose the 
contents to any other person.

--------------070505000002010303070602
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi,<br>
    <br>
    Regards the Yocto 2.6.35 kernel I have two questions; this is for an
    imx28;<br>
    <br>
    1) What if anything is responsible for getting a new DHCP lease (and
    IP address) after it expires or misses the initial lease? If the
    Ethernet cable is plugged in post booting up, the device never gets
    an address. I have to manually use udhcpc. How does embedded Linux
    cater for this?<br>
     <br>
    2) Based on the imx28_evk which has eth0, eth1 and Wan0, our board
    only uses eth0. Which file do I need to edit to remove eth1 and
    wan0?<br>
    <br>
    Thanks,<br>
    <br>
    Edward.<br>
     <br>
    <div class="moz-signature">-- <br>
      <font color="red">Disign Consultants</font><br>
      <b>t</b>: +44 (0) 207 544 8486<br>
      <b>w</b>: <a class="moz-txt-link-abbreviated" href="http://www.disignconsultants.com">www.disignconsultants.com</a><br>
      <br>
      This message and any attachment are confidential and may be
      privileged or otherwise protected from disclosure. If you are not
      the intended recipient, please telephone or email the sender and
      delete this message and any attachment from your system. If you
      are not the intended recipient you must not copy this message or
      attachment or disclose the contents to any other person.
    </div>
  </body>
</html>

--------------070505000002010303070602--
