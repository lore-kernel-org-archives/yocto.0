Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3CBFE00BA2; Wed,  9 Aug 2017 18:09:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTTP_ESCAPED_HOST, 
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
	*  1.1 HTTP_ESCAPED_HOST URI: Uses %-escapes inside a URL's hostname
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B822E00B77
	for <yocto@yoctoproject.org>; Wed,  9 Aug 2017 18:09:26 -0700 (PDT)
Received: by mail-pf0-f171.google.com with SMTP id c28so34521574pfe.3
	for <yocto@yoctoproject.org>; Wed, 09 Aug 2017 18:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=SOI/mBOM4rn+OtfGP4vy430iBuynRX3cFA4phrErHzo=;
	b=EFw8RAtkSSsffxBqaiAqlKyBGxZoZ2rBCKGG7S8hIm7OmxF/71dG2R+u5ExV9TjUyM
	hB0PVDRvQm9VMODG38e3PBnrvQ9SxzzcpUs3H7RLWJZmBLsl6ouNXUVhgLD6Do46n9b+
	Hd3xZki5j/TZg6NhrQxLxLIf+Z5p4Nm1CUQQwE9xFjewreYEkYJj61xcwyKq0B43zzqq
	SVmSukQddjggTTCyiGzJlYN/LcIB+IoW1fU6niPRuB0SxzdPo0HrfdzFAsWmv0HZmYQZ
	jz932HWBJkjH/Qn3V/idAbtN9gff2OVYxwr2oESSHFIvDcyWYP0YgOzIA2OT4hg+1x+M
	ZIRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=SOI/mBOM4rn+OtfGP4vy430iBuynRX3cFA4phrErHzo=;
	b=RyaSHJ+qwvPM2I4QblDmW+HH2WDjUFanmBH+M/eygIsy+D5nslW3HLbwRWU9QIq7TW
	Ihp4lDiMQQwfksTcqqpwq6n25OenfBgI23M6ZxGWAgDKfwQy9e//EIV2EpXHPJTvQpnq
	yNrvmIyQrYNFGRXfK1Bp4q1qTpUYfHAcHw8Fx0euJfVETK8MU5a53Rs46mwXZTA1XoHk
	1fW9zzez53qLfKzhvzpK1jCnuZY3sVrxaRnMWMYNio8Fzn70fU2i59OZgxG/O5GUkMJP
	O3Kj3XtFzhuuZUYOoydb2cbD+HehIoYr39+wvUHEaAnvxF52gAxEbEpK7q778mJCfHrQ
	SNKw==
X-Gm-Message-State: AHYfb5ha8YTqVu+6l+07/nn95NN9i/B8W2mK2B0xfiBtzJObeY+ZmU2a
	2Uao51OzfCE/viRkFkw=
X-Received: by 10.98.147.23 with SMTP id b23mr10315832pfe.218.1502327365796;
	Wed, 09 Aug 2017 18:09:25 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:a942:55e:b6bc:47ea?
	([2001:8003:804a:b500:a942:55e:b6bc:47ea])
	by smtp.gmail.com with ESMTPSA id
	b4sm8203700pfg.132.2017.08.09.18.09.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 09 Aug 2017 18:09:25 -0700 (PDT)
To: "Burton, Ross" <ross.burton@intel.com>
References: <759e84aa-b429-d9f8-bd71-aeef9fbe7bfe@gmail.com>
	<CAJTo0Lb41N7A_dZMHKHoBAEDm0KHAW2K-R-TWvEKxbsygbyK=g@mail.gmail.com>
	<adde6220-1d6d-103d-b9ff-cd39d32bf943@gmail.com>
	<CAJTo0LbM1Ly6aFCeq7FTsOiCpmhSw_PoRRu-3NmMbKx1CXtAkQ@mail.gmail.com>
From: Riko <antonius.riko@gmail.com>
Message-ID: <9f706001-0790-6043-3daa-444c5db2e97f@gmail.com>
Date: Thu, 10 Aug 2017 09:09:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbM1Ly6aFCeq7FTsOiCpmhSw_PoRRu-3NmMbKx1CXtAkQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 10 Aug 2017 01:09:28 -0000
Content-Type: multipart/alternative;
	boundary="------------A75646753C35346101BE39D2"
Content-Language: en-US

--------------A75646753C35346101BE39D2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

When I test on browser :

https://www.example.com/

I  got server not found ??


