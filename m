Return-Path: <B46258@freescale.com>
Received: from db8outboundpool.messaging.microsoft.com
	(mail-db8lp0186.outbound.messaging.microsoft.com [213.199.154.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F0CBE016A6
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 11:48:15 -0700 (PDT)
Received: from mail55-db8-R.bigfish.com (10.174.8.234) by
	DB8EHSOBE041.bigfish.com (10.174.4.104) with Microsoft SMTP Server id
	14.1.225.22; Thu, 3 Oct 2013 18:48:13 +0000
Received: from mail55-db8 (localhost [127.0.0.1])	by mail55-db8-R.bigfish.com
	(Postfix) with ESMTP id CC15E3A0179	for <yocto@yoctoproject.org>;
	Thu,  3 Oct 2013 18:48:13 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -5
X-BigFish: VS-5(zf7Izbb2dI98dI9371I1432Izz1f42h208ch1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzzz2dh2a8h839h947hd25he5bhf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh162dh1631h1758h1765h18e1h190ch1946h19b4h19c3h1ad9h1b0ah1b2fh1fb3h1d0ch1d2eh1d3fh1dfeh1dffh1f5fh1fe8h1ff5h209eh1155h)
Received: from mail55-db8 (localhost.localdomain [127.0.0.1]) by mail55-db8
	(MessageSwitch) id 1380826092532146_4385;
	Thu,  3 Oct 2013 18:48:12 +0000 (UTC)
Received: from DB8EHSMHS013.bigfish.com (unknown [10.174.8.237])	by
	mail55-db8.bigfish.com (Postfix) with ESMTP id 7DDD7380048	for
	<yocto@yoctoproject.org>; Thu,  3 Oct 2013 18:48:12 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB8EHSMHS013.bigfish.com
	(10.174.4.23) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Thu, 3 Oct 2013 18:48:12 +0000
Received: from az84smr01.freescale.net (10.64.34.197) by
	039-SN1MMR1-003.039d.mgd.msft.net (10.84.1.16) with Microsoft SMTP
	Server (TLS) id 14.3.158.2; Thu, 3 Oct 2013 18:48:10 +0000
Received: from [10.82.120.24] (b46258-11.am.freescale.net [10.82.120.24])	by
	az84smr01.freescale.net (8.14.3/8.14.0) with ESMTP id
	r93Im9it004525	for
	<yocto@yoctoproject.org>; Thu, 3 Oct 2013 11:48:09 -0700
Message-ID: <524DBBE3.1020705@freescale.com>
Date: Thu, 3 Oct 2013 13:48:03 -0500
From: Matthew Weigel <Matthew.Weigel@freescale.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CABHD4K8q9q3Gb4B1E35G8qk+Bp=RLVW7ZhngNYvW=0ZV_v=RKA@mail.gmail.com>	<CABHD4K8ggfe+MVzUDuK0dNs82=9dYT-iCyxGTOKNrLm8En2wGQ@mail.gmail.com>	<91586D499ADFD74FBCFB8425266A5DE40153B898C345@pluto.melinkcorp.local>	<CABHD4K-_9E3qN9exOPkdOoGzEjgskHE6EMNvTkNndbAGC5dcAA@mail.gmail.com>	<91586D499ADFD74FBCFB8425266A5DE40153B898C3AF@pluto.melinkcorp.local>	<CABHD4K-KW7wMrm+ceLyzGMyyuL0nN=KXmexNmq4yt5RD+yW9og@mail.gmail.com>	<91586D499ADFD74FBCFB8425266A5DE40153B898C3F9@pluto.melinkcorp.local>	<CABHD4K8Ha3J3QOK+JLQuwzmCJdDMDH_WVMUuEn99F2TYpmk82Q@mail.gmail.com>	<91586D499ADFD74FBCFB8425266A5DE40153B8C80483@pluto.melinkcorp.local>
	<CABHD4K_6tmPAnXrEta07qqe53USqKCVZ616nAzGta6RvV3TxPA@mail.gmail.com>
In-Reply-To: <CABHD4K_6tmPAnXrEta07qqe53USqKCVZ616nAzGta6RvV3TxPA@mail.gmail.com>
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Subject: Re: OpenSSH pre login banner
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
X-List-Received-Date: Thu, 03 Oct 2013 18:48:17 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/03/2013 01:36 PM, Amit Tomer wrote:
> Yes Brayan
>
> I did the whole process again and  looked into Target filesystem
> /etc/ssh. I can see the banner file with my content is there
> /etc/ssh/banner
>
> Then I see the /etc/ssh/sshd-config with Banner variable to set to
> /etc/ssh/sshd-config

Is the file named "sshd-config" with a hyphen or "sshd_config" with an 
underscore?  That might be the problem.
-- 
  Matthew Weigel



