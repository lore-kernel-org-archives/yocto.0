Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by mx.groups.io with SMTP id smtpd.web09.8001.1630426590327338010
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Aug 2021 09:16:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linux.microsoft.com header.s=default header.b=Sh9ba/wt;
 spf=pass (domain: linux.microsoft.com, ip: 13.77.154.182, mailfrom: anbelski@linux.microsoft.com)
Received: from [192.168.178.23] (i59F7C321.versanet.de [89.247.195.33])
	by linux.microsoft.com (Postfix) with ESMTPSA id 8AA5C20B9157;
	Tue, 31 Aug 2021 09:16:28 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 8AA5C20B9157
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1630426589;
	bh=9vgBm5z+QR2D6D9qUrbHEkrxEFfT2jRJMT5VEBldbcQ=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=Sh9ba/wtHQsNgBImHM0rqUdonBGGynAIdY+uS94JSSZd/me0c9jyygrOEEvORUUcU
	 NRBOM2+t9xSL8iKI9MxW3BvqVZqmZLalU5+IH3/79a8jNZP9TOe/7ELXbFP3LOqNkA
	 wvU2hM1d/Ct/b3ZDOzgcbxwb1ukjjwAh5Cb8Y8Ro=
Subject: Re: [yocto] Binary compliance validation
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>,
 Karissa Sanchez <kasanchez519@gmail.com>
References: <f23e2da3c978887b3072c4f79674391768804a72.camel@linux.microsoft.com>
 <CADkTA4MCDkW7RHq=EPrN5Qr2O=nJwmRBDnQ+RP-b3dTH_9RcLw@mail.gmail.com>
From: "Anatol Belski" <anbelski@linux.microsoft.com>
Message-ID: <dfa01d5f-f20e-9d1e-129e-f5c634f51998@linux.microsoft.com>
Date: Tue, 31 Aug 2021 18:16:21 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CADkTA4MCDkW7RHq=EPrN5Qr2O=nJwmRBDnQ+RP-b3dTH_9RcLw@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------AC66A53C9DA8072FAB7370DD"
Content-Language: en-US

--------------AC66A53C9DA8072FAB7370DD
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 8/31/2021 5:58 PM, Bruce Ashfield wrote:
> On Tue, Aug 31, 2021 at 11:48 AM Anatol Belski
> <anbelski@linux.microsoft.com> wrote:
>> Hi,
>>
>> I'm writing to present an ABI compliance check mechanism for Poky
>> recently developed to help improve the product stability. It is still
>> an early work which however has already proven itself useful and thus
>> the time seems right to ask for the community view.
>>
>> Binary compliance is an important metric, when a distrubition intends
>> to provide stability guarantees to consumers outside the monolithic
>> image build. For example, projects utilizing the SDK might not be in
>> sync with the image builds from even the same branch. Even in stable
>> branches where bugfixes, security patches or even non breaching
>> upgrades have to flow in as necessary, there's is currently no
>> verifiable mechainsm to ensure the binary compatibility long term.
>>
>> The currently implemented validation is based on libabigail and as such
>> is focused on the ABI compliance. Libabigail is a tool developed by Red
>> Hat and is in use for Fedora and RHEL RPM builds. Some companies are
>> known to utilize libabigail to support the kernel maintanance (Linux
>> kernel for Android). The meta layer contains a bbclass extending the
>> buildhistory functionality with the ABI serialization and comparison.
>> One buildhistory version taken as a baseline would serve the comparison
>> with any follow up builds. The ABI changes detected are then reported.
>>
>> The handling routines in Poky are currently attached to the install
>> task, which implies the baseline build needs to take place with the
>> sstate disabled. The follow up buids can use sstate and in that case
>> the postinstall routines will be invoked only if some change took place
>> and thus do_install has been called.
>>
>> The implementation is made as a core Python module, which can be used
>> in a Yocto layer or imported in any other script. The layer is
>> available under:
>> https://github.com/clio-project/meta-binaryaudit
>>
>> and the accompanying python module (which moves at some faster pace and
>> is synchronized into the layer) and a command line tool:
>> https://github.com/clio-project/python-binaryaudit
>>
>> The layer is yet an early work and the impluementation doesn't exhaust
>> all the possible features of Poky and libabigail. However, it already
>> proves itself helpful and is used for some real products to esure the
>> ABI stability. Certainly the mechanisms and the integration can be
>> improved.
>>
>> The future for this layer is open containing at least the topics below:
>>
>> - Binary size auditing.
>> - Security auditing.
>>
>> As a shorter term serviceableness, the ABI compliance validation
>> mechanism seems to be a useful tool in helping to keep promises on LTS,
>> but would most likely also help maintaining non LTS branches. It would
>> be great to receive any feedback, reviews and ideas in regard to meta-
>> binaryaudit.
> Out of curiosity, are you coordinating with the work sent in March by BMW ?
>
> see the email with the subject: [yocto] Demo of abi checker hook with hashequiv
>
> And the associated layers: https://github.com/bmwcarit/meta-abicompat
> and https://github.com/bmwcarit/meta-abicompat-poky

