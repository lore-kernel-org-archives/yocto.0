Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D71FE00BA2; Wed,  9 Aug 2017 18:19:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTTP_ESCAPED_HOST, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.54 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (antonius.riko[at]gmail.com)
	*  1.1 HTTP_ESCAPED_HOST URI: Uses %-escapes inside a URL's hostname
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f54.google.com (mail-pg0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B2C3E00B77
	for <yocto@yoctoproject.org>; Wed,  9 Aug 2017 18:19:39 -0700 (PDT)
Received: by mail-pg0-f54.google.com with SMTP id u185so34786285pgb.1
	for <yocto@yoctoproject.org>; Wed, 09 Aug 2017 18:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=cu+5tdMIPO2JbfmRvfAcDLRC0iFF4VVBEPPM55mv0c4=;
	b=oOK+zeFSC8spmT6srZG8Oddk/Z0uyPjksMZdDFJqE6t6LibBpJkfFuWfoRjnmkoTNW
	hGk6wzNeAiTZ/a/R7zWtlfClGoo72WiVkCwIlpCNo7qSHIuAJKL67+AuV/XVHH4WPB6Y
	D1BvYTReEUtMfkY321QTJCPjy4QMtQaUtr0XrwjsHJiXjuzFcI+KRPUuy9wfQW9tqTaT
	gHDJjuTjbzssM1yYu5FoNJSylenkfF2fVnWNevMDnX/l/GYHnW7aQlk5l6icnQlcmVAz
	lsOYhX5vYRDGI1mAj+FESoEmmzNCudDTKvR4jFWXwCPeWWkLjHBXNJ3B5WZEM3OR1jHW
	IzIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=cu+5tdMIPO2JbfmRvfAcDLRC0iFF4VVBEPPM55mv0c4=;
	b=K3B6Pdia2KSMx6+/V/jdfZOZ6USqP5q2jV3hR1Gou7J2lcuum4iVBJtEKGbME2VY/y
	MUVsOIu+dK5O1QvVqD4QGAGTxLmto5ARkFdA+r92sj6zZMsEwfG1WTBrm5Ckd6jYyLGZ
	5VouGvmw6a/vwahmM0g9OFDgIFBB+LZCqMmJbGz18GCZYDDvHYHdFHy5iZOIA9tSjaS3
	goMdvmXsP50QlM4iTXw63fbp6dgLAL6ea4FRw6MHToBqOKbywFVGk4P3H69Mu+OAD9x7
	gWrGdBNO/eXrgpCg1mmQS9XAKC0fxlaIxEMvykcljDkU/Br9g+U7RANcatnqfaGjIexk
	bIpw==
X-Gm-Message-State: AHYfb5gc5Z5W4fgqjNCc/Wo+gopls8s+6qylBPRl8jgfBTnDEt8995AX
	+bIEEn/0j2TAI2drMRA=
X-Received: by 10.99.104.10 with SMTP id d10mr9649575pgc.186.1502327978909;
	Wed, 09 Aug 2017 18:19:38 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:a942:55e:b6bc:47ea?
	([2001:8003:804a:b500:a942:55e:b6bc:47ea])
	by smtp.gmail.com with ESMTPSA id q191sm64363pfq.86.2017.08.09.18.19.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 09 Aug 2017 18:19:38 -0700 (PDT)
To: "Burton, Ross" <ross.burton@intel.com>
References: <759e84aa-b429-d9f8-bd71-aeef9fbe7bfe@gmail.com>
	<CAJTo0Lb41N7A_dZMHKHoBAEDm0KHAW2K-R-TWvEKxbsygbyK=g@mail.gmail.com>
	<adde6220-1d6d-103d-b9ff-cd39d32bf943@gmail.com>
	<CAJTo0LbM1Ly6aFCeq7FTsOiCpmhSw_PoRRu-3NmMbKx1CXtAkQ@mail.gmail.com>
	<CAByQQ_q5s2cWY6FJVLnSaygmS1ytcYTgLAHfR=q_p3YNwQogzA@mail.gmail.com>
	<CAJTo0LaPD2aQp7ufSgg6PePV7k1_nqGKdzhpWTYPacqmdEtu9g@mail.gmail.com>
	<DB5P122MB000777D198C8510F25BF9093D68B0@DB5P122MB0007.EURP122.PROD.OUTLOOK.COM>
	<CAByQQ_rHGL-wCDP_gnws4txKTq_6Qn1ux83jx4BjiZbveLDCNQ@mail.gmail.com>
	<CAByQQ_qrT1fbMb0XB6H2_OPX3owx87mgPTXfjyaf67XBUKji4Q@mail.gmail.com>
	<CAJTo0LbFHY1VQ9KeaCWWXG6EviiJsf7R9hjgeAeS4fi3rP_mGA@mail.gmail.com>
From: Riko <antonius.riko@gmail.com>
Message-ID: <4ff5c40b-1e0f-4358-d2cc-de0867c3d5f5@gmail.com>
Date: Thu, 10 Aug 2017 09:19:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbFHY1VQ9KeaCWWXG6EviiJsf7R9hjgeAeS4fi3rP_mGA@mail.gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: bitbake error ?
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
X-List-Received-Date: Thu, 10 Aug 2017 01:19:41 -0000
Content-Type: multipart/alternative;
	boundary="------------8DD5529BD85EA566436A1193"
Content-Language: en-US

--------------8DD5529BD85EA566436A1193
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear Yocto member,

I fixed it

on /etc/resolv.conf

nameserver 8.8.8.8

Thanks for helping everyone


On 10/08/17 05:13, Burton, Ross wrote:
> Maybe.  We don't have your computer, so this is your problem to resolve.
>
> Ross
>
> On 9 August 2017 at 22:06, Riko Ho <antonius.riko@gmail.com 
> <mailto:antonius.riko@gmail.com>> wrote:
>
>     Can it be related with:
>     https://askubuntu.com/questions/425484/unable-to-use-wget-command
>     <https://askubuntu.com/questions/425484/unable-to-use-wget-command>
>     ?
>
>
>     On 09/08/2017 8:43 PM, "Bejar-Colonia, Carlos"
>     <carlos.bejar-colonia@philips.com
>     <mailto:carlos.bejar-colonia@philips.com>> wrote:
>
>         This issue seems to be related to proxy server. Probably your
>         network is behind a  proxy.
>
>         This may help:
>
>         https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
>         <https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy>
>
>         -Carlos B
>
>         *From:*yocto-bounces@yoctoproject.org
>         <mailto:yocto-bounces@yoctoproject.org>
>         [mailto:yocto-bounces@yoctoproject.org
>         <mailto:yocto-bounces@yoctoproject.org>] *On Behalf Of
>         *Burton, Ross
>         *Sent:* Wednesday, August 09, 2017 6:35 AM
>         *To:* Riko Ho <antonius.riko@gmail.com
>         <mailto:antonius.riko@gmail.com>>
>         *Cc:* N: <yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
>         *Subject:* Re: [yocto] bitbake error ?
>
>         I've no idea why you can't connect to example.com
>         <http://example.com> using wget, you'll have to debug it yourself.
>
>         Ross
>
>         On 9 August 2017 at 11:27, Riko Ho <antonius.riko@gmail.com
>         <mailto:antonius.riko@gmail.com>> wrote:
>
>             so what s the issue？ my connection is working. is it
>             related with /etc/hosts?
>             thanks
>
>             On Aug 9, 2017 4:38 PM, "Burton, Ross"
>             <ross.burton@intel.com <mailto:ross.burton@intel.com>> wrote:
>
>                 Yep. That's your problem.
>
>                 $ wget https://www.example.com/
>
>                 --2017-08-09 09:37:43-- https://www.example.com/
>
>                 Resolving www.example.com <http://www.example.com>...
>                 93.184.216.34, 2606:2800:220:1:248:1893:25c8:1946
>
>                 Connecting to www.example.com
>                 <http://www.example.com>|93.184.216.34|:443... connected.
>
>                 HTTP request sent, awaiting response... 200 OK
>
>                 Length: 1270 (1.2K) [text/html]
>
>                 Saving to: ‘index.html’
>
>                 index.html  100%[===================>]   1.24K
>                  --.-KB/s  in 0s
>
>                 2017-08-09 09:37:44 (15.3 MB/s) - ‘index.html’ saved
>                 [1270/1270]
>
>                 Works for me.  Your network or wget is broken, and
>                 that is unrelated to bitbake/yocto/etc.
>
>                 Ross
>
>                 On 9 August 2017 at 09:34, Riko
>                 <antonius.riko@gmail.com
>                 <mailto:antonius.riko@gmail.com>> wrote:
>
>                     This one ?
>
>                     bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky/build$
>                     wget https://www.example.com/
>                     --2017-08-09 16:33:05-- https://www.example.com/
>                     Resolving www.example.com <http://www.example.com>
>                     (www.example.com <http://www.example.com>)...
>                     failed: Name or service not known.
>                     wget: unable to resolve host address
>                     'www.example.com’ <http://www.example.com%E2%80%99>
>
>                     On 09/08/17 16:31, Burton, Ross wrote:
>
>                         For some reason, bitbake can't do "wget
>                         https://www.example.com/".   Try running that
>                         command outside of bitbake and seeing if it
>                         returns any errors.
>
>                         Ross
>
>                         On 9 August 2017 at 09:29, Riko
>                         <antonius.riko@gmail.com
>                         <mailto:antonius.riko@gmail.com>> wrote:
>
>                             Dear Yocto Member,
>
>
>                             I have downloaded fresh install of yocto
>                             but got error, here's the trace :
>
>                             bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~$
>                             git clone -b pyro
>                             git://git.yoctoproject.org/poky.git
>                             <http://git.yoctoproject.org/poky.git>
>                             Cloning into 'poky'...
>                             remote: Counting objects: 373183, done.
>                             remote: Compressing objects: 100%
>                             (89366/89366), done.
>                             remote: Total 373183 (delta 277418),
>                             reused 373031 (delta 277266)
>                             Receiving objects: 100% (373183/373183),
>                             134.71 MiB | 1.47 MiB/s, done.
>                             Resolving deltas: 100% (277418/277418), done.
>                             Checking connectivity... done.
>
>
>                             bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky$
>                             source oe-init-build-env
>                             You had no conf/local.conf file. This
>                             configuration file has therefore been
>                             created for you with some default values.
>                             You may wish to edit it to, for
>                             example, select a different MACHINE
>                             (target hardware). See conf/local.conf
>                             for more information as common
>                             configuration options are commented.
>
>                             You had no conf/bblayers.conf file. This
>                             configuration file has therefore been
>                             created for you with some default values.
>                             To add additional metadata layers
>                             into your configuration please add entries
>                             to conf/bblayers.conf.
>
>                             The Yocto Project has extensive
>                             documentation about OE including a reference
>                             manual which can be found at:
>                             http://yoctoproject.org/documentation
>                             <http://yoctoproject.org/documentation>
>
>                             For more information about OpenEmbedded
>                             see their website:
>                             http://www.openembedded.org/
>
>
>                             ### Shell environment set up for builds. ###
>
>                             You can now run 'bitbake <target>'
>
>                             Common targets are:
>                             core-image-minimal
>                             core-image-sato
>                             meta-toolchain
>                             meta-ide-support
>
>                             You can also run generated qemu images
>                             with a command like 'runqemu qemux86'
>                             bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky/build$
>                             bitbake core-image-minimal
>                             ERROR: OE-core's config sanity checker
>                             detected a potential misconfiguration.
>                                 Either fix the cause of this error or
>                             at your own risk disable the checker (see
>                             sanity.conf).
>                                 Following is the list of potential
>                             problems / advisories:
>
>                                 Fetcher failure for URL:
>                             'https://www.example.com/'. URL
>                             https://www.example.com/ doesn't work.
>                                 Please ensure your host's network is
>                             configured correctly,
>                                 or set BB_NO_NETWORK = "1" to disable
>                             network access if
>                                 all required sources are on local disk.
>
>
>                             Summary: There was 1 ERROR message shown,
>                             returning a non-zero exit code.
>
>
>                             Any suggestions ?
>
>                             I'm using ubuntu 16.04,
>
>                             Thanks
>
>                             -- 
>                             _______________________________________________
>                             yocto mailing list
>                             yocto@yoctoproject.org
>                             <mailto:yocto@yoctoproject.org>
>                             https://lists.yoctoproject.org/listinfo/yocto
>                             <https://lists.yoctoproject.org/listinfo/yocto>
>
>
>         ------------------------------------------------------------------------
>         The information contained in this message may be confidential
>         and legally protected under applicable law. The message is
>         intended solely for the addressee(s). If you are not the
>         intended recipient, you are hereby notified that any use,
>         forwarding, dissemination, or reproduction of this message is
>         strictly prohibited and may be unlawful. If you are not the
>         intended recipient, please contact the sender by return e-mail
>         and destroy all copies of the original message.
>
>
>


--------------8DD5529BD85EA566436A1193
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Dear Yocto member,<br>
    </p>
    <p>I fixed it</p>
    <p>on /etc/resolv.conf</p>
    <p>nameserver 8.8.8.8</p>
    <p>Thanks for helping everyone<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 10/08/17 05:13, Burton, Ross wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJTo0LbFHY1VQ9KeaCWWXG6EviiJsf7R9hjgeAeS4fi3rP_mGA@mail.gmail.com">
      <div dir="ltr">Maybe.  We don't have your computer, so this is
        your problem to resolve.
        <div><br>
        </div>
        <div>Ross</div>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On 9 August 2017 at 22:06, Riko Ho <span
            dir="ltr">&lt;<a href="mailto:antonius.riko@gmail.com"
              target="_blank" moz-do-not-send="true">antonius.riko@gmail.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <p dir="ltr">Can it be related with:<br>
              <a
                href="https://askubuntu.com/questions/425484/unable-to-use-wget-command"
                target="_blank" moz-do-not-send="true">https://askubuntu.com/<wbr>questions/425484/unable-to-<wbr>use-wget-command</a><br>
              ?</p>
            <div class="HOEnZb">
              <div class="h5">
                <div class="gmail_extra"><br>
                  <div class="gmail_quote">On 09/08/2017 8:43 PM,
                    "Bejar-Colonia, Carlos" &lt;<a
                      href="mailto:carlos.bejar-colonia@philips.com"
                      target="_blank" moz-do-not-send="true">carlos.bejar-colonia@philips.<wbr>com</a>&gt;
                    wrote:<br type="attribution">
                    <blockquote class="m_-45504388718518596quote"
                      style="margin:0 0 0 .8ex;border-left:1px #ccc
                      solid;padding-left:1ex">
                      <div link="blue" vlink="purple" lang="EN-US">
                        <div
                          class="m_-45504388718518596m_-4983334058515676935WordSection1">
                          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">This
                              issue seems to be related to proxy server.
                              Probably your network is behind a  proxy.</span></p>
                          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">This
                              may help:</span></p>
                          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d"></span></p>
                          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><a
href="https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy"
                                target="_blank" moz-do-not-send="true">https://wiki.yoctoproject.org/<wbr>wiki/Working_Behind_a_Network_<wbr>Proxy</a></span></p>
                          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d"> </span></p>
                          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">-Carlos
                              B</span></p>
                          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d"> </span></p>
                          <p class="MsoNormal"><b><span
                                style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> <a
href="mailto:yocto-bounces@yoctoproject.org" target="_blank"
                                moz-do-not-send="true">yocto-bounces@yoctoproject.org</a>
                              [mailto:<a
                                href="mailto:yocto-bounces@yoctoproject.org"
                                target="_blank" moz-do-not-send="true">yocto-bounces@yoctopro<wbr>ject.org</a>]
                              <b>On Behalf Of </b>Burton, Ross<br>
                              <b>Sent:</b> Wednesday, August 09, 2017
                              6:35 AM<br>
                              <b>To:</b> Riko Ho &lt;<a
                                href="mailto:antonius.riko@gmail.com"
                                target="_blank" moz-do-not-send="true">antonius.riko@gmail.com</a>&gt;<br>
                              <b>Cc:</b> N: &lt;<a
                                href="mailto:yocto@yoctoproject.org"
                                target="_blank" moz-do-not-send="true">yocto@yoctoproject.org</a>&gt;<br>
                              <b>Subject:</b> Re: [yocto] bitbake error
                              ?</span></p>
                          <div class="m_-45504388718518596elided-text">
                            <p class="MsoNormal"> </p>
                            <div>
                              <p class="MsoNormal">I've no idea why you
                                can't connect to <a
                                  href="http://example.com"
                                  target="_blank" moz-do-not-send="true">
                                  example.com</a> using wget, you'll
                                have to debug it yourself.</p>
                              <div>
                                <p class="MsoNormal"> </p>
                              </div>
                              <div>
                                <p class="MsoNormal">Ross</p>
                              </div>
                            </div>
                            <div>
                              <p class="MsoNormal"> </p>
                              <div>
                                <p class="MsoNormal">On 9 August 2017 at
                                  11:27, Riko Ho &lt;<a
                                    href="mailto:antonius.riko@gmail.com"
                                    target="_blank"
                                    moz-do-not-send="true">antonius.riko@gmail.com</a>&gt;
                                  wrote:</p>
                                <blockquote
                                  style="border:none;border-left:solid
                                  #cccccc 1.0pt;padding:0in 0in 0in
                                  6.0pt;margin-left:4.8pt;margin-right:0in">
                                  <p>so what s the issue<span
                                      style="font-family:&quot;Calibri&quot;,sans-serif">？</span>
                                    my connection is working. is it
                                    related with /etc/hosts?<br>
                                    thanks</p>
                                  <div>
                                    <div>
                                      <div>
                                        <p class="MsoNormal">On Aug 9,
                                          2017 4:38 PM, "Burton, Ross"
                                          &lt;<a
                                            href="mailto:ross.burton@intel.com"
                                            target="_blank"
                                            moz-do-not-send="true">ross.burton@intel.com</a>&gt;
                                          wrote:</p>
                                        <blockquote
                                          style="border:none;border-left:solid
                                          #cccccc 1.0pt;padding:0in 0in
                                          0in
                                          6.0pt;margin-left:4.8pt;margin-right:0in">
                                          <div>
                                            <p class="MsoNormal">Yep. 
                                              That's your problem.</p>
                                            <div>
                                              <p class="MsoNormal"> </p>
                                            </div>
                                            <div>
                                              <div>
                                                <p class="MsoNormal">$
                                                  wget <a
                                                    href="https://www.example.com/"
                                                    target="_blank"
                                                    moz-do-not-send="true">https://www.example.com/</a></p>
                                              </div>
                                              <div>
                                                <p class="MsoNormal">--2017-08-09
                                                  09:37:43--  <a
                                                    href="https://www.example.com/"
                                                    target="_blank"
                                                    moz-do-not-send="true">https://www.example.com/</a></p>
                                              </div>
                                              <div>
                                                <p class="MsoNormal">Resolving
                                                  <a
                                                    href="http://www.example.com"
                                                    target="_blank"
                                                    moz-do-not-send="true">www.example.com</a>...
                                                  93.184.216.34,
                                                  2606:2800:220:1:248:1893:25c8:<wbr>1946</p>
                                              </div>
                                              <div>
                                                <p class="MsoNormal">Connecting
                                                  to <a
                                                    href="http://www.example.com"
                                                    target="_blank"
                                                    moz-do-not-send="true">
                                                    www.example.com</a>|93.184.216.34|<wbr>:443...
                                                  connected.</p>
                                              </div>
                                              <div>
                                                <p class="MsoNormal">HTTP
                                                  request sent, awaiting
                                                  response... 200 OK</p>
                                              </div>
                                              <div>
                                                <p class="MsoNormal">Length:
                                                  1270 (1.2K)
                                                  [text/html]</p>
                                              </div>
                                              <div>
                                                <p class="MsoNormal">Saving
                                                  to: ‘index.html’</p>
                                              </div>
                                              <div>
                                                <p class="MsoNormal"> </p>
                                              </div>
                                              <div>
                                                <p class="MsoNormal">index.html
                                                         
                                                   100%[===================&gt;]
                                                    1.24K  --.-KB/s  
                                                   in 0s</p>
                                              </div>
                                              <div>
                                                <p class="MsoNormal"> </p>
                                              </div>
                                              <div>
                                                <p class="MsoNormal">2017-08-09
                                                  09:37:44 (15.3 MB/s) -
                                                  ‘index.html’ saved
                                                  [1270/1270]</p>
                                              </div>
                                            </div>
                                            <div>
                                              <p class="MsoNormal"> </p>
                                            </div>
                                            <div>
                                              <p class="MsoNormal">Works
                                                for me.  Your network or
                                                wget is broken, and that
                                                is unrelated to
                                                bitbake/yocto/etc.</p>
                                            </div>
                                            <div>
                                              <p class="MsoNormal"> </p>
                                            </div>
                                            <div>
                                              <p class="MsoNormal">Ross</p>
                                            </div>
                                          </div>
                                          <div>
                                            <p class="MsoNormal"> </p>
                                            <div>
                                              <p class="MsoNormal">On 9
                                                August 2017 at 09:34,
                                                Riko &lt;<a
                                                  href="mailto:antonius.riko@gmail.com"
                                                  target="_blank"
                                                  moz-do-not-send="true">antonius.riko@gmail.com</a>&gt;
                                                wrote:</p>
                                              <blockquote
                                                style="border:none;border-left:solid
                                                #cccccc
                                                1.0pt;padding:0in 0in
                                                0in
                                                6.0pt;margin-left:4.8pt;margin-right:0in">
                                                <div>
                                                  <p>This one ?</p>
                                                  <p
                                                    style="margin-bottom:12.0pt">bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~/poky/build$
                                                    wget
                                                    <a
                                                      href="https://www.example.com/"
                                                      target="_blank"
                                                      moz-do-not-send="true">https://www.example.com/</a><br>
                                                    --2017-08-09
                                                    16:33:05--  <a
                                                      href="https://www.example.com/"
                                                      target="_blank"
                                                      moz-do-not-send="true">https://www.example.com/</a><br>
                                                    Resolving <a
                                                      href="http://www.example.com"
                                                      target="_blank"
                                                      moz-do-not-send="true">www.example.com</a>
                                                    (<a
                                                      href="http://www.example.com"
                                                      target="_blank"
                                                      moz-do-not-send="true">www.example.com</a>)...
                                                    failed: Name or
                                                    service not known.<br>
                                                    wget: unable to
                                                    resolve host address
                                                    '<a
                                                      href="http://www.example.com%E2%80%99"
                                                      target="_blank"
                                                      moz-do-not-send="true">www.example.com’</a></p>
                                                  <div>
                                                    <div>
                                                      <p
                                                        class="MsoNormal"> </p>
                                                      <div>
                                                        <p
                                                          class="MsoNormal">On
                                                          09/08/17
                                                          16:31, Burton,
                                                          Ross wrote:</p>
                                                      </div>
                                                      <blockquote
                                                        style="margin-top:5.0pt;margin-bottom:5.0pt">
                                                        <div>
                                                          <p
                                                          class="MsoNormal">For
                                                          some reason,
                                                          bitbake can't
                                                          do "wget <a
                                                          href="https://www.example.com/"
target="_blank" moz-do-not-send="true">
https://www.example.com/</a>".   Try running that command outside of
                                                          bitbake and
                                                          seeing if it
                                                          returns any
                                                          errors.
                                                          </p>
                                                          <div>
                                                          <p
                                                          class="MsoNormal"> </p>
                                                          </div>
                                                          <div>
                                                          <p
                                                          class="MsoNormal">Ross</p>
                                                          </div>
                                                        </div>
                                                        <div>
                                                          <p
                                                          class="MsoNormal"> </p>
                                                          <div>
                                                          <p
                                                          class="MsoNormal">On
                                                          9 August 2017
                                                          at 09:29, Riko
                                                          &lt;<a
                                                          href="mailto:antonius.riko@gmail.com"
target="_blank" moz-do-not-send="true">antonius.riko@gmail.com</a>&gt;
                                                          wrote:</p>
                                                          <blockquote
                                                          style="border:none;border-left:solid
                                                          #cccccc
                                                          1.0pt;padding:0in
                                                          0in 0in
                                                          6.0pt;margin-left:4.8pt;margin-right:0in">
                                                          <p
                                                          class="MsoNormal">Dear
                                                          Yocto Member,<br>
                                                          <br>
                                                          <br>
                                                          I have
                                                          downloaded
                                                          fresh install
                                                          of yocto but
                                                          got error,
                                                          here's the
                                                          trace :<br>
                                                          <br>
bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~$ git clone -b pyro
                                                          git://<a
                                                          href="http://git.yoctoproject.org/poky.git"
target="_blank" moz-do-not-send="true">git.yoctoproject.org/pok<wbr>y.git</a><br>
                                                          Cloning into
                                                          'poky'...<br>
                                                          remote:
                                                          Counting
                                                          objects:
                                                          373183, done.<br>
                                                          remote:
                                                          Compressing
                                                          objects: 100%
                                                          (89366/89366),
                                                          done.<br>
                                                          remote: Total
                                                          373183 (delta
                                                          277418),
                                                          reused 373031
                                                          (delta 277266)<br>
                                                          Receiving
                                                          objects: 100%
(373183/373183), 134.71 MiB | 1.47 MiB/s, done.<br>
                                                          Resolving
                                                          deltas: 100%
                                                          (277418/277418),
                                                          done.<br>
                                                          Checking
                                                          connectivity...
                                                          done.<br>
                                                          <br>
                                                          <br>
bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~/poky$ source
                                                          oe-init-build-env<br>
                                                          You had no
                                                          conf/local.conf
                                                          file. This
                                                          configuration
                                                          file has
                                                          therefore been<br>
                                                          created for
                                                          you with some
                                                          default
                                                          values. You
                                                          may wish to
                                                          edit it to,
                                                          for<br>
                                                          example,
                                                          select a
                                                          different
                                                          MACHINE
                                                          (target
                                                          hardware). See
conf/local.conf<br>
                                                          for more
                                                          information as
                                                          common
                                                          configuration
                                                          options are
                                                          commented.<br>
                                                          <br>
                                                          You had no
                                                          conf/bblayers.conf
                                                          file. This
                                                          configuration
                                                          file has
                                                          therefore been<br>
                                                          created for
                                                          you with some
                                                          default
                                                          values. To add
                                                          additional
                                                          metadata
                                                          layers<br>
                                                          into your
                                                          configuration
                                                          please add
                                                          entries to
                                                          conf/bblayers.conf.<br>
                                                          <br>
                                                          The Yocto
                                                          Project has
                                                          extensive
                                                          documentation
                                                          about OE
                                                          including a
                                                          reference<br>
                                                          manual which
                                                          can be found
                                                          at:<br>
                                                              <a
                                                          href="http://yoctoproject.org/documentation"
target="_blank" moz-do-not-send="true">http://yoctoproject.org/docume<wbr>ntation</a><br>
                                                          <br>
                                                          For more
                                                          information
                                                          about
                                                          OpenEmbedded
                                                          see their
                                                          website:<br>
                                                              <a
                                                          href="http://www.openembedded.org/"
target="_blank" moz-do-not-send="true">http://www.openembedded.org/</a><br>
                                                          <br>
                                                          <br>
                                                          ### Shell
                                                          environment
                                                          set up for
                                                          builds. ###<br>
                                                          <br>
                                                          You can now
                                                          run 'bitbake
                                                          &lt;target&gt;'<br>
                                                          <br>
                                                          Common targets
                                                          are:<br>
                                                             
                                                          core-image-minimal<br>
                                                             
                                                          core-image-sato<br>
                                                             
                                                          meta-toolchain<br>
                                                             
                                                          meta-ide-support<br>
                                                          <br>
                                                          You can also
                                                          run generated
                                                          qemu images
                                                          with a command
                                                          like 'runqemu
                                                          qemux86'<br>
bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~/poky/build$ bitbake
                                                          core-image-minimal<br>
                                                          ERROR: 
                                                          OE-core's
                                                          config sanity
                                                          checker
                                                          detected a
                                                          potential
                                                          misconfiguration.<br>
                                                              Either fix
                                                          the cause of
                                                          this error or
                                                          at your own
                                                          risk disable
                                                          the checker
                                                          (see
                                                          sanity.conf).<br>
                                                              Following
                                                          is the list of
                                                          potential
                                                          problems /
                                                          advisories:<br>
                                                          <br>
                                                              Fetcher
                                                          failure for
                                                          URL: '<a
                                                          href="https://www.example.com/"
target="_blank" moz-do-not-send="true">https://www.example.com/</a>'.
                                                          URL
                                                          <a
                                                          href="https://www.example.com/"
target="_blank" moz-do-not-send="true">https://www.example.com/</a>
                                                          doesn't work.<br>
                                                              Please
                                                          ensure your
                                                          host's network
                                                          is configured
                                                          correctly,<br>
                                                              or set
                                                          BB_NO_NETWORK
                                                          = "1" to
                                                          disable
                                                          network access
                                                          if<br>
                                                              all
                                                          required
                                                          sources are on
                                                          local disk.<br>
                                                          <br>
                                                          <br>
                                                          Summary: There
                                                          was 1 ERROR
                                                          message shown,
                                                          returning a
                                                          non-zero exit
                                                          code.<br>
                                                          <br>
                                                          <br>
                                                          Any
                                                          suggestions ?<br>
                                                          <br>
                                                          I'm using
                                                          ubuntu 16.04,<br>
                                                          <br>
                                                          Thanks<span
                                                          style="color:#888888"><br>
                                                          <br>
                                                          <span
class="m_-45504388718518596m_-4983334058515676935m366007862159389111m-2108199454515190859m1262213939812178703hoenzb">--
                                                          </span><br>
                                                          <span
class="m_-45504388718518596m_-4983334058515676935m366007862159389111m-2108199454515190859m1262213939812178703hoenzb">______________________________<wbr>_________________</span><br>
                                                          <span
class="m_-45504388718518596m_-4983334058515676935m366007862159389111m-2108199454515190859m1262213939812178703hoenzb">yocto
                                                          mailing list</span><br>
                                                          <span
class="m_-45504388718518596m_-4983334058515676935m366007862159389111m-2108199454515190859m1262213939812178703hoenzb"><a
href="mailto:yocto@yoctoproject.org" target="_blank"
                                                          moz-do-not-send="true">yocto@yoctoproject.org</a></span><br>
                                                          <span
class="m_-45504388718518596m_-4983334058515676935m366007862159389111m-2108199454515190859m1262213939812178703hoenzb"><a
href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank"
                                                          moz-do-not-send="true">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a></span></span></p>
                                                          </blockquote>
                                                          </div>
                                                          <p
                                                          class="MsoNormal"> </p>
                                                        </div>
                                                      </blockquote>
                                                      <p
                                                        class="MsoNormal"> </p>
                                                    </div>
                                                  </div>
                                                </div>
                                              </blockquote>
                                            </div>
                                            <p class="MsoNormal"> </p>
                                          </div>
                                        </blockquote>
                                      </div>
                                    </div>
                                  </div>
                                </blockquote>
                              </div>
                              <p class="MsoNormal"> </p>
                            </div>
                          </div>
                        </div>
                        <br>
                        <hr>
                        <font size="1" face="Arial" color="Gray">The
                          information contained in this message may be
                          confidential and legally protected under
                          applicable law. The message is intended solely
                          for the addressee(s). If you are not the
                          intended recipient, you are hereby notified
                          that any use, forwarding, dissemination, or
                          reproduction of this message is strictly
                          prohibited and may be unlawful. If you are not
                          the intended recipient, please contact the
                          sender by return e-mail and destroy all copies
                          of the original message.<br>
                        </font>
                      </div>
                    </blockquote>
                  </div>
                  <br>
                </div>
              </div>
            </div>
          </blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------8DD5529BD85EA566436A1193--
