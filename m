Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58CBEE00B49; Wed,  9 Aug 2017 01:34:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB994E0090A
	for <yocto@yoctoproject.org>; Wed,  9 Aug 2017 01:34:05 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id j32so22558065iod.0
	for <yocto@yoctoproject.org>; Wed, 09 Aug 2017 01:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=HDQHhZtXPxDiaxcEEAoxx2UnyvVB9VW/y1JjjBER8xg=;
	b=DXuViphHiZxPTeOzVYwtrLhtOEFLIgVsAoJ66AaJzc18VZnPNwFFmbV1InPvthzG7X
	tpbK3TrnAfAevJtVS3PETEiOQUe70oyYUUR2XjP3KI5ohdHsJYIclatS7y74aiU3wxam
	9V3hBmHRFcP8N+REZQMzMqW+/iQSFkI0oiifGHv1nj6b7LIpOS73+CMh1v2Y6lP7MZRP
	ApA0jb2BUiWxgYmWi1WZE3lEOj2n78VQWWUpgTrOF6/F5tkUQ+FFdYx62/0Wc50Q4UQv
	un3x2Isl/+kL8fnYAdGG2Wfbw+tngkieIFK4vtrmPiXhCxNXWBu/fB5QuGNo93vxlpks
	DjZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=HDQHhZtXPxDiaxcEEAoxx2UnyvVB9VW/y1JjjBER8xg=;
	b=nhu53MS1x1D5Fl8KZmoHVPDdS2wUo7NG8igNguMfNvDFN0EPnxshX3YsCtr2NeBflW
	OWFxV29wyrKiGuUn9438uV3vMZHewwJsEx4IBTfQ4Cq3cMAec9sLwc/0JMvJW+yA/Vjm
	Zq8r90TJ26J0JFzC7vtxBWy/LsBS1YUbNiyvUY7b1XR06vIa0OTubyifSIGSfQF86mLS
	YZGwILMvWb6jxZZBV5TJVYS0M1lU6zkPXHQWBqRsJGokuLbTzZHBJn69FpqSg1vTLYT2
	nhAsJn3CEhEyUBDBYiSKg4cygFlWchVeudElYj7n16h8Y8Me51t8y1BCR7ixx0llcIex
	FuGQ==
X-Gm-Message-State: AHYfb5ikhQKuhTjT3zBql6idPJ47E36Ry43toXcaMrqcH+z/EtDr8Ltd
	HJtBmHnazzXe57oS5gw=
X-Received: by 10.107.14.17 with SMTP id 17mr5802590ioo.143.1502267644694;
	Wed, 09 Aug 2017 01:34:04 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:3cba:cb22:1a07:925?
	([2001:8003:804a:b500:3cba:cb22:1a07:925])
	by smtp.gmail.com with ESMTPSA id
	r40sm1648990ioi.57.2017.08.09.01.34.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 09 Aug 2017 01:34:04 -0700 (PDT)
To: "Burton, Ross" <ross.burton@intel.com>
References: <759e84aa-b429-d9f8-bd71-aeef9fbe7bfe@gmail.com>
	<CAJTo0Lb41N7A_dZMHKHoBAEDm0KHAW2K-R-TWvEKxbsygbyK=g@mail.gmail.com>
From: Riko <antonius.riko@gmail.com>
Message-ID: <adde6220-1d6d-103d-b9ff-cd39d32bf943@gmail.com>
Date: Wed, 9 Aug 2017 16:34:00 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0Lb41N7A_dZMHKHoBAEDm0KHAW2K-R-TWvEKxbsygbyK=g@mail.gmail.com>
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
X-List-Received-Date: Wed, 09 Aug 2017 08:34:06 -0000
Content-Type: multipart/alternative;
	boundary="------------C51AB20D5D66155DA40AC9E3"
Content-Language: en-US

--------------C51AB20D5D66155DA40AC9E3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

This one ?

bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky/build$ wget 
https://www.example.com/
--2017-08-09 16:33:05--  https://www.example.com/
Resolving www.example.com (www.example.com)... failed: Name or service 
not known.
wget: unable to resolve host address 'www.example.com’


