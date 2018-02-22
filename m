Return-Path: <drew.moseley@northern.tech>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53402E00E83; Thu, 22 Feb 2018 12:34:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f54.google.com (mail-pg0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53C54E00B1A
	for <yocto@yoctoproject.org>; Thu, 22 Feb 2018 12:34:04 -0800 (PST)
Received: by mail-pg0-f54.google.com with SMTP id f6so2449771pgs.10
	for <yocto@yoctoproject.org>; Thu, 22 Feb 2018 12:34:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=northern.tech; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=6pY6qojsU/B+BtplD4n5kJuemknRF+I6xUc+HaFSHmk=;
	b=Caj0aZlWEQDHzvptgcsvkC+cLEWyUGW0gvr5ilJzF+dUd62PBLjJZRHOhorDEb+17c
	xjNwTa3QRv5g1ctnwdSOiClmI9ha4GdRixUa/RgRNUU9lWbTVgtIhw6HjziskZwSAV/R
	Xc1GAxymSa+sLDBmlY0cKmmEJkrfitDZUK7jBJohNi+6mQBIOrIz73s9ZSKGyYqLsJ2o
	2kiM6drv06OPGtbfV6Ho6OZ88F8Nm8iaeUfXnEmMeEW45nCwG3jvZm8/M28W1lQemtUV
	xUFrPyQ248oPy0zB7icdz93N8+HWzgygnQMZD2BF60cBEAGNiFFFD7IoSrdAyyzpPPVq
	qCOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=6pY6qojsU/B+BtplD4n5kJuemknRF+I6xUc+HaFSHmk=;
	b=gd+LJSKnMdZxJQcQO/C16Nklwd2PhqaS7PDOcczEZiKueN1wZwGB+Fu2mMM8Yq6o77
	FewGRWg4m11iZrhkXie9K+kLgNK+rGdUhknVOswL7RvAlovlDlzT8HZQvN5ejD0LwxK+
	25tOO+8cKn7XE8OozfYeGa3/zN5EDcV8n40UP3wwBIrDRC+fvw837SspIho0LpWgCkbM
	TdjgNAk+XrHhAtuUGApOsv9vInvTVk+NL98uftDATvw8b5/Fl2KWp6siA+DMt3qH8Svm
	22PHbXH3iG6S+wvWLoVGUKZseiFWoC3gsXEmfjFBmefvH/T5Cp5ZR9Vh49zJQ3nr43+2
	a4zw==
X-Gm-Message-State: APf1xPCECNmYh3PH+DykGCbF/Ci3iPaHEJga0BGtprVR4dBPnB7wiAAE
	Hz7jTEtUxOAnnDZNYfZ3aOAH3RGu1Ns=
X-Google-Smtp-Source: AH8x227LxIdRyq9Fk7T4sstAXtHglThB9GYqpo8hTlTU7ARgw5gH1uIamML0l6Zk7sy1vvpH/Uhafg==
X-Received: by 10.98.152.205 with SMTP id d74mr8132042pfk.115.1519331643986;
	Thu, 22 Feb 2018 12:34:03 -0800 (PST)
Received: from [192.168.1.37] ([173.168.237.167])
	by smtp.gmail.com with ESMTPSA id
	e22sm1056029pgn.50.2018.02.22.12.34.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 Feb 2018 12:34:03 -0800 (PST)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <66f47867-75c2-0f93-589c-f1e32e512611@northern.tech>
	<CAK18fxHP8sN8d_ogtfOedNTaO1LB7Fcjxekj-wx6-GhYQ0NSHQ@mail.gmail.com>
From: Drew Moseley <drew.moseley@northern.tech>
Message-ID: <82c9a9a7-8139-703c-7818-a4f5ede4cf71@northern.tech>
Date: Thu, 22 Feb 2018 15:34:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAK18fxHP8sN8d_ogtfOedNTaO1LB7Fcjxekj-wx6-GhYQ0NSHQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-chip] Wifi driver on CHIP boards?
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
X-List-Received-Date: Thu, 22 Feb 2018 20:34:06 -0000
Content-Type: multipart/alternative;
	boundary="------------53F3634DB004104A9FD34231"
