Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8CB8E00CC9; Mon,  4 Sep 2017 03:18:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83F33E00C01
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 03:18:40 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id 187so537166wmn.1
	for <yocto@yoctoproject.org>; Mon, 04 Sep 2017 03:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ma0U3vcRWp1k/ywq9lgOHJnfzVMZKbNPlnngyQOGqKQ=;
	b=xlggiVhNfNNPNvlHgDWbYQn59Qu0vymQdAfRpbzFLcv/8GgfXkFSeRjKe/eceXvrmm
	Hl9oqHAUedz/4VvxoZrL7PyHDMlbeqgm9IW2Z9UhmuVepdhZNu3k+9gnVHU6Dje5N0vz
	NC6UKIbib4xe+jUHZD190ldHtaqXzM4/sn4f0aMRTCntR5sQBoFw9QtP277E0OD4h87R
	EFiWo+pHRJXvTcqf+WjSIMxSW/76ankNto1SpHRJnyodjPKyGUQmNwIOyyOMqFmXU+Gw
	MxaSSoddtJ9TFOCeeOrN87aemw/+6poj4HUleb4yHHbgYpLfqKSONrkotrcj4z8L1t/w
	1aPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ma0U3vcRWp1k/ywq9lgOHJnfzVMZKbNPlnngyQOGqKQ=;
	b=UX+KlSFT2AvhZAW1ZhiRIfoEoLbZfc3NiAYBBvwukLQIEVxCivB8wSivoT9V+fCm8V
	EYAZgkZmwQH1XJg+QzCIe3aVW33bsL+tnCqPzL+LN7uAVEQezEgKxwhOaBlj7AVnfkXK
	JRtNPZpl8TpbW0Zqh71oIpTEcAnPDBlZvltfolTX68IWGSgT4i7j55wSC7QIE1Ndmv3R
	njyVwvbov4LWpQELFqii5kFhW2/Aouc0nfT1LlU6rp5xlUs4aQ0vO6KjuZMe9m9ZFWx0
	ucV17ppYOuqnmHn74iTCcffVb5Cke6583UBMSO2I+3lmnImLRk0X5xh3Gap6xe1Zfpgp
	PyFQ==
X-Gm-Message-State: AHPjjUjRGRW52YsRYN7PaD2h3Kls6ExkVYrqO6orbH19bZ2+RREYkyKW
	4vb7WTOajJD3ulVey2kmKpkdfUJ3jDFu
X-Google-Smtp-Source: ADKCNb6xQdGTNiSPnl+CU0lXyZOpA7UPYVrB6uvR/rXUDXXGQUfpMNL0/mLZtUk64HYY8sqL1n32yLLdNZZQnXOpanU=
X-Received: by 10.28.141.196 with SMTP id p187mr4073690wmd.115.1504520319203; 
	Mon, 04 Sep 2017 03:18:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.45.195 with HTTP; Mon, 4 Sep 2017 03:17:58 -0700 (PDT)
X-Originating-IP: [109.150.130.236]
In-Reply-To: <66f47867-75c2-0f93-589c-f1e32e512611@northern.tech>
References: <66f47867-75c2-0f93-589c-f1e32e512611@northern.tech>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 4 Sep 2017 11:17:58 +0100
Message-ID: <CAK18fxHP8sN8d_ogtfOedNTaO1LB7Fcjxekj-wx6-GhYQ0NSHQ@mail.gmail.com>
To: Drew Moseley <drew.moseley@northern.tech>
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
X-List-Received-Date: Mon, 04 Sep 2017 10:18:41 -0000
Content-Type: multipart/alternative; boundary="001a114733322f1c3a05585a6f90"

--001a114733322f1c3a05585a6f90
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 30, 2017 at 11:44 PM, Drew Moseley <drew.moseley@northern.tech>
wrote:

