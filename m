Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web10.686.1578603672038992246
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 13:01:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=ETJWmUjG;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: parse error for token &{10 18 _netblocks.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.216.52, mailfrom: akuster@mvista.com)
Received: by mail-pj1-f52.google.com with SMTP id s94so1199456pjc.1
        for <yocto@lists.yoctoproject.org>; Thu, 09 Jan 2020 13:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=bgH1lhcu0zo0452HukxTROqLSq47Ds8kZrhaMg4r5ws=;
        b=ETJWmUjG4/Z50EMIXv1asISQDaY8sNJMXTonsIz1aoeRDsO+KMSJJvXTRc2ogsP14Q
         fnONAqtLB7g1PBkTBC4o7rVuPxoHqJXegC1DLlXH+vBXQif8Yc0lcPNdREiaN4069vaq
         fC9FVobLm/3/Dtz89pviBd+oWINxbwBtICJ1cq22IEBrSoz+ZkMurA35AJXY119WQ/kB
         qukDHApq6RmbSdpYyLSpH4SXdnkatGEkZzrReZGt8RAUGXgzDBWxjneBNRgNYoqrnkkk
         jX6aFQEq/m56zuxH/pTknBvc499XKDTEF7buX9pAbycyJEgPVlMGJtpndQftVF2bVpj6
         2Pag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=bgH1lhcu0zo0452HukxTROqLSq47Ds8kZrhaMg4r5ws=;
        b=E8gvEU+VBV3pnqjFPyTt0jo7uyoAdo2BzlCzwfzWrOTATgmZ3i70QIhXw9wKwnUJvW
         2ILu3ByctSRtS9wfpceHg9yjuO2hm6v8Kb713mEQ6wVfp39cPvdc3CIf7RRGauODBHcp
         LvFzUDwP8mUqfjCQoSnLqzDSd+HCOG9Nxd3uHw82w1PjXW8qpCmLpvXyMipbkav2B6an
         e4b2ONSGGqkrvxQMbYKRlL7CHLFazuyj5/gdysQ/eXesKE9MM1sDSt+4IyiL7WqkSk/6
         qHG7ShWIEuOEgIT9c0iUdtXtrHFYKOEN3de0fh1EPFLbrOrX8cD9JWTidNMmCe1hprb8
         U54A==
X-Gm-Message-State: APjAAAVIiGI+4871UbRspzyfM8BHh9LgUPIxUMsd17valrAMY6LCLpAH
	7kvDKqnWwARk5/i5I1wKmL1sDOja6gQ=
X-Google-Smtp-Source: APXvYqy8n4T614atOajQ8LxkYwJ9ihPaktAtQRcdRtYbjOB4SOtAf3+vgsQ/pRw+qKi6XegJNdlq2Q==
X-Received: by 2002:a17:902:a715:: with SMTP id w21mr479520plq.244.1578603671256;
        Thu, 09 Jan 2020 13:01:11 -0800 (PST)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:304b:2b9c:bcb7:ff1a? ([2601:202:4180:a5c0:304b:2b9c:bcb7:ff1a])
        by smtp.gmail.com with ESMTPSA id x33sm8724982pga.86.2020.01.09.13.01.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2020 13:01:10 -0800 (PST)
Subject: Re: [yocto] Yocto server is down
To: FLoraVLogs <eripflo@gmail.com>,
 Michael Halstead <mhalstead@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
References: <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
 <48c351bc-7116-e7d7-bad8-9d595eedbcdf@mvista.com>
 <CAGhBkzzSOPkOW2LHjhh4P0_By3CB9Ev9R+vDa=naB2JEBpCVBA@mail.gmail.com>
 <CADfgfoYzGW5jGKd2ru1wKsomuFbSgOthPhGGRYQ8g7tBavp8zw@mail.gmail.com>
 <CAGhBkzxH3c_mUtdJF2wYRe3ovdb4TO73T6wYM1vPZZWvAbsw9w@mail.gmail.com>
 <CADfgfobNxJMcdBLPoXCFRavt5tA0PshHR+fTKhiZtZZVATx_3g@mail.gmail.com>
 <CAGhBkzwLfDnw18LzoTPxrMuToX78v21+DvqPugyC=W8fRLnbtA@mail.gmail.com>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <84aed93c-30a9-e972-6c14-df9bfdf69d7d@mvista.com>
