Return-Path: <drew.moseley@northern.tech>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F167E009F5; Wed, 30 Aug 2017 15:44:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.181 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.181 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f181.google.com (mail-yw0-f181.google.com
	[209.85.161.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F356E0091D
	for <yocto@yoctoproject.org>; Wed, 30 Aug 2017 15:44:40 -0700 (PDT)
Received: by mail-yw0-f181.google.com with SMTP id s187so38007253ywf.2
	for <yocto@yoctoproject.org>; Wed, 30 Aug 2017 15:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=northern.tech; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=4kqiRIMFsEuIBOZe7VOXHdhdrdhvGkPnKkczlS1il/w=;
	b=Dxp/ImHLbA1/7WwoPEA616tsD1YBDNkm6CRv4srcKDC+0aBPoxwF9UmoGim4KDgRwV
	/DWIg7alCYMgRCySuEJGWY/gqyfo2uvpKY9eTaYO/KqjcaFYZO5K6OADYUQsXcXqnZG2
	cYWHUz/ErH0drQb/xCPICaLo5a8kpt8ylT+3n2pc/roTKCQvaE5in4Vknw7ZBltGfsxw
	GNR7d7U40F8K/+TH/YrxFFH6uK6iuyyE5TAltcCdJaLgVyUMn6cDBqglnEaQhtH9sosC
	L7/SDKDWgxlFls6vb6oo0slwH9N1zQqR5pEqQHJ5hZ+q2aW7kc+LLx6P5UoaJEh89AoC
	PDbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=4kqiRIMFsEuIBOZe7VOXHdhdrdhvGkPnKkczlS1il/w=;
	b=Iq6aIenGKCoGNPmmYeSFARPWnnZUMRlBhmC0YfUeCsLPaPpV+jAq0lk3BN4+4K5nWB
	XFVd6VBOj+9/rcOBHW2N499P+SDsSivd+Ct7+/UKhrUAhW/v/qDwUkPaB+3I8HZ2M425
	NacWLJWnZ50zTBJp5EfqsPg42Z3Z3ZHHTk2D9xOTLmQEDi2eo5IGXp0u/6UEDpwQf0We
	2e56HRWfp6nclqGpheRo9jbnB6UPX7XmJ+6bBim/ph3bh+VI0R8aFN0dnxz35sSZv3h3
	X7yObfEyr4Z7fXERvdvMFDHvSEYBqUHdgsouH91vxyUbZNxDCuTZThw20wMJ3lWLkpFB
	gx4g==
X-Gm-Message-State: AHYfb5jBEQqraFqHHQiD6h3BDAnfGOMW7aBU1MihTd7KXR+Ld2deU5N4
	b4m3FZrbGOD2AI2OH3tMSA==
X-Received: by 10.37.105.211 with SMTP id e202mr2507503ybc.253.1504133079079; 
	Wed, 30 Aug 2017 15:44:39 -0700 (PDT)
Received: from [192.168.1.36] (653240hfc152.tampabay.res.rr.com.
	[65.32.40.152])
	by smtp.gmail.com with ESMTPSA id c1sm610806ywh.61.2017.08.30.15.44.38
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 30 Aug 2017 15:44:38 -0700 (PDT)
To: yocto@yoctoproject.org
From: Drew Moseley <drew.moseley@northern.tech>
Message-ID: <66f47867-75c2-0f93-589c-f1e32e512611@northern.tech>
Date: Wed, 30 Aug 2017 18:44:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
Subject: [meta-chip] Wifi driver on CHIP boards?
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
X-List-Received-Date: Wed, 30 Aug 2017 22:44:41 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Has anyone managed to use the onboard WIFI for the CHIP boards in the
current meta-chip repo?  I added the kernel-module-r8723bs and rtl8723bs
packages to my build and setup a wpa_supplicant.conf that works on other
boards but I get error messages about power save. A few google searches
suggested some power save changes but nothing I tried worked.

root@chip:~# ifup wlan0
Successfully initialized wpa_supplicant
[  172.875000] rtl8723bs: accquire FW from file:rtlwifi/rtl8723bs_nic.bin
[  174.225000] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[  174.235000] RTL8723BS: set bssid:00:00:00:00:00:00
ioctl[SIOCSIWAP]: Operation not permitted
udhcpc (v1.24.1) started
Sending discover...
[  175.855000] RTL8723BS: nolinked power save enter
Sending discover...
Sending discover...
No lease, forking to background
root@chip:~# [  184.580000] RTL8723BS: nolinked power save leave
[  184.800000] RTL8723BS: set bssid:20:c9:d0:18:7a:95
[  184.810000] RTL8723BS: set ssid [caribbean] fw_state = 0x00000088
[  194.605000] RTL8723BS: nolinked power save enter
[  195.850000] RTL8723BS: nolinked power save leave
[  196.060000] RTL8723BS: set bssid:00:00:00:00:00:00


Drew



