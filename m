Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f51.google.com (mail-ee0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00CA3E0087A
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 12:37:26 -0800 (PST)
Received: by mail-ee0-f51.google.com with SMTP id b57so3694460eek.10
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 12:37:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=K3iXbgKZHTitgpIuvv960rgNhBpiL4zfgZVaLchQyhU=;
	b=V/ef0LU6udKST4/NkLThsTvSSOO8RT7ZhzERgO2TAekRNq0QF6vOP1ZB+cLguJQ/Fm
	SbwNlJKlYEO3S7QapkVYKu88QK7JaDPqsnhkA8G6KEQ7YmNdcHto2VcEaJUw8lNaLiWv
	lifwarOdFZbi+FW18HY8UWamqN2gXXQ5HZcLct2CJREHQQlKkj262gpYsw6R3XS4ID9E
	cefkDtxvI2gVulTl5L5WFhNBDMgobMLAmDNMbEcPqnfwg67o79Tbt+DTP9AOeS2Tee0H
	Su8WWMbFTXlpHLZnP7qPljeLYgGrTecNZ2bU3p1kGeGmpvs/kIleTtMSnudGGpQXG6Ln
	p6eQ==
X-Gm-Message-State: ALoCoQm/O/7vf4hFytlNoS66WUvInayERMSwgJ6j4Xacx/ZnuFNAO/tJo+G3QHkpI67qm2jEGr3g
X-Received: by 10.14.202.8 with SMTP id c8mr3997824eeo.88.1390250245424;
	Mon, 20 Jan 2014 12:37:25 -0800 (PST)
Received: from gmail.com ([79.116.111.233])
	by mx.google.com with ESMTPSA id u7sm6954327eep.11.2014.01.20.12.37.23
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Mon, 20 Jan 2014 12:37:24 -0800 (PST)
Date: Mon, 20 Jan 2014 22:37:15 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20140120203715.GA3608@gmail.com>
References: <1390158956-24554-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1390158956-24554-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [meta-raspberrypi][PATCH 0/4] Some updates
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
X-List-Received-Date: Mon, 20 Jan 2014 20:37:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jan 19, 2014 at 09:15:52PM +0200, Andrei Gherzan wrote:
> Updates and some additions in packagegroup-rpi-test
>
> Andrei Gherzan (4):
>   bcm2835: Update to v1.36
>   rpi-gpio: Update to v0.5.4
>   packagegroup-rpi-test: Add some packages
>   omxplayer: Update to remote HEAD
>

Merged. Thanks Alex for reviews.

--
Andrei Gherzan
m: +40.744.478.414 | f: +40.31.816.28.12