On 09/08/17 16:31, Burton, Ross wrote:
> For some reason, bitbake can't do "wget https://www.example.com/".   
> Try running that command outside of bitbake and seeing if it returns 
> any errors.
>
> Ross
>
> On 9 August 2017 at 09:29, Riko <antonius.riko@gmail.com 
> <mailto:antonius.riko@gmail.com>> wrote:
>
>     Dear Yocto Member,
>
>
>     I have downloaded fresh install of yocto but got error, here's the
>     trace :
>
>     bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~$ git clone -b pyro
>     git://git.yoctoproject.org/poky.git
>     <http://git.yoctoproject.org/poky.git>
>     Cloning into 'poky'...
>     remote: Counting objects: 373183, done.
>     remote: Compressing objects: 100% (89366/89366), done.
>     remote: Total 373183 (delta 277418), reused 373031 (delta 277266)
>     Receiving objects: 100% (373183/373183), 134.71 MiB | 1.47 MiB/s,
>     done.
>     Resolving deltas: 100% (277418/277418), done.
>     Checking connectivity... done.
>
>
>     bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky$ source
>     oe-init-build-env
>     You had no conf/local.conf file. This configuration file has
>     therefore been
>     created for you with some default values. You may wish to edit it
>     to, for
>     example, select a different MACHINE (target hardware). See
>     conf/local.conf
>     for more information as common configuration options are commented.
>
>     You had no conf/bblayers.conf file. This configuration file has
>     therefore been
>     created for you with some default values. To add additional
>     metadata layers
>     into your configuration please add entries to conf/bblayers.conf.
>
>     The Yocto Project has extensive documentation about OE including a
>     reference
>     manual which can be found at:
>     http://yoctoproject.org/documentation
>     <http://yoctoproject.org/documentation>
>
>     For more information about OpenEmbedded see their website:
>     http://www.openembedded.org/
>
>
>     ### Shell environment set up for builds. ###
>
>     You can now run 'bitbake <target>'
>
>     Common targets are:
>         core-image-minimal
>         core-image-sato
>         meta-toolchain
>         meta-ide-support
>
>     You can also run generated qemu images with a command like
>     'runqemu qemux86'
>     bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky/build$ bitbake
>     core-image-minimal
>     ERROR:  OE-core's config sanity checker detected a potential
>     misconfiguration.
>         Either fix the cause of this error or at your own risk disable
>     the checker (see sanity.conf).
>         Following is the list of potential problems / advisories:
>
>         Fetcher failure for URL: 'https://www.example.com/'. URL
>     https://www.example.com/ doesn't work.
>         Please ensure your host's network is configured correctly,
>         or set BB_NO_NETWORK = "1" to disable network access if
>         all required sources are on local disk.
>
>
>     Summary: There was 1 ERROR message shown, returning a non-zero
>     exit code.
>
>
>     Any suggestions ?
>
>     I'm using ubuntu 16.04,
>
>     Thanks
>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>
>