Thanks for the pointer! Nope, there's no coordination, it's a separate 
effort and seems the approach and goals are somewhat different. The 
sstate handling is however a very interesting approach. One could check 
if these works can be merged together, if there's an interest.

Regards

Anatol

> Bruce
>
>> Thanks!
>>
>> Anatol
>>
>>
>>
>>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>
> 
>

--------------AC66A53C9DA8072FAB7370DD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi,<br>
    </p>
    <div class="moz-cite-prefix">On 8/31/2021 5:58 PM, Bruce Ashfield
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CADkTA4MCDkW7RHq=EPrN5Qr2O=nJwmRBDnQ+RP-b3dTH_9RcLw@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">On Tue, Aug 31, 2021 at 11:48 AM Anatol Belski
<a class="moz-txt-link-rfc2396E" href="mailto:anbelski@linux.microsoft.com">&lt;anbelski@linux.microsoft.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Hi,

I'm writing to present an ABI compliance check mechanism for Poky
recently developed to help improve the product stability. It is still
an early work which however has already proven itself useful and thus
the time seems right to ask for the community view.

Binary compliance is an important metric, when a distrubition intends
to provide stability guarantees to consumers outside the monolithic
image build. For example, projects utilizing the SDK might not be in
sync with the image builds from even the same branch. Even in stable
branches where bugfixes, security patches or even non breaching
upgrades have to flow in as necessary, there's is currently no
verifiable mechainsm to ensure the binary compatibility long term.

The currently implemented validation is based on libabigail and as such
is focused on the ABI compliance. Libabigail is a tool developed by Red
Hat and is in use for Fedora and RHEL RPM builds. Some companies are
known to utilize libabigail to support the kernel maintanance (Linux
kernel for Android). The meta layer contains a bbclass extending the
buildhistory functionality with the ABI serialization and comparison.
One buildhistory version taken as a baseline would serve the comparison
with any follow up builds. The ABI changes detected are then reported.

The handling routines in Poky are currently attached to the install
task, which implies the baseline build needs to take place with the
sstate disabled. The follow up buids can use sstate and in that case
the postinstall routines will be invoked only if some change took place
and thus do_install has been called.

The implementation is made as a core Python module, which can be used
in a Yocto layer or imported in any other script. The layer is
available under:
<a class="moz-txt-link-freetext" href="https://github.com/clio-project/meta-binaryaudit">https://github.com/clio-project/meta-binaryaudit</a>

and the accompanying python module (which moves at some faster pace and
is synchronized into the layer) and a command line tool:
<a class="moz-txt-link-freetext" href="https://github.com/clio-project/python-binaryaudit">https://github.com/clio-project/python-binaryaudit</a>

The layer is yet an early work and the impluementation doesn't exhaust
all the possible features of Poky and libabigail. However, it already
proves itself helpful and is used for some real products to esure the
ABI stability. Certainly the mechanisms and the integration can be
improved.

The future for this layer is open containing at least the topics below:

- Binary size auditing.
- Security auditing.

As a shorter term serviceableness, the ABI compliance validation
mechanism seems to be a useful tool in helping to keep promises on LTS,
but would most likely also help maintaining non LTS branches. It would
be great to receive any feedback, reviews and ideas in regard to meta-
binaryaudit.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Out of curiosity, are you coordinating with the work sent in March by BMW ?

see the email with the subject: [yocto] Demo of abi checker hook with hashequiv

And the associated layers: <a class="moz-txt-link-freetext" href="https://github.com/bmwcarit/meta-abicompat">https://github.com/bmwcarit/meta-abicompat</a>
and <a class="moz-txt-link-freetext" href="https://github.com/bmwcarit/meta-abicompat-poky">https://github.com/bmwcarit/meta-abicompat-poky</a>
</pre>
    </blockquote>
    <p>Thanks for the pointer! Nope, there's no coordination, it's a
      separate effort and seems the approach and goals are somewhat
      different. The sstate handling is however a very interesting
      approach. One could check if these works can be merged together,
      if there's an interest.<br>
    </p>
    <p>Regards</p>
    <p>Anatol<br>
    </p>
    <blockquote type="cite"
cite="mid:CADkTA4MCDkW7RHq=EPrN5Qr2O=nJwmRBDnQ+RP-b3dTH_9RcLw@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">
Bruce

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Thanks!

Anatol




</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">

--
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------AC66A53C9DA8072FAB7370DD--
