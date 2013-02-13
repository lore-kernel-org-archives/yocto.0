Return-Path: <scancool@yahoo.com>
Received: from nm40-vm6.bullet.mail.bf1.yahoo.com
	(nm40-vm6.bullet.mail.bf1.yahoo.com [72.30.239.214])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id E5F43E01305
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2013 10:55:44 -0800 (PST)
Received: from [98.139.215.142] by nm40.bullet.mail.bf1.yahoo.com with NNFMP;
	13 Feb 2013 18:55:42 -0000
Received: from [98.139.215.249] by tm13.bullet.mail.bf1.yahoo.com with NNFMP;
	13 Feb 2013 18:55:42 -0000
Received: from [127.0.0.1] by omp1062.mail.bf1.yahoo.com with NNFMP;
	13 Feb 2013 18:55:42 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 635519.33349.bm@omp1062.mail.bf1.yahoo.com
Received: (qmail 1600 invoked by uid 60001); 13 Feb 2013 18:55:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1360781742; bh=0hJMJdQ3UmEFIIok+1FKwHGokqocNcYEmKXp5HjxuEI=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Subject:To:MIME-Version:Content-Type;
	b=V31sLjRLVMefeVJhcCjKfDvTxf8do4kjCh0om7hAjq8V4qm65yud6SKaUWG/CV/d5mBM71f1mlihnBZ6gbg+3Vcc5v0E2XpjeehFFP16cHIRp9Pw26g4ROnYgUGBMz4rQZhsOt0KtGmCdFhm4Y9fZqp6bUqdlJ9hPBoLzALyg2E=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Subject:To:MIME-Version:Content-Type;
	b=nxpPKEDeqDsULKqW5dC/Fya90bXxleP269QjnqoQlvbGzCN8UAVyhAWRDANwCZwwHLcadsPK4Q1WlIwyWGj56m67WzIC6duYUF8b91TCwWpJLNNBWva6ghXMpwpWsfisKNNkUjHHrPKMCijv466tcYNNJguhq72AUYJyawdE/A0=;
X-YMail-OSG: 4.L31iIVM1l1spE7k0Vr1Z5FeRsYD3y8HuKvTXlM37iKPkF
	43IWq7jVSe9ORerYmNmXeSsbcxoAEJ0lrKWXzUCWV0yv7rG1VQNxcP4CzkQk
	ZIOmNe1Pq5zQ9eentEWUgz52JsZXKDPdr6aALlMwNK1E7wihRFR0zY53yywP
	T0abKVpvF2apfXEVXBmSoVd0qr4G8kCYt7nOhvLhdVzLdTnxtxvRAt07jdo4
	IzR1wP4WdLfXmFiCM50K9PguKOxsN5__4LluznDftqTQzyelYIISu_PUljsJ
	3deijeg1I52QVDMqeBD6hsWqjrsB5AXogMg_2h0SvdGgqMWyZlhToIpecQHf
	n9yLw7BuNGwbF4Uy7faImfZa4h1kRbgJbVxAn.8R0K9.VCq1J7KaVHS_fWX4
	36OBBA7WwBeh8L8WR_lTKm8XQq0mEbChawURdqsQs_Ozi76ZQVwA6qMYcjqa
	7ShJFC6iniobpd27v5G2N7gg9P.Z.lAdBH9F.5q_d2ufn6s3P_8Z3BbOueTy
	Pi76sYg--
Received: from [64.62.111.10] by web140005.mail.bf1.yahoo.com via HTTP;
	Wed, 13 Feb 2013 10:55:41 PST
X-Rocket-MIMEInfo: 001.001,
	SGVsbG8sDQpJJ20gZ2V0dGluZyB0aGlzIGVycm9yIHdoZW4gSSBydW4gaG9iLCANCg0KRXJyb3INClVuYWJsZSB0byBwYXJzZSAvaG9tZS9hbmRyZS9mc2wtY29tbXVuaXR5LWJzZC9zb3VyY2VzL21ldGEtZnNsLWFybS1leHRyYS9jb25mL2xheWVyLmNvbmY6RmFpbHR1cmUgZXhwYW5kaW5nIHZhcmlhYmxlIEJCUEFUSCwgZXhwcmVzc2lvbiB3YXMgJHtCQlBBVEh9Oi9ob21lL2FuZHJlL2ZzbC1jb21tdW5pdHktYnNwL3NvdWNlcnMvbWV0YS1mc2wtYXJtIHdoaWNoIHRyaWdnZXJlZCBleGNlcHRpb24gRXhjZXABMAEBAQE-
X-Mailer: YahooMailClassic/15.1.2 YahooMailWebService/0.8.133.508
Message-ID: <1360781741.1460.YahooMailClassic@web140005.mail.bf1.yahoo.com>
Date: Wed, 13 Feb 2013 10:55:41 -0800 (PST)
From: Andre Bella <scancool@yahoo.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Subject: hob error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 13 Feb 2013 18:55:45 -0000
Content-Type: multipart/alternative;
	boundary="967802534-1934042798-1360781741=:1460"

--967802534-1934042798-1360781741=:1460
Content-Type: text/plain; charset=us-ascii

Hello,
I'm getting this error when I run hob, 

Error
Unable to parse /home/andre/fsl-community-bsd/sources/meta-fsl-arm-extra/conf/layer.conf:Failture expanding variable BBPATH, expression was ${BBPATH}:/home/andre/fsl-community-bsp/soucers/meta-fsl-arm which triggered exception Exception: variable BBPATH reference itself!

what I'm trying to do is is add nano, vlc and gstreamer to the rootfs.


--967802534-1934042798-1360781741=:1460
Content-Type: text/html; charset=us-ascii

<table cellspacing="0" cellpadding="0" border="0" ><tr><td valign="top" style="font: inherit;">Hello,<br>I'm getting this error when I run hob, <br><br>Error<br>Unable to parse /home/andre/fsl-community-bsd/sources/meta-fsl-arm-extra/conf/layer.conf:Failture expanding variable BBPATH, expression was ${BBPATH}:/home/andre/fsl-community-bsp/soucers/meta-fsl-arm which triggered exception Exception: variable BBPATH reference itself!<br><br>what I'm trying to do is is add nano, vlc and gstreamer to the rootfs.<br><br></td></tr></table>

--967802534-1934042798-1360781741=:1460--
