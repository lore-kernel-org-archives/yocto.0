Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4331E0136A; Fri, 20 Jul 2018 21:09:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAA1FE00D64
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2018 21:09:49 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id k81-v6so24746494oib.4
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2018 21:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=d5HGR7GXbU10Rx5/bDwbPAacYVSJDHbG/wcElEf+dqk=;
	b=EytFAC+q1taBxBg+tcHGlJsn6NPMMxXH1tpDVHW6XfIZ4CsJhN3+h5tgSv0Yd6g/QV
	VQGBL9R+uAfgiCULM3bk5q13X8C9LZ8/cvqOgBfaUGgrsTExK7gj6a2KKHigPPNWuhYp
	WC5xMJlLw/haIPVg95p18T+wQ1Qri8MQLCbSsYzpcLV5Qt4w5pPemSeRQBdXcfwCBGJh
	Lik5gOSYnHQVnAxdDRfXEPSqsl1aM7F+9LyH5wUXt/BZh0dtbVXTbYmgm/oha1+RT52z
	rG/FsMRZrqZCHsFld63z9Buqa/LkY3XAZjTonNgKnSNxhGiqarF6EP703FB+j11crHKY
	IVIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=d5HGR7GXbU10Rx5/bDwbPAacYVSJDHbG/wcElEf+dqk=;
	b=JTHYYT5lXxuaXeXYmdPZS8OcN/RwESklYfbRvLstZauVKV/LGhI3VkLWMGBzbCIo/D
	qPTRqa1CddWU82E+wQFMg4x47W0UB4SKhIB8b7wfWRvaCdKfosCA3XMu5ll6+lEhk1yl
	rMiNo+9q8XaGSrT5ep7AUumOTTVXNjlHGmE8mJOB8FUtfrB7QS73WwKQPMr4MAcJco9D
	d22HpkFum/RV7LMwdFVXs8zCau3J5fSb0D++H3TVuBeb6ZgeMKUz5RWebYAntbTyH/Uv
	3yXm6rAL4/LZpTOO2BJnrXCNh7twr0S9Qew8fj59qFYJg8uCKiAcJz+uPV9Xcel/tCx9
	yM+g==
X-Gm-Message-State: AOUpUlGvTqgI1ZCeLgWN9omGEd0c6BxfO9MvTgA4y25y42UnkuVbt5iP
	DTAIRy+Y4V/iaqzCv8acWM13xL8flBI=
X-Google-Smtp-Source: AAOMgpde/HBpiLg5gQfL8+2SwBjykfXCs3qoVupYNuJga6XxhsjvQJZ/Ua+kF3jcb/yWgrUQoFnSQw==
X-Received: by 2002:aca:4bc6:: with SMTP id
	y189-v6mr389029oia.181.1532146188819; 
	Fri, 20 Jul 2018 21:09:48 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:7952:8b0:bc3a:2146?
	([2601:202:4180:c33:7952:8b0:bc3a:2146])
	by smtp.gmail.com with ESMTPSA id
	n6-v6sm3988671oib.27.2018.07.20.21.09.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 20 Jul 2018 21:09:47 -0700 (PDT)
To: Trevor Woerner <twoerner@gmail.com>, yocto <yocto@yoctoproject.org>
References: <CAHUNapSgrYX8T-A8BvMhUV+GU2OogC20FV3sFBrCpj88wMfnYw@mail.gmail.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <de01bf5e-a19d-4235-f0ec-473925fe1ae9@mvista.com>
Date: Fri, 20 Jul 2018 21:09:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAHUNapSgrYX8T-A8BvMhUV+GU2OogC20FV3sFBrCpj88wMfnYw@mail.gmail.com>
Subject: Re: yocto dev day 2018 eurpoe
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
X-List-Received-Date: Sat, 21 Jul 2018 04:09:56 -0000
Content-Type: multipart/alternative;
	boundary="------------CDFB247E621F57A89FD5FA83"
Content-Language: en-US

--------------CDFB247E621F57A89FD5FA83
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 07/20/2018 07:09 PM, Trevor Woerner wrote:
> Has a date/location been set?

I believe it has. An announcement is being formulated and will be sent
to the mailing lists and posted on the Yocto web site. Give it a little
time as new people are getting use to the process.

kind regards,
Armin

>
> (Is it too presumptuous of me to assume there will be a Yocto Dev Day
> in Scotland this year?)
>
>


--------------CDFB247E621F57A89FD5FA83
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 07/20/2018 07:09 PM, Trevor Woerner
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAHUNapSgrYX8T-A8BvMhUV+GU2OogC20FV3sFBrCpj88wMfnYw@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <div dir="ltr">Has a date/location been set?</div>
    </blockquote>
    <br>
    I believe it has. An announcement is being formulated and will be
    sent to the mailing lists and posted on the Yocto web site. Give it
    a little time as new people are getting use to the process.<br>
    <br>
    kind regards,<br>
    Armin<br>
    <br>
    <blockquote type="cite"
cite="mid:CAHUNapSgrYX8T-A8BvMhUV+GU2OogC20FV3sFBrCpj88wMfnYw@mail.gmail.com">
      <div dir="ltr">
        <div><br>
        </div>
        <div>(Is it too presumptuous of me to assume there will be a
          Yocto Dev Day in Scotland this year?)</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------CDFB247E621F57A89FD5FA83--
