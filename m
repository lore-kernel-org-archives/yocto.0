Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C569AC433FE
	for <webhook@archiver.kernel.org>; Tue, 18 Oct 2022 21:01:07 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web11.374.1666126857836908950
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Oct 2022 14:00:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=OyNfQQ5P;
 spf=pass (domain: mvista.com, ip: 209.85.214.181, mailfrom: jpuhlman@mvista.com)
Received: by mail-pl1-f181.google.com with SMTP id b2so15009072plc.7
        for <yocto@lists.yoctoproject.org>; Tue, 18 Oct 2022 14:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VQFIZcwXT6gE7lFto7uToYWCNbIn1UfWK2wyffVhh6Y=;
        b=OyNfQQ5PeqVh70+rvHCf9yHpkv5qHIp85A8ybr/zb/KjejcpXsC0gIrRLEkqB8SqEV
         G8NG24ons3QiIFer1WdV7X/lKa1DvKR36e0u5hlCD2We4zWUAKZ5F521Jg3g4TrJhYvL
         vIVdlXOc2mu+ZjyvUfutY6INb8xcSYeBPs2B8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VQFIZcwXT6gE7lFto7uToYWCNbIn1UfWK2wyffVhh6Y=;
        b=drf61i3CGC18ObFhdbL/K0TVW8ettIKorpqPfunSA+oLjAAuozg6qyq5dU9m9c13qx
         Ya1AGRdjPaIjZYskQIlykA5VU1EIKjIBwZui4S0e9mUHAabySTECXh6jfbSgzvG3xqhv
         dL6lbJW03JGZ2Gsokq6NAezEIgAE4hGaBiaQv6ToLmkbz84wpeQFnLNN5sqVe967ljWH
         JL3jdt6rxL1Hfo5zWDoIPKOZp0niFwCwLdYFmtDuRXFz3hJ1kdtRA35kZkKPUcmaSPUJ
         P9Sj0gyrFwYFCcKGnWF2zdJw3S8QpryyYuqbyvm6qTEei/RtYxvW9RmoB0dQA8XKc9zi
         VhRQ==
X-Gm-Message-State: ACrzQf1f7L/xwdEyAL+DpxXX98V9q11M0ipd6B3omX0AOb7NLzPbX8nL
	XTuExmCFEJoIx0rR9ZInP3D3bA==
X-Google-Smtp-Source: AMsMyM43Ki7F33izxzE4gNB/F8EZr7uYyFJW9lH04LIWAUWFxo5r89gkcw2Q1PzVuDdaFFNqvmOePg==
X-Received: by 2002:a17:902:f681:b0:182:bd2c:26ee with SMTP id l1-20020a170902f68100b00182bd2c26eemr4833063plg.59.1666126857156;
        Tue, 18 Oct 2022 14:00:57 -0700 (PDT)
Received: from [10.20.245.17] (50-240-203-141-static.hfc.comcastbusiness.net. [50.240.203.141])
        by smtp.googlemail.com with ESMTPSA id q12-20020a17090311cc00b001801aec1f6bsm9276745plh.141.2022.10.18.14.00.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 14:00:56 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------T8xObUo0WD5TxQ2zLkNCXl40"
Message-ID: <a055d0e1-90d7-d051-6976-50e701ff8e40@mvista.com>
Date: Tue, 18 Oct 2022 14:00:57 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [yocto] do_kernel_configme - Could not generate configuration
 queue
Content-Language: en-US
To: Bruce Ashfield <bruce.ashfield@gmail.com>,
 Jose Quaresma <quaresma.jose@gmail.com>
Cc: Rudolf J Streif <rudolf.streif@ibeeto.com>, yocto@lists.yoctoproject.org
References: <aef92e7e-5f88-7628-bfec-0656b71cb57c@ibeeto.com>
 <CANPvuRkggcuz3Bn89YAOo9wvVOOgPZ=pUxNrXFhcp6HNtwHJ-A@mail.gmail.com>
 <CADkTA4NKGk7Rt2coaA8WHO7VjyPab9VNPwKo7aNGwnSbuQisGQ@mail.gmail.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <CADkTA4NKGk7Rt2coaA8WHO7VjyPab9VNPwKo7aNGwnSbuQisGQ@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Oct 2022 21:01:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58359