On 09/08/17 16:38, Burton, Ross wrote:
> Yep.  That's your problem.
>
> $ wget https://www.example.com/
> --2017-08-09 09:37:43-- https://www.example.com/
> Resolving www.example.com... 93.184.216.34, 
> 2606:2800:220:1:248:1893:25c8:1946
> Connecting to www.example.com 
> <http://www.example.com>|93.184.216.34|:443... connected.
> HTTP request sent, awaiting response... 200 OK
> Length: 1270 (1.2K) [text/html]
> Saving to: ‘index.html’
>
> index.html          100%[===================>]   1.24K  --.-KB/s    in 0s
>
> 2017-08-09 09:37:44 (15.3 MB/s) - ‘index.html’ saved [1270/1270]
>
> Works for me.  Your network or wget is broken, and that is unrelated 
> to bitbake/yocto/etc.
>
> Ross
>
> On 9 August 2017 at 09:34, Riko <antonius.riko@gmail.com 
> <mailto:antonius.riko@gmail.com>> wrote:
>
>     This one ?
>
>     bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky/build$ wget
>     https://www.example.com/
>     --2017-08-09 16:33:05-- https://www.example.com/
>     Resolving www.example.com <http://www.example.com>
>     (www.example.com <http://www.example.com>)... failed: Name or
>     service not known.
>     wget: unable to resolve host address 'www.example.com’
>     <http://www.example.com%E2%80%99>
>
>
>     On 09/08/17 16:31, Burton, Ross wrote:
>>     For some reason, bitbake can't do "wget
>>     https://www.example.com/".   Try running that command outside of
>>     bitbake and seeing if it returns any errors.
>>
>>     Ross
>>
>>     On 9 August 2017 at 09:29, Riko <antonius.riko@gmail.com
>>     <mailto:antonius.riko@gmail.com>> wrote:
>>
>>         Dear Yocto Member,
>>
>>
>>         I have downloaded fresh install of yocto but got error,
>>         here's the trace :
>>
>>         bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~$ git clone -b
>>         pyro git://git.yoctoproject.org/poky.git
>>         <http://git.yoctoproject.org/poky.git>
>>         Cloning into 'poky'...
>>         remote: Counting objects: 373183, done.
>>         remote: Compressing objects: 100% (89366/89366), done.
>>         remote: Total 373183 (delta 277418), reused 373031 (delta 277266)
>>         Receiving objects: 100% (373183/373183), 134.71 MiB | 1.47
>>         MiB/s, done.
>>         Resolving deltas: 100% (277418/277418), done.
>>         Checking connectivity... done.
>>
>>
>>         bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky$ source
>>         oe-init-build-env
>>         You had no conf/local.conf file. This configuration file has
>>         therefore been
>>         created for you with some default values. You may wish to
>>         edit it to, for
>>         example, select a different MACHINE (target hardware). See
>>         conf/local.conf
>>         for more information as common configuration options are
>>         commented.
>>
>>         You had no conf/bblayers.conf file. This configuration file
>>         has therefore been
>>         created for you with some default values. To add additional
>>         metadata layers
>>         into your configuration please add entries to conf/bblayers.conf.
>>
>>         The Yocto Project has extensive documentation about OE
>>         including a reference
>>         manual which can be found at:
>>         http://yoctoproject.org/documentation
>>         <http://yoctoproject.org/documentation>
>>
>>         For more information about OpenEmbedded see their website:
>>         http://www.openembedded.org/
>>
>>
>>         ### Shell environment set up for builds. ###
>>
>>         You can now run 'bitbake <target>'
>>
>>         Common targets are:
>>             core-image-minimal
>>             core-image-sato
>>             meta-toolchain
>>             meta-ide-support
>>
>>         You can also run generated qemu images with a command like
>>         'runqemu qemux86'
>>         bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky/build$
>>         bitbake core-image-minimal
>>         ERROR:  OE-core's config sanity checker detected a potential
>>         misconfiguration.
>>             Either fix the cause of this error or at your own risk
>>         disable the checker (see sanity.conf).
>>             Following is the list of potential problems / advisories:
>>
>>             Fetcher failure for URL: 'https://www.example.com/'. URL
>>         https://www.example.com/ doesn't work.
>>             Please ensure your host's network is configured correctly,
>>             or set BB_NO_NETWORK = "1" to disable network access if
>>             all required sources are on local disk.
>>
>>
>>         Summary: There was 1 ERROR message shown, returning a
>>         non-zero exit code.
>>
>>
>>         Any suggestions ?
>>
>>         I'm using ubuntu 16.04,
>>
>>         Thanks
>>
>>         -- 
>>         _______________________________________________
>>         yocto mailing list
>>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>         https://lists.yoctoproject.org/listinfo/yocto
>>         <https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>
>


--------------A75646753C35346101BE39D2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>When I test on browser :</p>
    <p><a class="moz-txt-link-freetext" href="https://www.example.com/">https://www.example.com/</a></p>
    <p>I  got server not found ??<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 09/08/17 16:38, Burton, Ross wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJTo0LbM1Ly6aFCeq7FTsOiCpmhSw_PoRRu-3NmMbKx1CXtAkQ@mail.gmail.com">
      <div dir="ltr">Yep.  That's your problem.
        <div><br>
        </div>
        <div>
          <div>$ wget <a href="https://www.example.com/"
              moz-do-not-send="true">https://www.example.com/</a></div>
          <div>--2017-08-09 09:37:43--  <a
              href="https://www.example.com/" moz-do-not-send="true">https://www.example.com/</a></div>
          <div>Resolving <a class="moz-txt-link-abbreviated" href="http://www.example.com">www.example.com</a>... 93.184.216.34,
            2606:2800:220:1:248:1893:25c8:1946</div>
          <div>Connecting to <a href="http://www.example.com"
              moz-do-not-send="true">www.example.com</a>|93.184.216.34|:443...
            connected.</div>
          <div>HTTP request sent, awaiting response... 200 OK</div>
          <div>Length: 1270 (1.2K) [text/html]</div>
          <div>Saving to: ‘index.html’</div>
          <div><br>
          </div>
          <div>index.html          100%[===================&gt;]   1.24K
             --.-KB/s    in 0s</div>
          <div><br>
          </div>
          <div>2017-08-09 09:37:44 (15.3 MB/s) - ‘index.html’ saved
            [1270/1270]</div>
        </div>
        <div><br>
        </div>
        <div>Works for me.  Your network or wget is broken, and that is
          unrelated to bitbake/yocto/etc.</div>
        <div><br>
        </div>
        <div>Ross</div>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On 9 August 2017 at 09:34, Riko <span
            dir="ltr">&lt;<a href="mailto:antonius.riko@gmail.com"
              target="_blank" moz-do-not-send="true">antonius.riko@gmail.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div text="#000000" bgcolor="#FFFFFF">
              <p>This one ?<br>
              </p>
              <p>bianchi@bianchi-HP-Pavilion-<wbr>dv6-Notebook-PC:~/poky/build$
                wget <a
                  class="m_1262213939812178703moz-txt-link-freetext"
                  href="https://www.example.com/" target="_blank"
                  moz-do-not-send="true">https://www.example.com/</a><br>
                --2017-08-09 16:33:05--  <a
                  class="m_1262213939812178703moz-txt-link-freetext"
                  href="https://www.example.com/" target="_blank"
                  moz-do-not-send="true">https://www.example.com/</a><br>
                Resolving <a
                  class="m_1262213939812178703moz-txt-link-abbreviated"
                  href="http://www.example.com" target="_blank"
                  moz-do-not-send="true">www.example.com</a> (<a
                  class="m_1262213939812178703moz-txt-link-abbreviated"
                  href="http://www.example.com" target="_blank"
                  moz-do-not-send="true">www.example.com</a>)... failed:
                Name or service not known.<br>
                wget: unable to resolve host address '<a
                  class="m_1262213939812178703moz-txt-link-abbreviated"
                  href="http://www.example.com%E2%80%99" target="_blank"
                  moz-do-not-send="true">www.example.com’</a><br>
                <br>
              </p>
              <div>
                <div class="h5"> <br>
                  <div class="m_1262213939812178703moz-cite-prefix">On
                    09/08/17 16:31, Burton, Ross wrote:<br>
                  </div>
                  <blockquote type="cite">
                    <div dir="ltr">For some reason, bitbake can't do
                      "wget <a href="https://www.example.com/"
                        target="_blank" moz-do-not-send="true">https://www.example.com/</a>".
                        Try running that command outside of bitbake and
                      seeing if it returns any errors.
                      <div><br>
                      </div>
                      <div>Ross</div>
                    </div>
                    <div class="gmail_extra"><br>
                      <div class="gmail_quote">On 9 August 2017 at
                        09:29, Riko <span dir="ltr">&lt;<a
                            href="mailto:antonius.riko@gmail.com"
                            target="_blank" moz-do-not-send="true">antonius.riko@gmail.com</a>&gt;</span>
                        wrote:<br>
                        <blockquote class="gmail_quote" style="margin:0
                          0 0 .8ex;border-left:1px #ccc
                          solid;padding-left:1ex">Dear Yocto Member,<br>
                          <br>
                          <br>
                          I have downloaded fresh install of yocto but
                          got error, here's the trace :<br>
                          <br>
                          bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~$
                          git clone -b pyro git://<a
                            href="http://git.yoctoproject.org/poky.git"
                            rel="noreferrer" target="_blank"
                            moz-do-not-send="true">git.yoctoproject.org/pok<wbr>y.git</a><br>
                          Cloning into 'poky'...<br>
                          remote: Counting objects: 373183, done.<br>
                          remote: Compressing objects: 100%
                          (89366/89366), done.<br>
                          remote: Total 373183 (delta 277418), reused
                          373031 (delta 277266)<br>
                          Receiving objects: 100% (373183/373183),
                          134.71 MiB | 1.47 MiB/s, done.<br>
                          Resolving deltas: 100% (277418/277418), done.<br>
                          Checking connectivity... done.<br>
                          <br>
                          <br>
                          bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~/poky$
                          source oe-init-build-env<br>
                          You had no conf/local.conf file. This
                          configuration file has therefore been<br>
                          created for you with some default values. You
                          may wish to edit it to, for<br>
                          example, select a different MACHINE (target
                          hardware). See conf/local.conf<br>
                          for more information as common configuration
                          options are commented.<br>
                          <br>
                          You had no conf/bblayers.conf file. This
                          configuration file has therefore been<br>
                          created for you with some default values. To
                          add additional metadata layers<br>
                          into your configuration please add entries to
                          conf/bblayers.conf.<br>
                          <br>
                          The Yocto Project has extensive documentation
                          about OE including a reference<br>
                          manual which can be found at:<br>
                              <a
                            href="http://yoctoproject.org/documentation"
                            rel="noreferrer" target="_blank"
                            moz-do-not-send="true">http://yoctoproject.org/docume<wbr>ntation</a><br>
                          <br>
                          For more information about OpenEmbedded see
                          their website:<br>
                              <a href="http://www.openembedded.org/"
                            rel="noreferrer" target="_blank"
                            moz-do-not-send="true">http://www.openembedded.org/</a><br>
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
                          You can also run generated qemu images with a
                          command like 'runqemu qemux86'<br>
                          bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~/poky/build$
                          bitbake core-image-minimal<br>
                          ERROR:  OE-core's config sanity checker
                          detected a potential misconfiguration.<br>
                              Either fix the cause of this error or at
                          your own risk disable the checker (see
                          sanity.conf).<br>
                              Following is the list of potential
                          problems / advisories:<br>
                          <br>
                              Fetcher failure for URL: '<a
                            href="https://www.example.com/"
                            rel="noreferrer" target="_blank"
                            moz-do-not-send="true">https://www.example.com/</a>'.
                          URL <a href="https://www.example.com/"
                            rel="noreferrer" target="_blank"
                            moz-do-not-send="true">https://www.example.com/</a>
                          doesn't work.<br>
                              Please ensure your host's network is
                          configured correctly,<br>
                              or set BB_NO_NETWORK = "1" to disable
                          network access if<br>
                              all required sources are on local disk.<br>
                          <br>
                          <br>
                          Summary: There was 1 ERROR message shown,
                          returning a non-zero exit code.<br>
                          <br>
                          <br>
                          Any suggestions ?<br>
                          <br>
                          I'm using ubuntu 16.04,<br>
                          <br>
                          Thanks<span
                            class="m_1262213939812178703HOEnZb"><font
                              color="#888888"><br>
                              <br>
                              -- <br>
                              ______________________________<wbr>_________________<br>
                              yocto mailing list<br>
                              <a href="mailto:yocto@yoctoproject.org"
                                target="_blank" moz-do-not-send="true">yocto@yoctoproject.org</a><br>
                              <a
                                href="https://lists.yoctoproject.org/listinfo/yocto"
                                rel="noreferrer" target="_blank"
                                moz-do-not-send="true">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><br>
                            </font></span></blockquote>
                      </div>
                      <br>
                    </div>
                  </blockquote>
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

--------------A75646753C35346101BE39D2--
