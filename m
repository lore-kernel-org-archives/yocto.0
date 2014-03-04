Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B8A7E00A25
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 10:29:27 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 331CF862DB;
	Tue,  4 Mar 2014 18:29:27 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id zJWoLp2NJgXl; Tue,  4 Mar 2014 18:29:26 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id C1CA68610D;
	Tue,  4 Mar 2014 18:29:26 +0000 (UTC)
Message-ID: <53161B82.2050102@dynamicdevices.co.uk>
Date: Tue, 04 Mar 2014 18:29:22 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Joel Parker <joelparker27@yahoo.com>
References: <1393957086.3749.YahooMailNeo@web163103.mail.bf1.yahoo.com>
In-Reply-To: <1393957086.3749.YahooMailNeo@web163103.mail.bf1.yahoo.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
Subject: Re: rootfs_failure
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
X-List-Received-Date: Tue, 04 Mar 2014 18:29:28 -0000
Content-Type: multipart/alternative;
	boundary="------------020302080401080505070702"

--------------020302080401080505070702
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 04/03/2014 18:18, Joel Parker wrote:
> DESCRIPTION = "A console-only image that fully supports the target
> device \
> hardware."
>
> IMAGE_FEATURES += "splash ssh-server-dropbear"
> IMAGE_INSTALL += "\
>         lighttpd \
>         sqlite3  \
> "
>
> LICENSE = "MIT"
>
> inherit core-image
>

"When that drops into the devshell look at ../log.do_rootfs to see why
it fails."

* ../temp/log.do_rootfs

--------------020302080401080505070702
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 04/03/2014 18:18, Joel Parker wrote:<br>
    </div>
    <blockquote
      cite="mid:1393957086.3749.YahooMailNeo@web163103.mail.bf1.yahoo.com"
      type="cite">
      <div style="color: rgb(0, 0, 0); font-size: 16px; font-family:
        HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida
        Grande,sans-serif; background-color: transparent; font-style:
        normal;">DESCRIPTION = "A console-only image that fully supports
        the target device \<br>
        hardware."<br>
        <br>
        IMAGE_FEATURES += "splash ssh-server-dropbear"<br>
        IMAGE_INSTALL += "\<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; lighttpd \<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sqlite3&nbsp; \<br>
        "<br>
        <br>
        LICENSE = "MIT"<br>
        <br>
        inherit core-image<br>
      </div>
      <div style="color: rgb(0, 0, 0); font-size: 16px; font-family:
        HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida
        Grande,sans-serif; background-color: transparent; font-style:
        normal;"><br>
      </div>
    </blockquote>
    <br>
    "When that drops into the devshell look at ../log.do_rootfs to see
    why it fails."<br>
    <br>
    * ../temp/log.do_rootfs <br>
    <div class="moz-signature">
      <div class="preview"> </div>
    </div>
  </body>
</html>

--------------020302080401080505070702--
