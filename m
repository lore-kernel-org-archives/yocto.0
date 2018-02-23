Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12E17E00ED6; Fri, 23 Feb 2018 05:08:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CCFFE00B1A
	for <yocto@yoctoproject.org>; Fri, 23 Feb 2018 05:08:12 -0800 (PST)
Received: by mail-vk0-f47.google.com with SMTP id a63so5279854vkg.6
	for <yocto@yoctoproject.org>; Fri, 23 Feb 2018 05:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=twRiwtyaOLAK8XYw6l9JgnQ+ZALeP8mdbCKDmK7Yhlo=;
	b=vk0JHwGAz8RHfCgomCSQ+iM9oOj69YE9o7IChonMW87F4Aou5/OC/BID6tMk9ENoV+
	U5E2r+mkIbV2m4/O0gLttOmjLSDKus0GbiGAHm4w3IFSEaUE2a83+7SlF/wcMlam16hq
	AGlY1Oqby9Wf52AT98l2QfpqO18xO1kL4VxkQyEImYwMAhGkrPniAvkdNIm/ce8xzE7j
	Zdbq+mWD2EqjHpttwz9wCB326PIBFZUMOUJmZoscLT95GjlCsCkkhXXndgIb4FU4gAQ/
	M9N+z/T2cY0iD4EhcZTwEq4MqzDoFW/OQhB5mpWSIxTAdGl/a9CPdi/x5FZVaT6oRHP7
	tQzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=twRiwtyaOLAK8XYw6l9JgnQ+ZALeP8mdbCKDmK7Yhlo=;
	b=b2AkJ3AWJ4Vx7Wq/NhI3TnTWrQufwDVXBK+7dkDf95ajezNExo76t3lW0lvuBraeg0
	nMnZzxOKh29zFGYQsj3b+DyLuPOLS1OgPMcI7nhXSXDvw5GdLlVBw5/fKvYXTNMhCwAD
	r7xd3kihZBsuKVzEt42DrPFCkTikrvx0iuCPJUzt2FWYoCAo8AmIaUVp9c7YpVrnrfhD
	N9mCDp80F4c8vTIwjQsDF+XdLvdGBIsTw9+MJp7WlCMdHQcVCyIT3N0p7xiLTcoh4994
	/u+Knq37S1V2QoEIvZNF2o3Y3J7hDW1RAiLqHDN//FdOsUsiGuhGK95oT1swW8xEWByD
	ZIeA==
X-Gm-Message-State: APf1xPC7/GI4bY1ADyOydgi1xo9Ed4RMElnUPD/RYRjfZzVh8UXUooF7
	wjdg+gOdfh+VT+N45v85joAxt+/8ZDtxhCWO9uDiUEEe9u4=
X-Google-Smtp-Source: AG47ELu9b+q62d5TwUOjHYeQ6ZWANzVu8YWL/BJ8uge3/wACrcAUO7yX62mNwzVKKUFb+5Ki0SbrZoxp8h5Z7m9Uf3s=
X-Received: by 10.31.63.6 with SMTP id m6mr1179301vka.43.1519391291942; Fri,
	23 Feb 2018 05:08:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.21.203 with HTTP; Fri, 23 Feb 2018 05:07:31 -0800 (PST)
X-Originating-IP: [86.140.154.245]
In-Reply-To: <82c9a9a7-8139-703c-7818-a4f5ede4cf71@northern.tech>
References: <66f47867-75c2-0f93-589c-f1e32e512611@northern.tech>
	<CAK18fxHP8sN8d_ogtfOedNTaO1LB7Fcjxekj-wx6-GhYQ0NSHQ@mail.gmail.com>
	<82c9a9a7-8139-703c-7818-a4f5ede4cf71@northern.tech>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 23 Feb 2018 13:07:31 +0000
Message-ID: <CAK18fxH=r_UsDC2_RewG_5n2+aE2E4p0V4GWqFGf63nhTQ95gA@mail.gmail.com>
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
X-List-Received-Date: Fri, 23 Feb 2018 13:08:14 -0000
Content-Type: multipart/alternative; boundary="001a114dbe5c3b3f8a0565e0dae5"

--001a114dbe5c3b3f8a0565e0dae5
Content-Type: text/plain; charset="UTF-8"

On Thu, Feb 22, 2018 at 8:34 PM, Drew Moseley <drew.moseley@northern.tech>
wrote:

> On 09/04/2017 06:17 AM, Andrei Gherzan wrote:
>
> On Wed, Aug 30, 2017 at 11:44 PM, Drew Moseley <drew.moseley@northern.tech
> > wrote:
>
>> Has anyone managed to use the onboard WIFI for the CHIP boards in the
>> current meta-chip repo?  I added the kernel-module-r8723bs and rtl8723bs
>> packages to my build and setup a wpa_supplicant.conf that works on other
>> boards but I get error messages about power save. A few google searches
>> suggested some power save changes but nothing I tried worked.
>>
>> root@chip:~# ifup wlan0
>> Successfully initialized wpa_supplicant
>> [  172.875000] rtl8723bs: accquire FW from file:rtlwifi/rtl8723bs_nic.bin
>> [  174.225000] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
>> [  174.235000] RTL8723BS: set bssid:00:00:00:00:00:00
>> ioctl[SIOCSIWAP]: Operation not permitted
>> udhcpc (v1.24.1) started
>> Sending discover...
>> [  175.855000] RTL8723BS: nolinked power save enter
>> Sending discover...
>> Sending discover...
>> No lease, forking to background
>> root@chip:~# [  184.580000] RTL8723BS: nolinked power save leave
>> [  184.800000] RTL8723BS: set bssid:20:c9:d0:18:7a:95
>> [  184.810000] RTL8723BS: set ssid [caribbean] fw_state = 0x00000088
>> [  194.605000] RTL8723BS: nolinked power save enter
>> [  195.850000] RTL8723BS: nolinked power save leave
>> [  196.060000] RTL8723BS: set bssid:00:00:00:00:00:00
>>
>>
> We use the same packages in resinos to add wifi support and everything
> seems sane. However we only tested with NM not directly with wpa.
>
> ref: https://github.com/resin-os/resin-chip/pull/23
>
> Andrei
>
>
> Andrei,
>
> Are you certain this is working in resinos currently?  I modified my
> config to use NetworkManager and it has similar behavior.  The "nolinked
> power save" messages are evidently debug so I ignore them but I do get the
> following:
>
> [  246.050000] RTL8723BS: rtw_set_802_11_connect(wlan0)  fw_state =
> 0x00000008
> [  246.145000] RTL8723BS: start auth
> [  246.150000] RTL8723BS: auth success, start assoc
> [  249.225000] RTL8723BS: rtw_set_802_11_connect(wlan0)  fw_state =
> 0x00000008
> [  249.420000] RTL8723BS: start auth
> [  249.430000] RTL8723BS: auth success, start assoc
> [  252.885000] RTL8723BS: rtw_set_802_11_connect(wlan0)  fw_state =
> 0x00000008
> [  253.105000] RTL8723BS: start auth
> [  253.115000] RTL8723BS: auth success, start assoc
> [  257.075000] RTL8723BS: rtw_set_802_11_connect(wlan0)  fw_state =
> 0x00000008
> [  257.305000] RTL8723BS: start auth
> [  257.315000] RTL8723BS: auth success, start assoc
> [  268.225000] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
>
> and then no connection.  I even disabled encryption temporarily on my wifi
> and was unable to connect.
>
> I tried to build a resinos image for CHIP to try it but was unsuccessful.
> Do you have any binaries I can try?
>
> Also, I installed the stock debian from flash.getchip.com and it was able
> to connect so my hardware seems solid.
>

We dropped currently the work on getting chip support on resin. Or at least
we postponed it so I don't have any binaries. But at that point wifi was
working. I haven't played with the board lately so can't say too much about
it.

One thing I would do is:
1. compare the wifi firmware on yocto and debian ones
2. check the driver it uses (both the same?)
3. kernel versions?

--
Andrei Gherzan

--001a114dbe5c3b3f8a0565e0dae5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Feb 22, 2018 at 8:34 PM, Drew Moseley <span dir=3D"ltr">&lt;<a href=3D"=
mailto:drew.moseley@northern.tech" target=3D"_blank">drew.moseley@northern.=
tech</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000"><div><div class=3D"h5">
    On 09/04/2017 06:17 AM, Andrei Gherzan wrote:<br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_extra">
          <div class=3D"gmail_quote">On Wed, Aug 30, 2017 at 11:44 PM,
            Drew Moseley <span dir=3D"ltr">&lt;<a href=3D"mailto:drew.mosel=
ey@northern.tech" target=3D"_blank">drew.moseley@northern.tech</a>&gt;</spa=
n>
            wrote:<br>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Has anyone ma=
naged to
              use the onboard WIFI for the CHIP boards in the<br>
              current meta-chip repo?=C2=A0 I added the kernel-module-r8723=
bs
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
              [=C2=A0 172.875000] rtl8723bs: accquire FW from
              <a class=3D"m_-3552137476057792944moz-txt-link-freetext">file=
:rtlwifi/rtl8723bs_nic.bin</a><br>
              [=C2=A0 174.225000] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is
              not ready<br>
              [=C2=A0 174.235000] RTL8723BS: set bssid:00:00:00:00:00:00<br=
