Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B699FE00BE9; Fri,  6 Jun 2014 03:55:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.1 DKIM_SIGNED Message has a DKIM or DK signature,
	not necessarily *      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6969FE00B94
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 03:55:29 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id hy4so2722153vcb.36
	for <yocto@yoctoproject.org>; Fri, 06 Jun 2014 03:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=WfJtdqic6AoMUkUH4usccut1fm/ouA4a3NZOufiKnFI=;
	b=i766LLi+SZT+JbXH3Cky2iXf7GWASj7AXZt30Ni5oBXU1aj9RhRlITPWWptosthVyy
	DZZhQf2FsCqwtiregXgZE4MY9jPh7fdzkh6lxR52Gar0Sarb4dYaIen3GV9o55/pFtET
	iImwxTY6/JwkR88+NdCz4x2QJDoNDk/PjsSs5KIpE5qoApAmqy7KWQZJbsROI7bzfgKr
	HLHeXqr7wJdkchZIs0GZCHLLnLTUQbVPcgtImLM6uZMGIWiMpeXKCF5MCFfGIAWSfbG1
	nAzoZMoAORmd4GAs3cBK//sf+wKPyDyurMg3rJlZVcUBFgO/dcxPPxtw8GJ8ueYiw3eX
	ywpg==
X-Received: by 10.220.163.201 with SMTP id b9mr827726vcy.79.1402052129143;
	Fri, 06 Jun 2014 03:55:29 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.221.5.133 with HTTP; Fri, 6 Jun 2014 03:54:49 -0700 (PDT)
In-Reply-To: <lmrmc7$vdr$1@ger.gmane.org>
References: <lmphm1$2bk$1@ger.gmane.org> <lmrmc7$vdr$1@ger.gmane.org>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 6 Jun 2014 11:54:49 +0100
X-Google-Sender-Auth: 0uegqyJQ4gxhokR7sMoUORSErq4
Message-ID: <CANyK_8f8oO+7gVbcXXOLVAdxa5OpmHR2s6yj199LpWaQcjSheQ@mail.gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Problems with postinstall
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
X-List-Received-Date: Fri, 06 Jun 2014 10:55:36 -0000
Content-Type: text/plain; charset=UTF-8

On 6 June 2014 07:16, Neuer User <auslands-kv@gmx.de> wrote:
> Nobody using any postinstalls?
>
> I am still wondering why the postinstall does not work. I don't get any
> error messages. The files are just not installed.
>

I usually leave things more than a day before sending a ping email,
people can be busy but usually you'll get replies within a couple of
days on this list.

>>
>> # Overwrite some configuration data with specific files
>> pkg_postinst_${PN} () {
>>     install -o root -g root -m 0600 ${S}/ssh/sshd_config ${D}/etc/ssh/
>>     install -m 0755 ${S}/etc/rc.local ${D}/etc/
>>     install -m 0644 ${S}/etc/watchdog.conf ${D}/etc/
>>     install -m 0400 ${S}/etc/shadow ${D}/etc/
>>     install -m 0440 ${S}/etc/sudoers ${D}/etc/
>>     install -d ${D}/etc/default
>>     install -o root -g root -m 0644 ${S}/etc/default-ntpdate
>> ${D}/etc/default/ntpdate
>> }
>>

The postinst is executed by the package manager when the package is
installed. If that installation takes place during do_rootfs, ${D}
will refer to the rootfs directory for the image being built and ${S}
will probably refer to something else to do with the image recipe but
I'm not entirely sure on the details. If the installation takes place
on the device, or the postinst is delayed until the first boot, ${D}
and ${S} will not be set.

Hope this helps,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

