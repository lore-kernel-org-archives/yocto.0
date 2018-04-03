Return-Path: <Dengke.Du@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EC0FE008E4; Mon,  2 Apr 2018 20:06:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9619E00851
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 20:06:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w3336EXP009825
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 2 Apr 2018 20:06:14 -0700 (PDT)
Received: from [128.224.162.189] (128.224.162.189) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Mon, 2 Apr 2018 20:06:12 -0700
To: r10kindsofpeople <r10kindsofpeople@gmail.com>
References: <CAE8H0+VGybDX4udg73E24ie-DxK7_bkVPB3xKWer_gtpr885jQ@mail.gmail.com>
	<CAE8H0+VprE4U2jfnoPJERuuEfDb8rM6oQVnCJdo8QSYt6gCCDw@mail.gmail.com>
	<80041285-9116-fbd2-0e4a-972d31878be4@windriver.com>
	<e2909955-f5ec-7034-7baf-4b459c51cac4@windriver.com>
	<CAE8H0+Xj75i8QCaoHJYXWa3OkY-uor322rjBOcz8zHG5aOQ3sg@mail.gmail.com>
	<CAE8H0+XsRv9=UOEBAqowvoBTVojvcDny9pX+zG8f62B+-RS_4Q@mail.gmail.com>
From: Dengke Du <dengke.du@windriver.com>
Message-ID: <18d4b0cc-8167-e732-e4e6-4a0c97cacf7f@windriver.com>
Date: Tue, 3 Apr 2018 11:04:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAE8H0+XsRv9=UOEBAqowvoBTVojvcDny9pX+zG8f62B+-RS_4Q@mail.gmail.com>
X-Originating-IP: [128.224.162.189]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-raspberrypi systemd rpi0-w bluetooth startup
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
X-List-Received-Date: Tue, 03 Apr 2018 03:06:18 -0000
Content-Type: multipart/alternative;
	boundary="------------0FE8F1204FF683C7334BA010"
Content-Language: en-US

--------------0FE8F1204FF683C7334BA010
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

After some tests, I found the following appearance:

1) When I add "enable_uart=1" to the /boot/config.txt, the 
brcm43438.service(use /dev/ttyAMA0) can start successfully *definitely*.

2) When I remove "enable_uart=1" from the /boot/config.txt, the 
brcm43438.service can't start always.

You can try the 1).


