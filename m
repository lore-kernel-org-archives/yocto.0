Return-Path: <otavio.salvador@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16141E01653
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 18:55:37 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id ar20so6686816iec.21
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 18:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=2JbWbWclniYNp5l4lSbETE6nOP5IYFBcU2K/tsG696s=;
	b=PUOJCfkusTMOHi5JryfrwwMwdnUm2WcyLyi1n9I1R/QP0Ix4IRDtZza5YzKhN35Nqp
	jw8z/6E1V6ZEbLc1itUkRHS071yPsbiVCFBU7nTTOCAvNsI1gMyrbijNRcoCHEHcWvoe
	yNFpMjI7/IQzrxRnponIGS3fNld5zFKxYMuxGVnW+SfLUPGOTgMrC1W0CI7YfxxZ0q4n
	8saWirAoi8bugNUvSMMhaOjlD+pTLHwfH3xB2nY9cBoUcxS1Fq9yfWWm90L3yHwkm63T
	0UGxTzZye5Q0KlU8vo6k+Kj2d0xEMdrTwcL5+AIxFbBHhMEuBlE0YA98Q9uJ91Wqjtpo
	yepQ==
MIME-Version: 1.0
X-Received: by 10.42.121.132 with SMTP id j4mr9930783icr.42.1381456536651;
	Thu, 10 Oct 2013 18:55:36 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.64.20.229 with HTTP; Thu, 10 Oct 2013 18:55:36 -0700 (PDT)
In-Reply-To: <52575854.6080302@linux.intel.com>
References: <CAPhnLPBDr_LhzOpjs7-sOsf7ujKGDcchxirH45kfHcyqnUaxoA@mail.gmail.com>
	<52571E27.70308@gna.org>
	<CA+YB3raEO5Ek5EdkAuezyW+D3tj5-Aod2k+BRg5UWF_UWUHmtg@mail.gmail.com>
	<52572994.4050006@gna.org>
	<CAP9ODKoaV71QNHnqfwqnajhORu=1m82YaUiFo41HhcvUn6E-Rg@mail.gmail.com>
	<CA+YB3rZOFCTdJ0wtVa_qTt1QRZuT=nE2MZ2EXEqUs55Lyfiruw@mail.gmail.com>
	<52575854.6080302@linux.intel.com>
Date: Thu, 10 Oct 2013 22:55:36 -0300
X-Google-Sender-Auth: 4qePHteK_hUovV16s5bcI5_8cDc
Message-ID: <CAP9ODKooi3-gBELD86fsipqc98FCJt_jMPBNjd9gndaZjpefMw@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Saul Wold <sgw@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Project 1.5_M5.rc6
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
X-List-Received-Date: Fri, 11 Oct 2013 01:55:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Oct 10, 2013 at 10:45 PM, Saul Wold <sgw@linux.intel.com> wrote:
>
> Sorry for the top post here. The real reason we still have Qt3 is because
> it's required part of the LSB spec.  OE-Core contains Qt4 and we know that
> meta-qt5 exists from Otavio and Martin.
>
> I know that Richard and Paul have been watching what's going on with
> meta-qt5.

The biggest missing feature at meta-qt5 is the lacking of toolchain
support; I am still looking for someone to sponsor me to work on this
(as it is not a small task), a critical need from my side for it or
someone step on and do it :)

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

