Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.93.22])
 by mx.groups.io with SMTP id smtpd.web12.30453.1599962653261411395
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Sep 2020 19:04:14 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=AZzRVD3v;
 spf=none, err=SPF record not found (domain: optimcloud.com, ip: 46.23.93.22, mailfrom: yocto@optimcloud.com)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id 09e21a10
	for <yocto@lists.yoctoproject.org>;
	Sun, 13 Sep 2020 04:04:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=
	subject:to:references:from:message-id:date:mime-version
	:in-reply-to:content-type; s=obsd; bh=2BWzwAkp0ALFWLPen/IsOlt8Mo
	wlVxnNTyEMXb2VkYc=; b=AZzRVD3vioNFwdikfjqjFoOXAP1+X70xGcPG63SLuN
	X45iMjsjF+ap1FYgowdm7V31DATOY4eOzpD76ejpskuSNydpksCUbuHIj72K5BZd
	25HkEqzDVL0L79ycs3dnroiaRzxnGhPtNOoxqrukV+JF/bm4b7WVPaGvNwGZKmjR
	D0sbiOzc2zmdC+RkQQoaLf1V+xI2bLehaEv7kfFzM8NNOYh84W+B3U7YU5tk7ivv
	lZ+jAgcXXxL9MJMi2ZKwp+u01AdFHr5ag0HXM7jouyHwszqBGJJ2hrhSjhQ38GBY
	HVsnOdY2OxGM6wCfr7IUyHYjMmQdvBdDPlxo+tUQqBcw==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=subject:to
	:references:from:message-id:date:mime-version:in-reply-to
	:content-type; q=dns; s=obsd; b=rsbucPzd7daVzN5fxCfRhIVmgq55SGG/
	eHDQNZglAi4XfLScQ0fabJ14O0+4uMk2ZOQiu5drigbOf+eG2N4azdU/UHHD4VK9
	sP4L9QANGPm+7woBfHVx+lhEAmeefMXLBIfJ3wiwn55iD2ua0TzqTrcchyf9jrzZ
	a60GS0D5Yuskm+BVHMXM++AqIKW74MT1+WdkWk8aGRRUa7thR0ZI5+u4sjyDJvYe
	oWxzBwhWuTpYaL0DpsA9d7NnqHG+44TAJxLb/tG1rccLjMgPrpWFLH7HF2/R2Bqc
	hhgWJemRDTkoH1ImciNrc9AkSWn9g5xQgWDpuRQiO3RwmbYTK7FXDw==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id ed680dbc (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com
	for <yocto@lists.yoctoproject.org>;
	Sun, 13 Sep 2020 04:04:08 +0200 (CEST)
Subject: Re: [yocto] poky dhcpcd failed build
To: yocto@lists.yoctoproject.org
References: <1632BAF241A18982.9948@lists.yoctoproject.org>
 <ba50fb1b-8dca-86dd-4569-368c94257deb@optimcloud.com>
 <e12077a8-0a44-c224-9aa2-d8758045952e@gmail.com>
 <16334DF9E2497D60.23670@lists.yoctoproject.org>
From: "Yocto" <yocto@optimcloud.com>
Message-ID: <38187b21-699e-1da4-4b89-74ddafc48f78@optimcloud.com>
Date: Sun, 13 Sep 2020 09:02:59 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <16334DF9E2497D60.23670@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------7AEE867ABA8301E0AAB3E856"
Content-Language: en-US

--------------7AEE867ABA8301E0AAB3E856
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 9/10/20 10:19 AM, Yocto wrote:
>
> On 9/10/20 6:58 AM, Khem Raj wrote:
>> #include <sys/param.h>
>
> i ran devtool modify dhcpcd and there is no "socket.c" in the source 
> tree.

this appears fixed with the recent dhcpcd version update


>
>
> 

--------------7AEE867ABA8301E0AAB3E856
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 9/10/20 10:19 AM, Yocto wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:16334DF9E2497D60.23670@lists.yoctoproject.org">
      <br>
      On 9/10/20 6:58 AM, Khem Raj wrote:
      <br>
      <blockquote type="cite">#include &lt;sys/param.h&gt;
        <br>
      </blockquote>
      <br>
      i ran devtool modify dhcpcd and there is no "socket.c" in the
      source tree.
      <br>
    </blockquote>
    <p>this appears fixed with the recent dhcpcd version update<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:16334DF9E2497D60.23670@lists.yoctoproject.org">
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------7AEE867ABA8301E0AAB3E856--
