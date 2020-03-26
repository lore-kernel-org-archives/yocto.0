Received: from mail.bry.com.br (mail.bry.com.br [186.250.187.24])
 by mx.groups.io with SMTP id smtpd.web11.3784.1585250404984118112
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Mar 2020 12:20:06 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bry.com.br, ip: 186.250.187.24, mailfrom: antonio.teixeira@bry.com.br)
Received: (qmail 68658 invoked from network); 26 Mar 2020 19:19:59 +0000
Received: from 177.204.35.130.dynamic.adsl.gvt.net.br (HELO ?192.168.15.12?) (antonio.teixeira@bry.com.br@177.204.35.130)
  by mail.bry.com.br with SMTP; 26 Mar 2020 19:19:59 +0000
To: yocto@lists.yoctoproject.org
From: "Antonio Teixeira" <antonio.teixeira@bry.com.br>
Subject: How to ignore .so dependencies?
Message-ID: <83952d82-6c3e-2e12-b7fd-b7c42c6dac5f@bry.com.br>
Date: Thu, 26 Mar 2020 16:19:57 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I have a problem where I need to support two different versions of a set 
of proprietary libraries (read: I don't have the source code so I can't 
recompile / relink them).

I intend to do so by installing both versions in my yocto image with 
versioned filenames (samplelibrary.so.2.0.0 and such) and detecting at 
runtime which version I should use (only one version will ever be used 
at the same time) and then symlink them to a non-versioned filename 
(samplelibrary.so). I need to do this because the libraries are linked 
amongst themselves to non-versioned filenames.

However, since they're linked against non-versioned filenames and I'm 
shipping versioned filenames that means I get errors such as:

"nothing provides somelib1.so()(64bit) needed by 
package-with-a-lot-of-libs"

Is there any way I can possibly ignore this error?

I'd also like to add that I'm aware using patchelf to make libs be 
linked against versioned filenames would be much cleaner, and I did try 
that, but for some reason when I do that with the libs and with a few 
binaries these packages ship, they all get corrupted/bugged somehow and 
I get some symbol lookup errors when trying to run the binaries.

Thanks in advance.
