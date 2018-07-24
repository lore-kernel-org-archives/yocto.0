Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9577E00E4C; Mon, 23 Jul 2018 19:06:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f181.google.com (mail-ua0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C15DE00E4C
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 19:06:55 -0700 (PDT)
Received: by mail-ua0-f181.google.com with SMTP id w7-v6so1750687uan.9
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 19:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=06eeWNo0YIvPlsufKs9s+jpUZiv0OOSoqq8mbYIFLD8=;
	b=Hx2Dt0GLfZGTf8kTX4DZeuUShQn98WckpxZTs1kXf9TmVdjdWAkd9C+D9MsPk1mRhk
	V2cXCv8uX1HKu92GVm/iItpldSDXeUV3Zjvh4As1+6yhdwwowIAyj5uiugmwfTEcBZCF
	5Blb/305vIxKnGcfp3adSn3kAPym0dsDjXE8ivwS2IGQS5QfHg13OKOoEbAmD4LmxmVy
	9dHbcpbNgMUBm5fK5TCoPn7YOkiI7CjTsJmEEA4V4RjSQVxcuviLLg3bD8mjL6i17izI
	wWMqKE2/N9yxtN64ixRFV7hN2XoHJuUePf9ICSEx9h4oOClJ0G+tjpzBTroldMN5IqlH
	E9RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=06eeWNo0YIvPlsufKs9s+jpUZiv0OOSoqq8mbYIFLD8=;
	b=PU34YB4Cqkx53eN9TvlUHzBPGQYP8OHXoEZmkc66eRKn8nxZBURzg4F8cxgq8myFHr
	/PhtK3bcNQCn04KZiYbmZNgLBJqBLlnAPmygc+WBX67rqA7oo4HZpSwox/JDjMOMPZRM
	pdsv9cK23z1UWrc2WySq7iZEfVKH0INkEPW9FA7+h2/hr/DVUuIgWT7zWooufMJUcCsR
	egCx2JbvPnNn/ZL7iPSPIWDr9qsz6OxWKvWKTlMSkEDSprDdkrB0P0DNjAAa9Keg//9y
	ewAm8U5/ev7n1R3Twx8Ap7DT9WzWOwRPasnqW0lqJakwnsxvMkEg4Aa3hyTThDG/iHAu
	7Rlg==
X-Gm-Message-State: AOUpUlFfg9zfF5dIPimI9Z95ieskoOCsQfImYztE8qGL2pRi6RBViDum
	pwhmnkbTZAzHiS2VyyfgB46mNYR9LBw35Ce2ewiRwaiV
X-Google-Smtp-Source: AAOMgpezE3BlDGOvmuIRHZWSmqPjidq/9v0yn/I+EGzu3gJT2jZ4jMC5Rf5uddd756UfuWNVD8LaJ4WYeGx6XBponZY=
X-Received: by 2002:ab0:6654:: with SMTP id
	b20-v6mr3140444uaq.193.1532398014980; 
	Mon, 23 Jul 2018 19:06:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Mon, 23 Jul 2018 19:06:54 -0700 (PDT)
In-Reply-To: <CANmTPBZ7neRETjpdKtC+2MpPuhtKegeQQEPY_1=SSDJzmUbWBA@mail.gmail.com>
References: <CANmTPBZ7neRETjpdKtC+2MpPuhtKegeQQEPY_1=SSDJzmUbWBA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 23 Jul 2018 19:06:54 -0700
Message-ID: <CAJ86T=UZkRUCeiDn-5td+qBdEtzO6mXYhnbCZj0eBDt71bVCBg@mail.gmail.com>
To: Simon Chamlian <simon.chamlian@mpbc.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: To remove packages from busybox
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
X-List-Received-Date: Tue, 24 Jul 2018 02:06:57 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 23, 2018 at 1:29 PM, Simon Chamlian <simon.chamlian@mpbc.ca> wrote:
> Hi,
>
> In order to remove package from busybox, I used:
>
> $ bitbake  -c menuconfig busybox
>
> Under 'System Logging Itilities -->' I unchecked syslogd
>
> Then ran
> $ bitbake   busybox
>
> and I get the following error:
>
> WARNING: busybox-1.24.1-r0 do_package: busybox: alternative target
> (/etc/syslog.conf or /etc/syslog.conf.busybox) does not exist, skipping...
> WARNING: busybox-1.24.1-r0 do_package: busybox: NOT adding alternative
> provide /etc/syslog.conf: /etc/syslog.conf.busybox does not exist
>
> ERROR: busybox-1.24.1-r0 do_package: SYSTEMD_SERVICE_busybox-syslog value
> busybox-syslog.service does not exist
>
>
> ERROR: busybox-1.24.1-r0 do_package: Function failed:
> systemd_populate_packages
>
>
> ERROR: Logfile of failure stored in:
> /opt/PHYTEC_BSPs/yocto_imx7/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/busybox/1.24.1-r0/temp/log.do_package.30881
>
> ERROR: Task
> (/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/recipes-core/busybox/busybox_1.24.1.bb:do_package)
> failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 711 tasks of which 705 didn't need to be
> rerun and 1 failed.
>
> What am I doing wrong?

The "correct" way to disable syslog support in busybox would probably
be to create a .bbappend which contains:

  SRC_URI_remove = "file://syslog.conf"

ie you would remove the config fragment which enables syslog from SRC_URI.

However, customising busybox like that gets almost no testing, so
there could certainly still be bugs.

