Received: from mxwn13.webd.pl (mxwn13.webd.pl [194.181.228.67])
 by mx.groups.io with SMTP id smtpd.web09.8706.1579595735982682571
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 00:35:36 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: xtrack.com, ip: 194.181.228.67, mailfrom: m.madej@xtrack.com)
Received: from wn13.int.webd ([192.168.101.113] helo=wn13.webd.pl)
	by mta01.webd.pl with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92.3)
	(envelope-from <m.madej@xtrack.com>)
	id 1itp0Y-0006vx-49
	for yocto@lists.yoctoproject.org; Tue, 21 Jan 2020 09:35:34 +0100
Received: from [192.168.101.231] (port=58972 helo=mta01.int.webd)
	by wn13.webd.pl with esmtp (Exim 4.92)
	(envelope-from <m.madej@xtrack.com>)
	id 1itp0X-0003ud-Ve
	for yocto@lists.yoctoproject.org; Tue, 21 Jan 2020 09:35:33 +0100
X-Quarantine-ID: <exfhD_RlzXvT>
X-Virus-Scanned: amavisd-new at mxwn13.webd.pl
Received: from wn13.webd.pl ([192.168.101.113])
	by mta01.int.webd (mxwn13.webd.pl [192.168.101.200]) (amavisd-new, port 10134)
	with ESMTP id exfhD_RlzXvT for <yocto@lists.yoctoproject.org>;
	Tue, 21 Jan 2020 09:35:29 +0100 (CET)
Received: from azz22.internetdsl.tpnet.pl ([83.18.155.22]:30005 helo=[192.168.6.108])
	by wn13.webd.pl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <m.madej@xtrack.com>)
	id 1itp0T-0003tg-SD
	for yocto@lists.yoctoproject.org; Tue, 21 Jan 2020 09:35:29 +0100
From: "Mariusz Madej" <m.madej@xtrack.com>
Subject: [yocto] extensible sdk, devtool not working, wrong python3 binary found in PATH as first
To: yocto-list <yocto@lists.yoctoproject.org>
Message-ID: <f5322279-0aa2-348d-66c1-4e2b90296aee@xtrack.com>
Date: Tue, 21 Jan 2020 09:35:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------AD792850B0CF0B4A60C4BADE"
Content-Language: en-US

--------------AD792850B0CF0B4A60C4BADE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I use Yocto(warrior) and want to create valid extensible sdk. My problem 
is that after installation of created sdk i get:

{SDK-INSTALL-DIR}/sysroots/x86_64-pokysdk-linux/usr/bin/python3: line 5: 
{SDK-INSTALL-DIR}/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real: 
No such file or directory

I installed also sdk-ext from core-image-minimal and there is no such 
problem. I started to compare differences between both installations and 
found out that my sdk has binary 
{SDK-INSTALL-DIR}/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real 
and this binary is not relocated(wrong interpreter path). After loading 
sdk's environment, PATH variable has 
{SDK-INSTALL-DIR}/sysroots/x86_64-pokysdk-linux/usr/bin as first entry - 
and that is why devtool does not work. If i remove python3 from 
{SDK-INSTALL-DIR}/sysroots/x86_64-pokysdk-linux/usr/bin/ then devtool is 
working well. Working(relocated) python3 exists in 
{SDK-INSTALL-DIR}/*buildtools*/sysroots/x86_64-pokysdk-linux/usr/bin/python3 
- the same in sdk for core-image-minimal.

Can anybody tell me why i have not relocated python3 binary in 
{SDK-INSTALL-DIR}/sysroots/x86_64-pokysdk-linux/usr/bin and other sdk's 
dont have this? What kind of package it comes from? I thought it is 
nativesdk-python3 but core-image-minimal builds it also and there is no 
problem. Is there any detailed documentation about directory structure 
of installed sdk?



--------------AD792850B0CF0B4A60C4BADE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    I use Yocto(warrior) and want to create valid extensible sdk. My
    problem is that after installation of created sdk i get:<br>
    <br>
    {SDK-INSTALL-DIR}/sysroots/x86_64-pokysdk-linux/usr/bin/python3:
    line 5:
    {SDK-INSTALL-DIR}/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real:
    No such file or directory<br>
    <br>
    I installed also sdk-ext from core-image-minimal and there is no
    such problem. I started to compare differences between both
    installations and found out that my sdk has binary
    {SDK-INSTALL-DIR}/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real
    and this binary is not relocated(wrong interpreter path). After
    loading sdk's environment, PATH variable has
    {SDK-INSTALL-DIR}/sysroots/x86_64-pokysdk-linux/usr/bin as first
    entry - and that is why devtool does not work. If i remove python3
    from {SDK-INSTALL-DIR}/sysroots/x86_64-pokysdk-linux/usr/bin/ then
    devtool is working well. Working(relocated) python3 exists in
    {SDK-INSTALL-DIR}/<b>buildtools</b>/sysroots/x86_64-pokysdk-linux/usr/bin/python3
    - the same in sdk for core-image-minimal.<br>
    <br>
    Can anybody tell me why i have not relocated python3 binary in
    {SDK-INSTALL-DIR}/sysroots/x86_64-pokysdk-linux/usr/bin and other
    sdk's dont have this? What kind of package it comes from? I thought
    it is nativesdk-python3 but core-image-minimal builds it also and
    there is no problem. Is there any detailed documentation about
    directory structure of installed sdk?<br>
    <p><br>
    </p>
  </body>
</html>

--------------AD792850B0CF0B4A60C4BADE--
