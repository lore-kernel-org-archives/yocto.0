Received: from mailrelay2-2.pub.mailoutpod1-cph3.one.com (mailrelay2-2.pub.mailoutpod1-cph3.one.com [46.30.212.1])
 by mx.groups.io with SMTP id smtpd.web12.7773.1630502079472118740
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Sep 2021 06:14:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@berginkonsult.se header.s=20191106 header.b=dFmNlkYo;
 spf=none, err=permanent DNS error (domain: berginkonsult.se, ip: 46.30.212.1, mailfrom: peter@berginkonsult.se)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20191106;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	 message-id:from:references:to:subject:from;
	bh=FEZjgGc5x1cufmMvdEBFf5ilV955NzBjoD8jz3IvoLU=;
	b=dFmNlkYoBUQhi77TlHaCED3SeEFqv1cJjErKKOiQ6ieO/x+SjF5ArAlXAuBM0zonzBGhA4gqctDLw
	 0WK3znIV8P+beLu05Q0EZppKHM1KLs2rslGHKwJejD+X/MwS+/5sdhQpScRumEZ0ccpRCcDYApdZaY
	 i+qEkEKg7svrjeJhk05lj4kHHw5ZjXfD6XzNiHKUQoJ4VWJxkHK/Cr59gRs7GAvNt/FmkzrfkivSRV
	 c/AQfc96DXHajVhTezNkwTr4EslEmJiu6eTBWSH87tDLIOcqKD9f7nF35+vta8QdrHErxEEc7s/+Ne
	 T09P9zINMtItJp27VUGwRVWiiMuzy/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=rsa1;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	 message-id:from:references:to:subject:from;
	bh=FEZjgGc5x1cufmMvdEBFf5ilV955NzBjoD8jz3IvoLU=;
	b=o9DbTC6a1dH5nb+VfkM1Q7c44tHd+eTYhSdFey3tE5aBUeS84M4LtFYbog9bvaj7bCe9wk6J/z+/n
	 BCfN6oHnF4/VtW9GmXx4Q5MBWRKNvtPKU3sKXWBv/2lkKfJH+Ust/q4or6O7leN3txTW5CXm1rXu7g
	 x5V4iUbysx1Jj+tBvoQwfRwy3/hBm7NX1BRpENr/4VenRNP6rQS62pyj8uZXiMNyF2UQ8gp+ws7aX/
	 TV9Git8LRkydS+qgSEWOSmSG9ABIX7eL3l7yy47jGpBlIQr1ozrXoEBy0XNeuqGwKdfuNo/y25qMB7
	 rLP+2DOZToU/5vuqbgUTwffjqqAsFjA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=ed1;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	 message-id:from:references:to:subject:from;
	bh=FEZjgGc5x1cufmMvdEBFf5ilV955NzBjoD8jz3IvoLU=;
	b=/J1L0c0WlEuh8kBdzowpRJTaJuCQiuWbTQzcFFptgMz7PLW1dbYcDgyPNaRdqjfbcSHqQBPDXR9Qz
	 K+M1fV7AA==
X-HalOne-Cookie: ef3fc931ab3496d78de1aef182551617cee0e011
X-HalOne-ID: 8ae71263-0b26-11ec-bd52-d0431ea8a290
Received: from [10.11.12.225] (unknown [83.218.73.98])
	by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 8ae71263-0b26-11ec-bd52-d0431ea8a290;
	Wed, 01 Sep 2021 13:14:31 +0000 (UTC)
Subject: Re: [yocto] gpsd [version 3.23; master branch]: Is it possible to include / enable ubxtool?
To: Matthias Klein <matthias.klein@optimeas.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <AM0PR10MB310701696E98C78D98D5F3AE99CD9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: "Peter Bergin" <peter@berginkonsult.se>
Message-ID: <3aefaadf-22fb-0295-8c3e-bfbb164f7e84@berginkonsult.se>
Date: Wed, 1 Sep 2021 15:14:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <AM0PR10MB310701696E98C78D98D5F3AE99CD9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi Matthias,

On 2021-09-01 12:33, Matthias Klein wrote:
> Hello,
>
> is it somehow possible to add the ubxtool in the gpsd-utils package?
>
> (I use the current master branch)
>
gpsd recipe is located in meta-oe. As the ubxtool file is present in the 
build it is possible to add it. Just make sure it is installed in the 
do_install step and then that the file is added to FILES_gps-utils 
variable.

Best regards,
/Peter

