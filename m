Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F73BE00305
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 08:48:13 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBKGmCpV028974
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 08:48:12 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.232) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 20 Dec 2011 08:48:12 -0800
Message-ID: <4EF0BC4B.9020009@windriver.com>
Date: Tue, 20 Dec 2011 10:48:11 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <B02DFE681008F243B33346CA5752CA2B096D3A83@POCITMSEXMB03.LntUniverse.com>
	<9BACABF0C6B14A4D8C33B42A795119BE096D7E06@POCITMSEXMB03.LntUniverse.com>
In-Reply-To: <9BACABF0C6B14A4D8C33B42A795119BE096D7E06@POCITMSEXMB03.LntUniverse.com>
Subject: Re: Poky-Build error
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
X-List-Received-Date: Tue, 20 Dec 2011 16:48:13 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 12/20/11 2:33 AM, Navani Kamal Srivastava wrote:
> Hi,
>
> We are facing the problem when we are compiling poky-bernard5.0 –( bitbake –v –b
> poky-image-eb.bb )
>

> Log data follows:
>
> |
> /home/prashanth/yocto/poky-bernard-5.0/build/tmp/work/mx35pdk-poky-linux-gnueabi/poky-image-eb-1.0-r0/temp/run.do_rootfs.9800:
> line 91: makedevs: command not found
>
> | ERROR: Function 'do_rootfs' failed (see
> /home/prashanth/yocto/poky-bernard-5.0/build/tmp/work/mx35pdk-poky-linux-gnueabi/poky-image-eb-1.0-r0/temp/log.do_rootfs.9800
> for further information)

Your "poky-image-eb.bb" is attempting to run the makedevs command, but 
apparently it hasn't been built.  Check your logs for a makedevs-native.  If 
that hasn't been built, then it appears something is wrong with your 
configuration.  makedevs-native should be a dependency inherited by the 
image.bbclass.

Note on mailing list etiquette, please stop putting the trailing lines in your 
email.  This is a public mailing list, it is not for your companies "Internal 
Use", not is it reasonable to consider email send to a public list confidential 
in any way.

> *This mail is classified as: ( ) L&T Proprietary ( ) L&T Confidential (X) L&T
> Internal Use ( ) L&T General Business
> This email may contain confidential or privileged information for the intended
> recipient(s). If you are not the intended recipient, please do not use or
> disseminate the information, notify the sender and delete it from your system.
>
>
>
> *Larsen & Toubro Limited
>
> www.larsentoubro.com
>
> *This Email may contain confidential or privileged information for the intended
> recipient (s) If you are not the intended recipient, please do not use or
> disseminate the information, notify the sender and delete it from your system.
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