Date: Thu, 9 Jan 2020 13:01:08 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAGhBkzwLfDnw18LzoTPxrMuToX78v21+DvqPugyC=W8fRLnbtA@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------124A13A8146018ECDD178007"
Content-Language: en-US

--------------124A13A8146018ECDD178007
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 1/9/20 12:49 PM, FLoraVLogs wrote:
> Hi,
>
> Thanks for fixing it last time for us. But it looks like Yocto is down
> again.
>
> http://downloads.yoctoproject.org/

Its working for me. I believe some work was being done on the NAS that
might have affected this.

Please try again.

- Armin
>
> I am getting 404 error:
>
>
>   Host Not Found
>
> DNS error (the host name of the page you are looking for does not
> exist) or Server did not accept the connection.
>
> Please check that the host name has been spelled correctly.
>
>
> Regards,
>
> Ripu 
>
> On Fri, Dec 13, 2019 at 3:43 PM Michael Halstead
> <mhalstead@linuxfoundation.org <mailto:mhalstead@linuxfoundation.org>>
> wrote:
>
>     Configuration is complete and these services are online.
>
>     On Fri, Dec 13, 2019 at 11:55 AM FLoraVLogs <eripflo@gmail.com
>     <mailto:eripflo@gmail.com>> wrote:
>     >
>     > Ok, thanks for the update :)
>     >
>     > On Fri., Dec. 13, 2019, 2:43 p.m. Michael Halstead,
>     <mhalstead@linuxfoundation.org
>     <mailto:mhalstead@linuxfoundation.org>> wrote:
>     >>
>     >> Update: Spare hardware is racked and cabled. Data center staff
>     is beginning configuration. I expect service to be restored in 30
>     to 40 minutes.
>     >>
>     >> On Fri, Dec 13, 2019 at 10:53 AM FLoraVLogs <eripflo@gmail.com
>     <mailto:eripflo@gmail.com>> wrote:
>     >>>
>     >>> Thank you for your response. Kindly keep me posted.
>     >>>
>     >>> Regards,
>     >>> Ripu
>     >>>
>     >>> On Fri., Dec. 13, 2019, 12:36 p.m. akuster,
>     <akuster@mvista.com <mailto:akuster@mvista.com>> wrote:
>     >>>>
>     >>>>
>     >>>>
>     >>>> On 12/13/19 7:46 AM, FLoraVLogs wrote:
>     >>>>
>     >>>> Hi,
>     >>>>
>     >>>> I went to "http://downloads.yoctoproject.org/" and I get the
>     following message:
>     >>>>
>     >>>> Gateway Timeout
>     >>>>
>     >>>> Server error - server 198.145.29.63 is unreachable at this
>     moment.
>     >>>>
>     >>>> Please retry the request or contact your administrator.
>     >>>>
>     >>>> Kindly assist here.
>     >>>>
>     >>>>
>     >>>> Thanks. The LF IT department is aware of  this and working
>     towards a solution.
>     >>>>
>     >>>> No ETA.
>     >>>>
>     >>>> Regards,
>     >>>> Armin
>     >>>>
>     >>>> Regards,
>     >>>>
>     >>>> Ripu
>     >>>>
>     >>>>
>     >>>> 
>


--------------124A13A8146018ECDD178007
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 1/9/20 12:49 PM, FLoraVLogs wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAGhBkzwLfDnw18LzoTPxrMuToX78v21+DvqPugyC=W8fRLnbtA@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">Hi,
        <div><br>
        </div>
        <div>Thanks for fixing it last time for us. But it looks like
          Yocto is down again.</div>
        <div><br>
        </div>
        <div><a href="http://downloads.yoctoproject.org/"
            moz-do-not-send="true">http://downloads.yoctoproject.org/</a>
          <br>
        </div>
      </div>
    </blockquote>
    <br>
    Its working for me. I believe some work was being done on the NAS
    that might have affected this.<br>
    <br>
    Please try again.<br>
    <br>
    - Armin<br>
    <blockquote type="cite"