Content-Language: en-US

--------------53F3634DB004104A9FD34231
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 09/04/2017 06:17 AM, Andrei Gherzan wrote:
> On Wed, Aug 30, 2017 at 11:44 PM, Drew Moseley
> <drew.moseley@northern.tech <mailto:drew.moseley@northern.tech>> wrote:
>
>     Has anyone managed to use the onboard WIFI for the CHIP boards in the
>     current meta-chip repo?  I added the kernel-module-r8723bs and
>     rtl8723bs
>     packages to my build and setup a wpa_supplicant.conf that works on
>     other
>     boards but I get error messages about power save. A few google
>     searches
>     suggested some power save changes but nothing I tried worked.
>
>     root@chip:~# ifup wlan0
>     Successfully initialized wpa_supplicant
>     [  172.875000] rtl8723bs: accquire FW from
>     file:rtlwifi/rtl8723bs_nic.bin
>     [  174.225000] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
>     [  174.235000] RTL8723BS: set bssid:00:00:00:00:00:00
>     ioctl[SIOCSIWAP]: Operation not permitted
>     udhcpc (v1.24.1) started
>     Sending discover...
>     [  175.855000] RTL8723BS: nolinked power save enter
>     Sending discover...
>     Sending discover...
>     No lease, forking to background
>     root@chip:~# [  184.580000] RTL8723BS: nolinked power save leave
>     [  184.800000] RTL8723BS: set bssid:20:c9:d0:18:7a:95
>     [  184.810000] RTL8723BS: set ssid [caribbean] fw_state = 0x00000088
>     [  194.605000] RTL8723BS: nolinked power save enter
>     [  195.850000] RTL8723BS: nolinked power save leave
>     [  196.060000] RTL8723BS: set bssid:00:00:00:00:00:00
>
>
> We use the same packages in resinos to add wifi support and everything
> seems sane. However we only tested with NM not directly with wpa.  
>
> ref: https://github.com/resin-os/resin-chip/pull/23
>
> Andrei

Andrei,

Are you certain this is working in resinos currently?  I modified my
config to use NetworkManager and it has similar behavior.  The "nolinked
power save" messages are evidently debug so I ignore them but I do get
the following:

[  246.050000] RTL8723BS: rtw_set_802_11_connect(wlan0)  fw_state =
0x00000008
[  246.145000] RTL8723BS: start auth
[  246.150000] RTL8723BS: auth success, start assoc
[  249.225000] RTL8723BS: rtw_set_802_11_connect(wlan0)  fw_state =
0x00000008
[  249.420000] RTL8723BS: start auth
[  249.430000] RTL8723BS: auth success, start assoc
[  252.885000] RTL8723BS: rtw_set_802_11_connect(wlan0)  fw_state =
0x00000008
[  253.105000] RTL8723BS: start auth
[  253.115000] RTL8723BS: auth success, start assoc
[  257.075000] RTL8723BS: rtw_set_802_11_connect(wlan0)  fw_state =
0x00000008
[  257.305000] RTL8723BS: start auth
[  257.315000] RTL8723BS: auth success, start assoc
[  268.225000] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready

and then no connection.  I even disabled encryption temporarily on my
wifi and was unable to connect.

I tried to build a resinos image for CHIP to try it but was
unsuccessful.  Do you have any binaries I can try?

Also, I installed the stock debian from flash.getchip.com and it was
able to connect so my hardware seems solid.

Drew


--------------53F3634DB004104A9FD34231
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 09/04/2017 06:17 AM, Andrei Gherzan wrote:<br>
    <blockquote type="cite"
