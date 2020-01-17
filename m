Received: from mxwn13.webd.pl (mxwn13.webd.pl [194.181.228.67])
 by mx.groups.io with SMTP id smtpd.web09.1348.1579246853441533245
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2020 23:40:54 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: xtrack.com, ip: 194.181.228.67, mailfrom: m.madej@xtrack.com)
Received: from wn13.int.webd ([192.168.101.113] helo=wn13.webd.pl)
	by mta01.webd.pl with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92.3)
	(envelope-from <m.madej@xtrack.com>)
	id 1isMFN-0003Z6-31
	for yocto@lists.yoctoproject.org; Fri, 17 Jan 2020 08:40:49 +0100
Received: from [192.168.101.231] (port=43743 helo=mta01.int.webd)
	by wn13.webd.pl with esmtp (Exim 4.92)
	(envelope-from <m.madej@xtrack.com>)
	id 1isMFM-0004GR-VI
	for yocto@lists.yoctoproject.org; Fri, 17 Jan 2020 08:40:48 +0100
X-Quarantine-ID: <Mj-xZH_8OlQm>
X-Virus-Scanned: amavisd-new at mxwn13.webd.pl
Received: from wn13.webd.pl ([192.168.101.113])
	by mta01.int.webd (mxwn13.webd.pl [192.168.101.200]) (amavisd-new, port 10134)
	with ESMTP id Mj-xZH_8OlQm for <yocto@lists.yoctoproject.org>;
	Fri, 17 Jan 2020 08:40:45 +0100 (CET)
Received: from azz22.internetdsl.tpnet.pl ([83.18.155.22]:35446 helo=[192.168.6.108])
	by wn13.webd.pl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <m.madej@xtrack.com>)
	id 1isMFJ-00063h-0Y
	for yocto@lists.yoctoproject.org; Fri, 17 Jan 2020 08:40:45 +0100
Subject: Re: [yocto] #sdk
From: m.madej@xtrack.com
To: yocto@lists.yoctoproject.org
References: <2zkv.1579182797318490741.rkdo@lists.yoctoproject.org>
Message-ID: <eb1cb351-8339-fcad-d36a-d5a2b83dcb8e@xtrack.com>
Date: Fri, 17 Jan 2020 08:40:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <2zkv.1579182797318490741.rkdo@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------F3988425F630EFFC28A21C70"
Content-Language: en-US

--------------F3988425F630EFFC28A21C70
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I investigate my problem further. I think the source of problem is 
connected to lack of this file

(SDKROOT)/tmp/sysroots/x86_64/usr/share/meson/meson.cross.template

I dont have even (SDKROOT)/tmp/sysroots/x86_64/usr/share/meson 
directory. Does anyone knows what could be a reason? Or how to add meson 
directory to this sysroot on SDK?

On 1/16/20 2:53 PM, m.madej@xtrack.com wrote:
> Hello, I work on Yocto warrior branch. I use debian buster. I built 
> extensible SDK for my image and wanted to install it. Build passes 
> without any problem but at the end of installation process i got 
> following messages:
>
> /SDK environment now set up; additionally you may now run devtool to 
> perform development tasks./
> /Run devtool --help for further details./
> */(SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3: line 5: 
> (SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real: No 
> such file or directory/*
> */post-relocate command 
> "(SDKROOT)/sysroots/x86_64-pokysdk-linux/post-relocate-setup.d/meson-setup.py 
> (SDKROOT)" failed with status 127/*
> /SDK has been successfully set up and is ready to be used./
> /Each time you wish to use the SDK in a new shell session, you need to 
> source the environment setup script e.g./
>
> In spite of fact there is information that SDK is successfully set up 
> it does not work and after loading environment devtool command output is:
>
> /$ devtool/
> /(SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3: line 5: 
> (SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real/
>
> To analyze the problem I also run:
>
> /$ file (SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real/
> /(SDKROOT)///sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real: ELF 
> 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically 
> linked, *interpreter 
> /opt/smart-recovery/2.7.2/sysroots/x86_64-pokysdk-linux/lib/ld-linux-x86-64.so.2*, 
> BuildID[sha1]=bc0bda633e50a52d06a027cc21707a0be0341f64, for GNU/Linux 
> 3.2.0, stripped
>
> /The problem is that interpreter file does not exist and this is 
> probably caused by problem which occured at installation process. Is 
> the problem known to anyone?
>
> 

--------------F3988425F630EFFC28A21C70
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>I investigate my problem further. I think the source of problem
      is connected to lack of this file</p>
    <p>(SDKROOT)/tmp/sysroots/x86_64/usr/share/meson/meson.cross.template</p>
    <p>I dont have even (SDKROOT)/tmp/sysroots/x86_64/usr/share/meson
      directory. Does anyone knows what could be a reason? Or how to add
      meson directory to this sysroot on SDK?<br>
    </p>
    <div class="moz-cite-prefix">On 1/16/20 2:53 PM, <a class="moz-txt-link-abbreviated" href="mailto:m.madej@xtrack.com">m.madej@xtrack.com</a>
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:2zkv.1579182797318490741.rkdo@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      Hello, I work on Yocto warrior branch. I use debian buster. I
      built extensible SDK for my image and wanted to install it. Build
      passes without any problem but at the end of installation process
      i got following messages:<br>
      <br>
      <div><em>SDK environment now set up; additionally you may now run
          devtool to perform development tasks.</em></div>
      <div><em>Run devtool --help for further details.</em></div>
      <div><strong><em>(SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3:
            line 5:
            (SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real:
            No such file or directory</em></strong></div>
      <div><strong><em>post-relocate command
"(SDKROOT)/sysroots/x86_64-pokysdk-linux/post-relocate-setup.d/meson-setup.py
            (SDKROOT)" failed with status 127</em></strong></div>
      <div><em>SDK has been successfully set up and is ready to be used.</em></div>
      <div><em>Each time you wish to use the SDK in a new shell session,
          you need to source the environment setup script e.g.</em><br>
        <br>
        In spite of fact there is information that SDK is successfully
        set up it does not work and after loading environment devtool
        command output is:<br>
        <br>
        <em>$ devtool</em><br>
        <em>(SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3:
          line 5:
          (SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real</em><br>
        <br>
        To analyze the problem I also run:<br>
        <br>
        <em>$
          file (SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real</em><br>
        <em>(SDKROOT)</em><em>/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real:
          ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV),
          dynamically linked, <strong>interpreter
/opt/smart-recovery/2.7.2/sysroots/x86_64-pokysdk-linux/lib/ld-linux-x86-64.so.2</strong>,
          BuildID[sha1]=bc0bda633e50a52d06a027cc21707a0be0341f64, for
          GNU/Linux 3.2.0, stripped<br>
          <br>
        </em>The problem is that interpreter file does not exist and
        this is probably caused by problem which occured at installation
        process. Is the problem known to anyone?</div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------F3988425F630EFFC28A21C70--
