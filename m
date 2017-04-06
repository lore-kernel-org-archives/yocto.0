Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA90FE00887; Thu,  6 Apr 2017 06:48:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.173 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f173.google.com (mail-wr0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BCFAE007BA
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 06:48:16 -0700 (PDT)
Received: by mail-wr0-f173.google.com with SMTP id g19so19116259wrb.0
	for <yocto@yoctoproject.org>; Thu, 06 Apr 2017 06:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=33PBg6472/X3U4Vw/Ag/Qy8dq6IwgyrntMAI2EVqKWk=;
	b=YhouwDwniQtpbLtQNuK+4Ns/WtIpjeyoy0bY2Fn6PnhcIDcL2Y7pBUA2GKIB3siOEt
	TMVzCQv+SVyjjIYd5M+CXS4VrYtRWSeI2xK1859PFoibkwFFqvoK47X6NdewgU8nioYW
	QBCsVYHUUGcNkQsS74vxAcomQ0T+dWO3g0GZ+8iBuvm5J4/4Q5CdkDGA1VyI/rDNlfnR
	fJhBCSS3/UwSFPlksbbOHGLkVShzcRLenbS0XFzpzJpV94gqOxq5TnQ7cJHWHqWYCbSC
	TsS/hmGx1aZDP7DOm6BWWrXSorDfk2t9OC608WV5/PF5hdsaK4m+fKn6jqX9Iif3PN7K
	3r6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=33PBg6472/X3U4Vw/Ag/Qy8dq6IwgyrntMAI2EVqKWk=;
	b=UCih5M+5qz/3LW+3uhxsvY2+4COZdb2IpMQmJjKuoUle+OQPUugz5ngsRZZPXTyJvv
	cdLgRdgakGCVJNY/5hrxyCpjnheJ2fTIbrduOtDLKg0JN8FwOxrVKqAKhTcyCA8XhgEg
	KeGIrLGSf4VKqQDopuxhIPXo9vdCt1OF3vxzn2xUyL7z1NCxbsQNF+TgHO6h54fXBppn
	+CGEjeJvog4dq02ua5tuZqXVEyw3koJroRctbABR8m9so3kbVzz01mxpmJKgG7frpx/G
	qLp6IGmZPj3hM6vb0hL1fSkxIZ0Uk/UJKfwsb27zCcp4pISQbkQzV+CRk1LTO/UGiNhW
	aD4g==
X-Gm-Message-State: AN3rC/4WLNOmCVIMqZUe4u6vf45qRg7V9YET41U1taaIkr0eCSUpJmdKAlTz6dufpaLq/Cpo1at1G7rTipmvhw==
X-Received: by 10.223.179.24 with SMTP id j24mr231411wrd.172.1491486495848;
	Thu, 06 Apr 2017 06:48:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.162 with HTTP; Thu, 6 Apr 2017 06:47:45 -0700 (PDT)
In-Reply-To: <1491469744.S.10166.2428.pro-237-142.1491470210.30755@webmail.rediffmail.com>
References: <1491468030.S.5129.28462.pro-236-197.1491469277.21186@webmail.rediffmail.com>
	<1491469744.S.10166.2428.pro-237-142.1491470210.30755@webmail.rediffmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 6 Apr 2017 06:47:45 -0700
Message-ID: <CAMKF1srgp0i2DqXLQByJYbcBt4cH2-pFL9ej9NNu1vG66MCJoA@mail.gmail.com>
To: chandrasekhar c <chandrasekhar@evolute-sys.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: unable to create softlink for precompilied libraries
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
X-List-Received-Date: Thu, 06 Apr 2017 13:48:17 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 6, 2017 at 2:16 AM, chandrasekhar c
<chandrasekhar@evolute-sys.com> wrote:
> Hi,
> I have added this FILES_${PN} += " ${libdir}/libMSOComm.so " line in my
> recipe still the issue is present
>

that may not be enough. .so are treated as symlinks and shoved into
-dev packages by default. if you need unversioned libraries then you
have to let the system know that its not a dev library symlink

FILES_${PN} += "${libdir}/*.so"
FILES_SOLIBSDEV = ""
INSANE_SKIP_${PN} += "dev-so"

> Thanks
> Chandra
>
> From: chandrasekhar c <chandrasekhar@evolute-sys.com>
> Sent: Thu, 6 Apr 2017 14:39:04 GMT+0530
> To: "Fabien Lahoudere " <fabien.lahoudere@collabora.co.uk>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
>
> Subject: Re: [yocto] unable to create softlink for precompilied libraries
>
> Hi ,
> No, I will do the changes and let you know the result.
>
> Regards,
> Chandrasekhar
>
> From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
> Sent: Thu, 6 Apr 2017 14:10:30 GMT+0530
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] unable to create softlink for precompilied libraries
>
> On Thu, 2017-04-06 at 08:08 +0000, chandrasekhar c wrote:
>> Hi,
>> I have a third party precompilied libraries. I erota a recipe to copy to
>> rootfs and create   soft
>> links for the same. After doing bitbake it didnt throw any errors, but
>> when I check th rootfs it
>> didn't create any link file.
>> Below is my recipe
>>
>> do_install_append() {
>>                   install -d ${D}${libdir}/
>>                 install -m 0777 ${S}/libMSO.so.1.2
>> ${D}${libdir}/libMSO.so.1.2
>>                 ln -sf libMSO.so.1.2 ${D}${libdir}/libMSO.so
>>                 install -m 0777 ${S}/libMSOComm.so.1.2
>> ${D}${libdir}/libMSOComm.so.1.2 //This is success
>>                 ln -sf libMSOComm.so.1.2 ${D}${libdir}/libMSOComm.so.1
>> //This is success
>>                 ln -sf libMSOComm.so.1  ${D}${libdir}/libMSOComm.so //This
>> is not happening
>> }
>> Can any one tell me a solution for this.
>
> Did you ship it with FILES_${PN} += " ${libdir}/libMSOComm.so " ?
>
>
>>
>> Thanks and Regards,
>> Chandrasekhar
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto --
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