cite="mid:CAGhBkzwLfDnw18LzoTPxrMuToX78v21+DvqPugyC=W8fRLnbtA@mail.gmail.com">
      <div dir="ltr">
        <div><br>
        </div>
        <div>I am getting 404 error:</div>
        <h1 style="color:rgb(0,0,0);font-family:&quot;Times New
          Roman&quot;">Host Not Found</h1>
        <p style="color:rgb(0,0,0);font-family:&quot;Times New
          Roman&quot;;font-size:medium">DNS error (the host name of the
          page you are looking for does not exist) or Server did not
          accept the connection.<br>
          <br>
        </p>
        <div><span style="color:rgb(0,0,0);font-family:&quot;Times New
            Roman&quot;;font-size:medium">Please check that the host
            name has been spelled correctly.</span></div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div><br>
        </div>
        <div>Ripu <br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Fri, Dec 13, 2019 at 3:43
          PM Michael Halstead &lt;<a
            href="mailto:mhalstead@linuxfoundation.org"
            moz-do-not-send="true">mhalstead@linuxfoundation.org</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Configuration
          is complete and these services are online.<br>
          <br>
          On Fri, Dec 13, 2019 at 11:55 AM FLoraVLogs &lt;<a
            href="mailto:eripflo@gmail.com" target="_blank"
            moz-do-not-send="true">eripflo@gmail.com</a>&gt; wrote:<br>
          &gt;<br>
          &gt; Ok, thanks for the update :)<br>
          &gt;<br>
          &gt; On Fri., Dec. 13, 2019, 2:43 p.m. Michael Halstead, &lt;<a
            href="mailto:mhalstead@linuxfoundation.org" target="_blank"
            moz-do-not-send="true">mhalstead@linuxfoundation.org</a>&gt;
          wrote:<br>
          &gt;&gt;<br>
          &gt;&gt; Update: Spare hardware is racked and cabled. Data
          center staff is beginning configuration. I expect service to
          be restored in 30 to 40 minutes.<br>
          &gt;&gt;<br>
          &gt;&gt; On Fri, Dec 13, 2019 at 10:53 AM FLoraVLogs &lt;<a
            href="mailto:eripflo@gmail.com" target="_blank"
            moz-do-not-send="true">eripflo@gmail.com</a>&gt; wrote:<br>
          &gt;&gt;&gt;<br>
          &gt;&gt;&gt; Thank you for your response. Kindly keep me
          posted.<br>
          &gt;&gt;&gt;<br>
          &gt;&gt;&gt; Regards,<br>
          &gt;&gt;&gt; Ripu<br>
          &gt;&gt;&gt;<br>
          &gt;&gt;&gt; On Fri., Dec. 13, 2019, 12:36 p.m. akuster, &lt;<a
            href="mailto:akuster@mvista.com" target="_blank"
            moz-do-not-send="true">akuster@mvista.com</a>&gt; wrote:<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; On 12/13/19 7:46 AM, FLoraVLogs wrote:<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Hi,<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; I went to "<a
            href="http://downloads.yoctoproject.org/" rel="noreferrer"
            target="_blank" moz-do-not-send="true">http://downloads.yoctoproject.org/</a>"
          and I get the following message:<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Gateway Timeout<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Server error - server 198.145.29.63 is
          unreachable at this moment.<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Please retry the request or contact your
          administrator.<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Kindly assist here.<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Thanks. The LF IT department is aware of 
          this and working towards a solution.<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; No ETA.<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Regards,<br>
          &gt;&gt;&gt;&gt; Armin<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Regards,<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Ripu<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; <br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------124A13A8146018ECDD178007--
