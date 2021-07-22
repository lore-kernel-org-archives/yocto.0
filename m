Received: from smtp-fw-6001.amazon.com (smtp-fw-6001.amazon.com [52.95.48.154])
 by mx.groups.io with SMTP id smtpd.web09.338.1626989305291988771
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jul 2021 14:28:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amazon.com header.s=amazon201209 header.b=HcbK3YZU;
 spf=pass (domain: amazon.com, ip: 52.95.48.154, mailfrom: prvs=8306fed40=elberger@amazon.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1626989306; x=1658525306;
  h=to:references:from:message-id:date:mime-version:
   in-reply-to:subject;
  bh=MXLHVbrIVZ4ZOQoKmtEf4NEsbNojJoBkE2IbVtjoSGc=;
  b=HcbK3YZUJ4OF0iAyblobn/y3lIepw73AOesaVq2ySI8hdLaRnhPKMdpn
   FKosXIzOJdGxOsGouCb+62iIrSsFJCOu89Z3kjbtvUSEU4coESvh9VPny
   qyDqQqDBePcSQVKty6cSPBydJ2Xhq+hr2TgpH9W2RDvv2Gcpu9UnrryQ3
   g=;
X-IronPort-AV: E=Sophos;i="5.84,262,1620691200"; 
   d="scan'208,217";a="128802565"
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] Enable canary builds for meta-aws[aws-iot-device-sdk-cpp-v2] on x86-64 and arm64.
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO email-inbound-relay-1a-7d76a15f.us-east-1.amazon.com) ([10.43.8.6])
  by smtp-border-fw-6001.iad6.amazon.com with ESMTP; 22 Jul 2021 21:28:24 +0000
Received: from EX13MTAUWC002.ant.amazon.com (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
	by email-inbound-relay-1a-7d76a15f.us-east-1.amazon.com (Postfix) with ESMTPS id AB923A2612;
	Thu, 22 Jul 2021 21:28:23 +0000 (UTC)
Received: from EX13D05UWC003.ant.amazon.com (10.43.162.226) by
 EX13MTAUWC002.ant.amazon.com (10.43.162.240) with Microsoft SMTP Server (TLS)
 id 15.0.1497.23; Thu, 22 Jul 2021 21:28:23 +0000
Received: from EX13MTAUWC001.ant.amazon.com (10.43.162.135) by
 EX13D05UWC003.ant.amazon.com (10.43.162.226) with Microsoft SMTP Server (TLS)
 id 15.0.1497.23; Thu, 22 Jul 2021 21:28:23 +0000
Received: from u795025edef875e.ant.amazon.com (10.106.179.15) by
 mail-relay.amazon.com (10.43.162.232) with Microsoft SMTP Server (TLS) id
 15.0.1497.23 via Frontend Transport; Thu, 22 Jul 2021 21:28:22 +0000
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	<yocto@lists.yoctoproject.org>
References: <20210720110828.30148-1-elberger@amazon.com>
 <cdd1881a-ecdf-85f9-4450-89fcdf2a3698@amazon.com>
 <461b14a2f6551bfeea83b78fa6194378a5a05d11.camel@linuxfoundation.org>
From: elberger@amazon.com
Organization: Amazon Web Services
Message-ID: <b76d47fa-be43-d2ad-0d62-5789f3c3718f@amazon.com>
Date: Thu, 22 Jul 2021 17:28:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <461b14a2f6551bfeea83b78fa6194378a5a05d11.camel@linuxfoundation.org>
Content-Type: multipart/alternative;
	boundary="------------1C9488F81E9124754BA87B4C"
Content-Language: en-US

--------------1C9488F81E9124754BA87B4C
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

Ok let me give it a shot again - I'll get there :)

On 7/22/21 4:51 PM, Richard Purdie wrote:
> CAUTION: This email originated from outside of the organization. Do not click links or open attachments unless you can confirm the sender and know the content is safe.
>
>
>
> On Thu, 2021-07-22 at 16:05 -0400, elberger via lists.yoctoproject.org wrote:
>> Hello,
>>
>> What can I do to move this patch along - or did I miss anything?
>> Apologies for my ignorance, it's my first time submitting a patch to YP.
> I can't see the patch in the mailing list archives:
>
> https://lists.yoctoproject.org/g/yocto/topics?
>
> only your reply:
>
> https://lists.yoctoproject.org/g/yocto/topic/patch/84387478?
>
> so I don't think the original patch made it to the list? Since I never
> saw it there, I couldn't apply it!
>
> Cheers,
>
> Richard
>
>
> 
>

-- 
Richard Elberger
Principal Technologist
AWS IoT

+1 646.927.6897
+1 203.942.8039 – mobile
elberger@amazon.com – email


--------------1C9488F81E9124754BA87B4C
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">Ok let me give it a shot again - I'll
      get there :)<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">On 7/22/21 4:51 PM, Richard Purdie
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:461b14a2f6551bfeea83b78fa6194378a5a05d11.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">CAUTION: This email originated from outside of the organization. Do not click links or open attachments unless you can confirm the sender and know the content is safe.



On Thu, 2021-07-22 at 16:05 -0400, elberger via lists.yoctoproject.org wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Hello,

What can I do to move this patch along - or did I miss anything?
Apologies for my ignorance, it's my first time submitting a patch to YP.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
I can't see the patch in the mailing list archives:

<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/topics">https://lists.yoctoproject.org/g/yocto/topics</a>?

only your reply:

<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/topic/patch/84387478">https://lists.yoctoproject.org/g/yocto/topic/patch/84387478</a>?

so I don't think the original patch made it to the list? Since I never
saw it there, I couldn't apply it!

Cheers,

Richard

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
Richard Elberger
Principal Technologist
AWS IoT

+1 646.927.6897
+1 203.942.8039 – mobile
<a class="moz-txt-link-abbreviated" href="mailto:elberger@amazon.com">elberger@amazon.com</a> – email</pre>
  </body>
</html>

--------------1C9488F81E9124754BA87B4C--
