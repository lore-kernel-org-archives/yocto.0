Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FAB9E00543
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 08:22:22 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 2FED7F811EC; Tue, 19 Nov 2013 09:22:22 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id F1A81F811EA;
	Tue, 19 Nov 2013 09:22:20 -0700 (MST)
Message-ID: <528B9049.7010704@mlbassoc.com>
Date: Tue, 19 Nov 2013 09:22:33 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>
In-Reply-To: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>
Subject: Re: [meta-raspberrypi] Using the camera
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
X-List-Received-Date: Tue, 19 Nov 2013 16:22:23 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2013-11-19 09:18, Edward Vidal wrote:
> Hello,
> To get my C920 camera to work with the zedboard
> I needed to add v4l-utils and then I need several modules that I add to 3.6 kernel
> https://github.com/Digilent/linux-digilent.git
>      3.6.0-digilent-13.01-00002-g06b3889/
>      ├── kernel
>      │   └── drivers
>      │       ├── media
>      │       │   └── video
>      │       │       ├── gspca
>      │       │       │   └── gspca_main.ko
>      │       │       ├── uvc
>      │       │       │   └── uvcvideo.ko
>      │       │       ├── v4l2-common.ko
>      │       │       ├── v4l2-int-device.ko
>      │       │       ├── videobuf2-core.ko
>      │       │       ├── videobuf2-memops.ko
>      │       │       ├── videobuf2-vmalloc.ko
>      │       │       └── videodev.ko
> Hope this helps

Thanks for the reply, but this is not what I'm looking for.  The
camera module I'm using is directly connected to the RaspberryPi
via the CSI interface, not USB like your C920 and it uses very
different drivers to access.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

