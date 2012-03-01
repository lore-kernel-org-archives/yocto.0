Return-Path: <raj.khem@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DD51E013E8
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 21:30:55 -0800 (PST)
Received: by pbcup7 with SMTP id up7so528184pbc.35
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 21:30:55 -0800 (PST)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates
	10.68.232.68 as permitted sender) client-ip=10.68.232.68; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of raj.khem@gmail.com
	designates 10.68.232.68 as permitted sender)
	smtp.mail=raj.khem@gmail.com;
	dkim=pass header.i=raj.khem@gmail.com
Received: from mr.google.com ([10.68.232.68])
	by 10.68.232.68 with SMTP id tm4mr7101915pbc.118.1330579855136
	(num_hops = 1); Wed, 29 Feb 2012 21:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=nLvKVZTAPmuNV0EfJdnkd9I9J5WgAVFoI+RvHelfuyU=;
	b=IjDZ3VVW5Kpo1c89UkBY7sCQarDVHVTqhwofnwL1rLdXZjeNja0mzgw1pTPVKwQ5uP
	Hv07fEYubUgQ69t7piLtTDaJved/FX0wr9I+ulvQzwd14wswDOsOhnfqhOWhh6O2BoPe
	jIS1aujdIFd/PbFXk5HhiwIpb1IQb7PikQA0U=
Received: by 10.68.232.68 with SMTP id tm4mr5757004pbc.118.1330579855031;
	Wed, 29 Feb 2012 21:30:55 -0800 (PST)
Received: from [192.168.1.78] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id x8sm1123636pbr.11.2012.02.29.21.30.52
	(version=SSLv3 cipher=OTHER); Wed, 29 Feb 2012 21:30:53 -0800 (PST)
Message-ID: <4F4F098B.3050506@gmail.com>
Date: Wed, 29 Feb 2012 21:30:51 -0800
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120224 Thunderbird/11.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CADzUK1J1+mLEg8n0X7HucQx9dMzO3NK5qZjrCEDYG2Rb=BrvVg@mail.gmail.com>
In-Reply-To: <CADzUK1J1+mLEg8n0X7HucQx9dMzO3NK5qZjrCEDYG2Rb=BrvVg@mail.gmail.com>
Subject: Re: USB touchscreen integration
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
X-List-Received-Date: Thu, 01 Mar 2012 05:30:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 02/24/2012 10:04 AM, Autif Khan wrote:
> I have a touchscreen made by AUO. It came with a driver which I have
> written a recipe for and it seems to be compiling and when the
> touchscreen is detected, the driver seems to be loading and
> controlling the touchscreen. (Its not under the control of hid_core
> driver).
> 
> It shows up in /proc/bus/input/devices
> 
> I: Bus=0003 Vendor=03eb Product=201c Version=1503
> N: Name="pixcir_hid_mt_v2.0"
> P: Phys=
> S: Sysfs=/devices/pci0000:00/0000:00:17.0/0000:01:00.0/0000:02:02.0/usb3/3-1/3-1:1.0/input/input4
> U: Uniq=
> H: Handlers=mouse0
> B: PROP=0
> B: EV=b
> B: KEY=400 0 0 0 0 0 0 0 0 0 0
> B: ABS=650000 3
> 
> It shows up as /dev/input/mouse0

tslib handles /dev/input/touchscreen0 can you modify the driver ?

