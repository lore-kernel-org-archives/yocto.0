Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72E82E00C9E; Wed,  2 Aug 2017 02:57:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout08.t-online.de (mailout08.t-online.de [194.25.134.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EBADE00C19
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 02:57:31 -0700 (PDT)
Received: from fwd21.aul.t-online.de (fwd21.aul.t-online.de [172.20.27.66])
	by mailout08.t-online.de (Postfix) with SMTP id 366A141D7029
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 11:57:30 +0200 (CEST)
Received: from genericx86-64.Speedport_W_724V_01011603_05_032
	(ESSY1wZZ8hdq1YjNTjpJsjGBLvViR9ducvHF9+0Jcs3Komcv11P5UCPe5WLgo2zghZ@[84.146.40.121])
	by fwd21.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1dcqP6-0xq3rE0; Wed, 2 Aug 2017 11:57:24 +0200
Date: Wed, 2 Aug 2017 11:57:24 +0200
From: Markus Volk <f_l_k@t-online.de>
To: yocto@yoctoproject.org
Message-Id: <20170802115724.b3e533695e670e4fef58bbdd@t-online.de>
In-Reply-To: <568398942.4073936.1501667235929@mail.yahoo.com>
References: <568398942.4073936.1501667235929.ref@mail.yahoo.com>
	<568398942.4073936.1501667235929@mail.yahoo.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-poky-linux-gnu)
Mime-Version: 1.0
X-ID: ESSY1wZZ8hdq1YjNTjpJsjGBLvViR9ducvHF9+0Jcs3Komcv11P5UCPe5WLgo2zghZ
X-TOI-MSGID: 3bbbdef3-157d-45fa-9cd6-c5a1d7cc1306
Subject: Re: How to strip down my Yocto Linux?
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
X-List-Received-Date: Wed, 02 Aug 2017 09:57:32 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

I guess that depends on what your needs are. Personally i would start to build core-image-minimal and just add the packages i need

regards
Markus

On Wed, 2 Aug 2017 09:47:15 +0000 (UTC)
Bacheh Karaji <bachehkaraji@yahoo.com> wrote:

> 
> I would like to strip down my Yocto Linux before put in it to flash. Unneeded software, man pages, POCO sample codes and other documentation just waste resource, especially on the i.MX28 EVK with only 128MB flash.
> 
> My local.conf file looks following:
> 
> $ gedit conf/local.conf &
> ...
> IMAGE_INSTALL_append = " poco nginx canutils vsftpd curl fcgi spawn-fcgi net-snmp util-linux ubiattach-klibc ubimkvol-klibc ubiformat-klibc minicom net-tools zeroconf avahi-autoipd mtd-utils u-boot-fw-utils ethtool"
> ...
> I bitbake the image "core-image-base".
> 
> I was wondering, is there a way that I can delete all of the Unneeded files?
> 
> Can somebody help me howto strip down my Yocto Linux?
> 


-- 
Markus Volk <f_l_k@t-online.de>

