Received: from mailrelay1-2.pub.mailoutpod1-cph3.one.com (mailrelay1-2.pub.mailoutpod1-cph3.one.com [46.30.212.0])
 by mx.groups.io with SMTP id smtpd.web12.35852.1614005557607822809
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 06:52:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@berginkonsult.se header.s=20191106 header.b=nlV+UoVf;
 spf=none, err=permanent DNS error (domain: berginkonsult.se, ip: 46.30.212.0, mailfrom: peter@berginkonsult.se)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20191106;
	h=content-type:in-reply-to:mime-version:date:message-id:from:references:to:
	 subject:from;
	bh=2xlGFm+CTEEDstSL7Ps62SzfaHQu2JnTaNsGYfaYI8o=;
	b=nlV+UoVfvjBzBu9MvgdELxV45af3FNAuK7KAjYptparP1s/yAVW7ftJJ6qxgdP3SWoKAdU1ZAub6B
	 v73hNuqfIQDEzEejSatxGPvvhPzapL75sbWqAgrc/HFRKev1B41c0U19jz0SLlwLCA8S0f5fuIvduW
	 Rt/VF3hv0WM9siEUKttXBqiUDIRecolaknIya6FvXZbyEOev2Xm40PJts26MvZoMO56lsEpLuukpL7
	 FDfFlHcTlIcg9KfT3tWG5BN5jD+xPmtHTBU+jE3RUg4xQe4ykYYIoZQZLblVy9Fsb1HAym1GlbtN+7
	 QyMvqmo1YLwaAYwzBSY591M/Z1tRzrg==
X-HalOne-Cookie: ffc44648c3b17a18ae6498dad83635c3c6e5d998
X-HalOne-ID: 990dce0b-751d-11eb-9249-d0431ea8a283
Received: from [192.168.149.51] (unknown [80.252.208.151])
	by mailrelay1.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 990dce0b-751d-11eb-9249-d0431ea8a283;
	Mon, 22 Feb 2021 14:52:34 +0000 (UTC)
Subject: Re: [yocto] Include "my.conf" in conf/local.conf
To: yocto@lists.yoctoproject.org
References: <b97c87dd-8818-2827-18d7-425b7c03f849@faresoftware.it>
From: "Peter Bergin" <peter@berginkonsult.se>
Message-ID: <c10e2c1c-9c0f-007a-8562-9f4f66590c0f@berginkonsult.se>
Date: Mon, 22 Feb 2021 15:53:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <b97c87dd-8818-2827-18d7-425b7c03f849@faresoftware.it>
Content-Type: multipart/alternative;
 boundary="------------AC6EFA8D70FAD66BCDFEC52A"
Content-Language: en-US

--------------AC6EFA8D70FAD66BCDFEC52A
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2021-02-22 14:29, Mauro Ziliani wrote:
>
> Hi all
>
> Is it possible to include a fine in local.conf?
>
>
yes. Just add "include my.conf" in your configuration.

https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-metadata.html#include-directive

Regards,
/Peter

> MZ
>
>
> 
>

--------------AC6EFA8D70FAD66BCDFEC52A
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=ISO-8859-15">
  </head>
  <body>
    <p>Hi,<br>
    </p>
    <div class="moz-cite-prefix">On 2021-02-22 14:29, Mauro Ziliani
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:b97c87dd-8818-2827-18d7-425b7c03f849@faresoftware.it">
      <meta http-equiv="content-type" content="text/html;
        charset=ISO-8859-15">
      <p><font size="-1">Hi all</font></p>
      <p><font size="-1">Is it possible to include a fine in local.conf?</font></p>
      <p><font size="-1"><br>
        </font></p>
    </blockquote>
    <p><font size="-1">yes. Just add "include my.conf" in your
        configuration.</font></p>
    <p><font size="-1"><a class="moz-txt-link-freetext" href="https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-metadata.html#include-directive">https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-metadata.html#include-directive</a><br>
      </font></p>
    <p><font size="-1">Regards,<br>
        /Peter<br>
      </font></p>
    <blockquote type="cite"
      cite="mid:b97c87dd-8818-2827-18d7-425b7c03f849@faresoftware.it">
      <p><font size="-1"> </font></p>
      <p><font size="-1">MZ</font><br>
      </p>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------AC6EFA8D70FAD66BCDFEC52A--
