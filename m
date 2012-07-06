Return-Path: <jfabernathy@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A898BE006EA
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 11:58:50 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so9523679yhf.35
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2012 11:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type; bh=x3e/9qbg0XzzuNQdtj3RcEPnIm6C/4ogoHtTvzljMGk=;
	b=lQSBjbBfFeDDwgZRVkQfUKlLQS/hj9vV5GAzO3y8+pdN2r6RBsiLnfcTSkbFFtOUfv
	KHFM/X3D+b5F6GcVIV1RN2KjqmrGILfPGxBKr1G52VPfhXz0adw8wBtLCiey26mGZlU3
	hqQdTGa05PE4yorR1RnKp1mY71sp3yjNB+LOCWhf5fMUghxmPwzyFcFiBW1NM+9zp4fI
	SNu6gHRVmjnK38DLweadSKhF4+QqQk03ykM0WXevXI5di9NCGwvUDP4Ys5xxkkg82lxC
	G5Xt5wes6A8WzeCbhiQ/WF8nTxy3tsxRkF825WqpgfkdObv5tnPp3WHsOZ4cpGOe+aC+
	WNVg==
Received: by 10.236.78.195 with SMTP id g43mr36853432yhe.62.1341601130063;
	Fri, 06 Jul 2012 11:58:50 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id n15sm23275503anh.6.2012.07.06.11.58.49
	(version=SSLv3 cipher=OTHER); Fri, 06 Jul 2012 11:58:49 -0700 (PDT)
Message-ID: <4FF73569.4000105@gmail.com>
Date: Fri, 06 Jul 2012 14:58:49 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Documentation improvement
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Jul 2012 18:58:50 -0000
Content-Type: multipart/alternative;
	boundary="------------040701010002070609020107"

--------------040701010002070609020107
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I was looking at the Yocto Development Manual (Latest), section 
4.6.2. Creating Config Fragments.  I was confused about the file 
statement and the naming of the directory to locate the fragment file 
until I found a similar discussion in the BSP Guide (lastest) section 
1.2.10. Linux Kernel Configuration.

The section there is much more understandable.  I think we need to 
modify the development manual or have it point to the BSP manual. The 
text from there (below) I think is better.  I still think it's confusing 
about the naming of the subdirectory where the myconfig goes. Maybe a 
complete example would be good.

    For example, suppose you had a set of configuration options in a
    file called |myconfig|. If you put that file inside a directory
    named |linux-yocto| and then added a |SRC_URI| statement such as the
    following to the append file, those configuration options will be
    picked up and applied when the kernel is built.

          SRC_URI += "file://myconfig"
                     

    As mentioned earlier, you can group related configurations into
    multiple files and name them all in the |SRC_URI| statement as well.
    For example, you could group separate configurations specifically
    for Ethernet and graphics into their own files and add those by
    using a |SRC_URI| statement like the following in your append file:

          SRC_URI += "file://myconfig \
                 file://eth.cfg \
                 file://gfx.cfg"
                     


--------------040701010002070609020107
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    I was looking at the Yocto Development Manual (Latest), section
    4.6.2.&nbsp;Creating Config Fragments.&nbsp; I was confused about the file
    statement and the naming of the directory to locate the fragment
    file until I found a similar discussion in the BSP Guide (lastest)
    section 1.2.10.&nbsp;Linux Kernel Configuration. <br>
    <br>
    The section there is much more understandable.&nbsp; I think we need to
    modify the development manual or have it point to the BSP manual.&nbsp;
    The text from there (below) I think is better.&nbsp; I still think it's
    confusing about the naming of the subdirectory where the myconfig
    goes. Maybe a complete example would be good.<br>
    <br>
    <blockquote>For example, suppose you had a set of configuration
      options in a file called <code class="filename">myconfig</code>.
      If you put that file inside a directory named <code
        class="filename">linux-yocto</code> and then added a <code
        class="filename">SRC_URI</code> statement such as the following
      to the append file, those configuration options will be picked up
      and applied when the kernel is built.
      <pre class="literallayout">     SRC_URI += <a class="moz-txt-link-rfc2396E" href="file://myconfig">"file://myconfig"</a>
                </pre>
      <p> </p>
      <p> As mentioned earlier, you can group related configurations
        into multiple files and name them all in the <code
          class="filename">SRC_URI</code> statement as well. For
        example, you could group separate configurations specifically
        for Ethernet and graphics into their own files and add those by
        using a <code class="filename">SRC_URI</code> statement like
        the following in your append file: </p>
      <pre class="literallayout">     SRC_URI += <a class="moz-txt-link-rfc2396E" href="file://myconfig\file://eth.cfg\file://gfx.cfg">"file://myconfig \
            file://eth.cfg \
            file://gfx.cfg"</a>
                </pre>
    </blockquote>
  </body>
</html>

--------------040701010002070609020107--
