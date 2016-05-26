Return-Path: <surya.n@easyarm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D37CE00DBE; Thu, 26 May 2016 06:26:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from linux8.hostguy.com (linux8.hostguy.com [144.76.114.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02F22E00DB7
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 06:26:24 -0700 (PDT)
Received: from [106.51.36.173] (port=36272 helo=[192.168.1.17])
	by linux8.hostguy.com with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.87) (envelope-from <surya.n@easyarm.com>) id 1b5vIo-003lOG-U0
	for yocto@yoctoproject.org; Thu, 26 May 2016 18:56:21 +0530
Message-ID: <5746F979.3070206@easyarm.com>
Date: Thu, 26 May 2016 13:26:17 +0000
From: Surya <surya.n@easyarm.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - linux8.hostguy.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - easyarm.com
X-Get-Message-Sender-Via: linux8.hostguy.com: authenticated_id:
	surya.n@easyarm.com
X-Authenticated-Sender: linux8.hostguy.com: surya.n@easyarm.com
Subject: Ethernet issues in Yocto
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
X-List-Received-Date: Thu, 26 May 2016 13:26:28 -0000
Content-Type: multipart/alternative;
	boundary="------------020609000200090500010606"

--------------020609000200090500010606
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello all,

Recently i have builded yocto rootfs for am335x.  I am getting some 
strange issues with eth0 & eth1 port.

As i am trying to make eth0 port down manually by "ifconfig eth0 down", 
but its not happening as per expected. It suddenly turns up within 2/3 
seconds.

Scenario:
================

root@phycore-ge-am335x: 
<mailto:root@phycore-ge-am335x:>~# ifconfig eth0 down

root@phycore-ge-am335x: <mailto:root@phycore-ge-am335x:>~# [ 
2987.129897] net eth0: initializing cpsw version 1.12 (0)
[ 2987.145498] net eth0: phy found : id is : 0x7c0f1
[ 2987.160812] 8021q: adding VLAN 0 to HW filter on device eth0
[ 2987.167287] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
[ 2989.145225] libphy: 4a101000.mdio:00 - Link is Up - 100/Full
[ 2989.151696] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready

It seems the error is with "systemd-network.service".


Can i get any suggestion regarding this.



Thanks
Surya

