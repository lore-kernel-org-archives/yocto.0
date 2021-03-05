Received: from smtpcmd12132.aruba.it (smtpcmd12132.aruba.it [62.149.156.132])
 by mx.groups.io with SMTP id smtpd.web08.1251.1614974631807479237
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Mar 2021 12:03:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=Y1sgp2AW;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 62.149.156.132, mailfrom: mauro@faresoftware.it)
Received: from z600 ([93.38.119.136])
	by Aruba Outgoing Smtp  with ESMTPSA
	id IGftlQaDmik8wIGftlvFiL; Fri, 05 Mar 2021 21:03:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1614974630; bh=f8/WkBQbjNymMLn1y6EXjv0Fxj9usaO5Gfz5c3cLP9c=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=Y1sgp2AWLJYEz/9uyuWlsnHXFO0Nn01UhkH4BIXKviHmzuoRJvmucdHgpsXLtBNtz
	 GOMhnZahZhwUEgmFc+sqDP8j+kyHxfH2aIGMJgNL0QzYzXpc8TtdISvhyufH6BXCPG
	 7nwfRmLiKUvB/GTRBUw8vYHLucIf3BNav12G6zN05HTK1VZcHNbcT+OqJ1gu2bgBOo
	 d4t9Dh0ERFE3RQSEzVFch30yD9dbh3+MITwzC1XjBq44IQxmOOvhg3imvPpR/oxsoJ
	 1+y/rgMD4OeoysAX+ovGsPwAoj2asPO37stlO5hpCT5JkETMsvLVHy5Y1KIpsmPr+q
	 WkRthqros8kPA==
Date: Fri, 5 Mar 2021 21:03:48 +0100
From: "Mauro Ziliani" <mauro@faresoftware.it>
To: "=?utf-8?Q?yocto=40lists.yoctoproject.org?="
 <yocto@lists.yoctoproject.org>
Message-ID: <F6AFEDD2-BAA7-4D1E-949F-AB0DF8FA7DE8@getmailspring.com>
Subject: Memory tracker in c++
X-Mailer: Mailspring
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfIEpDfQV3GVtOsTkIIGDcelOUSDI4Gr+ip2m4j2onXKGUcZJ5aTRCfFbjI2Qc0pDPBKmrDuvWrIMs5VFVPFyz5G85aRRtJ47Ikp9MHQ1rhmClInISKkF
 ul30zXUfYaust/vLYmMADwGqnYpS5o+Wi1MVTbs47QqXh1JO/ipxVb1v
Content-Type: multipart/alternative; boundary="60428ea4_de0ecf4_fe4"

--60428ea4_de0ecf4_fe4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi all
I'm looking for a memory track to investigate how many memory my application needs.
The application di made with Qt/Qml 5.6 over a Krogoth on Imx6dl board.

Do you have some suggestion?
I'd initialize the library in the main()
Then I run some function to get the memory consumption

I try valgrind but it is too heavy for the poor imx
Thanks all
MZ
Sent from Mailspring (https://getmailspring.com/), the best free email app for work

--60428ea4_de0ecf4_fe4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Hi all</div><div>I'm looking for a memory track to investigate how m=
any memory my application needs.</div><div>The application di made with Q=
t/Qml 5.6 over a Krogoth on Imx6dl board.</div><br><div>Do you have some =
suggestion=3F</div><br><div>I'd initialize the library in the main()</div=
><div>Then I run some function to get&nbsp; the memory consumption</div><=
br><div>I try valgrind but it is too heavy for the poor imx</div><br><div=
>Thanks all</div><br><div>MZ</div><br><div><signature id=3D=22initial=22>=
<div><div>Sent from <a href=3D=22https://getmailspring.com/=22>Mailspring=
</a>, the best free email app for work</div></div></signature></div>

--60428ea4_de0ecf4_fe4--