--------------C51AB20D5D66155DA40AC9E3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>This one ?<br>
    </p>
    <p>bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky/build$ wget
      <a class="moz-txt-link-freetext" href="https://www.example.com/">https://www.example.com/</a><br>
      --2017-08-09 16:33:05--  <a class="moz-txt-link-freetext" href="https://www.example.com/">https://www.example.com/</a><br>
      Resolving <a class="moz-txt-link-abbreviated" href="http://www.example.com">www.example.com</a> (<a class="moz-txt-link-abbreviated" href="http://www.example.com">www.example.com</a>)... failed: Name or
      service not known.<br>
      wget: unable to resolve host address '<a class="moz-txt-link-abbreviated" href="http://www.example.com’">www.example.com’</a><br>
      <br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 09/08/17 16:31, Burton, Ross wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJTo0Lb41N7A_dZMHKHoBAEDm0KHAW2K-R-TWvEKxbsygbyK=g@mail.gmail.com">
      <div dir="ltr">For some reason, bitbake can't do "wget <a
          href="https://www.example.com/" moz-do-not-send="true">https://www.example.com/</a>".
          Try running that command outside of bitbake and seeing if it
        returns any errors.
        <div><br>
        </div>
        <div>Ross</div>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On 9 August 2017 at 09:29, Riko <span
            dir="ltr">&lt;<a href="mailto:antonius.riko@gmail.com"
              target="_blank" moz-do-not-send="true">antonius.riko@gmail.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">Dear Yocto
            Member,<br>
            <br>
            <br>
            I have downloaded fresh install of yocto but got error,
            here's the trace :<br>
            <br>
            bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~$ git
            clone -b pyro git://<a
              href="http://git.yoctoproject.org/poky.git"
              rel="noreferrer" target="_blank" moz-do-not-send="true">git.yoctoproject.org/pok<wbr>y.git</a><br>
            Cloning into 'poky'...<br>
            remote: Counting objects: 373183, done.<br>
            remote: Compressing objects: 100% (89366/89366), done.<br>
            remote: Total 373183 (delta 277418), reused 373031 (delta
            277266)<br>
            Receiving objects: 100% (373183/373183), 134.71 MiB | 1.47
            MiB/s, done.<br>
            Resolving deltas: 100% (277418/277418), done.<br>
            Checking connectivity... done.<br>
            <br>
            <br>
            bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~/poky$
            source oe-init-build-env<br>
            You had no conf/local.conf file. This configuration file has
            therefore been<br>
            created for you with some default values. You may wish to
            edit it to, for<br>
            example, select a different MACHINE (target hardware). See
            conf/local.conf<br>
            for more information as common configuration options are
            commented.<br>
            <br>
            You had no conf/bblayers.conf file. This configuration file
            has therefore been<br>
            created for you with some default values. To add additional
            metadata layers<br>
            into your configuration please add entries to
            conf/bblayers.conf.<br>
            <br>
            The Yocto Project has extensive documentation about OE
            including a reference<br>
            manual which can be found at:<br>
                <a href="http://yoctoproject.org/documentation"
              rel="noreferrer" target="_blank" moz-do-not-send="true">http://yoctoproject.org/docume<wbr>ntation</a><br>
            <br>
            For more information about OpenEmbedded see their website:<br>
                <a href="http://www.openembedded.org/" rel="noreferrer"
              target="_blank" moz-do-not-send="true">http://www.openembedded.org/</a><br>
            <br>
            <br>
            ### Shell environment set up for builds. ###<br>
            <br>
            You can now run 'bitbake &lt;target&gt;'<br>
            <br>
            Common targets are:<br>
                core-image-minimal<br>
                core-image-sato<br>
                meta-toolchain<br>
                meta-ide-support<br>
            <br>
            You can also run generated qemu images with a command like
            'runqemu qemux86'<br>
            bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~/poky/build$
            bitbake core-image-minimal<br>
            ERROR:  OE-core's config sanity checker detected a potential
            misconfiguration.<br>
                Either fix the cause of this error or at your own risk
            disable the checker (see sanity.conf).<br>
                Following is the list of potential problems /
            advisories:<br>
            <br>
                Fetcher failure for URL: '<a
              href="https://www.example.com/" rel="noreferrer"
              target="_blank" moz-do-not-send="true">https://www.example.com/</a>'.
            URL <a href="https://www.example.com/" rel="noreferrer"
              target="_blank" moz-do-not-send="true">https://www.example.com/</a>
            doesn't work.<br>
                Please ensure your host's network is configured
            correctly,<br>
                or set BB_NO_NETWORK = "1" to disable network access if<br>
                all required sources are on local disk.<br>
            <br>
            <br>
            Summary: There was 1 ERROR message shown, returning a
            non-zero exit code.<br>
            <br>
            <br>
            Any suggestions ?<br>
            <br>
            I'm using ubuntu 16.04,<br>
            <br>
            Thanks<span class="HOEnZb"><font color="#888888"><br>
                <br>
                -- <br>
                ______________________________<wbr>_________________<br>
                yocto mailing list<br>
                <a href="mailto:yocto@yoctoproject.org" target="_blank"
                  moz-do-not-send="true">yocto@yoctoproject.org</a><br>
                <a href="https://lists.yoctoproject.org/listinfo/yocto"
                  rel="noreferrer" target="_blank"
                  moz-do-not-send="true">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------C51AB20D5D66155DA40AC9E3--