--------------020609000200090500010606
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello all,<br>
    <br>
    Recently i have builded yocto rootfs for am335x.&nbsp; I am getting some
    strange issues with eth0 &amp; eth1 port.<br>
    <br>
    As i am trying to make eth0 port down manually by "ifconfig eth0
    down", but its not happening as per expected. It suddenly turns up
    within 2/3 seconds. <br>
    <br>
    <meta http-equiv="content-type" content="text/html;
      charset=ISO-8859-1">
    <span style="color: rgb(51, 51, 51); font-family: monospace;
      font-size: 11.818181991577148px; font-style: normal; font-variant:
      normal; font-weight: normal; letter-spacing: normal; line-height:
      normal; orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; widows: auto; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); white-space: nowrap;">Scenario:</span><br style="color:
      rgb(51, 51, 51); font-family: monospace; font-size:
      11.818181991577148px; font-style: normal; font-variant: normal;
      font-weight: normal; letter-spacing: normal; line-height: normal;
      orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: auto;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">
    <span style="color: rgb(51, 51, 51); font-family: monospace;
      font-size: 11.818181991577148px; font-style: normal; font-variant:
      normal; font-weight: normal; letter-spacing: normal; line-height:
      normal; orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; widows: auto; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); white-space: nowrap;">================</span><br
      style="color: rgb(51, 51, 51); font-family: monospace; font-size:
      11.818181991577148px; font-style: normal; font-variant: normal;
      font-weight: normal; letter-spacing: normal; line-height: normal;
      orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: auto;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">
    <br style="color: rgb(51, 51, 51); font-family: monospace;
      font-size: 11.818181991577148px; font-style: normal; font-variant:
      normal; font-weight: normal; letter-spacing: normal; line-height:
      normal; orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: auto;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">
    <span style="color: rgb(51, 51, 51); font-family: monospace;
      font-size: 11.818181991577148px; font-style: normal; font-variant:
      normal; font-weight: normal; letter-spacing: normal; line-height:
      normal; orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; widows: auto; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); white-space: nowrap;"><a
        href="mailto:root@phycore-ge-am335x:" onclick="return
        rcmail.command('compose','root@phycore-ge-am335x:',this)"
        style="color: rgb(1, 134, 186);">root@phycore-ge-am335x:</a>~#&nbsp;ifconfig&nbsp;eth0&nbsp;down</span><br
      style="color: rgb(51, 51, 51); font-family: monospace; font-size:
      11.818181991577148px; font-style: normal; font-variant: normal;
      font-weight: normal; letter-spacing: normal; line-height: normal;
      orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: auto;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">
    <br style="color: rgb(51, 51, 51); font-family: monospace;
      font-size: 11.818181991577148px; font-style: normal; font-variant:
      normal; font-weight: normal; letter-spacing: normal; line-height:
      normal; orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: auto;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">
    <a href="mailto:root@phycore-ge-am335x:" onclick="return
      rcmail.command('compose','root@phycore-ge-am335x:',this)"
      style="color: rgb(1, 134, 186); font-family: monospace; font-size:
      11.818181991577148px; font-style: normal; font-variant: normal;
      font-weight: normal; letter-spacing: normal; line-height: normal;
      orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: auto;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">root@phycore-ge-am335x:</a><span
      style="color: rgb(51, 51, 51); font-family: monospace; font-size:
      11.818181991577148px; font-style: normal; font-variant: normal;
      font-weight: normal; letter-spacing: normal; line-height: normal;
      orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: auto;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255); display: inline !important;
      float: none;">~# [ 2987.129897] net eth0: initializing cpsw
      version 1.12 (0)</span><br style="color: rgb(51, 51, 51);
      font-family: monospace; font-size: 11.818181991577148px;
      font-style: normal; font-variant: normal; font-weight: normal;
      letter-spacing: normal; line-height: normal; orphans: auto;
      text-align: start; text-indent: 0px; text-transform: none;
      white-space: normal; widows: auto; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">
    <span style="color: rgb(51, 51, 51); font-family: monospace;
      font-size: 11.818181991577148px; font-style: normal; font-variant:
      normal; font-weight: normal; letter-spacing: normal; line-height:
      normal; orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; widows: auto; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); white-space: nowrap;">[&nbsp;2987.145498]&nbsp;net&nbsp;eth0:&nbsp;phy&nbsp;found&nbsp;:&nbsp;id&nbsp;is&nbsp;:&nbsp;0x7c0f1</span><br
      style="color: rgb(51, 51, 51); font-family: monospace; font-size:
      11.818181991577148px; font-style: normal; font-variant: normal;
      font-weight: normal; letter-spacing: normal; line-height: normal;
      orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: auto;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">
    <span style="color: rgb(51, 51, 51); font-family: monospace;
      font-size: 11.818181991577148px; font-style: normal; font-variant:
      normal; font-weight: normal; letter-spacing: normal; line-height:
      normal; orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; widows: auto; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); white-space: nowrap;">[&nbsp;2987.160812]&nbsp;8021q:&nbsp;adding&nbsp;VLAN&nbsp;0&nbsp;to&nbsp;HW&nbsp;filter&nbsp;on&nbsp;device&nbsp;eth0</span><br
      style="color: rgb(51, 51, 51); font-family: monospace; font-size:
      11.818181991577148px; font-style: normal; font-variant: normal;
      font-weight: normal; letter-spacing: normal; line-height: normal;
      orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: auto;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">
    <span style="color: rgb(51, 51, 51); font-family: monospace;
      font-size: 11.818181991577148px; font-style: normal; font-variant:
      normal; font-weight: normal; letter-spacing: normal; line-height:
      normal; orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; widows: auto; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); white-space: nowrap;">[&nbsp;2987.167287]&nbsp;IPv6:&nbsp;ADDRCONF(NETDEV_UP):&nbsp;eth0:&nbsp;link&nbsp;is&nbsp;not&nbsp;ready</span><br
      style="color: rgb(51, 51, 51); font-family: monospace; font-size:
      11.818181991577148px; font-style: normal; font-variant: normal;
      font-weight: normal; letter-spacing: normal; line-height: normal;
      orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: auto;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">
    <span style="color: rgb(51, 51, 51); font-family: monospace;
      font-size: 11.818181991577148px; font-style: normal; font-variant:
      normal; font-weight: normal; letter-spacing: normal; line-height:
      normal; orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; widows: auto; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); white-space: nowrap;">[&nbsp;2989.145225]&nbsp;libphy:&nbsp;4a101000.mdio:00&nbsp;-&nbsp;Link&nbsp;is&nbsp;Up&nbsp;-&nbsp;100/Full</span><br
      style="color: rgb(51, 51, 51); font-family: monospace; font-size:
      11.818181991577148px; font-style: normal; font-variant: normal;
      font-weight: normal; letter-spacing: normal; line-height: normal;
      orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: auto;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">
    <span style="color: rgb(51, 51, 51); font-family: monospace;
      font-size: 11.818181991577148px; font-style: normal; font-variant:
      normal; font-weight: normal; letter-spacing: normal; line-height:
      normal; orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; widows: auto; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); white-space: nowrap;">[&nbsp;2989.151696]&nbsp;IPv6:&nbsp;ADDRCONF(NETDEV_CHANGE):&nbsp;eth0:&nbsp;link&nbsp;becomes&nbsp;ready</span><br>
    <br>
    It seems the error is with "systemd-network.service".<br>
    <br>
    <br>
    Can i get any suggestion regarding this.<br>
    <br>
    <br>
    <br>
    Thanks<br>
    Surya<br>
  </body>
</html>

--------------020609000200090500010606--