On 2018年03月20日 23:17, r10kindsofpeople wrote:
> FWIW: Dengke's email caused me to wonder why the RDEPENDS in bluez 
> hadn't triggered the inclusion of udev-rules-rpi in the first place.  
> I now suspect that when I tried to switch from 'rocko' to 'master', 
> the steps I took to force a rebuild were insufficient, and bluez5 was 
> not recompiled with the new patches, including the patch to increase 
> the timeout. I'm not able to check it at the moment, but will try to 
> retrace my steps when I get a chance.
>
> John
>
> On Tue, Mar 20, 2018 at 10:13 AM r10kindsofpeople 
> <r10kindsofpeople@gmail.com <mailto:r10kindsofpeople@gmail.com>> wrote:
>
>     Thanks Dengke, I thought I tried using the line
>     "After=dev-ttyAMA0.device" and referring to /dev/ttyAMA0 in the
>     hciattach command and the brcm43438.service was still being
>     triggered before the /dev/ttyAMA0 device was actually available on
>     some boots, but I may have had something else wrong at that point,
>     or I may be recalling incorrectly.  If it works for you, great.
>
>     It doesn't make sense to me that we'd need the udev-rules-rpi for
>     bluez, but then refer to /dev/ttyAMA0 in the service.  I thought
>     the point of the 99-com.rules file created by udev-rules-rpi was
>     to create a symbolic link equating /dev/ttyAMA0 and /dev/serial1
>     on the rpi0w.
>
>     It's my impression that the move to use /dev/serial1 (as an alias
>     for /dev/ttyAMA0) is an attempt to make software written for the
>     Raspberry Pi more portable across all variants of the Pi, since
>     some variants swap the role of /dev/ttyS0 and /dev/ttyAMA0 for the
>     console or swap which one is available on the GPIO expansion.  Or
>     perhaps the goal was portablilty from Raspbian to Yocto and back.
>     The steps I outlined retain that, and still seem to work
>     reliably.  I'm not entirely comfortable with relying on the udev
>     script to trigger the service that runs hciattach, (and all of
>     bluez dependent on that), but acknowledge that I don't know enough
>     about systemd and udev to know "proper" from "improper".
>
>     John
>
>     On Mon, Mar 19, 2018 at 11:01 PM Dengke Du
>     <dengke.du@windriver.com <mailto:dengke.du@windriver.com>> wrote:
>
>         Raspberry pi have two built-in UARTs, PL011 and mini UART
>
>         by default: /dev/ttyS0 refers to the mini UART, /dev/ttyAMA0
>         refers to the PL011
>
>         https://www.raspberrypi.org/documentation/configuration/uart.md
>
>         So I think the brcm43438 service should use the /dev/ttyAMA0.
>
>
>         On 2018年03月20日 10:41, Dengke Du wrote:
>>
>>         For rpi0-w bluetooth, before the commit:
>>
>>         https://github.com/agherzan/meta-raspberrypi/commit/6235b0a8543bcf6704d0fe0156ab2b847a4ea0bc#diff-70e4910388c3702c52118d7acf7556e7
>>
>>         the brcm43438.service always failed, because it depends on
>>         /dev/ttyAMA0,after that commit, the 'udev-rules-rpi' added to
>>         the RDEPENDS for rpi0-w,we
>>
>>         can check it here:
>>
>>         https://github.com/agherzan/meta-raspberrypi/commit/6235b0a8543bcf6704d0fe0156ab2b847a4ea0bc#diff-3b2568c620828b0ba653c1070041318aR52
>>
>>         for service brcm43438, but I still use the /dev/ttyAMA0 in
>>         it, not /dev/serial1(when I use /dev/serial1, the service
>>         failed), the service can start everytime correctly.
>>
>>
>>         On 2018年03月19日 02:10, r10kindsofpeople wrote:
>>>         Update:  I suspect this is not the proper way to do this,
>>>         but in case it provides useful information toward a better
>>>         solution...
>>>         1) systemctl disable brcm43438.service
>>>         2) modified 99-com.rules to include TAG+="systemd" and
>>>         ENV{SYSTEMD_WANTS}="device-brcm43438.service"
>>>         3) cp /lib/systemd/system/brcm43438.service
>>>         /etc/systemd/system/device-brcm43438.service
>>>         4) modified device-brcm43438.service to be as follows:
>>>         [Unit]
>>>         Description=Broadcom BCM43438 bluetooth HCI
>>>
>>>         [Service]
>>>         Type=simple
>>>         ExecStart=/usr/bin/hciattach -n /dev/serial1 bcm43xx 921600
>>>         noflow -
>>>         Restart=on-failure
>>>
>>>         note removal of Before, After, ConditionPath, Install
>>>         sections and addition of Restart=on-failure.  This last was
>>>         to cope with an intermittent timeout in hciattach.  Suppose
>>>         I should have tried increasing the timeout first.
>>>
>>>         This seems to have gotten me to the point of it starting up
>>>         at least 10 times successfully. Bottom line, in my opinion,
>>>         is that brcm43438.service is somehow running  before the
>>>         udev script can create the symbolic link for /dev/serial1 ->
>>>         /dev/ttyAMA0 despite the "After=dev-serial1.device" clause.
>>>
>>>         John
>>>
>>>
>>>         On Sat, Mar 17, 2018 at 12:32 PM r10kindsofpeople
>>>         <r10kindsofpeople@gmail.com
>>>         <mailto:r10kindsofpeople@gmail.com>> wrote:
>>>
>>>             Background:  I'm trying to bring up the pi zero w's
>>>             bluetooth using systemd. Started with rocko and then
>>>             moved to 'master' of meta-raspberry pi, sync'd about a
>>>             week ago after noticing that there were some recent
>>>             updates in this area.
>>>
>>>             There was an initial problem with /dev/serial1 not
>>>             showing up...I found udev-rules-rpi.bb
>>>             <http://udev-rules-rpi.bb>, added it to my layer, and
>>>             when it still didn't show up in my rootfs, I punted and
>>>             installed it in /etc/udev/rules.d by hand and now
>>>             /dev/serial1 shows up.  Given time, I can probably fix
>>>             the recipe on my own, so moving on.
>>>
>>>             But brcm43438.service still fails on boot.  Despite
>>>             having "After=dev-serial1.device" in the service Unit
>>>             section, it fails with:
>>>
>>>             Mar 17 16:21:13 raspberrypi0-wifi systemd[1]: Started
>>>             Broadcom BCM43438 bluetooth HCI.
>>>             Mar 17 16:21:14 raspberrypi0-wifi hciattach[105]: Can't
>>>             open serial port: No such file or directory
>>>             Mar 17 16:21:14 raspberrypi0-wifi hciattach[105]: Can't
>>>             initialize device: No such file or directory
>>>             Mar 17 16:21:14 raspberrypi0-wifi systemd[1]:
>>>             [[0;1;39mbrcm43438.service: Main process exited,
>>>             code=exited, status=1/FAILURE[[0m
>>>             Mar 17 16:21:14 raspberrypi0-wifi systemd[1]:
>>>             [[0;1;39mbrcm43438.service: Unit entered failed state.[[0m
>>>             Mar 17 16:21:14 raspberrypi0-wifi systemd[1]:
>>>             [[0;1;39mbrcm43438.service: Failed with result
>>>             'exit-code'.[[0m
>>>
>>>             If, after booting and ssh'ing into pi, I restart the
>>>             service, it starts successfully.
>>>
>>>             Any hints about what I might change to get the
>>>             brcm43438.service to start correctly the first time
>>>             (every time)?
>>>
>>>             John
>>>
>>>
>>>
>>
>>
>>
>


--------------0FE8F1204FF683C7334BA010
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>After some tests, I found the following appearance:</p>
    <p>1) When I add "enable_uart=1" to the /boot/config.txt, the
      brcm43438.service(use /dev/ttyAMA0) can start successfully
      *definitely*.</p>
    <p>2) When I remove "enable_uart=1" from the /boot/config.txt, the
      brcm43438.service can't start always.</p>
    <p>You can try the 1).<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 2018年03月20日 23:17, r10kindsofpeople
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAE8H0+XsRv9=UOEBAqowvoBTVojvcDny9pX+zG8f62B+-RS_4Q@mail.gmail.com">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <div dir="ltr">
        <div>FWIW: Dengke's email caused me to wonder why the <span
            style="color:rgb(33,33,33)">RDEPENDS in bluez hadn't
            triggered the inclusion of </span><span
            style="color:rgb(33,33,33)">udev-rules-rpi in the first
            place.  I now suspect that when I tried to switch from
            'rocko' to 'master', the steps I took to force a rebuild
            were insufficient, and bluez5 was not recompiled with the
            new patches, including the patch to increase the timeout. 
            I'm not able to check it at the moment, but will try to
            retrace my steps when I get a chance. </span></div>
        <div><span style="color:rgb(33,33,33)"><br>
          </span></div>
        <div><span style="color:rgb(33,33,33)">John</span></div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr">On Tue, Mar 20, 2018 at 10:13 AM r10kindsofpeople
          &lt;<a href="mailto:r10kindsofpeople@gmail.com"
            moz-do-not-send="true">r10kindsofpeople@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          <div dir="ltr">
            <div>Thanks Dengke, I thought I tried using the line
              "After=dev-ttyAMA0.device" and referring to /dev/ttyAMA0
              in the hciattach command and the brcm43438.service was
              still being triggered before the /dev/ttyAMA0 device was
              actually available on some boots, but I may have had
              something else wrong at that point, or I may be recalling
              incorrectly.  If it works for you, great.  </div>
            <div><br>
            </div>
            <div>It doesn't make sense to me that we'd need the
              udev-rules-rpi for bluez, but then refer to /dev/ttyAMA0
              in the service.  I thought the point of the 99-com.rules
              file created by udev-rules-rpi was to create a symbolic
              link equating /dev/ttyAMA0 and /dev/serial1 on the
              rpi0w.  </div>
            <div><br>
            </div>
            <div>It's my impression that the move to use /dev/serial1
              (as an alias for /dev/ttyAMA0) is an attempt to make
              software written for the Raspberry Pi more portable across
              all variants of the Pi, since some variants swap the role
              of /dev/ttyS0 and /dev/ttyAMA0 for the console or swap
              which one is available on the GPIO expansion.  Or perhaps
              the goal was portablilty from Raspbian to Yocto and back. 
              The steps I outlined retain that, and still seem to work
              reliably.  I'm not entirely comfortable with relying on
              the udev script to trigger the service that runs
              hciattach, (and all of bluez dependent on that), but
              acknowledge that I don't know enough about systemd and
              udev to know "proper" from "improper".  </div>
            <div><br>
            </div>
            <div>John</div>
          </div>
          <br>
          <div class="gmail_quote">
            <div dir="ltr">On Mon, Mar 19, 2018 at 11:01 PM Dengke Du
              &lt;<a href="mailto:dengke.du@windriver.com"
                target="_blank" moz-do-not-send="true">dengke.du@windriver.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div text="#000000" bgcolor="#FFFFFF">
                <p>Raspberry pi have two built-in UARTs, PL011 and mini
                  UART</p>
                <p>by default: /dev/ttyS0 refers to the mini UART,
                  /dev/ttyAMA0 refers to the PL011<br>
                </p>
                <p>    <a
                    class="m_328314578231052191m_-1045807447368709098moz-txt-link-freetext"
href="https://www.raspberrypi.org/documentation/configuration/uart.md"
                    target="_blank" moz-do-not-send="true">https://www.raspberrypi.org/documentation/configuration/uart.md</a></p>
                <p>So I think the brcm43438 service should use the
                  /dev/ttyAMA0.<br>
                </p>
              </div>
              <div text="#000000" bgcolor="#FFFFFF"> <br>
                <div
                  class="m_328314578231052191m_-1045807447368709098moz-cite-prefix">On
                  2018年03月20日 10:41, Dengke Du wrote:<br>
                </div>
                <blockquote type="cite">
                  <p>For rpi0-w bluetooth, before the commit:</p>
                  <p>    <a
                      class="m_328314578231052191m_-1045807447368709098moz-txt-link-freetext"
href="https://github.com/agherzan/meta-raspberrypi/commit/6235b0a8543bcf6704d0fe0156ab2b847a4ea0bc#diff-70e4910388c3702c52118d7acf7556e7"
                      target="_blank" moz-do-not-send="true">https://github.com/agherzan/meta-raspberrypi/commit/6235b0a8543bcf6704d0fe0156ab2b847a4ea0bc#diff-70e4910388c3702c52118d7acf7556e7</a></p>
                  <p>the brcm43438.service always failed, because it
                    depends on /dev/ttyAMA0,after that commit, the
                    'udev-rules-rpi' added to the RDEPENDS for rpi0-w,we</p>
                  <p>can check it here:</p>
                  <p>    <a
                      class="m_328314578231052191m_-1045807447368709098moz-txt-link-freetext"
href="https://github.com/agherzan/meta-raspberrypi/commit/6235b0a8543bcf6704d0fe0156ab2b847a4ea0bc#diff-3b2568c620828b0ba653c1070041318aR52"
                      target="_blank" moz-do-not-send="true">https://github.com/agherzan/meta-raspberrypi/commit/6235b0a8543bcf6704d0fe0156ab2b847a4ea0bc#diff-3b2568c620828b0ba653c1070041318aR52</a></p>
                  <p>for service brcm43438, but I still use the
                    /dev/ttyAMA0 in it, not /dev/serial1(when I use
                    /dev/serial1, the service failed), the service can
                    start everytime correctly. <br>
                  </p>
                  <br>
                  <div
                    class="m_328314578231052191m_-1045807447368709098moz-cite-prefix">On
                    2018年03月19日 02:10, r10kindsofpeople wrote:<br>
                  </div>
                  <blockquote type="cite">
                    <div dir="ltr">Update:  I suspect this is not the
                      proper way to do this, but in case it provides
                      useful information toward a better solution...
                      <div>1) systemctl disable brcm43438.service</div>
                      <div>2) modified 99-com.rules to include
                        TAG+="systemd" and
                        ENV{SYSTEMD_WANTS}="device-brcm43438.service"</div>
                      <div>3) cp /lib/systemd/system/brcm43438.service
                        /etc/systemd/system/device-brcm43438.service</div>
                      <div>4) modified device-brcm43438.service to be as
                        follows:</div>
                      <div>
                        <div><span style="font-size:13px">[Unit]</span></div>
                        <div><span style="font-size:13px">Description=Broadcom
                            BCM43438 bluetooth HCI</span></div>
                        <div><span style="font-size:13px"><br>
                          </span></div>
                        <div><span style="font-size:13px">[Service]</span></div>
                        <div><span style="font-size:13px">Type=simple</span></div>
                        <div><span style="font-size:13px">ExecStart=/usr/bin/hciattach
                            -n /dev/serial1 bcm43xx 921600 noflow -</span></div>
                        <div><span style="font-size:13px">Restart=on-failure</span></div>
                      </div>
                      <div><br>
                      </div>
                      <div>note removal of Before, After, ConditionPath,
                        Install sections and addition of
                        Restart=on-failure.  This last was to cope with
                        an intermittent timeout in hciattach.  Suppose I
                        should have tried increasing the timeout
                        first.  </div>
                      <div><br>
                      </div>
                      <div>This seems to have gotten me to the point of
                        it starting up at least 10 times successfully. 
                        Bottom line, in my opinion, is that
                        brcm43438.service is somehow running  before the
                        udev script can create the symbolic link for
                        /dev/serial1 -&gt; /dev/ttyAMA0 despite the 
                        "After=dev-serial1.device" clause.  </div>
                      <div><br>
                      </div>
                      <div>John</div>
                      <div>
                        <div><br>
                        </div>
                      </div>
                    </div>
                    <br>
                    <div class="gmail_quote">
                      <div dir="ltr">On Sat, Mar 17, 2018 at 12:32 PM
                        r10kindsofpeople &lt;<a
                          href="mailto:r10kindsofpeople@gmail.com"
                          target="_blank" moz-do-not-send="true">r10kindsofpeople@gmail.com</a>&gt;
                        wrote:<br>
                      </div>
                      <blockquote class="gmail_quote" style="margin:0 0
                        0 .8ex;border-left:1px #ccc
                        solid;padding-left:1ex">
                        <div dir="ltr">
                          <div>Background:  I'm trying to bring up the
                            pi zero w's bluetooth using systemd. 
                            Started with rocko and then moved to
                            'master' of meta-raspberry pi, sync'd about
                            a week ago after noticing that there were
                            some recent updates in this area.  </div>
                          <div><br>
                          </div>
                          <div>There was an initial problem with
                            /dev/serial1 not showing up...I found <a
                              href="http://udev-rules-rpi.bb"
                              target="_blank" moz-do-not-send="true">udev-rules-rpi.bb</a>,
                            added it to my layer, and when it still
                            didn't show up in my rootfs, I punted and
                            installed it in /etc/udev/rules.d by hand
                            and now /dev/serial1 shows up.  Given time,
                            I can probably fix the recipe on my own, so
                            moving on.</div>
                          <div><br>
                          </div>
                          <div>But brcm43438.service still fails on
                            boot.  Despite having
                            "After=dev-serial1.device" in the service
                            Unit section, it fails with:</div>
                          <div><br>
                          </div>
                          <div>Mar 17 16:21:13 raspberrypi0-wifi
                            systemd[1]: Started Broadcom BCM43438
                            bluetooth HCI.</div>
                          <div>Mar 17 16:21:14 raspberrypi0-wifi
                            hciattach[105]: Can't open serial port: No
                            such file or directory</div>
                          <div>Mar 17 16:21:14 raspberrypi0-wifi
                            hciattach[105]: Can't initialize device: No
                            such file or directory</div>
                          <div>Mar 17 16:21:14 raspberrypi0-wifi
                            systemd[1]: [[0;1;39mbrcm43438.service: Main
                            process exited, code=exited,
                            status=1/FAILURE[[0m</div>
                          <div>Mar 17 16:21:14 raspberrypi0-wifi
                            systemd[1]: [[0;1;39mbrcm43438.service: Unit
                            entered failed state.[[0m</div>
                          <div>Mar 17 16:21:14 raspberrypi0-wifi
                            systemd[1]: [[0;1;39mbrcm43438.service:
                            Failed with result 'exit-code'.[[0m</div>
                          <div><br>
                          </div>
                          <div>If, after booting and ssh'ing into pi, I
                            restart the service, it starts
                            successfully.  </div>
                          <div><br>
                          </div>
                          <div>Any hints about what I might change to
                            get the brcm43438.service to start correctly
                            the first time (every time)?</div>
                          <div><br>
                          </div>
                          <div>John</div>
                        </div>
                      </blockquote>
                    </div>
                    <br>
                    <fieldset
                      class="m_328314578231052191m_-1045807447368709098mimeAttachmentHeader"></fieldset>
                    <br>
                  </blockquote>
                  <br>
                  <br>
                  <fieldset
                    class="m_328314578231052191m_-1045807447368709098mimeAttachmentHeader"></fieldset>
                  <br>
                </blockquote>
                <br>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------0FE8F1204FF683C7334BA010--
