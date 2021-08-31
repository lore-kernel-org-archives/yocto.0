Received: from mailrelay1-2.pub.mailoutpod1-cph3.one.com (mailrelay1-2.pub.mailoutpod1-cph3.one.com [46.30.212.0])
 by mx.groups.io with SMTP id smtpd.web09.2449.1630395931623606496
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Aug 2021 00:45:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@berginkonsult.se header.s=20191106 header.b=ZE1SMYZX;
 spf=none, err=permanent DNS error (domain: berginkonsult.se, ip: 46.30.212.0, mailfrom: peter@berginkonsult.se)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20191106;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	 message-id:from:references:to:subject:from;
	bh=17aN/pJLTfGNV3Ap2xR5Z0y1SQHFk0MgKW8NzdwrNMk=;
	b=ZE1SMYZXRTdoIW1BjFqqC9UDCANq+I6KbSywNP21trAC1THh8ChZJRYPdfaygKPFjuLYdapTitoHI
	 qHBNeAblYnmG9rDrlk/Tn2FNQdiF1jRzb/5ZipcwtEZ7lbTcP91+rl9SSksxhVEuiPURNH/uf1VE6D
	 khD23Xtvn8GUs/TQQB8x13GpGVBr5GnVVU+7VgGH/Y/yo9Q24hISGJqv6vH7QhYsxRsHzi1JUYXmRx
	 iv6PDVYjAwSHDSPSCALX39jb5iOCGGaJeC3oP3c8S+T/UsfvPqCu8LdD4bAzEgj1EgXz3GKBT6t++m
	 69GZ8sAMmXc3Ww/uzSGOG9o0Hy1V58Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=rsa1;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	 message-id:from:references:to:subject:from;
	bh=17aN/pJLTfGNV3Ap2xR5Z0y1SQHFk0MgKW8NzdwrNMk=;
	b=DkwkT/ylfsfPXX8UcKtiM3Dtdzc6muJYSc4azJNiC9l/QYI8gAv7TrvA37IiQVYQ/n0aNWRGXiFJk
	 tpKMvIQ2i57jFURtr5xuu048PzTOYlverUiOOueRmunKJ+rLmgYwzUWWr0AYzYEqDzdGGKQ6o4EvLV
	 sMCqxWnyls7uD1cSfMwTavCiov0zu0LNsVN34xwWK7C1GuxHoDbogeuIbl+fzDTGbBBLUxHfmltMEo
	 nLaEcWINyng7OpU588eQgzat4loBRHGm6XxE4TcD0CsCbN6O7qTcvPEM9h1OgQ/BQiMHfUZUIleZrE
	 n+sXlekea33LTb/cJGDfs4AAwum5XkA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=ed1;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	 message-id:from:references:to:subject:from;
	bh=17aN/pJLTfGNV3Ap2xR5Z0y1SQHFk0MgKW8NzdwrNMk=;
	b=p8Nq8Gm0h3nag1dbIuooOfzUCWlypuhIOBIp+dLrqrgknGmfEqpokZ6FHzqqeDrrkOMxZAecY9bld
	 V4hLfDcDQ==
X-HalOne-Cookie: 108bd374ca25bde37b13da7c7da82391069cd190
X-HalOne-ID: 693b862e-0a2f-11ec-b7ce-d0431ea8a283
Received: from [192.168.12.23] (h-79-136-99-68.na.cust.bahnhof.se [79.136.99.68])
	by mailrelay1.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 693b862e-0a2f-11ec-b7ce-d0431ea8a283;
	Tue, 31 Aug 2021 07:45:28 +0000 (UTC)
Subject: Re: [yocto] extrausers-bbclass: plaintext password (since shadow update to 4.9)
To: Matthias Klein <matthias.klein@optimeas.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <AM0PR10MB310796884E3E3D545695708099CB9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <d4829d94-aba0-e620-eb6c-8115efea9d23@berginkonsult.se>
 <AM0PR10MB31078836CD7F6E0B51ADD5AB99CC9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: "Peter Bergin" <peter@berginkonsult.se>
Message-ID: <1bbd7070-cc1a-c40b-5742-909472e2dffb@berginkonsult.se>
Date: Tue, 31 Aug 2021 09:45:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <AM0PR10MB31078836CD7F6E0B51ADD5AB99CC9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi Matthias,

On 2021-08-31 09:03, Matthias Klein wrote:
> But I have not found a way to set the password with EXTRA_USERS_PARAMS.
> Do you know a working variant?

Is it a requirement that you need to regenerate the hash on every build? 
If not one solution can be:

     inherit extrausers

     #
     # HASH generated with this command:
     # python3 -c "import crypt; print(crypt.crypt('toor', 
crypt.METHOD_SHA512))"
     #
     HASH = 
"\\\$6\\\$8Z5vMcqCIB19PgY8\\\$Sv4kAfsH1k.SANHL5JVb6hdqmQWHOeH0Rjrjyii7fGAK20Gclj/.qiBvUPnAfh.WSsr1.XV0pUNom2L9oYYDV/"

     EXTRA_USERS_PARAMS = " \
        usermod -p ${HASH} root; \
     "

Best regards,
/Peter

