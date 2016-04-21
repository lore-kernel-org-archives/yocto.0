Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D54A4E00CE8; Thu, 21 Apr 2016 10:52:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99039E00948
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:52:47 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id 127so5173003wmz.0
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=svLx2cKAFa7rC+oMq02ldVWWBULSnFZ0yVDS/3xP69Q=;
	b=jPRhoqkqwnK6WvjRuVZ6x/EWmKilxbT15U/N+fZpxphUOP/WiIITH6F8Er0gMvPmsh
	AnXIVAMAyBw9B+tp9qK9A0sDtFbHbEvKyx6GRMgjccRRVr9c4Aw5Y73JlhXk8/7cAAaC
	1g93wxJzwIzQidXbwKV2lS1nsMVjX6gjOJ5zaTUguVuOB5yErhG9xDTepY43Nqek5xVQ
	z//rGtjM3qR2A9opOkU0QE28Belon7qBZQiTpSC+Pqp0nKsnNJU9mXWpxgpf0GLWtdKs
	zq9anyt0+WEtv4RN65NzJjvOsWpxR/mCBdKz3OQvOhkfxuL49fFm5m5O8JPj3hyvDLq8
	RQfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=svLx2cKAFa7rC+oMq02ldVWWBULSnFZ0yVDS/3xP69Q=;
	b=V0S5qq6mTT3zacUgJ6J3tp0JXVwS+LmBUNgOfyiJtBKpsSo0cneYxQpjMKz9fz1ZIl
	ERcHn+ZFz/WLyEc4YLEEEwrIFQ22lHxRY9qR3QvURqI8m1M8lEo2fi98S5nxHZ44sFcv
	LOtTxeIRScxAub+B7P5AHGVanxDaOSq+oVaxKcCBclLpOYqCdlaOHQ2ZJEJz8hG1MmrV
	zXtIpfXHjD7HWfIiNvRSdVLvKGAhAsLIqbvZUdQPz+VyiDrDCxh9xNZxdc9PwZN/6HBB
	emXbrc7JJs4lB3iDF6hT5t2vRGyU3Ztaxb3yXnJxy8/noaIVbGWy+xVGEmd72PhZgV9I
	wbAQ==
X-Gm-Message-State: AOPr4FW7qRBWX2hrtLSRBwGBBmEmh6t4V/RYj7QHW2ypQ+XTArE3Hw+zHsuXKis2eGo0bw==
X-Received: by 10.194.125.201 with SMTP id ms9mr15904403wjb.71.1461261167235; 
	Thu, 21 Apr 2016 10:52:47 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	d123sm16038993wmd.9.2016.04.21.10.52.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 21 Apr 2016 10:52:46 -0700 (PDT)
Date: Thu, 21 Apr 2016 19:52:44 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Theodor Gherzan <theodor@gherzan.ro>
Message-ID: <20160421175244.GR1588@resin>
References: <1461259933-1661-1-git-send-email-theodor@gherzan.ro>
	<1461259933-1661-3-git-send-email-theodor@gherzan.ro>
	<20160421174319.GQ1588@resin>
	<CAJjOg+G2Xyp96wE_yyr=XamnwpSdnn5Ywk4GoP0B8P-pFXOGrA@mail.gmail.com>
	<CAJjOg+EqA-Cbi+Sv+q5j64RxXt3UMwD+y8PUoOYU7A9FKrQp9g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJjOg+EqA-Cbi+Sv+q5j64RxXt3UMwD+y8PUoOYU7A9FKrQp9g@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 3/5] rpi-config: Add UART enabler
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
X-List-Received-Date: Thu, 21 Apr 2016 17:52:53 -0000
X-Groupsio-MsgNum: 29559
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="//h4sZKAxcnndsN6"
Content-Disposition: inline

--//h4sZKAxcnndsN6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 21, 2016 at 06:47:29PM +0100, Theodor Gherzan wrote:
> A new config.txt setting has been introduced - enable_uart - the
> purpose of which is to control the initialisation of the UART(*). The
> default value varies according to the primary UART on the platform -
> if the PL011 is the primary UART (that used for the console and boot
> messages) then enable_uart defaults to 1, and if the mini-UART is the
> primary then it defaults to 0.
>

Got it now. So people with rpi3 will need to set this to get serial
enabled but rpi1-2 will get it by default. Can you please add a summary
in README too?

--
Andrei Gherzan

--//h4sZKAxcnndsN6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXGRNsAAoJEHO76Gt+erfPZL4P/2CgsZ7Fn6VLwJit8rbQCrZ7
k2V0Re2QsC0cubQc0mqEj7kRwFEyuGL5GD3lkgkRQF1ZgI9O+nMtFmdOnjgYZmSp
/05jzYhcOnMEYSfp33HQkRfVzPWl8bkRlHMgL3Ydw4ciCDVNU+ee5UEFvBjw3lp/
Mf/1rKtP/9QWE2tPbZvdRoXSv39CxdpC7AYQL8PlG09VynMU57qrAlgnWFQWfe8p
mPlAyYb33T6BrzTX1auDJT5tyi4uhbLqeC6MaCxsgx41zcxlOfGjUoVpE8LMh8hX
QTV8u/X8cIO7XCslQHOrzLsU/ixgQnmjXHLMvAsVQgbqfJwHheitD+daoFmk+3RU
oHoWG/oXZNDlnI8nreo8dX0MFRYXcrvPvvKiJLHP4zk1ZQoD3XW+CmWVeBHf+K63
cTa4hfyRZN9Y5Gq9qESQdlG3y++fTIvxlb4diZgiNElOROftP0tTj+ujcF/gqu9U
zoaRxht1xdEaF+nBNVzuywDXCri5QjtiRWi4VTBGJt9dnWWqaVsIwBuLNlSJaPKq
RGZRM+DmCyR2Ei8GyPQfbvPHgn3XMPatm3TbzavhHRvy92ym/m5Yijc8pK7aP2Vt
Vfnpgm0Ceb1B2sreaIvt9Wim27EC09gpvrTJq9zsL3yRRJLhG5gc8EZzo8aVhhSq
5kQTStFd5YfdXWt5UO/b
=IVlD
-----END PGP SIGNATURE-----

--//h4sZKAxcnndsN6--