> Has anyone managed to use the onboard WIFI for the CHIP boards in the
> current meta-chip repo?  I added the kernel-module-r8723bs and rtl8723bs
> packages to my build and setup a wpa_supplicant.conf that works on other
> boards but I get error messages about power save. A few google searches
> suggested some power save changes but nothing I tried worked.
>
> root@chip:~# ifup wlan0
> Successfully initialized wpa_supplicant
> [  172.875000] rtl8723bs: accquire FW from file:rtlwifi/rtl8723bs_nic.bin
> [  174.225000] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
> [  174.235000] RTL8723BS: set bssid:00:00:00:00:00:00
> ioctl[SIOCSIWAP]: Operation not permitted
> udhcpc (v1.24.1) started
> Sending discover...
> [  175.855000] RTL8723BS: nolinked power save enter
> Sending discover...
> Sending discover...
> No lease, forking to background
> root@chip:~# [  184.580000] RTL8723BS: nolinked power save leave
> [  184.800000] RTL8723BS: set bssid:20:c9:d0:18:7a:95
> [  184.810000] RTL8723BS: set ssid [caribbean] fw_state = 0x00000088
> [  194.605000] RTL8723BS: nolinked power save enter
> [  195.850000] RTL8723BS: nolinked power save leave
> [  196.060000] RTL8723BS: set bssid:00:00:00:00:00:00
>
>
We use the same packages in resinos to add wifi support and everything
seems sane. However we only tested with NM not directly with wpa.

ref: https://github.com/resin-os/resin-chip/pull/23

Andrei

--001a114733322f1c3a05585a6f90
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Aug 30, 2017 at 11:44 PM, Drew Moseley <span dir=3D"ltr">&lt;<a href=3D=
"mailto:drew.moseley@northern.tech" target=3D"_blank">drew.moseley@northern=
.tech</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">Has anyone managed to use the onboard WIFI for the CHIP boards in the=
<br>
current meta-chip repo?=C2=A0 I added the kernel-module-r8723bs and rtl8723=
bs<br>
packages to my build and setup a wpa_supplicant.conf that works on other<br=
>
boards but I get error messages about power save. A few google searches<br>
suggested some power save changes but nothing I tried worked.<br>
<br>
root@chip:~# ifup wlan0<br>
Successfully initialized wpa_supplicant<br>
[=C2=A0 172.875000] rtl8723bs: accquire FW from file:rtlwifi/rtl8723bs_nic.=
bin<br>
[=C2=A0 174.225000] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready<br>
[=C2=A0 174.235000] RTL8723BS: set bssid:00:00:00:00:00:00<br>
ioctl[SIOCSIWAP]: Operation not permitted<br>
udhcpc (v1.24.1) started<br>
Sending discover...<br>
[=C2=A0 175.855000] RTL8723BS: nolinked power save enter<br>
Sending discover...<br>
Sending discover...<br>
No lease, forking to background<br>
root@chip:~# [=C2=A0 184.580000] RTL8723BS: nolinked power save leave<br>
[=C2=A0 184.800000] RTL8723BS: set bssid:20:c9:d0:18:7a:95<br>
[=C2=A0 184.810000] RTL8723BS: set ssid [caribbean] fw_state =3D 0x00000088=
<br>
[=C2=A0 194.605000] RTL8723BS: nolinked power save enter<br>
[=C2=A0 195.850000] RTL8723BS: nolinked power save leave<br>
[=C2=A0 196.060000] RTL8723BS: set bssid:00:00:00:00:00:00<br>
<span class=3D"gmail-HOEnZb"><font color=3D"#888888"><br></font></span></bl=
ockquote><div><br></div><div>We use the same packages in resinos to add wif=
i support and everything seems sane. However we only tested with NM not dir=
ectly with wpa. =C2=A0</div><div><br></div><div>ref:=C2=A0<a href=3D"https:=
//github.com/resin-os/resin-chip/pull/23">https://github.com/resin-os/resin=
-chip/pull/23</a></div><div><br></div><div>Andrei</div></div></div></div>

--001a114733322f1c3a05585a6f90--
