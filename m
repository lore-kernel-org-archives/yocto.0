Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55325C433FE
	for <webhook@archiver.kernel.org>; Tue, 18 Oct 2022 22:54:18 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web12.1602.1666133657211200879
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Oct 2022 15:54:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=ZXfZNLL1;
 spf=pass (domain: mvista.com, ip: 209.85.216.51, mailfrom: jpuhlman@mvista.com)
Received: by mail-pj1-f51.google.com with SMTP id t12-20020a17090a3b4c00b0020b04251529so15335226pjf.5
        for <yocto@lists.yoctoproject.org>; Tue, 18 Oct 2022 15:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ry8ctdjG0pqR5K+6sOHq+bRMSBz5de0hBfYjlBKfkDo=;
        b=ZXfZNLL1V/R3ABIRoA2kNfML7XrYgUaOoB/ZUjJcRF00x1vyPDLzCqpPuQqSX3MtAe
         BqwRvJdp+7jFckDdTMGyPozmS4SUF3hYZxdCtt2nxD9wHDy32LHOPF62hjhqxIPTUuSt
         9UZlxEDK0qtTIUYkIBWmHEE6MgSK+ZBr5PAzE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ry8ctdjG0pqR5K+6sOHq+bRMSBz5de0hBfYjlBKfkDo=;
        b=eZJOkFwI4iL7jQutH22HjUEWKKIqHr6DvN78BM7BDumH5s2gINzzdEKyLsxBFmXelc
         AEAK2rHcwdTstObmUEZXofTP/4jU9bjmvotswry167xKHkCDSmoiqqOgjGVxFx8WBKPW
         coZkTGD8rHPd+1+4/5WltODA85V1VwyRJM08IENElV5hgYSMhigTaM2AJM2ZIghsbBBx
         wIgW6GmQ4oCFqS1qxTMAV0kNeImDgty7n8QIjKpKPNmYuAIJeCxtz/qoEiMOtSiICLMm
         r+CXku2H1GV05I1r1Dql8mWp0Hg8DRJMkVWLI1km1yufMI0HUcpYqcoLqmF79xFl8/hp
         HyzQ==
X-Gm-Message-State: ACrzQf2JoLQL1geLgcgrEFDQmo8VxK4d8RuE4Ii5Xm2xnPNOFywkYZ5k
	/FvY+ZK9U4163Nh6UEoToQeUPg==
X-Google-Smtp-Source: AMsMyM71cxGp8GADOybJW8VnUIfjGqkOc4OKuW8VlFE7RO0z6fX1mOFLXUmdUbtke8tBb6vaMfrWaA==
X-Received: by 2002:a17:90b:3a90:b0:20d:a54c:e5cd with SMTP id om16-20020a17090b3a9000b0020da54ce5cdmr34113458pjb.183.1666133656441;
        Tue, 18 Oct 2022 15:54:16 -0700 (PDT)
Received: from [10.20.245.17] (50-240-203-141-static.hfc.comcastbusiness.net. [50.240.203.141])
        by smtp.googlemail.com with ESMTPSA id a8-20020a17090a008800b001fd7e56da4csm12114035pja.39.2022.10.18.15.54.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 15:54:15 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------U0Mz6IQK5qoskqQw9YdDpFdV"
Message-ID: <40a6ff41-cce0-957c-8d89-fa3a2e01f254@mvista.com>
Date: Tue, 18 Oct 2022 15:54:16 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [yocto] do_kernel_configme - Could not generate configuration
 queue
Content-Language: en-US
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Jose Quaresma <quaresma.jose@gmail.com>,
 Rudolf J Streif <rudolf.streif@ibeeto.com>, yocto@lists.yoctoproject.org
References: <aef92e7e-5f88-7628-bfec-0656b71cb57c@ibeeto.com>
 <CANPvuRkggcuz3Bn89YAOo9wvVOOgPZ=pUxNrXFhcp6HNtwHJ-A@mail.gmail.com>
 <CADkTA4NKGk7Rt2coaA8WHO7VjyPab9VNPwKo7aNGwnSbuQisGQ@mail.gmail.com>
 <a055d0e1-90d7-d051-6976-50e701ff8e40@mvista.com>
 <CADkTA4PegfeGTUmja1AF9fXdy2=eyXLy_qu86gYmKBQ8B8bayw@mail.gmail.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <CADkTA4PegfeGTUmja1AF9fXdy2=eyXLy_qu86gYmKBQ8B8bayw@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Oct 2022 22:54:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58363