This is a multi-part message in MIME format.
--------------T8xObUo0WD5TxQ2zLkNCXl40
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/14/2022 6:52 PM, Bruce Ashfield wrote:
>
>
> On Fri, Oct 14, 2022 at 10:11 PM Jose Quaresma 
> <quaresma.jose@gmail.com> wrote:
>
>     Hi Rudolf,
>
>     I have reported this issue and together with a path [1] to fix it.
>     Anyway Bruce has fixed the issue in another way in [2] and this
>     works for me as well.
>
>     [1] https://lists.yoctoproject.org/g/linux-yocto/message/11746
>     [2]
>     https://git.yoctoproject.org/yocto-kernel-tools/commit/?id=6a4752ebbe7d242c02b3c74a5772926edd243626
>
>
> Yes indeed. This has also passed my other regression testing, but I 
> was traveling today and couldn't send my pull request.
>
> I'll send it over the weekend, so hopefully it'll be merged shortly!
>
> Bruce

Did this end up getting sen to the list? I also validated updating to 
the specific hash resolved my issue too.

>     Jose
>
>     Rudolf J Streif <rudolf.streif@ibeeto.com> escreveu no dia sábado,
>     15/10/2022 à(s) 01:45:
>
>         I am running into a bizarre problem with kernel configuration.
>
>         I have an existing build environment that builds for an
>         i.MX6ul machine.
>         That works fine and the linux-fslc kernel 5.18 builds without any
>         problems. Now within the that build environment I changed the
>         machine to
>         imx6ullevk and then the kernel configuration fails with this
>         error message:
>
>         | DEBUG: Executing shell function do_kernel_configme
>         | NOTE: do_kernel_metadata: for summary/debug, set
>         KCONF_AUDIT_LEVEL > 0
>         | [ERROR]: processing of file /tmp/tmp.owmBptYrba failed
>         | /develop/projects/altec/tcu/build/tmp/hosttools/dirname:
>         missing operand
>         | Try '/develop/projects/altec/tcu/build/tmp/hosttools/dirname
>         --help'
>         for more information.
>         | ERROR: Could not generate configuration queue for imx6ullevk.
>         | WARNING:
>         /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395:209
>
>         exit 1 from 'exit 1'
>         | WARNING: Backtrace (BB generated script):
>         |     #1: bbfatal_log,
>         /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395,
>
>         line 209
>         |     #2: do_kernel_metadata,
>         /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395,
>
>         line 382
>         |     #3: do_kernel_configme,
>         /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395,
>
>         line 150
>         |     #4: main,
>         /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395,
>
>         line 484
>         ERROR: Task
>         (/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/linux-fslc_5.18.bb:do_kernel_configme)
>
>         failed with exit code '1'
>
>         I tried to debug do_kernel_configme. The issue seems in the
>         scc script
>         more specifically, I think, in the kconf command that is
>         called by scc
>         when parsing the temporary configuration queue file in /tmp:
>         tmp.owmBptYrba
>
>         #
>         # spp v0.8
>         # processed: Fri Oct 14 09:49:02 PM UTC 2022
>         #
>         # This is a preprocessor output file, do not edit
>         #
>         #
>         prefix
>         /develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/linux-fslc/defconfig
>         kconf non-hardware
>         /develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/linux-fslc/defconfig
>         # run time: 0 seconds
>         # processed files:
>         # _cfg
>         /develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/linux-fslc/defconfig
>
>         Apparently a call to dirname is missing the argument. However,
>         I do not
>         understand why.
>
>         I wiped out build/tmp directory entirely, ran a cleanall on
>         virtual/kernel but to no avail. The problem remains the same.
>
>         Has anybody seen this issue before?
>
>
>         Rudi
>
>
>
>
>
>
>
>     -- 
>     Best regards,
>
>     José Quaresma
>
>
>
>
>
> -- 
> - Thou shalt not follow the NULL pointer, for chaos and madness await 
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58339):https://lists.yoctoproject.org/g/yocto/message/58339
> Mute This Topic:https://lists.yoctoproject.org/mt/94339433/2167262
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [jpuhlman@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
Jeremy A. Puhlman
jpuhlman@mvista.com

--------------T8xObUo0WD5TxQ2zLkNCXl40
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    On 10/14/2022 6:52 PM, Bruce Ashfield wrote:<br>
    <blockquote type="cite"
cite="mid:CADkTA4NKGk7Rt2coaA8WHO7VjyPab9VNPwKo7aNGwnSbuQisGQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">
          <div class="gmail_default" style="font-size:small"><br>
          </div>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Fri, Oct 14, 2022 at
            10:11 PM Jose Quaresma &lt;<a
              href="mailto:quaresma.jose@gmail.com"
              moz-do-not-send="true" class="moz-txt-link-freetext">quaresma.jose@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir="ltr">
              <div>Hi Rudolf,<br>
                <br>
                I have reported this issue and together with a path [1]
                to fix it.</div>
              <div>Anyway Bruce has fixed the issue in another way in
                [2] and this works for me as well.<br>
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
            <div class="gmail_default" style="font-size:small">Yes
              indeed. This has also passed my other regression testing,
              but I was traveling today and couldn't send my pull
              request.</div>
            <div class="gmail_default" style="font-size:small"><br>
            </div>
            <div class="gmail_default" style="font-size:small">I'll send
              it over the weekend, so hopefully it'll be merged shortly!</div>
            <div class="gmail_default" style="font-size:small"><br>
            </div>
            <div class="gmail_default" style="font-size:small">Bruce</div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Did this end up getting sen to the list? I also validated updating
    to the specific hash resolved my issue too.<br>
    <br>
    <blockquote type="cite"
cite="mid:CADkTA4NKGk7Rt2coaA8WHO7VjyPab9VNPwKo7aNGwnSbuQisGQ@mail.gmail.com">
      <div dir="ltr">
        <div class="gmail_quote">
          <div> </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir="ltr">Jose<br>
              <br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">Rudolf J Streif &lt;<a
                    href="mailto:rudolf.streif@ibeeto.com"
                    target="_blank" moz-do-not-send="true"
                    class="moz-txt-link-freetext">rudolf.streif@ibeeto.com</a>&gt;
                  escreveu no dia sábado, 15/10/2022 à(s) 01:45:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">I am running into a
                  bizarre problem with kernel configuration.<br>
                  <br>
                  I have an existing build environment that builds for
                  an i.MX6ul machine. <br>
                  That works fine and the linux-fslc kernel 5.18 builds
                  without any <br>
                  problems. Now within the that build environment I
                  changed the machine to <br>
                  imx6ullevk and then the kernel configuration fails
                  with this error message:<br>
                  <br>
                  | DEBUG: Executing shell function do_kernel_configme<br>
                  | NOTE: do_kernel_metadata: for summary/debug, set
                  KCONF_AUDIT_LEVEL &gt; 0<br>
                  | [ERROR]: processing of file /tmp/tmp.owmBptYrba
                  failed<br>
                  |
                  /develop/projects/altec/tcu/build/tmp/hosttools/dirname:
                  missing operand<br>
                  | Try
                  '/develop/projects/altec/tcu/build/tmp/hosttools/dirname
                  --help' <br>
                  for more information.<br>
                  | ERROR: Could not generate configuration queue for
                  imx6ullevk.<br>
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
                  I tried to debug do_kernel_configme. The issue seems
                  in the scc script <br>
                  more specifically, I think, in the kconf command that
                  is called by scc <br>
                  when parsing the temporary configuration queue file in
                  /tmp: tmp.owmBptYrba<br>
                  <br>
                  #<br>
                  # spp v0.8<br>
                  # processed: Fri Oct 14 09:49:02 PM UTC 2022<br>
                  #<br>
                  # This is a preprocessor output file, do not edit<br>
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
                  Apparently a call to dirname is missing the argument.
                  However, I do not <br>
                  understand why.<br>
                  <br>
                  I wiped out build/tmp directory entirely, ran a
                  cleanall on <br>
                  virtual/kernel but to no avail. The problem remains
                  the same.<br>
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
        <div dir="ltr" class="gmail_signature">- Thou shalt not follow
          the NULL pointer, for chaos and madness await thee at its end<br>
          - "Use the force Harry" - Gandalf, Star Trek II<br>
          <br>
        </div>
      </div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#58339): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/58339">https://lists.yoctoproject.org/g/yocto/message/58339</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/94339433/2167262">https://lists.yoctoproject.org/mt/94339433/2167262</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:jpuhlman@mvista.com">jpuhlman@mvista.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Jeremy A. Puhlman
<a class="moz-txt-link-abbreviated" href="mailto:jpuhlman@mvista.com">jpuhlman@mvista.com</a></pre>
  </body>
</html>

--------------T8xObUo0WD5TxQ2zLkNCXl40--

