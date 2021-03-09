Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.6188.1615280627885302833
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 01:03:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=l2396rn+;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd04132.aruba.it (smtpcmd04132.aruba.it [62.149.158.132])
	by mail.yoctoproject.org (Postfix) with ESMTP id D492638C06B0
	for <yocto@yoctoproject.org>; Tue,  9 Mar 2021 09:03:46 +0000 (UTC)
Received: from p50 ([213.213.6.58])
	by Aruba Outgoing Smtp  with ESMTPSA
	id JYHHluBidBmEtJYHIlZ2EI; Tue, 09 Mar 2021 10:03:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1615280625; bh=mhCfXzsA4anitlKdPlygO+Pj272oDqRin/zyL5nI5M0=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=l2396rn+VZ6vahLSP2Xwz+DgvAVg6Dl6MfTsVB1LaT3gSHxSPxnPfNnQ0pXfJB8YB
	 +0+LbSAjlxMKRZ/IcZ2QIszxshDJH3G/S4zvBlQzI+s3PfVXmR3ILSA2tSKY+IasDf
	 /G5R+nRSZt14/sEhchVvSLqBZcMoOp2LBp4hV1iGf0m0guzIyLyRSGUDuLSOV0e3I5
	 ItMpJ0gxbBju79gvUKy04J/Y+sMW+f213K1Av/gFhamF9VnnlxaQtwXfRut5URyi8T
	 xrHUW1F3scSE2clDzJ3oDA+TkM4KDCBYnJ7fTWEtu7u6V3qZLRdSdCz+xbQQEUT70s
	 oI++utA4G6xtg==
Date: Tue, 9 Mar 2021 10:03:43 +0100
From: "Mauro Ziliani" <mauro@faresoftware.it>
To: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Message-ID: <27598717-887F-4E66-81C2-E6CF6D019938@getmailspring.com>
Subject: Swap management: vm.swappiness best values?
X-Mailer: Mailspring
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfFfME6O6Mn9Ic/1n2BQgEfibMHqR4XEUXPzKCoadNTt9ZWI131sgQ/U/eH+L+VclcUgGFgxP9+rENq/8a2s+YkV8epLP4y5cESHQAA4VW7RMx9M7qin2
 cfSxvXLrK6fF4ZlVn8HNFjflCSfU8T7SKdXtoL49tjugIvHfEDvdeCEr
Content-Type: multipart/alternative; boundary="604739ef_2776a17a_16c6"

--604739ef_2776a17a_16c6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi all.
I'm working with Krogoth on a imx6dl board with 1GB of RAM.
I don't setup the swap space, but sometimes I see that kswap0 task starts, and the board slow down.

I'd like to change the value of vm.swappiness to avoid swap requests
The default value of vm.swappiness is 60.
There is a minimum value for vm.swappiness?
Best regards,
MZ

--604739ef_2776a17a_16c6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Hi all.</div><div>I'm working with Krogoth on a imx6dl board with 1G=
B of RAM.</div><div>I don't setup the swap space, but sometimes I see tha=
t kswap0 task starts, and the board slow down.</div><br><div>I'd like to =
change&nbsp; the value of vm.swappiness to avoid swap requests</div><br><=
div>The default value&nbsp; of vm.swappiness is 60.</div><br><div>There i=
s a minimum value for vm.swappiness=3F</div><br><div>Best regards,</div><=
div>&nbsp;&nbsp; MZ</div>

--604739ef_2776a17a_16c6--
