Received: from mailrelay3-2.pub.mailoutpod1-cph3.one.com (mailrelay3-2.pub.mailoutpod1-cph3.one.com [46.30.212.2])
 by mx.groups.io with SMTP id smtpd.web12.3023.1630356706912574251
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Aug 2021 13:51:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@berginkonsult.se header.s=20191106 header.b=U2ZZUtZ9;
 spf=none, err=permanent DNS error (domain: berginkonsult.se, ip: 46.30.212.2, mailfrom: peter@berginkonsult.se)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20191106;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	 message-id:from:references:to:subject:from;
	bh=WzgW3S1hfP6+axxmjjucLsgOm72bRs3DQnJCfU63oEo=;
	b=U2ZZUtZ9zJwHdaB99g2qxWENN9MQmdMxRNGD62LD4LcLdcJDG8ojeRz3c1kQjUqZLyZjR8QmLLbaK
	 7gbjwQOXHnxdaigiDGLb3W8fl4U6E3q/j9vyn0HT+IL/d5K8oABp5uSo4+71A/VeeQgxXD/NkOGKon
	 OJA3nKTK5vUP2Xs+B5Q7+3e80YiBf8yk7D54tFbBsN3PT4Imh00YsQPHfTzx3Gg8hW71gHgPZ1+mhu
	 G532L7Plz7clgrmjItMYGwflSS23gAzoQSlN44N4GJjTN8Jk99MQzDAJQSNtDqgX3b/yWeVKboSt3u
	 FoIJycdoHup1bLHY6726TcE7DPzMB9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=rsa1;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	 message-id:from:references:to:subject:from;
	bh=WzgW3S1hfP6+axxmjjucLsgOm72bRs3DQnJCfU63oEo=;
	b=N0gfBS2Z9BLyckxDviB+ZT13DIeCDIbC+6w8Y3uiwDiK2C9tjGuCYMhOpUbIHxDdLaEpayI51QwGj
	 9yVM8C1i9jPiN8DsiOrM3ibV6n5R3iImWFdXbQkRcrNE5NYakG1q8H2CAqC1EiY8i8CKoM7oyA0JUz
	 qEN+e5iUCNH6IB36VOKhunhXkpyo0WfzvPuKxoCzVRcsCK4MldU800IcG1SLhVmBAlyRTt6U30VSfI
	 7BtxYC0w1yZAYSR4Pt8BOoxLcjO9NaY2DX5U3FDsbKhT6sEqRgH4fAjqRPeZ0uv8qJVltrVROs1hkd
	 UGZ5Eb46/8BUOIZlp9nH5JaAbTDe81A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=ed1;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	 message-id:from:references:to:subject:from;
	bh=WzgW3S1hfP6+axxmjjucLsgOm72bRs3DQnJCfU63oEo=;
	b=o9MdtZiGCEGzgw07C3pJPzC5r2kzmQTlQD468QArO7kvFmPAg126mM6powDFeoLgS9QyxblKCEiuM
	 bbRzPILDQ==
X-HalOne-Cookie: 1fab4fe2fc8455fb17add87e79decc720d668455
X-HalOne-ID: 1500c44b-09d4-11ec-879b-d0431ea8bb03
Received: from [192.168.100.145] (ua-85-227-233-29.bbcust.telenor.se [85.227.233.29])
	by mailrelay3.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 1500c44b-09d4-11ec-879b-d0431ea8bb03;
	Mon, 30 Aug 2021 20:51:43 +0000 (UTC)
Subject: Re: [yocto] extrausers-bbclass: plaintext password (since shadow update to 4.9)
To: Matthias Klein <matthias.klein@optimeas.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <AM0PR10MB310796884E3E3D545695708099CB9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: "Peter Bergin" <peter@berginkonsult.se>
Message-ID: <d4829d94-aba0-e620-eb6c-8115efea9d23@berginkonsult.se>
Date: Mon, 30 Aug 2021 22:51:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <AM0PR10MB310796884E3E3D545695708099CB9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

On 2021-08-30 14:54, Matthias Klein wrote:

> Hello,
>
> I am trying to find a working alternative for the old -P option.
>
> Previous:
> EXTRA_USERS_PARAMS = "usermod -P toor root;"
>
> The suggestions from this thread don't seem to work: https://lists.openembedded.org/g/openembedded-core/topic/84548199
>
> Current:
> hash="$(python3 -c "import crypt; print(crypt.crypt('toor', crypt.METHOD_SHA512))")"
> EXTRA_USERS_PARAMS = "usermod -p ${hash} root;"
>
> The hashed password does not seem to be escaped properly in the extrausers-bbclass. The password in the shadow file is missing $ characters.
>
> Is there a way (with the current master branch) to define a password?
>
>
You have to escape the password string in the recipe. Use '\\\$' to 
escape the '$' token. There are some levels of evaluation of the 
expression and that's the reason for multiple '\'. Just iterate until 
you have the correct string in the shadow file, also check the 
log.do_rootfs where you can see the parameters to usermod.

/Peter