>
              ioctl[SIOCSIWAP]: Operation not permitted<br>
              udhcpc (v1.24.1) started<br>
              Sending discover...<br>
              [=C2=A0 175.855000] RTL8723BS: nolinked power save enter<br>
              Sending discover...<br>
              Sending discover...<br>
              No lease, forking to background<br>
              root@chip:~# [=C2=A0 184.580000] RTL8723BS: nolinked power sa=
ve
              leave<br>
              [=C2=A0 184.800000] RTL8723BS: set bssid:20:c9:d0:18:7a:95<br=
>
              [=C2=A0 184.810000] RTL8723BS: set ssid [caribbean] fw_state =
=3D
              0x00000088<br>
              [=C2=A0 194.605000] RTL8723BS: nolinked power save enter<br>
              [=C2=A0 195.850000] RTL8723BS: nolinked power save leave<br>
              [=C2=A0 196.060000] RTL8723BS: set bssid:00:00:00:00:00:00<br=
>
              <span class=3D"m_-3552137476057792944gmail-HOEnZb"><font colo=
r=3D"#888888"><br>
                </font></span></blockquote>
            <div><br>
            </div>
            <div>We use the same packages in resinos to add wifi support
              and everything seems sane. However we only tested with NM
              not directly with wpa. =C2=A0</div>
            <div><br>
            </div>
            <div>ref:=C2=A0<a href=3D"https://github.com/resin-os/resin-chi=
p/pull/23" target=3D"_blank">https://github.com/resin-<wbr>os/resin-chip/pu=
ll/23</a></div>
            <div><br>
            </div>
            <div>Andrei</div>
          </div>
        </div>
      </div>
    </blockquote>
    <br></div></div>
    Andrei,<br>
    <br>
    Are you certain this is working in resinos currently?=C2=A0 I modified =
my
    config to use NetworkManager and it has similar behavior.=C2=A0 The
    &quot;nolinked power save&quot; messages are evidently debug so I ignor=
e them
    but I do get the following:<br>
    <br>
    [=C2=A0 246.050000] RTL8723BS: rtw_set_802_11_connect(wlan0)=C2=A0 fw_s=
tate =3D
    0x00000008<br>
    [=C2=A0 246.145000] RTL8723BS: start auth<br>
    [=C2=A0 246.150000] RTL8723BS: auth success, start assoc<br>
    [=C2=A0 249.225000] RTL8723BS: rtw_set_802_11_connect(wlan0)=C2=A0 fw_s=
tate =3D
    0x00000008<br>
    [=C2=A0 249.420000] RTL8723BS: start auth<br>
    [=C2=A0 249.430000] RTL8723BS: auth success, start assoc<br>
    [=C2=A0 252.885000] RTL8723BS: rtw_set_802_11_connect(wlan0)=C2=A0 fw_s=
tate =3D
    0x00000008<br>
    [=C2=A0 253.105000] RTL8723BS: start auth<br>
    [=C2=A0 253.115000] RTL8723BS: auth success, start assoc<br>
    [=C2=A0 257.075000] RTL8723BS: rtw_set_802_11_connect(wlan0)=C2=A0 fw_s=
tate =3D
    0x00000008<br>
    [=C2=A0 257.305000] RTL8723BS: start auth<br>
    [=C2=A0 257.315000] RTL8723BS: auth success, start assoc<br>
    [=C2=A0 268.225000] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready=
<br>
    <br>
    and then no connection.=C2=A0 I even disabled encryption temporarily on
    my wifi and was unable to connect.<br>
    <br>
    I tried to build a resinos image for CHIP to try it but was
    unsuccessful.=C2=A0 Do you have any binaries I can try?<br>
    <br>
    Also, I installed the stock debian from <a href=3D"http://flash.getchip=
.com" target=3D"_blank">flash.getchip.com</a> and it was
    able to connect so my hardware seems solid.</div></blockquote><div><br>=
</div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;=
font-size:small;font-style:normal;font-variant-ligatures:normal;font-varian=
t-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgroun=
d-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-colo=
r:initial;float:none;display:inline">We dropped currently the work on getti=
ng chip support on resin. Or at least we postponed it so I don&#39;t have a=
ny binaries. But at that point wifi was working. I haven&#39;t played with =
the board lately so can&#39;t say too much about it.</span>=C2=A0</div><div=
><br></div><div>One thing I would do is:<br>1. compare the wifi firmware on=
 yocto and debian ones<br>2. check the driver it uses (both the same?)<br>3=
. kernel versions?</div><div><div style=3D"color:rgb(34,34,34);font-family:=
arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial"><br class=3D"gmail-Apple-interchange-newline">-=
-</div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font=
-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-ca=
ps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inden=
t:0px;text-transform:none;white-space:normal;word-spacing:0px;background-co=
lor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:in=
itial;float:none;display:inline">Andrei Gherzan</span><br></div></div></div=
></div>

--001a114dbe5c3b3f8a0565e0dae5--
