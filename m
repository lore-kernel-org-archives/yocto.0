Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [])
 by mx.groups.io with SMTP id smtpd.web12.21.1582148694531139055
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:44:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vi+azj6C;
 spf=softfail (domain: gmail.com, ip: <nil>, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23C5EE016F9; Wed, 19 Feb 2020 02:36:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 130AEE01589
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 02:36:51 -0800 (PST)
Received: by mail-il1-f175.google.com with SMTP id s85so20114424ill.11
        for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 02:36:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=3ukOCp4004/+AdWiLMrw9jwYBf55MMRBggtLJc1HOJU=;
        b=Vi+azj6Cbtrc+bPzvMPEjuNXYmHwGfls5BzC4hcN+0HxTHLZwZ8HxTP6Pq5MkOft9S
         XTTgswjbjBLEZZIKOCbAfuWfDuuw2d2Baxabj/9O9WS3A7sqJmtjXWdsVEn4Yh1dLqUx
         wNapDenf5VTeR5C5LVDqKg7JK0wpDpgxdgYUYbcLtoRHrqaBG3b3GOxoSgACB2Ls53e+
         logywsA5Sz0SeUCn6F/M+DkKwSZ0laH5sGyl53FEKz9MJTTq4ZX6a0smBCw5O4dHA0pO
         3Lt//LMpWpRmTt/6kC6NKBjhAWvq6gxZnRUAF6mrZtDiI6+JkOmCRw7axkz5c1/dA1c5
         9/CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=3ukOCp4004/+AdWiLMrw9jwYBf55MMRBggtLJc1HOJU=;
        b=E7CmzP6b/HEuKWF7rwOSJWKENq+vSx425aUEtQu1Ra4scFf9Ox5CXwnTx5g69nVOLi
         0yneUlNGrfCfU0oUMlhfGR5aoHRntxTxS82X2fyecwbYVQD9Wi1wpAEHgGjTq/J+Hzhs
         8iRSMMcTFWJ+q99Mso0vdeo7FZ5N6qXXUv3BdRevOA8D2N4Jod/SPNa5rZaxlE5r5b6J
         K1kYWiUzfdDu4TAojx89NdiDnQf8ilTOIZIhqF2akqNJzvTIf2mzJtWL18wbSahII7PB
         /46AoNh8Ms6Ndq+8QDDSut0Sa8QtIBiICn55bx4eU+VBkqedUWLxvnVLYb+nCmFwkjpc
         SGpg==
X-Gm-Message-State: APjAAAUQ39XpmwYuuOMBVN/Q81M16FBCfBe+Z0SRpSFxgQzyRhTV0ZIG
	iQc4MxozIeDN67MDnWXzPnnyC812Q2sZZybnpw563Rny
X-Google-Smtp-Source: APXvYqzpDJbIGWOR8E4rbKpEgWuqum6+1AATP4QugdUpBb0MFxVq05gbtGHz0iWbU4NJPbhZdz02LIAFPY38qxbpwr8=
X-Received: by 2002:a92:5855:: with SMTP id m82mr23102752ilb.302.1582108611339;
 Wed, 19 Feb 2020 02:36:51 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Wed, 19 Feb 2020 02:36:50
 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Wed, 19 Feb 2020 21:36:50 +1100
Message-ID: <CAA=hcWSt-bNt=FVNX0hi-bhvgxrN2rrYLai1m2Upk2=pKzKzoA@mail.gmail.com>
Subject: Zeus failed DHCP
To: Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>, connman <connman@lists.01.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

My build connman on Thud works on WiFi, but Zeus does not work, the
connman could not get WiFi DHCP response, it puts a local IP address
169.254.24.188 to my WiFi interface. Has anyone found that the problem
in Zeus or it just me may be miss some packages or configuration?

What are packages could cause DHCP not working?

Here is Thud working log:

# systemctl status connman -l
=EF=BF=BD=EF=BF=BD=E2=97=8F connman.service - Connection service
   Loaded: loaded
(8;;file://solar/lib/systemd/system/connman.service/lib/systemd/system/conn=
man.service8;;;
enabl)
   Active: active (running) since Thu 2020-02-13 03:18:51 UTC; 6 days ago
 Main PID: 131 (connmand)
   CGroup: /system.slice/connman.service
           =EF=BF=BD=EF=BF=BD=E2=94=94=EF=BF=BD=EF=BF=BD=E2=94=80131 /usr/s=
bin/connmand -n

Feb 18 22:37:16 solar connmand[131]: rp_filter set to 2 (loose mode
routing), old value was 1
Feb 18 22:37:16 solar connmand[131]: mlan0 {add} address
192.168.0.100/24 label mlan0 family 2
Feb 18 22:37:16 solar connmand[131]: mlan0 {add} route 192.168.0.0 gw
0.0.0.0 scope 253 <LINK>
Feb 18 22:37:16 solar connmand[131]: mlan0 {add} route 192.168.0.1 gw
0.0.0.0 scope 253 <LINK>
Feb 18 22:37:16 solar connmand[131]: mlan0 {add} route 212.227.81.55
gw 192.168.0.1 scope 0 <UNIVERSE>
Feb 18 22:37:17 solar connmand[131]: mlan0 {del} route 212.227.81.55
gw 192.168.0.1 scope 0 <UNIVERSE>
Feb 18 22:37:17 solar connmand[131]: wwan0 {del} route 0.0.0.0 gw
10.114.57.126 scope 0 <UNIVERSE>
Feb 18 22:37:17 solar connmand[131]: mlan0 {add} route 0.0.0.0 gw
192.168.0.1 scope 0 <UNIVERSE>
Feb 18 22:37:17 solar connmand[131]: mlan0 {add} route 212.227.81.55
gw 192.168.0.1 scope 0 <UNIVERSE>
Feb 18 22:37:17 solar connmand[131]: mlan0 {del} route 212.227.81.55
gw 192.168.0.1 scope 0 <UNIVERSE>

# systemctl status wpa_supplicant -l
=EF=BF=BD=EF=BF=BD=E2=97=8F wpa_supplicant.service - WPA supplicant
   Loaded: loaded
(8;;file://solar/lib/systemd/system/wpa_supplicant.service/lib/systemd/syst=
em/wpa_supplicant.service8;;;
disabled; vendor preset: enabled)
   Active: active (running) since Thu 2020-02-13 03:18:53 UTC; 6 days ago
 Main PID: 503 (wpa_supplicant)
   CGroup: /system.slice/wpa_supplicant.service
           =EF=BF=BD=EF=BF=BD=E2=94=94=EF=BF=BD=EF=BF=BD=E2=94=80503 /usr/s=
bin/wpa_supplicant -u

Feb 19 07:37:29 solar wpa_supplicant[503]: mlan0: WPA: Group rekeying
completed with 34:08:04:12:b1:a2 [GTK=3DTKIP]
Feb 19 07:47:29 solar wpa_supplicant[503]: mlan0: WPA: Group rekeying
completed with 34:08:04:12:b1:a2 [GTK=3DTKIP]
Feb 19 07:57:29 solar wpa_supplicant[503]: mlan0: WPA: Group rekeying
completed with 34:08:04:12:b1:a2 [GTK=3DTKIP]
Feb 19 08:07:29 solar wpa_supplicant[503]: mlan0: WPA: Group rekeying
completed with 34:08:04:12:b1:a2 [GTK=3DTKIP]
Feb 19 08:17:29 solar wpa_supplicant[503]: mlan0: WPA: Group rekeying
completed with 34:08:04:12:b1:a2 [GTK=3DTKIP]
Feb 19 08:19:01 solar wpa_supplicant[503]: mlan0:
CTRL-EVENT-SIGNAL-CHANGE above=3D0 signal=3D-85 noise=3D-97 txrate=3D1000
Feb 19 08:27:29 solar wpa_supplicant[503]: mlan0: WPA: Group rekeying
completed with 34:08:04:12:b1:a2 [GTK=3DTKIP]
Feb 19 08:37:29 solar wpa_supplicant[503]: mlan0: WPA: Group rekeying
completed with 34:08:04:12:b1:a2 [GTK=3DTKIP]
Feb 19 08:47:29 solar wpa_supplicant[503]: mlan0: WPA: Group rekeying
completed with 34:08:04:12:b1:a2 [GTK=3DTKIP]
Feb 19 08:57:29 solar wpa_supplicant[503]: mlan0: WPA: Group rekeying
completed with 34:08:04:12:b1:a2 [GTK=3DTKIP]

Here is Zenu build did not work:

# systemctl status connman -l
* connman.service - Connection service
   Loaded: loaded
(8;;file://solar/lib/systemd/system/connman.service/lib/systemd/system/conn=
man.service8;;;
enabled; vendor preset: enabled)
   Active: active (running) since Tue 2020-02-18 00:47:43 UTC; 1 day 9h ago
 Main PID: 184 (connmand)
   CGroup: /system.slice/connman.service
           `-184 /usr/sbin/connmand -n

Feb 19 10:27:33 solar connmand[184]: mlan0 {newlink} index 3 operstate
5 <DORMANT>
Feb 19 10:27:33 solar connmand[184]: mlan0 {add} route ff00:: gw ::
scope 0 <UNIVERSE>
Feb 19 10:27:33 solar connmand[184]: mlan0 {add} route fe80:: gw ::
scope 0 <UNIVERSE>
Feb 19 10:27:33 solar connmand[184]: mlan0 {RX} 10 packets 1650 bytes
Feb 19 10:27:33 solar connmand[184]: mlan0 {TX} 256 packets 96668 bytes
Feb 19 10:27:33 solar connmand[184]: mlan0 {update} flags 102467
<UP,RUNNING,LOWER_UP>
Feb 19 10:27:33 solar connmand[184]: mlan0 {newlink} index 3 address
D4:CA:6E:9A:7E:29 mtu 1500
Feb 19 10:27:33 solar connmand[184]: mlan0 {newlink} index 3 operstate 6 <U=
P>
Feb 19 10:28:13 solar connmand[184]: mlan0 {add} address
169.254.241.106/16 label mlan0 family 2
Feb 19 10:28:14 solar connmand[184]: mlan0 {add} route 169.254.0.0 gw
0.0.0.0 scope 253 <LINK>


# systemctl status wpa_supplicant -l
* wpa_supplicant.service - WPA supplicant
   Loaded: loaded
(8;;file://solar/lib/systemd/system/wpa_supplicant.service/lib/systemd/syst=
em/wpa_supplicant.service8;;;
disabled; vendor preset: disabled)
   Active: active (running) since Tue 2020-02-18 00:47:48 UTC; 1 day 9h ago
 Main PID: 263 (wpa_supplicant)
   CGroup: /system.slice/wpa_supplicant.service
           `-263 /usr/sbin/wpa_supplicant -u

Feb 19 09:57:33 solar wpa_supplicant[263]: mlan0:
CTRL-EVENT-SIGNAL-CHANGE above=3D0 signal=3D-47 noise=3D-92 txrate=3D65000
Feb 19 10:05:36 solar wpa_supplicant[263]: mlan0:
CTRL-EVENT-SIGNAL-CHANGE above=3D0 signal=3D-52 noise=3D-92 txrate=3D72200
Feb 19 10:07:32 solar wpa_supplicant[263]: mlan0:
CTRL-EVENT-DISCONNECTED bssid=3D34:08:04:12:b1:a2 reason=3D2
Feb 19 10:07:32 solar wpa_supplicant[263]: dbus:
wpa_dbus_property_changed: no property SessionLength in object
/fi/w1/wpa_supplicant1/Interfaces/0
Feb 19 10:07:33 solar wpa_supplicant[263]: mlan0: Trying to associate
with 34:08:04:12:b1:a2 (SSID=3D'Jupiter' freq=3D2437 MHz)
Feb 19 10:07:33 solar wpa_supplicant[263]: mlan0: Associated with
34:08:04:12:b1:a2
Feb 19 10:07:33 solar wpa_supplicant[263]: mlan0:
CTRL-EVENT-SUBNET-STATUS-UPDATE status=3D0
Feb 19 10:07:33 solar wpa_supplicant[263]: mlan0: WPA: Key negotiation
completed with 34:08:04:12:b1:a2 [PTK=3DCCMP GTK=3DTKIP]
Feb 19 10:07:33 solar wpa_supplicant[263]: mlan0: CTRL-EVENT-CONNECTED
- Connection to 34:08:04:12:b1:a2 completed [id=3D0 id_str=3D]
Feb 19 10:07:33 solar wpa_supplicant[263]: mlan0:
CTRL-EVENT-SIGNAL-CHANGE above=3D0 signal=3D-51 noise=3D-92 txrate=3D65000

Thank
