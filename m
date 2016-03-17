Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BE4BE00C1A; Thu, 17 Mar 2016 06:37:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E91EE00C02
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 06:37:43 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id g184so41856650ioa.3
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 06:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0Ajz44eiEw/tC/rgTfxCh2rPzyCO/bqt6Ming67SrmE=;
	b=hOcV13ykae+o3o77u3W0E9/e/XycZ/0fjRxIkfCLR80mT2kpEyd4uefOJCCLtKd78u
	F+tOI9nF95UnPOszRzKTW5/qYYDJ95qpK5B7sy+jxcl0g1LzLRk5eVFtPXm9OQ8xbFeS
	SJH45cxg8npyZATsKp13GpTH+YaE1/FiyaV8Q1o4zkGbBNlDXJLx7YiHAsUWvAxDbosm
	VqRU52aM9UZ0wFBToxbcvhtmdC4DgDqmd1IsGYdQRs8jBBpALzCYAUXvm8OcFVh1vtHX
	lHX2UaRVmH055IKopfD6N0TpClm4Oif/MAs5PEx4XrQMJLvy8xx9kOFE4DcL+Ni0VGke
	MAVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0Ajz44eiEw/tC/rgTfxCh2rPzyCO/bqt6Ming67SrmE=;
	b=euaFK6s5AHrdIfmYIA+YWE3SxwbRKj8KSYDCSQk3kZTyoFpQNe8IK+eIuxy8DwPdFs
	VymI1KDSMXh5EK8ZjoC2v6RBJm+gxRzkHbKx1c6xUSdUwYIPpK9r4WTTmhJf4juWmuRu
	1tU6qiXwOXiEcThtvGVHutv7myEVwLvGKHE/uWttMoTyPWA3uUXh44aq4KSWQQAE1lst
	kojRvpgkAgERCtakydV4wZtO5VX1usjHKJCF1rkmg3p4VEK6Oh30N6cE+wUyjWO13W0r
	R2kc3L7vYgpMbvAlEN/LXn7iVnAT1jHfv8MbZKxz8CmtFOkC0JEhmmU6kX4hiVT+3H7P
	LTwQ==
X-Gm-Message-State: AD7BkJIItERfST8EtID/fXfROZgrCadRJ/2pKQWamd0d3JsSJkLyhspxyJd/gdcjavnzMIk7ah0C11v40jPquSAZ
X-Received: by 10.107.16.19 with SMTP id y19mr8912746ioi.148.1458221863108;
	Thu, 17 Mar 2016 06:37:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Thu, 17 Mar 2016 06:37:23 -0700 (PDT)
In-Reply-To: <CAJ86T=VyELsdt2XJ+SV9ZX8fst91ZLBEyU6ucPRXiEWDU9P7Fg@mail.gmail.com>
References: <AC14D1AE-9912-433D-BD90-A8519C28BA10@keylevel.com>
	<CAJ86T=VyELsdt2XJ+SV9ZX8fst91ZLBEyU6ucPRXiEWDU9P7Fg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 17 Mar 2016 13:37:23 +0000
Message-ID: <CAJTo0Lb9EiTE786Td0dbbKaOoAnrwVY0vAH8L-X6w_qcbLDeGw@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Possible introspection failure in master
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
X-List-Received-Date: Thu, 17 Mar 2016 13:37:48 -0000
Content-Type: multipart/alternative; boundary=001a113fd1ea2797ca052e3ebc53

--001a113fd1ea2797ca052e3ebc53
Content-Type: text/plain; charset=UTF-8

On 17 March 2016 at 09:37, Andre McCurdy <armccurdy@gmail.com> wrote:

> As an aside, I'm not sure that using DISTRO/MACHINE_FEATURES_BACKFILL
> for gobject-introspection-data is entirely correct since gobject
> introspection is not a feature which was previously enabled by
> default:
>

That is true.  Maybe we should just add it to the default distro features
and remove it from backfill.  I don't suppose you could make a patch?

Ross

--001a113fd1ea2797ca052e3ebc53
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 17 March 2016 at 09:37, Andre McCurdy <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:armccurdy@gmail.com" target=3D"_blank">armccurdy@gmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2p5" class=3D"a3s=
" style=3D"overflow:hidden">As an aside, I&#39;m not sure that using DISTRO=
/MACHINE_FEATURES_BACKFILL<br>
for gobject-introspection-data is entirely correct since gobject<br>
introspection is not a feature which was previously enabled by<br>
default:</div></blockquote></div><br>That is true.=C2=A0 Maybe we should ju=
st add it to the default distro features and remove it from backfill.=C2=A0=
 I don&#39;t suppose you could make a patch?</div><div class=3D"gmail_extra=
"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113fd1ea2797ca052e3ebc53--
