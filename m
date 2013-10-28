Return-Path: <karl@hiramoto.org>
Received: from homiemail-a77.g.dreamhost.com (caiajhbdccac.dreamhost.com
	[208.97.132.202])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FE9DE011B9
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 02:15:30 -0700 (PDT)
Received: from homiemail-a77.g.dreamhost.com (localhost [127.0.0.1])
	by homiemail-a77.g.dreamhost.com (Postfix) with ESMTP id 05B3E94059
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 02:15:30 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; c=nofws; d=hiramoto.org; h=message-id:date
	:from:mime-version:to:subject:content-type; q=dns; s=
	hiramoto.org; b=ViGqp+QP03sMI47ibJGyJ8PE/WItZlmzCMnXSFtHQjfZvopQ
	FyHuVUibBzdCscSjpuBsmD/198lVFUh2kTFZUrPgDzMMTbFzdGAv/8X05IzSU4FJ
	QAE1ZGI0ubR16WdubbWMZYnIsnSIz5Z38eJUblXbt8kgQxaXXrp1ZmXxsD0=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=hiramoto.org; h=message-id
	:date:from:mime-version:to:subject:content-type; s=hiramoto.org;
	bh=3L+WBQy4UasBE3q7MJbe2cBGAOY=; b=bnw69wdp1tKWiTL8VIBnR0AygNq3
	n7VE3Ib3sACjxwW7/JeWB3NzUfaSq9n+km6/U/S+hB6fmMpiQeAoJnp11L7Q9cWq
	17oxzrfl9QUeRWi8CYCxpyCE3klA2AnBtVs4p4oQ9CJinQchqu9uYAweBfKjhuLb
	p/VPc4/xbj6w9/I=
Received: from [10.64.1.2] (139.Red-83-61-237.dynamicIP.rima-tde.net
	[83.61.237.139])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: karl@hiramoto.org)
	by homiemail-a77.g.dreamhost.com (Postfix) with ESMTPSA id 6363E9405E
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 02:15:29 -0700 (PDT)
Message-ID: <526E2B2D.8090904@hiramoto.org>
Date: Mon, 28 Oct 2013 10:15:25 +0100
From: Karl Hiramoto <karl@hiramoto.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130921 Thunderbird/17.0.9
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: different EXTRA_OECONF per package based on image recipe
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
X-List-Received-Date: Mon, 28 Oct 2013 09:15:32 -0000
Content-Type: multipart/alternative;
	boundary="------------080408020204050906000200"

--------------080408020204050906000200
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Hi,

In my overlay i have different Machines with different images that are 
built.    In a couple of packages i need different autoconf configure 
args based on the  machine or image.

Is the best way to do this via PACKAGECONFIG, create multiple overlays 
for machine1, machine2, machine3, and common?     Is there a better way?


Is there an example somewhere of different package configurations for 
different images?

thanks

Karl

--------------080408020204050906000200
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <br>
    Hi,<br>
    <br>
    In my overlay i have different Machines with different images that
    are built.&nbsp;&nbsp;&nbsp; In a couple of packages i need different autoconf
    configure args based on the&nbsp; machine or image. <br>
    <br>
    Is the best way to do this via
    <meta http-equiv="content-type" content="text/html;
      charset=ISO-8859-1">
    PACKAGECONFIG, create multiple overlays for machine1, machine2,
    machine3, and common?&nbsp;&nbsp;&nbsp;&nbsp; Is there a better way?<br>
    <br>
    <br>
    Is there an example somewhere of different package configurations
    for different images?&nbsp;&nbsp; <br>
    <br>
    thanks<br>
    <br>
    Karl<br>
  </body>
</html>

--------------080408020204050906000200--
