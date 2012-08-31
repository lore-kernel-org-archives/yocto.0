Return-Path: <jfabernathy@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D30CE0027F
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 11:05:54 -0700 (PDT)
Received: by qady1 with SMTP id y1so1395969qad.14
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 11:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=CAfycWs1iB0HUuk44BKLR20bzrA++SuBlbx2bD4w7dM=;
	b=XrZyWYQRuCI+T+loUPCRfR1B6dkT0PY/ctTYSVHt/wwIiF6rdrVFUwReA/ULmjGR7+
	wEpggete0HCUlG79y09+KJsAPpjgmb4WAMiFmShK8BFQTIg9k4b1OS5/vLrg/0Fw0App
	1qu6gPUYpsR8HYVH2Duj1xVPbiejJ3mENXD3yD2HEXjSBVtIERfo0H/LtC8FUVpyy0LC
	me72ph5uf7VoKDFbH6gnkzANmLxzI18NXX9PwY6dJlRivOZ9UigS5BX7fZeaLLmlWm9B
	Urh+GMyGP/lNAcwyTf+vLSXLC/pbWniwUSz98TsOymU53dOMCTsHUqLxSCGbGO9Tt6E/
	kyVQ==
Received: by 10.229.135.3 with SMTP id l3mr5136992qct.119.1346436351280;
	Fri, 31 Aug 2012 11:05:51 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-32-137.dhcp.embarqhsd.net. [184.4.32.137])
	by mx.google.com with ESMTPS id h8sm6112598qap.16.2012.08.31.11.05.49
	(version=SSLv3 cipher=OTHER); Fri, 31 Aug 2012 11:05:49 -0700 (PDT)
Message-ID: <5040FCFD.4070409@gmail.com>
Date: Fri, 31 Aug 2012 14:05:49 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <5037B5F5.5040105@gmail.com>
	<27A36DD288D740FA887185346F191582@intel.com>
	<5037C63E.6050507@gmail.com>
	<AB1D85DF566F4611935A07ABBD4D003E@intel.com>
	<5037C9B6.2040306@gmail.com>
	<CAJTo0LaMQkoGqojaDdFOXeELvRJow=sosoKWYnGgV_ONtRjgCg@mail.gmail.com>
	<CANFv2E=8vKRKWaK_M_OyhOY_nH5KMA08y2NcAXJLW1yPukVN0w@mail.gmail.com>
	<CAJTo0LYvmRzYX0j2HU3eD1nXt6B5URcg6EfGGo_tWUcYz1W6uA@mail.gmail.com>
In-Reply-To: <CAJTo0LYvmRzYX0j2HU3eD1nXt6B5URcg6EfGGo_tWUcYz1W6uA@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: configuring WiFi in Yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 31 Aug 2012 18:05:54 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/30/2012 07:41 AM, Burton, Ross wrote:
> On 29 August 2012 13:52, James Abernathy <jfabernathy@gmail.com> wrote:
>> rtl8192ce:rtl92c_init_sw_vars():<0-0> Failed to request firmware!
> You're missing firmware still.  Ensure that you've installed every
> linux-firmware-* package first, and if that doesn't work dig around
> the logs and hopefully you'll find the file it's after.
>
> Ross
Not sure I know how to force linux-firmware-* to be installed??

Also I replaced the WiFi card with an Intel Wireless-N 135, and I got a 
FW error using it as well.  In this case it called out:

lwlagn 0000:02:00.0: request for firmware file 'iwlwifi-105-5-ucode' failed

So if could just be I don't know how to force the firmware files to get 
included or the file does not exist in Yocto.

