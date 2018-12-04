Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4C76E00BB7; Tue,  4 Dec 2018 06:13:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.44 listed in list.dnswl.org]
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF8F1E0097C
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2018 06:13:05 -0800 (PST)
Received: by mail-io1-f44.google.com with SMTP id n9so13694408ioh.7
	for <yocto@yoctoproject.org>; Tue, 04 Dec 2018 06:13:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=QrIixI3RiWvEUt2YOdmS5wJ307b7/3KMbYk095NHkp4=;
	b=I02UyUi85FehuqNxIgIB+z+lM1zvhdAbtB2vCqORZ/JJua3Xrj940lpL0wCtn1DYGK
	9dhodR+0UBS8O/wLdFYH8+HOhLZ2hodJxnbJ+DKD/RPfyoUihP90pt6elyQDNXZDZkni
	20mkPlR6Ni455Zd4hIy2oHNZIo0SJwa2vp0XqNEv6xc+pztYByj/YRrz1ZtTmtXIS/fK
	Fr4W+qui5/w3WHIKI7M2tD3XAo18ZpVyd1bBDeUhiR8RQAX2ugbm5L7J6lMVEK5RjGI9
	nbmVWNTrVSibEf+HBb6VmC/TOVhy061/iMLnIBX+g39WxJ83RiyjawAD7x7F9//TFmBw
	Da0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=QrIixI3RiWvEUt2YOdmS5wJ307b7/3KMbYk095NHkp4=;
	b=RP0GCqsPhKkDbFrrDq6oAR4wazukWCSrGBPLSRCcalKXttrQWzvcl3TkBfIta2lBOb
	+eQE8YcNcmW8V5w8BM05yb/pXuUt/7qIFwrzgjNG6StnLG4OFZc24qPpAaX5/Cn9ceNf
	vWUi1zx2xQbaBQdajv7dnljnCnA/2kSSK0r0uDOYVL6WB3Da+2/W8HJy6hmhwbninZN2
	3kD0D/l5Y7O2aMHL88+erjVJrfVCcY0enbX77tOt8+JQtq1MYS2PBEDgsikhblLa1Pza
	qdumxftVAcsyd413Wby/DgL73Q2nO3qn/8Ux8WOtiqfJvBK/QNjnJu0OQLrE7qQEfqF0
	Lamw==
X-Gm-Message-State: AA+aEWab9WhQgWQ+pqQSPRwMfddnfXnazCVLjz9mQSclDDW9kQcpzzqn
	YU6158Q/sE89nE8p8SjnjgkKPVhFMcYQT0fRG2ppWw==
X-Google-Smtp-Source: AFSGD/WDNybg8tzYfXEzTX+MTdz74vuZcGezfQ7faUz8toM0dQRsec9zvNuQdTuTjapriVtVh4FdoMdkoYkx8fDrX8E=
X-Received: by 2002:a5d:9697:: with SMTP id m23mr7708169ion.201.1543932785388; 
	Tue, 04 Dec 2018 06:13:05 -0800 (PST)
MIME-Version: 1.0
References: <B4ED84A4DCF0D84FB25CE972E5CF346A5D1831B68E@KEMPMAIL2.woodward.com>
	<CAJTo0LagP7=zjiXYSU=eXpm6dfH049HDhpF2N8frrB1oha3PZw@mail.gmail.com>
	<B4ED84A4DCF0D84FB25CE972E5CF346A5D185E24E6@KEMPMAIL2.woodward.com>
In-Reply-To: <B4ED84A4DCF0D84FB25CE972E5CF346A5D185E24E6@KEMPMAIL2.woodward.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 4 Dec 2018 14:12:54 +0000
Message-ID: <CAJTo0LbYmsR-khDHYfkG=D3nng7n4eLtPk+W1_hhoTPgCyOWTg@mail.gmail.com>
To: Georgi.Georgiev@woodward.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [EXTERNAL] Re: Missing dependencies in recipe-sysroot
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
X-List-Received-Date: Tue, 04 Dec 2018 14:13:08 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 4 Dec 2018 at 14:02, Georgi Georgiev
<Georgi.Georgiev@woodward.com> wrote:
> LIB := -L/usr/lib

^ don't do that.  That's not where the libraries are.

Ross

