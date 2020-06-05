Received: from smtpcmd03116.aruba.it (smtpcmd03116.aruba.it [62.149.158.116])
 by mx.groups.io with SMTP id smtpd.web10.8763.1591356674941635441
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Jun 2020 04:31:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=Qy1yZM8C;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 62.149.158.116, mailfrom: mauro@faresoftware.it)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd03.ad.aruba.it with bizsmtp
	id nPXB220112wfazh01PXBx0; Fri, 05 Jun 2020 13:31:12 +0200
To: yocto@lists.yoctoproject.org
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: Recipe do_install priority
Message-ID: <294e63c4-293f-9b86-82d5-7c41bead0d2c@faresoftware.it>
Date: Fri, 5 Jun 2020 13:31:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1591356672; bh=JXWLvKwVWI6lTH1cO0EssGxgGicK5GlYbN0Qbabg+v0=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=Qy1yZM8CBzlIxWzhlU6PTEHzcIuEBoSQktut6L01Uq880uEuNiIJqG/mjWPNmD/B/
	 8r2rnNdwAcFhkjcwRySr3hOs5IGPlCEppY2wQBVfKTRM2m+XKQM5VG0OTpxkAqXoG+
	 V8Wp6jiYH/AE8EOeAjF75JPuze5fRRQV1Vqrsjm1mD/WNT34s4JeE4sej9HjKJnRB0
	 UDSFc3SRS4DR9NAJGGsQuEZx65cT1DFDzYHnSppuvI2l4ViQPYG41bEcT7FIByEwm5
	 TdUTT7O6+ejoZvKrr7GM7SjrMIYbybrAQ1Dia58hkwSx3ZfpCc7nqXhOldpUvvRSJw
	 sPAqzqMv6AtbA==
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I'm Mauro.

I have to resolve this matter.

The recipe  init-ifupdown.bb install file interfaces in /etc/network.


I build a library which need to install the same file in the same folder.

This library is managed by its own recipe  library.bb in my meta-mylayer.


How can I tell to bitbake to install library after init-ifupdown in 
final image?


The best for me should be drive this behavoir in the recipe-image.bb in 
this way


library:do_install after init-ifupdown:do_install


that means  run do_install of library.bb afger do_install of 
init-ifupdown.bb


Any idea?


MZ

