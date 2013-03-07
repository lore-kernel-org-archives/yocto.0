Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f50.google.com (mail-qe0-f50.google.com
	[209.85.128.50]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id BE2C8E0072F
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 00:52:51 -0800 (PST)
Received: by mail-qe0-f50.google.com with SMTP id k5so115119qej.23
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 00:52:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=9ggUB5kRdxwXt5DAJmq9m2sLaL5JUkp48A8s2zSZcaI=;
	b=lhJEgtANyN1A8bTh8aWNKIf40x3Tz8cJdXYZ7iQa8LaxE5OIk15CFjqofFXYrC+pRN
	D3EKwueXtUJQ+Ij5DeipHeujYX9B11GP9K66uoqx+6cREay1pPpdv0usL0PDXL+LXTRA
	pbNvM3vBfE7PoVpJiurw/BPDeijucF3yEBzJfdaPDB+qhUOBgj5R6eYHEg7h2GGTp20V
	2ltvSKUVcAtga0OlyEElXNbu4wpfMqg/yVu8ksIxBMK4DxJO8OezuXIriPqMflBpOO6M
	xUaji+Xd87tR1Rb63mA/touAMVVYMcpbBKzZm1EIv6aww8B1nG5r8QOd2X6erNjuNHuZ
	7fRg==
MIME-Version: 1.0
X-Received: by 10.224.173.147 with SMTP id p19mr49589717qaz.78.1362646370693; 
	Thu, 07 Mar 2013 00:52:50 -0800 (PST)
Received: by 10.49.67.98 with HTTP; Thu, 7 Mar 2013 00:52:50 -0800 (PST)
Date: Thu, 7 Mar 2013 09:52:50 +0100
Message-ID: <CAFyqS9qLnG1xA5b25iJK9vehuYHhm9WTR3MMTk1LbbJ3N7_F3w@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: nested meta layers, how can/should it be done?
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
X-List-Received-Date: Thu, 07 Mar 2013 08:52:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. I wish to write a custom meta layer that should add on-top of an
existing bsp for eg. kernel and u-boot builds.
But I want the custom layer to use .bbappend for some standard
packages and also add some custom packages.
My guess is that it might cause problems for the standard packages
(since they are not unique) due to the MACHINE will be pointed out as
the base bsp machine config, and the custom bsp will not define a
machine on its own. Does this mean that I will have to define this new
custom layer as a distro? I am worried that .bbappend stuff will never
be executed since nothing will actually point to my custom layer for
package recipes unless they are unique. What is the correct way to
handle this use-case?

Hans

