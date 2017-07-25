Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52AFDE00B28; Tue, 25 Jul 2017 11:47:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Tue, 25 Jul 2017 11:47:53 PDT
Received: from mailrelay2-3.pub.mailoutpod1-cph3.one.com
	(mailrelay2-3.pub.mailoutpod1-cph3.one.com [46.30.212.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E215AE0083A
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 11:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=BLpBtWzihL6w+vk0bIQtbQCxlZZwj3JSQ0l7gOg3YUE=;
	b=r7W0gyj6z1yrgs9mY0cPaWiHbUjWPZiKUdCLlF7sjKZ9rAv2334us/bWbkavYZbsh0+W22gCOfbDA
	6rjCo17pyPoNlkVPX4hkdNtTTyvxrKcKOUUGtseYqaB6hmAJf6vhU+RRMINysnp2BQXyxxg+yB1Nvp
	OWQ7nN+eCrln/Ijk=
X-HalOne-Cookie: 65aba5f0976e0db56e9d5798a63b7879765a9f05
X-HalOne-ID: 9e41c49c-7169-11e7-8b78-b82a72d03b9b
Received: from [192.168.1.73] (unknown [145.236.74.13])
	by smtpfilter2.public.one.com (Halon) with ESMTPSA
	id 9e41c49c-7169-11e7-8b78-b82a72d03b9b;
	Tue, 25 Jul 2017 18:46:50 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CAKgkYTR0e5aX_eO-JTgfs4Q94YVmFd1HNAYZy60Mv4tiiFU4dQ@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <d8fecc11-51f2-59ff-9f59-6bbb6dd99844@embexus.com>
Date: Tue, 25 Jul 2017 20:46:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAKgkYTR0e5aX_eO-JTgfs4Q94YVmFd1HNAYZy60Mv4tiiFU4dQ@mail.gmail.com>
Subject: Re: How do I write a yocto/bitbake recipe to replace the default vsftpd.conf file with my own filE?
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
X-List-Received-Date: Tue, 25 Jul 2017 18:47:55 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 24.07.2017 07:18, Mohammad Nouri wrote:
> Hi,
> I want to replace the default vsftpd.conf file with my own file!
> My bitbake file looks following:
>
> bbexample_1.0.bb
>      DESCRIPTION = "Configuration and extra files for TX28"
>      LICENSE = "CLOSED"
>      LIC_FILES_CHKSUM = ""
>
>      S = "${WORKDIR}"
>
>      SRC_URI += " \
>          file://ld.so.conf \
>          file://vsftpd.conf \
>          file://nginx/nginx.conf \
>          file://init.d/myscript.sh"
>
>      inherit allarch
>
>      do_install () {
>          install -d ${D}${sysconfdir}
>          install -d ${D}${sysconfdir}/nginx
>          install -d ${D}${sysconfdir}/init.d
>          rm -f ${D}${sysconfdir}/ld.so.conf
>          rm -f ${D}${sysconfdir}/vsftpd.conf
>          install -m 0755 ${WORKDIR}/ld.so.conf ${D}${sysconfdir}
>          install -m 0755 ${WORKDIR}/vsftpd.conf ${D}${sysconfdir}
>          install -m 0755 ${WORKDIR}/nginx/nginx.conf ${D}${sysconfdir}/nginx/
>          install -m 0755 ${WORKDIR}/init.d/myscript.sh ${D}${sysconfdir}/init.d/
>      }
>
>   But, the file could not be replaced!
>   What is wrong?
you should add to your recipe :

FILES_${PN} += " list of files you installed"

-- 

Ayoub Zaki

ayoub.zaki@embexus.com
Mobile: +49(0)176-62901545
Skype: ayoub.zaki_2
https://embexus.com