This is a multi-part message in MIME format.
--------------U0Mz6IQK5qoskqQw9YdDpFdV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 10/18/2022 3:31 PM, Bruce Ashfield wrote:
>
>
> On Tue, Oct 18, 2022 at 5:01 PM Jeremy Puhlman <jpuhlman@mvista.com> 
> wrote:
>
>     On 10/14/2022 6:52 PM, Bruce Ashfield wrote:
>>
>>
>>     On Fri, Oct 14, 2022 at 10:11 PM Jose Quaresma
>>     <quaresma.jose@gmail.com> wrote:
>>
>>         Hi Rudolf,
>>
>>         I have reported this issue and together with a path [1] to
>>         fix it.
>>         Anyway Bruce has fixed the issue in another way in [2] and
>>         this works for me as well.
>>
>>         [1] https://lists.yoctoproject.org/g/linux-yocto/message/11746
>>         [2]
>>         https://git.yoctoproject.org/yocto-kernel-tools/commit/?id=6a4752ebbe7d242c02b3c74a5772926edd243626
>>
>>
>>     Yes indeed. This has also passed my other regression testing, but
>>     I was traveling today and couldn't send my pull request.
>>
>>     I'll send it over the weekend, so hopefully it'll be merged shortly!
>>
>>     Bruce
>
>     Did this end up getting sen to the list? I also validated updating
>     to the specific hash resolved my issue too.
>
>
> Nope. I got tied up with some other issues, I'll send it tonight when 
> I get a moment!
>
> Bruce
>
Thanks!
>
>>         Jose
>>
>>         Rudolf J Streif <rudolf.streif@ibeeto.com> escreveu no dia
>>         sábado, 15/10/2022 à(s) 01:45:
>>
>>             I am running into a bizarre problem with kernel
>>             configuration.
>>
>>             I have an existing build environment that builds for an
>>             i.MX6ul machine.
>>             That works fine and the linux-fslc kernel 5.18 builds
>>             without any
>>             problems. Now within the that build environment I changed
>>             the machine to
>>             imx6ullevk and then the kernel configuration fails with
>>             this error message:
>>
>>             | DEBUG: Executing shell function do_kernel_configme
>>             | NOTE: do_kernel_metadata: for summary/debug, set
>>             KCONF_AUDIT_LEVEL > 0
>>             | [ERROR]: processing of file /tmp/tmp.owmBptYrba failed
>>             |
>>             /develop/projects/altec/tcu/build/tmp/hosttools/dirname:
>>             missing operand
>>             | Try
>>             '/develop/projects/altec/tcu/build/tmp/hosttools/dirname
>>             --help'
>>             for more information.
>>             | ERROR: Could not generate configuration queue for
>>             imx6ullevk.
>>             | WARNING:
>>             /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395:209
>>
>>             exit 1 from 'exit 1'
>>             | WARNING: Backtrace (BB generated script):
>>             |     #1: bbfatal_log,
>>             /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395,
>>
>>             line 209
>>             |     #2: do_kernel_metadata,
>>             /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395,
>>
>>             line 382
>>             |     #3: do_kernel_configme,
>>             /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395,
>>
>>             line 150
>>             |     #4: main,
>>             /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395,
>>
>>             line 484
>>             ERROR: Task
>>             (/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/linux-fslc_5.18.bb:do_kernel_configme)
>>
>>             failed with exit code '1'
>>
>>             I tried to debug do_kernel_configme. The issue seems in
>>             the scc script
>>             more specifically, I think, in the kconf command that is
>>             called by scc
>>             when parsing the temporary configuration queue file in
>>             /tmp: tmp.owmBptYrba
>>
>>             #
>>             # spp v0.8
>>             # processed: Fri Oct 14 09:49:02 PM UTC 2022
>>             #
>>             # This is a preprocessor output file, do not edit
>>             #
>>             #
>>             prefix
>>             /develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/linux-fslc/defconfig
>>             kconf non-hardware
>>             /develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/linux-fslc/defconfig
>>             # run time: 0 seconds
>>             # processed files:
>>             # _cfg
>>             /develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/linux-fslc/defconfig
>>
>>             Apparently a call to dirname is missing the argument.
>>             However, I do not
>>             understand why.
>>
>>             I wiped out build/tmp directory entirely, ran a cleanall on
>>             virtual/kernel but to no avail. The problem remains the same.
>>
>>             Has anybody seen this issue before?
>>
>>
>>             Rudi
>>
>>
>>
>>
>>
>>
>>
>>         -- 
>>         Best regards,
>>
>>         José Quaresma
>>
>>
>>
>>
>>
>>     -- 
>>     - Thou shalt not follow the NULL pointer, for chaos and madness
>>     await thee at its end
>>     - "Use the force Harry" - Gandalf, Star Trek II
>>
>>
>
>     -- 
>     Jeremy A. Puhlman
>     jpuhlman@mvista.com
>
>
>     -=-=-=-=-=-=-=-=-=-=-=-
>     Links: You receive all messages sent to this group.
>     View/Reply Online (#58359):
>     https://lists.yoctoproject.org/g/yocto/message/58359
>     Mute This Topic: https://lists.yoctoproject.org/mt/94339433/1050810
>     Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>     [bruce.ashfield@gmail.com]
>     -=-=-=-=-=-=-=-=-=-=-=-
>
>
>
> -- 
> - Thou shalt not follow the NULL pointer, for chaos and madness await 
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>

-- 
Jeremy A. Puhlman
jpuhlman@mvista.com

--------------U0Mz6IQK5qoskqQw9YdDpFdV
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 10/18/2022 3:31 PM, Bruce Ashfield
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CADkTA4PegfeGTUmja1AF9fXdy2=eyXLy_qu86gYmKBQ8B8bayw@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">
          <div class="gmail_default" style="font-size:small"><br>
          </div>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Tue, Oct 18, 2022 at 5:01
            PM Jeremy Puhlman &lt;<a href="mailto:jpuhlman@mvista.com"
              moz-do-not-send="true" class="moz-txt-link-freetext">jpuhlman@mvista.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div> On 10/14/2022 6:52 PM, Bruce Ashfield wrote:<br>
              <blockquote type="cite">
                <div dir="ltr">
                  <div dir="ltr">
                    <div style="font-size:small"><br>
                    </div>
                  </div>
                  <br>
                  <div class="gmail_quote">
                    <div dir="ltr" class="gmail_attr">On Fri, Oct 14,
                      2022 at 10:11 PM Jose Quaresma &lt;<a
                        href="mailto:quaresma.jose@gmail.com"
                        target="_blank" moz-do-not-send="true"
                        class="moz-txt-link-freetext">quaresma.jose@gmail.com</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class="gmail_quote" style="margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div dir="ltr">
                        <div>Hi Rudolf,<br>
                          <br>
                          I have reported this issue and together with a
                          path [1] to fix it.</div>
                        <div>Anyway Bruce has fixed the issue in another
                          way in [2] and this works for me as well.<br>
                          <br>
                          [1] <a
                            href="https://lists.yoctoproject.org/g/linux-yocto/message/11746"
                            target="_blank" moz-do-not-send="true"
                            class="moz-txt-link-freetext">https://lists.yoctoproject.org/g/linux-yocto/message/11746</a><br>
                        </div>
                        [2] <a
href="https://git.yoctoproject.org/yocto-kernel-tools/commit/?id=6a4752ebbe7d242c02b3c74a5772926edd243626"
                          target="_blank" moz-do-not-send="true"
                          class="moz-txt-link-freetext">https://git.yoctoproject.org/yocto-kernel-tools/commit/?id=6a4752ebbe7d242c02b3c74a5772926edd243626</a><br>
                        <br>
                      </div>
                    </blockquote>
                    <div><br>
                    </div>
                    <div>
                      <div style="font-size:small">Yes indeed. This has
                        also passed my other regression testing, but I
                        was traveling today and couldn't send my pull
                        request.</div>
                      <div style="font-size:small"><br>
                      </div>
                      <div style="font-size:small">I'll send it over the
                        weekend, so hopefully it'll be merged shortly!</div>
                      <div style="font-size:small"><br>
                      </div>
                      <div style="font-size:small">Bruce</div>
                    </div>
                  </div>
                </div>
              </blockquote>
              <br>
              Did this end up getting sen to the list? I also validated
              updating to the specific hash resolved my issue too.<br>
              <br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>
            <div class="gmail_default" style="font-size:small">Nope. I
              got tied up with some other issues, I'll send it tonight
              when I get a moment!</div>
            <div class="gmail_default" style="font-size:small"><br>
            </div>
            <div class="gmail_default" style="font-size:small">Bruce</div>
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    Thanks!<br>
    <blockquote type="cite"
cite="mid:CADkTA4PegfeGTUmja1AF9fXdy2=eyXLy_qu86gYmKBQ8B8bayw@mail.gmail.com">
      <div dir="ltr">
        <div class="gmail_quote">
          <div> </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div>
              <blockquote type="cite">
                <div dir="ltr">
                  <div class="gmail_quote">
                    <div> </div>
                    <blockquote class="gmail_quote" style="margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div dir="ltr">Jose<br>
                        <br>
                        <div class="gmail_quote">
                          <div dir="ltr" class="gmail_attr">Rudolf J
                            Streif &lt;<a
                              href="mailto:rudolf.streif@ibeeto.com"
                              target="_blank" moz-do-not-send="true"
                              class="moz-txt-link-freetext">rudolf.streif@ibeeto.com</a>&gt;
                            escreveu no dia sábado, 15/10/2022 à(s)
                            01:45:<br>
                          </div>
                          <blockquote class="gmail_quote"
                            style="margin:0px 0px 0px
                            0.8ex;border-left:1px solid
                            rgb(204,204,204);padding-left:1ex">I am
                            running into a bizarre problem with kernel
                            configuration.<br>
                            <br>
                            I have an existing build environment that
                            builds for an i.MX6ul machine. <br>
                            That works fine and the linux-fslc kernel
                            5.18 builds without any <br>
                            problems. Now within the that build
                            environment I changed the machine to <br>
                            imx6ullevk and then the kernel configuration
                            fails with this error message:<br>
                            <br>
                            | DEBUG: Executing shell function
                            do_kernel_configme<br>
                            | NOTE: do_kernel_metadata: for
                            summary/debug, set KCONF_AUDIT_LEVEL &gt; 0<br>
                            | [ERROR]: processing of file
                            /tmp/tmp.owmBptYrba failed<br>
                            |
                            /develop/projects/altec/tcu/build/tmp/hosttools/dirname:
                            missing operand<br>
                            | Try
                            '/develop/projects/altec/tcu/build/tmp/hosttools/dirname
                            --help' <br>
                            for more information.<br>
                            | ERROR: Could not generate configuration
                            queue for imx6ullevk.<br>
                            | WARNING: <br>
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395:209
                            <br>
                            exit 1 from 'exit 1'<br>
                            | WARNING: Backtrace (BB generated script):<br>
                            |     #1: bbfatal_log, <br>
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395,
                            <br>
                            line 209<br>
                            |     #2: do_kernel_metadata, <br>
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395,
                            <br>
                            line 382<br>
                            |     #3: do_kernel_configme, <br>
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395,
                            <br>
                            line 150<br>
                            |     #4: main, <br>
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395,
                            <br>
                            line 484<br>
                            ERROR: Task <br>
(/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/linux-fslc_5.18.bb:do_kernel_configme)
                            <br>
                            failed with exit code '1'<br>
                            <br>
                            I tried to debug do_kernel_configme. The
                            issue seems in the scc script <br>
                            more specifically, I think, in the kconf
                            command that is called by scc <br>
                            when parsing the temporary configuration
                            queue file in /tmp: tmp.owmBptYrba<br>
                            <br>
                            #<br>
                            # spp v0.8<br>
                            # processed: Fri Oct 14 09:49:02 PM UTC 2022<br>
                            #<br>
                            # This is a preprocessor output file, do not
                            edit<br>
                            #<br>
                            #<br>
                            prefix <br>
/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/linux-fslc/defconfig<br>
                            kconf non-hardware <br>
/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/linux-fslc/defconfig<br>
                            # run time: 0 seconds<br>
                            # processed files:<br>
                            # _cfg <br>
/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/linux-fslc/defconfig<br>
                            <br>
                            Apparently a call to dirname is missing the
                            argument. However, I do not <br>
                            understand why.<br>
                            <br>
                            I wiped out build/tmp directory entirely,
                            ran a cleanall on <br>
                            virtual/kernel but to no avail. The problem
                            remains the same.<br>
                            <br>
                            Has anybody seen this issue before?<br>
                            <br>
                            <br>
                            Rudi<br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                          </blockquote>
                        </div>
                        <br clear="all">
                        <div><br>
                        </div>
                        -- <br>
                        <div dir="ltr">
                          <div dir="ltr">Best regards,
                            <div><br>
                              José Quaresma</div>
                          </div>
                        </div>
                      </div>
                      <br>
                      <br>
                      <br>
                    </blockquote>
                  </div>
                  <br clear="all">
                  <div><br>
                  </div>
                  -- <br>
                  <div dir="ltr">- Thou shalt not follow the NULL
                    pointer, for chaos and madness await thee at its end<br>
                    - "Use the force Harry" - Gandalf, Star Trek II<br>
                    <br>
                  </div>
                </div>
                <br>
                <fieldset></fieldset>
              </blockquote>
              <br>
              <pre cols="72">-- 
Jeremy A. Puhlman
<a href="mailto:jpuhlman@mvista.com" target="_blank" moz-do-not-send="true" class="moz-txt-link-freetext">jpuhlman@mvista.com</a></pre>
            </div>
            <br>
            -=-=-=-=-=-=-=-=-=-=-=-<br>
            Links: You receive all messages sent to this group.<br>
            View/Reply Online (#58359): <a
              href="https://lists.yoctoproject.org/g/yocto/message/58359"
              rel="noreferrer" target="_blank" moz-do-not-send="true"
              class="moz-txt-link-freetext">https://lists.yoctoproject.org/g/yocto/message/58359</a><br>
            Mute This Topic: <a
              href="https://lists.yoctoproject.org/mt/94339433/1050810"
              rel="noreferrer" target="_blank" moz-do-not-send="true"
              class="moz-txt-link-freetext">https://lists.yoctoproject.org/mt/94339433/1050810</a><br>
            Group Owner: <a
              href="mailto:yocto%2Bowner@lists.yoctoproject.org"
              target="_blank" moz-do-not-send="true">yocto+owner@lists.yoctoproject.org</a><br>
            Unsubscribe: <a
              href="https://lists.yoctoproject.org/g/yocto/unsub"
              rel="noreferrer" target="_blank" moz-do-not-send="true"
              class="moz-txt-link-freetext">https://lists.yoctoproject.org/g/yocto/unsub</a>
            [<a href="mailto:bruce.ashfield@gmail.com" target="_blank"
              moz-do-not-send="true" class="moz-txt-link-freetext">bruce.ashfield@gmail.com</a>]<br>
            -=-=-=-=-=-=-=-=-=-=-=-<br>
            <br>
          </blockquote>
        </div>
        <br clear="all">
        <div><br>
        </div>
        -- <br>
        <div dir="ltr" class="gmail_signature">- Thou shalt not follow
          the NULL pointer, for chaos and madness await thee at its end<br>
          - "Use the force Harry" - Gandalf, Star Trek II<br>
          <br>
        </div>
      </div>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Jeremy A. Puhlman
<a class="moz-txt-link-abbreviated" href="mailto:jpuhlman@mvista.com">jpuhlman@mvista.com</a></pre>
  </body>
</html>

--------------U0Mz6IQK5qoskqQw9YdDpFdV--

