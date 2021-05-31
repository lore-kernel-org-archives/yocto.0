Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web10.44026.1622467121356104732
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 May 2021 06:18:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WlQnbfcx;
 spf=pass (domain: gmail.com, ip: 209.85.160.173, mailfrom: stefan.seefeld@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id h24so7851466qtm.12
        for <yocto@lists.yoctoproject.org>; Mon, 31 May 2021 06:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=Aijimqd3pflcj64ycCxt7WG/1lQhcyEsuvaq/l7YtMI=;
        b=WlQnbfcxuJagMRPriyJ4PdMabq6vm+weaIH1an28Bixj26698RglNpbY3lwlJ9L/Tj
         1MVoeskr2m+Kt26FhO+E62oWXqCqfuLPcQo/p4SradfJ8cdUrazppkEegfil6zOLosVs
         uufanBDfFL2FvPwm/44g/s3b9Jj9qqnjjkQ3nijsM+0f687lVpTyNmbQM5/HdyYYAQFZ
         Z9qehxPzSkiccXTVXIROVpiqM9UoL6yXQUUMVCw8YWoYWb2xF/edLrg1GA6RNZO77wgF
         sbLI37nXDIx71hR3cr2ZiR0LM1N8D650I8SwK4Tgy51SV4jpsoR9zyp8aEv0NOazXtlP
         3K2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=Aijimqd3pflcj64ycCxt7WG/1lQhcyEsuvaq/l7YtMI=;
        b=ZzQrXvqLScaFt72OZYoJwn+Ob/TDguNkp4EeoJ1cyoslXvocY3Vxwy/+1xc720ra4l
         6GslMXdBDuxcJPdCfW+qvE9k780yA8C2x6nGCHlM7P40eXRg/p5FpebClCprDy8g0Own
         l7L/rtlMoHnkKjYi+QCMGanSF4K9RBoJTypuK2q5yCkHtXTwr3GIL/UQs4AGrck+Z1D8
         8lzuBaeewunt837BG9gahLBHTGhMYQRO4S/HD/Rywg6nIbf2BInGty/Zez9HLZH0IxBR
         iD2zRj37tlF2Jv+K/fsmvsZqyxhyL4R+wRbjaH8Y/dcgwIRpg7McjMib7CZ4SUxEH2af
         jyCg==
X-Gm-Message-State: AOAM533BLzRf+JRz9vwEH++m40EIln955o46RdD8Zsg/cmoXYNuL39um
	lg3XykuLPqS0aUm0R+SsnFAR3RplylaDQA==
X-Google-Smtp-Source: ABdhPJyzih608Wmt0UIUAOv9xiV6jX8BBt+K9F3xjb8qjiYML/cVBckyKboIECPSX/7vXL95cD1uKA==
X-Received: by 2002:ac8:6907:: with SMTP id e7mr5718028qtr.259.1622467120012;
        Mon, 31 May 2021 06:18:40 -0700 (PDT)
Return-Path: <stefan.seefeld@gmail.com>
Received: from [10.20.0.100] ([64.124.79.173])
        by smtp.gmail.com with ESMTPSA id g133sm964571qke.22.2021.05.31.06.18.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 May 2021 06:18:39 -0700 (PDT)
Sender: Stefan Seefeld <stefan.seefeld@gmail.com>
Subject: Re: [yocto] precedence problem with custom xserver-xf86-config_0.1.bbappend recipe
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: yocto@lists.yoctoproject.org
References: <50c175fb-325e-e7e7-af17-f55bb4d18662@seefeld.name>
 <20210531090929.il2xtwgahhtdczlt@qschulz>
From: "Stefan Seefeld" <stefan@seefeld.name>
Message-ID: <67e1550a-5999-ae91-c578-2b70671a1b4b@seefeld.name>
Date: Mon, 31 May 2021 09:18:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210531090929.il2xtwgahhtdczlt@qschulz>
X-Groupsio-MsgNum: 53712
Content-Type: multipart/alternative;
 boundary="------------7EED2A96FDC358C61E3A7192"
Content-Language: en-US

--------------7EED2A96FDC358C61E3A7192
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 2021-05-31 5:09 a.m., Quentin Schulz wrote:
> A common mistake would be the forgotten semi-colon and/or _prepend:
> FILESEXTRAPATHS_prepend := "${THISDIR}/files"
>
> Another common mistake is to not respect the tree layout of the original
> path relative to the original recipe (or for that matter, the one you
> want to override coming from the bbappend) for xorg.conf.
> In that case, you can see that in meta-yocto-bsp, there's a parent
> directory of xorg.conf that is not the one listed in
> FILESEXTRAPATHS_prepend. You should add this directory in the path of
> your bbappend.

Indeed, I was basing my layout on the original recipe, not on the poky 
override (which adds the $MACHINE as a subdirectory).

With that adjustment everything appears to be working fine.

> https://pretalx.com/media/yocto-project-summit-2021/submissions/WTT3UV/resources/Demystifying_the_OVERRIDES_mechan_no6J6fb.pdf
> slides 70 to 80 might help you. The recording should be available in a
> few days/weeks.

Thanks a lot, this looks really useful !

Stefan
-- 

       ...ich hab' noch einen Koffer in Berlin...


--------------7EED2A96FDC358C61E3A7192
Content-Type: multipart/related;
 boundary="------------FC4AD03F7CED3F0DC8F977AE"

--------------FC4AD03F7CED3F0DC8F977AE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2021-05-31 5:09 a.m., Quentin Schulz
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20210531090929.il2xtwgahhtdczlt@qschulz">A common
      mistake would be the forgotten semi-colon and/or _prepend:
      <pre class="moz-quote-pre" wrap="">FILESEXTRAPATHS_prepend := "${THISDIR}/files"

Another common mistake is to not respect the tree layout of the original
path relative to the original recipe (or for that matter, the one you
want to override coming from the bbappend) for xorg.conf.
In that case, you can see that in meta-yocto-bsp, there's a parent
directory of xorg.conf that is not the one listed in
FILESEXTRAPATHS_prepend. You should add this directory in the path of
your bbappend.</pre>
    </blockquote>
    <p>Indeed, I was basing my layout on the original recipe, not on the
      poky override (which adds the $MACHINE as a subdirectory).</p>
    <p>With that adjustment everything appears to be working fine.<br>
    </p>
    <p>
    </p>
    <blockquote type="cite"
      cite="mid:20210531090929.il2xtwgahhtdczlt@qschulz">
      <pre class="moz-quote-pre" wrap=""><a class="moz-txt-link-freetext" href="https://pretalx.com/media/yocto-project-summit-2021/submissions/WTT3UV/resources/Demystifying_the_OVERRIDES_mechan_no6J6fb.pdf">https://pretalx.com/media/yocto-project-summit-2021/submissions/WTT3UV/resources/Demystifying_the_OVERRIDES_mechan_no6J6fb.pdf</a>
slides 70 to 80 might help you. The recording should be available in a
few days/weeks.</pre>
    </blockquote>
    <p>Thanks a lot, this looks really useful ! <br>
    </p>
    <div class="moz-signature">
      <div class="moz-signature">
        <div class="moz-signature">
          <pre><img moz-do-not-send="false" src="cid:part1.0729B3AB.F2B3D4C4@seefeld.name" alt="Stefan" width="123" height="77">
-- 

      ...ich hab' noch einen Koffer in Berlin...
</pre>
        </div>
      </div>
    </div>
  </body>
</html>

--------------FC4AD03F7CED3F0DC8F977AE
Content-Type: image/png;
 name=".signature.png"
Content-Transfer-Encoding: base64
Content-ID: <part1.0729B3AB.F2B3D4C4@seefeld.name>
Content-Disposition: inline;
 filename=".signature.png"

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
Miz8AALwAAAAAElFTkSuQmCC

--------------FC4AD03F7CED3F0DC8F977AE--

--------------7EED2A96FDC358C61E3A7192--
