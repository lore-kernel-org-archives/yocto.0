Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68DBAE00D67; Thu, 21 Apr 2016 12:18:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F9CEE00948
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:18:10 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id n3so148618616wmn.0
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=CCfOQHOe3N7y1qyu+S9Q3J0bhAuMg/5hJKxOlKdVCz0=;
	b=uyQ73FRubm1kwHcZkiCrkIf/2Au5odWIBkvI6KjnNz6V5sRxNVZGUyZTBzBLTiLHRN
	w/KgIkm5lruwMUfEpdHvJlSYs8iBgEcCq/uUBNF5n0RtKN9wpJjkyUxFhKFJ17wc/LXJ
	Z4zepnDXsAdQ2/a9zWN1SWKcUlIX/tw2HC+kAHbLekHBeffkJVUJfrEIYkxG8tIlil8o
	lpks9zjYcmoBAdp1WTDPf1yzFlQtnFOZidqz7RzJiMwgUxBt488iPr0aMQZqvrIC8aQl
	7MjmFO/UUgCmPyS1LYEp5BSJluwUBdloyNkcqOyYN6b1RcY6b9vsTIh2DVUcvGwFVn9T
	Xh/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=CCfOQHOe3N7y1qyu+S9Q3J0bhAuMg/5hJKxOlKdVCz0=;
	b=eS86UdycfOcl8RPOxPLtAyWGhJSW2m7G104ON8LW7SPbzvaAoFN7fglEXQBGsHTvna
	rpWaX2KozKQTyWpCIaloiRUciR7mfOufqpKhzjO6ILc2w4w6T365Q3fKdgvqDGCzBQjC
	nqJUaIg7A7tjiVJRUKcPZ05tzRadMo2+cGhWcDNRGssNJgwpLHatDNLnmSsf0Mv9tyhH
	crsxEC4iE/zvfI7yRK0TmGgiOSgt/S5DoF3UwufVEraGQDbzlTssKlBkB4x2Q9z5s6Ax
	emlNBHIjC89jk5/KT0N7V041ekYxgooJk9OSQXmlsgXA5nrbS1pycS7V5SXEsdnm+fVO
	ntdg==
X-Gm-Message-State: AOPr4FUQvYxzTS/XFh1Dm3SVTO0eBedGOGqsiGF/aR5WFwmvix8M7UIS9emwjo5Id2AKyg==
X-Received: by 10.28.157.202 with SMTP id g193mr6312086wme.46.1461266289863;
	Thu, 21 Apr 2016 12:18:09 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	202sm16361475wmw.5.2016.04.21.12.18.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 21 Apr 2016 12:18:08 -0700 (PDT)
Date: Thu, 21 Apr 2016 21:18:07 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20160421191807.GB29750@resin>
References: <1460567181-3241-1-git-send-email-twoerner@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1460567181-3241-1-git-send-email-twoerner@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] serial console definition split
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
X-List-Received-Date: Thu, 21 Apr 2016 19:18:12 -0000
X-Groupsio-MsgNum: 29565
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/WwmFnJnmDyWGHa4"
Content-Disposition: inline

--/WwmFnJnmDyWGHa4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Trevor,

On Wed, Apr 13, 2016 at 01:06:21PM -0400, Trevor Woerner wrote:
> The latest raspberrypi3 puts its console on ttyS0 instead of ttyAMA0 (like all
> the preceding boards). Therefore pull this definition out of the common
> include file and add it separately for each MACHINE.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>

Merged this to master.

--
Andrei Gherzan

--/WwmFnJnmDyWGHa4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXGSdvAAoJEHO76Gt+erfP/oUP/iB5tBF20DqLA6I0bfQR1qUC
89TQWkSR9kkpYODxIXoUl7aftohO1CaQlHAFnNk5/Xbz0QwUwjBt31lFIOZQF+NN
Dfqhwc3W7J4ACr9uOvMpGHDplX0Q0ZqR0U+4ZaDr9XMr3b2uu6UB9zUbjuguvUyN
BTCszpKX6JajDJfOXP+oHjKFdD+Zh4y24psY8cVxRPRlUWzX6YP7RPgdIEK6MEQk
MQXykT6TO5BqWLdGcURP0cr/jbS6J3IOdD1Jkn45YWdhBJ2z9o7KfioRNpi1jPIL
kvLSSDYArANeCp9P8L5bhS7v7JYAfrshQm3TjAvLLhaJQIyw7AQ9xczQS6KQ3G93
qyeT9vhFLEaAxVjmTY0mZjWle4mzmh4c5DavWBN/w9B2K3MiErRHzFYLxqDYcCyY
oyRkjSeQkaTpT8hTO5GnhBAQjHA+YokS48Zjo+20CDhaHsPDn8mDg7kKJe5lNHux
cbq8l3XGmHBYV4sfZyhbcUVw3yJMGcuwgCzI9bZctUBfelaMwJaJ6WmTmePua4+m
ktofBGKcGzdkUiYMU/BCmmVJ6QZ3MsIxl7PvdEMQzDzc0pLSUiAydwA0Th9jvkAg
y8q61nLFQYbI32WcJ9wjK8WH2MqL0Ldu3NcbMmBpKpjEFuq9FOPcFimadIa+AGN4
3PZf2NzHGSvPbi9msdBD
=zXQL
-----END PGP SIGNATURE-----

--/WwmFnJnmDyWGHa4--
