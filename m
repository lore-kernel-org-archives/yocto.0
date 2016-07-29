Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ED97E00CB0; Fri, 29 Jul 2016 04:54:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oliver.graute[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8415E00CA6
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 04:54:36 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id q128so41690229wma.1
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 04:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=DijJ8m4oNWb0gaT2YlUcytl6+PPyMpm2L8MG6hle8LQ=;
	b=V7pLzZcwFoF01m1dhijNPDa/C7TnCD5CUANG0NEW7O8iGZrMFG6rpXZqJSMJ/tdBIQ
	8VaOWnMYyBR17J52Xxs/JyNiWN/g/TuAdZhs/VNL0qi0b2o9YIeM5bSaYxovwrSz8mab
	iMHvSGKO7DbMaiB/4KpXRlVXrse9jdm2wtSpyoVvFkX7S0AK/Pm/Hy2RnDw6zdsYurkU
	sNKz/EGPQyWvX7QHw7yeCqEENtlhrSnDDJ4NSMR5785x5UI3vv3pC5tu89j0GvNvOytM
	9DvZUGNHUflc7gpKarvZzRG7jga+4g1InFMYjOk/tiGV813DmzOPJQIpmMaGI35pIA9G
	vNtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:in-reply-to:user-agent;
	bh=DijJ8m4oNWb0gaT2YlUcytl6+PPyMpm2L8MG6hle8LQ=;
	b=jMMOjwKsQ2Ybl1bWHHjMNsRdWQ/3i5cS25s3O+fe2iClcFY6Zjt1tGISw8AJ+wUmjV
	aixwVZ9PvFp9h2vJIAkU+rCMIO7h/Da7BwSdY0/7wjx/4NLD3AIE2aBSELq6bSka3cA7
	pSr1KT9byrKQz03yIEUfPlJlUnrIC5J7NeHk2sAQr7OszLjXBo5/1DF+S9VLKscfw11d
	3AnOrrYgc3/jJF01RQ07czhNXkUzprvGG2jTVOKEOhKHMhJchS80ZJoSdNaCY7A26org
	YJqPweK68Iv9477V/5GZSFraDu3jQYJHxhhGECeU9gw7QipC2sbOnjf85yXJF/11P8zo
	rriQ==
X-Gm-Message-State: AEkooutm1uEKAnMa1a+vYkO6POnIjPmxDke3mf55RETFIJxrb7YmSZcxUH0aBg9iA5iqhg==
X-Received: by 10.28.187.67 with SMTP id l64mr731616wmf.11.1469793275242;
	Fri, 29 Jul 2016 04:54:35 -0700 (PDT)
Received: from localhost (x4e36430a.dyn.telefonica.de. [78.54.67.10])
	by smtp.gmail.com with ESMTPSA id
	q4sm16217518wjk.24.2016.07.29.04.54.34
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Fri, 29 Jul 2016 04:54:34 -0700 (PDT)
Date: Fri, 29 Jul 2016 13:53:54 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: Zhenhua Luo <zhenhua.luo@nxp.com>
Message-ID: <20160729115354.GA10176@graute-opti>
Mail-Followup-To: Zhenhua Luo <zhenhua.luo@nxp.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <20160728072611.GA26257@graute-opti>
	<DB6PR0401MB26302D6732DC448BFDD81B67EE000@DB6PR0401MB2630.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <DB6PR0401MB26302D6732DC448BFDD81B67EE000@DB6PR0401MB2630.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't replace login.defs with shadow-sysroot bbappend
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
X-List-Received-Date: Fri, 29 Jul 2016 11:54:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 28/07/16, Zhenhua Luo wrote:
> Hi Oliver, 
> 
> The following line in shadow-sysroot.bb disables the final binary packages generation. You can try to add bbappend for shadow to do the customization. 
> 
> # don't create any packages
> # otherwise: dbus-dev depends on shadow-sysroot-dev which depends on shadow-sysroot
> # and this has another copy of /etc/login.defs already provided by shadow
> PACKAGES = ""

thx for this usefull note. It works for me with shadow_%.bbappend.

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://login.defs"

do_install_append() {
	install -m 644 ${WORKDIR}/login.defs ${D}${sysconfdir}/login.defs
}

FILES_${PN} += "${sysconfdir}/login.defs"

Best regards,

Oliver

