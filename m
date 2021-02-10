Received: from smtpcmd03117.aruba.it (smtpcmd03117.aruba.it [62.149.158.117])
 by mx.groups.io with SMTP id smtpd.web09.4667.1612959069874350308
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Feb 2021 04:11:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=eaHSo9HH;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 62.149.158.117, mailfrom: mauro@faresoftware.it)
Received: from [10.0.3.93] ([213.213.6.58])
	by Aruba Outgoing Smtp  with ESMTPSA
	id 9oKpls75opm9e9oKqlAAkZ; Wed, 10 Feb 2021 13:11:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1612959069; bh=OGaCFjKmx8FWTGlVPFP4/owoEyYnsLmE0g/Ui+HSaw8=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=eaHSo9HHpD4pY2oi6GWNiHDJOh1DeLK48UOthr4GTMc96Sgf0fcoo+oTMJeb2bfUE
	 Bsw7XJeqY489wf5E5VLwQaVrLYjhyOqGoY4+TFSlceDKZCwGZNgRCn0x4ZerfZPY69
	 J/g5Hl6c4XDn7y4ETvpJfad7gB4f5XbzMreUPlEhJ+Mplk18pL0bl5zUT+RnOsuaC7
	 GTZcIwoDDKUJQRekITY/8hqUc4OM03bT6NSWJA9G4+WJr76BWF5qlcAhKFaJ+zqhjo
	 1LWdT+eN085Osj6yPp0mjaOCM5pNsTTLmRdXlvp77TVdqhUqu18OVQVw6XdoRNxBN1
	 p1lUdMVcrzDKA==
To: yocto@lists.yoctoproject.org
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: curl certificate error
Message-ID: <e952c755-6193-5276-42dd-79e88753f2d3@faresoftware.it>
Date: Wed, 10 Feb 2021 13:11:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfGbRO2WHoaT4OKgQfr9pMXuLBrbwoBgcLI3OL++DsT+4o5Vm63jkwLB38Nces2UT717qjXGkEqdD5+41GFdNESaxQTlTGZP7+V3P3v8Kt1HGMitus9sg
 QELut1XdEoGqhwWX5bUkTb2lBswY4raqo+d1CubrSkDLjbp6oDBXd7tKyCFZsPG4iML3FfebU40Ecw==
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi all
I try to download the file

https://github.com/google/googletest/archive/release-1.8.0.tar.gz

with curl -L inside a devshell of a recipe


I get this error


curl: (77) error setting certificate verify locations:
   CAfile: 
/Sources/softfx/krogoth/softfx-build/tmp/sysroots/x86_64-linux/etc/ssl/certs/ca-certificates.crt
   CApath: none


I miss some dependency?


I'm working on an old Krogoth


Thanks all

   MZ


