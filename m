Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E876E00547; Tue,  6 Dec 2016 07:48:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B451E0050B
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 07:48:05 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id m203so22236740wma.3
	for <yocto@yoctoproject.org>; Tue, 06 Dec 2016 07:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=AKNwhleoNfHwYRLp7lfKVULRGhQKJAYJhRafZP9Dczc=;
	b=Ji8iRQ84e1MO2ZtsahJBLN/AQ9fp/nvzMytNbCN1wmdm8S/K6av8jaymOUEWuWsTS6
	eW3SSdh2VkVbGQYIyTxcgf4VpD16OeHebLlXjDkogqLKrRrg86iTSP33oRiAZiqd9+Z7
	FNQCBB4GedyoYp4+7hOZfn0vZW/DrLJzLyuLgf+HfzoA8MSX144e2rIAIxm8ahWlVl88
	9GoNZU2OdrZQIJBMwryb+/O+uNnFYUBteR2c5/WegaZ/AJLpKsp8sjEZO634YiktP5pm
	Lx36zJFD9mpA17wzN//SFe6JwEhAwp8qsVGhI6gN+C9z53kFNTHiwuJmI094EkUmFjXv
	ZnXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=AKNwhleoNfHwYRLp7lfKVULRGhQKJAYJhRafZP9Dczc=;
	b=awGbiD7mR7x6Fzy0YqGD+Q8VkKuMHRf6hpUuF9Gc3LAfuXazUSRlptDeFCLjB9fzFH
	s3GT0zV2vPDp7BHwUrD9lfxbJcRY8mWOJ3kn7z69Z5Xa8QpACOSl7T5+Gi5voZcGm9/u
	1Tnu1jRn+5NcaEV8HrPV16GihGcpOCq5hP0iSuOH3TQDh5e8DHR+R/Tn1lm7vECzApjW
	5AZiPhLqYOaEDKK5DpLxaEQlSD8aiw0hoW+AfzA4ZBc8yaaqbEv2hg9j6MCiUVlKnScl
	9CQs12ooM/WxWomAMoFW4MCUcALFwdZ8CAuCwrsmNCfy948YEFy/sJh2os8ZD+ypH3ud
	cG4Q==
X-Gm-Message-State: AKaTC01IfjE4E5wHyRG3cXkW5JsaG+kXlmu+uchIwDeZpkNa/FsiEHYAm6odV7KJzvKkfw==
X-Received: by 10.28.185.203 with SMTP id j194mr3177265wmf.73.1481039284236;
	Tue, 06 Dec 2016 07:48:04 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118])
	by smtp.gmail.com with ESMTPSA id q7sm26389427wjh.9.2016.12.06.07.48.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Dec 2016 07:48:03 -0800 (PST)
Date: Tue, 6 Dec 2016 15:48:01 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20161206154801.GC1636@carbonA>
References: <1481016818-27612-1-git-send-email-gary@mlbassoc.com>
	<001e01d24fbe$b293d8e0$17bb8aa0$@neuf.fr>
	<4618c4f6-81dc-18ca-dfc6-a823ee640bc3@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4618c4f6-81dc-18ca-dfc6-a823ee640bc3@mlbassoc.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] gstreamer1.0-plugins-bad: Don't hard wire use of userland
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
X-List-Received-Date: Tue, 06 Dec 2016 15:48:07 -0000
X-Groupsio-MsgNum: 33317
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mvpLiMfbWzRoNl4x"
Content-Disposition: inline

--mvpLiMfbWzRoNl4x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 06, 2016 at 04:02:20PM +0100, Gary Thomas wrote:
> On 2016-12-06 13:45, Herve Jourdain wrote:
> > Hi Gary,
> >
> > But dispmanx is really only provided by userland, it does not exist in other
> > flavors of egl/libgles.
> > Actually, dispmanx should not be selected in PACKAGECONFIG if userland is
> > not in use for EGL/GLES.
>
> Fine, but I'm looking for a solution where I can choose to use vc-graphics-hardfp
> so X11 works again and I can also have gst-player which depends on gstreamer-1.0-bad
>
> Any ideas?
>

Disabling dispamanx is not working?
--
Andrei Gherzan

--mvpLiMfbWzRoNl4x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYRt2xAAoJEHO76Gt+erfPR6IP/1aHrpIpPRL1cpNGVqyY7yKY
7GZQioyXqTDW18lb1DCtYXLVGX4hDJz0UMS2S+IEuVoY44EhGHGQrQPk525n8LBb
HTV9n8ONnXekzvSKstXX+IoEbINgAHWnLeeIcZSr8wm8XeA8sWNJBhe+EmuZvsRd
w8blj+fW9vTa/eOINzZn7cqdyebCKcIpnsZUVQYfppRbfnfA7QWKNxmkc7rzNs3Q
9SZyIr/wKeHO/RnBCgbtqLQFS7ixgrXa0ngB2QF3ejtsFAeFYl3KexF86XQv4Ts9
SQ3e7HAVRq4LldJ1dtay+6ioLuH4LzNsaSz4RizRC2lyzvPsPuOc3wrY0sDX93cl
7vjlACpvmutugYffPW1I/uCDZqbyOLsCxwTn0ZeJVi72WrnkFo2cIBqX3KSR8nJh
DbcxBXjDg36/bcc2CY6xY5EMBY3Lnys2lGjJ41+BD0i6zCle1WBO7iEEGqoj78/c
64GtsBst+AsT1cqfaS+1qOTXzKDf47WNMsbL7bS/zW45sICwQeTrj8QbL5WMooFX
m7xNAGW5jjQM60UNeFkP4X5rz6T14hgZF23BhudQEoolhhwxQFECU4Zonmcy6zXX
wzQqeqDjyzQhS5TlUG1OT1mt5Agt3JjMHUdxS1N49BJ3Qzs/vf0/tFnUNZQUq0Bo
tRtZ9msmVfnDrQOop58W
=U7/q
-----END PGP SIGNATURE-----

--mvpLiMfbWzRoNl4x--
