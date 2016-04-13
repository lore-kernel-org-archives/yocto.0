Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAFE9E00D02; Wed, 13 Apr 2016 09:41:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f193.google.com (mail-ig0-f193.google.com
	[209.85.213.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BD52E007C5
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 09:41:18 -0700 (PDT)
Received: by mail-ig0-f193.google.com with SMTP id qu10so7306079igc.1
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 09:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=CnJMdxzffjRdX7Ui9ewhjXExTPIFkagZ1LCc2+viM3U=;
	b=oOiuQNpWjyWXDMNmceMR/nKeBpyYQ5THTTRTkSHyzpbjmVKDdEnCNWZhbrutKcLdUe
	zJBgHw/vFbc+9Efie1u5xNJWv9mrr5GWMKfJ6fgqIeDzzoVOsitfW9dFrCWcwU9qlPiT
	reTxhiHVh92EhAN/jzK1wx8rWjTpjPvaBV7PYc7E0JdhoXd4lAFLtquGHRvy+gJksm5N
	FjEhpgDlsfXctcQ3BZvS45Vtgxt7S+Tp/gUOUCh2n80VD5DshXajtwRBwKuIritQBKrG
	HfSyZGOzw7ZVCWbOkDLQZMKo6eCwlm6JwT48eerjVvQevVP1hS5Oh8lZDs6vW/aSlJz+
	Hd1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=CnJMdxzffjRdX7Ui9ewhjXExTPIFkagZ1LCc2+viM3U=;
	b=RaQd2mPuq8h1jQG779Py+kSElsVs0bpZIol7TVm9NyRnFRzcQk9Kp7sT2J/Egifssg
	HWNVl+krU4V9h29LRwGY/69vaAw3FTbHIKWKnHQsMwJFHw1t1gc4I2Z5TJNZq3Fedmni
	84FSv4atdv5u92mhwElChYKUHwNsT+HhGkOnIXQBMtpGCXUX6fUbL8MkkduFxFqIDc0/
	Awf8qf0qyBxBVCfFAPvFnxPN0KXjDfpNNU0zSxMaw62yBA86dZjTKMabop906+3mUiST
	3OdUHEmKvdlq5onPjeHwYPxClQChirB2EtzDW5YCkM1Dkq1nkwr6S7eoqHiDkec5s3FE
	vG8w==
X-Gm-Message-State: AOPr4FXTsrOtlPLyo4+UFtAhd5M4i0EGhjKLHpBaFi8MqIpaoJ/PuSInramW4yFOArBYWQ==
X-Received: by 10.50.61.174 with SMTP id q14mr4205618igr.25.1460565677541;
	Wed, 13 Apr 2016 09:41:17 -0700 (PDT)
Received: from linux-yxv0 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	gi3sm1013472igc.21.2016.04.13.09.41.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Apr 2016 09:41:16 -0700 (PDT)
Date: Wed, 13 Apr 2016 12:41:29 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <20160413164129.GB27168@linux-yxv0>
References: <1460411685-12573-1-git-send-email-twoerner@gmail.com>
	<20160413022036.GC22139@resin>
MIME-Version: 1.0
In-Reply-To: <20160413022036.GC22139@resin>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 1/2] raspberrypi3: serial console
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
X-List-Received-Date: Wed, 13 Apr 2016 16:41:20 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed 2016-04-13 @ 04:20:36 AM, Andrei Gherzan wrote:
> On Mon, Apr 11, 2016 at 05:54:44PM -0400, Trevor Woerner wrote:
> > The serial console on the Raspberry Pi 3 is located at /dev/ttyS0 and not
> > /dev/ttyAMA0.
> >
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > ---
> >  conf/machine/raspberrypi3.conf | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
> > index 1b73f2f..cb6056e 100644
> > --- a/conf/machine/raspberrypi3.conf
> > +++ b/conf/machine/raspberrypi3.conf
> > @@ -7,3 +7,5 @@ MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
> >  MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
> >
> >  include conf/machine/raspberrypi2.conf
> > +
> > +SERIAL_CONSOLE = "115200 ttyS0"
> 
> As this seems not to be unified anymore, would it make sense to remove
> it from rpi-base.inc and define it in every machine conf?

Sure, I can do that too, no problem. I'll start a new patch series for just
this one change since it is a different solution (therefore it won't be a v3
on this one).