cite="mid:CAK18fxHP8sN8d_ogtfOedNTaO1LB7Fcjxekj-wx6-GhYQ0NSHQ@mail.gmail.com">
      <div dir="ltr">
        <div class="gmail_extra">
          <div class="gmail_quote">On Wed, Aug 30, 2017 at 11:44 PM,
            Drew Moseley <span dir="ltr">&lt;<a
                href="mailto:drew.moseley@northern.tech" target="_blank"
                moz-do-not-send="true">drew.moseley@northern.tech</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">Has anyone managed to
              use the onboard WIFI for the CHIP boards in the<br>
              current meta-chip repo?  I added the kernel-module-r8723bs
              and rtl8723bs<br>
              packages to my build and setup a wpa_supplicant.conf that
              works on other<br>
              boards but I get error messages about power save. A few
              google searches<br>
              suggested some power save changes but nothing I tried
              worked.<br>
              <br>
              root@chip:~# ifup wlan0<br>
              Successfully initialized wpa_supplicant<br>
              [  172.875000] rtl8723bs: accquire FW from
              <a class="moz-txt-link-freetext" href="file:rtlwifi/rtl8723bs_nic.bin">file:rtlwifi/rtl8723bs_nic.bin</a><br>
              [  174.225000] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is
              not ready<br>
              [  174.235000] RTL8723BS: set bssid:00:00:00:00:00:00<br>
              ioctl[SIOCSIWAP]: Operation not permitted<br>
              udhcpc (v1.24.1) started<br>
              Sending discover...<br>
              [  175.855000] RTL8723BS: nolinked power save enter<br>
              Sending discover...<br>
              Sending discover...<br>
              No lease, forking to background<br>
              root@chip:~# [  184.580000] RTL8723BS: nolinked power save
              leave<br>
              [  184.800000] RTL8723BS: set bssid:20:c9:d0:18:7a:95<br>
              [  184.810000] RTL8723BS: set ssid [caribbean] fw_state =
              0x00000088<br>
              [  194.605000] RTL8723BS: nolinked power save enter<br>
              [  195.850000] RTL8723BS: nolinked power save leave<br>
              [  196.060000] RTL8723BS: set bssid:00:00:00:00:00:00<br>
              <span class="gmail-HOEnZb"><font color="#888888"><br>
                </font></span></blockquote>
            <div><br>
            </div>
            <div>We use the same packages in resinos to add wifi support
              and everything seems sane. However we only tested with NM
              not directly with wpa.  </div>
            <div><br>
            </div>
            <div>ref: <a
                href="https://github.com/resin-os/resin-chip/pull/23"
                moz-do-not-send="true">https://github.com/resin-os/resin-chip/pull/23</a></div>
            <div><br>
            </div>
            <div>Andrei</div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Andrei,<br>
    <br>
    Are you certain this is working in resinos currently?  I modified my
    config to use NetworkManager and it has similar behavior.  The
    "nolinked power save" messages are evidently debug so I ignore them
    but I do get the following:<br>
    <br>
    [  246.050000] RTL8723BS: rtw_set_802_11_connect(wlan0)  fw_state =
    0x00000008<br>
    [  246.145000] RTL8723BS: start auth<br>
    [  246.150000] RTL8723BS: auth success, start assoc<br>
    [  249.225000] RTL8723BS: rtw_set_802_11_connect(wlan0)  fw_state =
    0x00000008<br>
    [  249.420000] RTL8723BS: start auth<br>
    [  249.430000] RTL8723BS: auth success, start assoc<br>
    [  252.885000] RTL8723BS: rtw_set_802_11_connect(wlan0)  fw_state =
    0x00000008<br>
    [  253.105000] RTL8723BS: start auth<br>
    [  253.115000] RTL8723BS: auth success, start assoc<br>
    [  257.075000] RTL8723BS: rtw_set_802_11_connect(wlan0)  fw_state =
    0x00000008<br>
    [  257.305000] RTL8723BS: start auth<br>
    [  257.315000] RTL8723BS: auth success, start assoc<br>
    [  268.225000] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready<br>
    <br>
    and then no connection.  I even disabled encryption temporarily on
    my wifi and was unable to connect.<br>
    <br>
    I tried to build a resinos image for CHIP to try it but was
    unsuccessful.  Do you have any binaries I can try?<br>
    <br>
    Also, I installed the stock debian from flash.getchip.com and it was
    able to connect so my hardware seems solid.<br>
    <br>
    Drew<br>
    <br>
  </body>
</html>

--------------53F3634DB004104A9FD34231--
