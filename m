Return-Path: <zubrick@number6.ch>
Received: from caprica.number6.ch (caprica.number6.ch [46.105.121.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F082E01665
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2013 04:06:44 -0700 (PDT)
Received: from localhost ([127.0.0.1] helo=[10.22.2.50])
	by caprica.number6.ch with esmtpa (Exim 4.72)
	(envelope-from <zubrick@number6.ch>) id 1VQbJI-0001tO-Ca
	for yocto@yoctoproject.org; Mon, 30 Sep 2013 13:06:41 +0200
Message-ID: <52495B45.1010902@number6.ch>
Date: Mon, 30 Sep 2013 13:06:45 +0200
From: Zubrick <zubrick@number6.ch>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-SA-Exim-Connect-IP: 127.0.0.1
X-SA-Exim-Mail-From: zubrick@number6.ch
X-SA-Exim-Scanned: No (on caprica.number6.ch); SAEximRunCond expanded to false
Subject: installing external rpm
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
X-List-Received-Date: Mon, 30 Sep 2013 11:06:45 -0000
Content-Type: multipart/alternative;
	boundary="------------000500020304090506080809"

--------------000500020304090506080809
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I'm migrating from yocto 1.2 to yocto 1.4.2 and have some external 
prebuilt rpm to install in the rootfs.
On 1.2 I used to add a bb file with a RPROVIDES containing all the 
packages I want to install,placing them in the deploy rpm directory and 
add them in my IMAGE_INSTALL variable.
But with 1.4.2, it doesn't install them without saying anything.
I tried patching with this: http://patches.openembedded.org/patch/34635/ 
but it didn't change anything. I also tried invoking smart directly in a 
ROOTFS_POSTPROCESS_COMMAND.
In the logs it says it will install the packages that he found correctly 
in the repo, but nothing is really installed, and nothing is in the 
logs, even in verbose mode.

Anyone has an idea on how to proceed?

Thanks

Zubrick

--------------000500020304090506080809
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <font size="-1">Hello,<br>
      <br>
      <font size="-1">I'm migrating from yocto 1.2 to yo<font size="-1">cto
          1.4<font size="-1">.2 and <font size="-1">ha<font size="-1">ve
                some external prebuilt rpm to install in the rootfs.<br>
                <font size="-1">On 1.2 I used to <font size="-1">add a
                    bb file with a RPROV<font size="-1">IDES containing
                      all the packages I <font size="-1">want to
                        install,<font size="-1"> <font size="-1">placing
                            them in the <font size="-1">deploy rpm <font
                                size="-1"><font size="-1">directory</font>
                                and add them <font size="-1">in my <font
                                    size="-1">IMAGE_INSTALL variable</font></font></font></font></font></font></font></font></font></font>.<br>
                <font size="-1">But with 1.4.2<font size="-1">, it
                    doesn't install them without <font size="-1">saying
                      anything. <br>
                      I tried <font size="-1">patching <font size="-1">with
                          this:
                          <a class="moz-txt-link-freetext" href="http://patches.openembedded.org/patch/34635/">http://patches.openembedded.org/patch/34635/</a></font></font></font></font>
                  but <font size="-1">it didn't change anything<font
                      size="-1">. I also tried invokin<font size="-1">g
                        smart <font size="-1">directly in a
                          ROOTFS_POSTPROCESS_COMMAND<font size="-1">.<br>
                            In the logs it says it will install the
                            packages <font size="-1">that he found
                              correctly in the repo, but nothing is
                              really installed<font size="-1"><font
                                  size="-1">, and nothing is in the
                                  logs, even in verbose mode.</font><br>
                              </font><br>
                              <font size="-1">Anyone has an idea on how
                                to <font size="-1">proceed</font>?<br>
                                <br>
                                Thanks<font size="-1"><br>
                                  <br>
                                  <font size="-1">Zubrick</font><br>
                                </font></font></font></font></font></font></font></font></font></font></font></font></font></font></font>
  </body>
</html>

--------------000500020304090506080809--
